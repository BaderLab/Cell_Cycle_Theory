(* ::Package:: *)

(* ::Title:: *)
(*Cell Cycle Hypothesis*)


(* ::Input::Initialization:: *)
Needs["cellRelatedFunctions`"]


(* ::Input::Initialization:: *)
BeginPackage["cellCycleHypothesis`"]


(* ::Input::Initialization:: *)
Unprotect["`*"];ClearAll["`*"];
(*unprotect and clear out old definitionsn-allows repeated loading and alterations*)


(* ::Input::Initialization:: *)
cellCycleHypothesis::usage="This package is contains all modules used to test the cell cycle transciptional filter hypothesis Last Edited May 2020";


(* ::Input::Initialization:: *)
oneFullCycleV0::usage="Used for the manuscript tittled: Control of tissue development by cell cycle dependent transcriptional filtering Last Edited Dec 2018";


(* ::Input::Initialization:: *)
oneFullCycleV01::usage="This Fucntion tests the effects of cell cycle duration, gene length.  
:=[tissue_,timestep_,cellCycleOpts_,genome_,transcriptionPara_] 
 improved half-life by using dataset associations new to Mathematica 12, improved speed by functionalising more steps and using association. Also by condensing the number of transcripts in the cell list -> {1,1,1,1,2,3,4,1} to a list that carries the total number-> {5,1,1,1} and association functions helped memory alocation.
   Now genome ploidy affects the system: if the organism is ploidy level two it will carry two copies of each gene Last Edited March 2021";


(* ::Input::Initialization:: *)
Begin["`Private`"]


(* ::Input::Initialization:: *)
(*Context[zPt];
Context[qPt];*)


(* ::Input::Initialization:: *)
oneFullCycleV01[tissue_,timestep_,cellCycleOpts_,genome_,transcriptionPara_]:=Module[{ploidy,oneCycle,shortestToMphase,cellCycles,stemstate,newtissue,cpos,icell,cyclePhase,tempCell,tCell,newcellcylceduration,lineage},
(*
cellCycleOpts[[1]]]]= sigma
cellCycleOpts[[2]]= cell cycle increments
cellCycleOpts[[3]]= \.08cellCycleEquation Opts
cellCycleOpts[[4]]= \.08for "stem like opts"
*)
(*transcriptionPara[[1]] is the gene network
transcriptionPara[[2]] probability of transcripts remaining in the system
transcriptionPara[[3]] ploidy level
transcriptionPara[[4]] rnaPolII rate 0 is no rate
*)

ploidy=transcriptionPara[[3]];
oneCycle=Range[1,Length[tissue]];

(*oneCycle=RandomSample[Range[1,Length[tissue]]];*)(*identifies the shortest cell cycle duration*)
(*the shortest cell cycle is the difference between the total cell cycle time and the time that has passed, [[4,3]] is the total cell cycle duration, and [[4,4]] is the time that has relatively passed
example if [[4,3]] is 2hrs and [[4,4]] is 1.5, [[4,3]]-[[4,4]]=0.5. it means there is only half hour for this cell to divde. 
We calcualte this value for evey cell and get the shortest in the tissue. 
All cells that have a value \[LessEqual] shortestToMphase will divide
*)

shortestToMphase=Min[Subtract@@#&/@tissue[[All,4,3;;4]]];

(*last cell cycle - next cell cycle*)
newtissue=tissue;
newtissue[[All,4,5]]=shortestToMphase;(*Print[newtissue];*)(*for each cell currently in the tissue*)(*cellCR --\[Rule] center, radius, divisions,cellCycleInfo {,phase, Length of  last cycle,next cycle}, {{cycle length Now},{cycle Length Next}} (*These will be -100 if they are not holding any value, since zero may mean something*)
,{ GeneState Expression level}, transcripts ...ineages....} for last timestep*)

(*xC={{{0,0,0},1,{0,0.1},{0,0,1.16},{{1,0.01,0.15,-5} ,{0,0,0,0}}(*negative values ensure no transcription time*),{1, {genomeI}},{{1},{}}}(*,{{0,0.5,0},1,{0,0.1},{0,0,0},{1,genome, genomeI}}*)};*)For[cpos=1,cpos<=Length[oneCycle],cpos++,
lineage={};
icell=oneCycle[[cpos]]; (*cell number*)

(*if [[4,3]] < [[4,4]] then that means the cell has passed enough time to divide so it enters Mphase
if [[4,3]] > [[4,4]] then that means the cell cannot reach Mphase and it will be in a particular cell phase either in G1, S and G2
*)
(*Print["b0"];*)
cyclePhase=cellRelatedFunctions`getCellPhase[newtissue[[icell]],shortestToMphase];
(*Print["b1"];*)
newtissue[[icell,4,1]]=cyclePhase;(***in V1 competition***)
(*newCell[[4,4]] stores how much time a cell has currently cycled, if it is 0 means it just divided*)

(*If[(newtissue[[icell,4,4]]==0&&Union[newtissue[[icell,7,1]]]!={0}) (*occurs only if the cell just divided*),
newtissue[[icell]]=cellRelatedFunctions`oneCellTranscriptCompetition[newtissue[[icell]],transcriptionPara[[1]],ploidy]; 
];*)
(*Print["b2"];*)
(* maintaining trancript probability, trying to capture and average degredation rate, this may be improved by relating it to length*)
If[(newtissue[[icell,4,4]]==0) (*occurs only if the cell just divided*) ,
newtissue[[icell]]=cellRelatedFunctions`transcriptDegredation[newtissue[[icell]],transcriptionPara[[2]]];
];
(*Print["b3"];*)
newtissue[[icell]]=cellRelatedFunctions`transcriptCopyNumber[newtissue[[icell]],shortestToMphase,transcriptionPara[[4]],genome[[All,2]]];
(*Print["b4"];*)
(*Cell Cycle Phases 1\[Rule] G1, 2\[Rule] S, 3\[Rule] G2,4\[Rule]M*)
If[cyclePhase<=3, (*Cell is not in Mphase; No Division Yet*)
newtissue[[icell,2]]=1; newtissue[[icell,4,4]]=newtissue[[icell,4,4]]+shortestToMphase;(*growth will only happen in S phase*)
(*during these phases we keep transcripts in temp*)


,
(*Mphase*)
	
(*move transcripts out of temp*)
If[newtissue[[icell,7,2]]!={},(*there is no need to do anything if it is empty*)
If[newtissue[[icell,7,1]]=={},newtissue[[icell,7,1]]=newtissue[[icell,7,2]],
newtissue[[icell,7,1]]=Plus[newtissue[[icell,7,1]],newtissue[[icell,7,2]]];
];
];
(*resets everything to zero*)
newtissue[[icell,7,2]]=newtissue[[icell,7,2]]/._?NumberQ:>0;
(*Print["div1"];*)
newtissue[[icell,4,4]]=0;(*go back to G1 =0in cell cycle time*)newtissue[[icell,4,2]]=newtissue[[icell,4,2]]+newtissue[[icell,4,3]]; (*accumulated cell cycle time*)

(*track lineage*)
lineage={{timestep},{newtissue[[icell,6,2]],newtissue[[icell,7,1]],newtissue[[icell,4,3]]}};

(*Cell DIVISION*)
(*divide, increase divisions*)
(*creates 2 new cells, in 2D, space is not important*)
tempCell={newtissue[[icell]],newtissue[[icell]]};
tempCell[[1,3]][[2]]=tempCell[[1,3]][[2]]+1;(*division tracking*)
tempCell[[2,3]][[2]]=tempCell[[2,3]][[2]]+1;

(*(*during M  phase the cell cycle changes*)*)

(*changes the cell cycle duration either based on a normal distributions or some determined incremental value*)(*newcellcylceduration=newtissue[[icell,5,1]];*)
(*Print["div2"];*)
newcellcylceduration=cellRelatedFunctions`cellcycleChangeOPT[{newtissue[[icell,5,1,#]],cellCycleOpts[[1]],cellCycleOpts[[2]],cellCycleOpts[[4,All,#]],If[(newtissue[[icell,5,1]]==cellCycleOpts[[4,1]]),1,0] },cellCycleOpts[[3]]]&/@Range[1,cyclePhase];

(*each phase changes independently based on a function*)
(*Print[newcellcylceduration];*)
(*Print[newcellcylceduration[[All,1]]];*)
(*Print["div3"];*)
tempCell[[1,5,1]]=newcellcylceduration;
tempCell[[2,5,1]]=newcellcylceduration;If[(cellCycleOpts[[3]]==-7||cellCycleOpts[[3]]==-6||cellCycleOpts[[3]]=="stemlike"),
(*this is the case where two daughtercells have a proportion of the parental cell*)
tempCell[[1,5,1]]=newcellcylceduration[[All,1]];
tempCell[[2,5,1]]=newcellcylceduration[[All,2]];
];

(*accumulated cell cycle time*)tempCell[[1,4,3]]=Total[tempCell[[1,5,1]]/. _?Negative->0];
tempCell[[2,4,3]]=Total[tempCell[[2,5,1]]/. _?Negative->0];

(*distributes the transcripts*)
If[Union[newtissue[[icell,7,1]]]!={0},
tCell=cellRelatedFunctions`randDistofT2[newtissue[[icell,7,1]]];tempCell[[1,7,1]]=tCell[[1]];tempCell[[2,7,1]]=tCell[[2]];
];
(*Print["div4"];*)
tempCell[[1,2]]=1;(*cell size stay at 1*)
tempCell[[2,2]]=1;(*cell size stay at 1*)tempCell[[1,8]]=tempCell[[1,8]]<>ToString[icell]<>"1";(*name of the cell*)tempCell[[2,8]]=tempCell[[2,8]]<>ToString[icell]<>"2";
(*name of the cell*)
lineage=Join[lineage,{{tempCell[[1,7,1]],tempCell[[2,7,1]],tempCell[[1,4,3]],tempCell[[2,4,3]]}}];

tempCell[[1,9]]=lineage;
tempCell[[2,9]]=lineage;
(*lineage = {timestep, parental genotype,parental phenotype, parental cell cycle, offspring1 phenotype,offspring2 phenotype, offspring1 cell cycle duration,offspring2 cell cycle duration}*)
newtissue[[icell]]=tempCell[[1]];newtissue=AppendTo[newtissue,tempCell[[2]]];(*closepack*)
];(*if m phase (4) or not \[LessEqual]3*)
];(*for each cell*)

Remove[oneCycle,cellCycles,cpos,icell,cyclePhase,ploidy,tCell,tempCell];

newtissue
]


(* ::Input::Initialization:: *)
End[]


(* ::Input::Initialization:: *)
Protect[Evaluate[$Context<>"*"]];


(* ::Input::Initialization:: *)
EndPackage[]
