(* ::Package:: *)

(* ::Title:: *)
(*Cell Related Functions*)


(* ::Input::Initialization:: *)
Needs["coalescingToPackingFunctions`"]
Needs["cellRelatedFunctions`"]


(* ::Input::Initialization:: *)
BeginPackage["cellCycleHypothesis`"]


(* ::Input::Initialization:: *)
Unprotect["`*"];ClearAll["`*"];
(*unprotect and clear out old definitionsn-allows repeated loading and alterations*)


(* ::Input::Initialization:: *)
cellCycleHypothesis::usage="This package is where all functions that were use to test the cell cycle transciptional filter hypothesis";


(* ::Input::Initialization:: *)
oneFullCycleV0::usage="";


(* ::Input::Initialization:: *)
Begin["`Private`"]


(* ::Input::Initialization:: *)
(*Context[zPt];
Context[qPt];*)


(* ::Input::Initialization:: *)
oneFullCycleV0[tissue_,timestep_,sigma_,genome_,fileNameSis_,transcriptionPara_:{},spaceParameters1_:{1,0.5,0,-2,0.35,-2},growthParameters_:{0}]:=Module[{newtissue,oneCycle,cellCycles,cellorder,cpos,icell,transcriptionTime,cyclePhase,copies,ploidy,tCell,str,timerange,tempCell,spaceParameters,polarityOpt,newcellcylceduration,shortestToMphase}
,
spaceParameters=spaceParameters1;
polarityOpt=spaceParameters1[[3]];
(*Print[spaceParameters];*)
(*-2 closepack,-1 coalesce, -3 relative volume sizeR, else spaceparameters = distance to move*)


(*
transcriptionPara[[1]] is the gene network
transcriptionPara[[2]] probability of transcripts remaining in the system
transcriptionPara[[3]] ploidy level
transcriptionPara[[4]] cell cycle increments
transcriptionPara[[5]] rnaPolII rate 0 is no rate
*)
ploidy=transcriptionPara[[3]];
oneCycle=Range[1,Length[tissue]];
If[spaceParameters[[1]]==1,
oneCycle=RandomSample[Range[1,Length[tissue]]];
];

newtissue=tissue;
(*Print[newtissue];*)
(*for each cell currently in the tissue*)
(*cellCR --\[Rule] center, radius, divisions {,Number of divisions,polarity direction},cellCycleInfo {,phase, Length of  last cycle,next cycle}, {{cycle length Now},{cycle Length Next}} (*These will be -100 if they are not holding any value, since zero may mean something*)
,{ GeneState Expression level}, transcripts ...ineages....} for last timestep*)
(*xC={{{0,0,0},1,{0,0.1},{0,0,1.16},{{1,0.01,0.15,-5} ,{0,0,0,0}}(*negative values ensure no transcription time*),{1, genomeI},{{1},{}}}(*,{{0,0.5,0},1,{0,0.1},{0,0,0},{1,genome, genomeI}}*)};*)
(*updates the cell cycles*)
(*calculated the time to the first Mphase, that is the shortest cycle*)
shortestToMphase=Min[Subtract@@#&/@newtissue[[All,4,3;;4]]];
For[cpos=1,cpos<=Length[oneCycle],cpos++,

icell=oneCycle[[cpos]]; (*cell number*)
cyclePhase=cellRelatedFunctions`getCellPhase[newtissue[[icell]],shortestToMphase];
newtissue[[icell,4,1]]=cyclePhase;

 (* maintaining trancript probability, trying to capture and average degredation rate, this may be improved by relating it to length*)
If[(newtissue[[icell,4,4]]==0) ,
If[(transcriptionPara[[2]]==0)||(newtissue[[icell,7,1]]=={}),newtissue[[icell,7,1]]={},
If[(transcriptionPara[[2]]<1),
newtissue[[icell,7,1]]=
cellRelatedFunctions`parentalTranscripts[newtissue[[icell,7,1]],transcriptionPara[[2]]];
(*random transcripts remain upto a probability transcriptionPara[[2]]*)
]; 
];
];

(*calcualte current trancription time available for a cell*)

transcriptionTime=Min[{newtissue[[icell,4,3]],newtissue[[icell,4,4]]+shortestToMphase}];
(*Print["Not 1"];*)
(*calculates the trancripts possible and their copies based on time and ploidy, we can add an inefficiacy term later*)
(*genome = Transpose[{genomeName,genomeLength}]*)
(*active genes = newtissue[[icell,6,2]]*)
(*transcriptionPara5 rpolII rate 0= no change, 2 is up to 2x faster or -2 slower,i didnt try both fast and slow*)
copies=cellRelatedFunctions`copiesT[ploidy,newtissue[[icell,6,2]] (*activegenes*),transcriptionPara[[5]](*rnalpol*),transcriptionTime,genome];
(*places the transcripts in the temp sections until division occurs*)
newtissue[[icell,7,2]]=cellRelatedFunctions`transcriptsT[copies,genome[[All,1]]];
(*Print["Not 2"];*)
(*temporary vs fixed transcripts, they only become fixed right before division*)
(*Print["Not 3"];*)

If[cyclePhase<=3, (*No Division Yet*)
newtissue[[icell,2]]=1; 
newtissue[[icell,4,4]]=newtissue[[icell,4,4]]+shortestToMphase;

(*growth*)
(*keeps transcripts in temp*)
(*changes the cell cycle duration either based on a normal distributions or some determined incremental value*)

,
(*(*only at M  phase does cell cycle changes*)*)

newcellcylceduration=newtissue[[icell,5,1]];

If[sigma>0,
(*Print[cellRelatedFunctions`cellcycleChangeOPT[{Max[{newtissue[[icell,5,1,#]],newtissue[[icell,5,2,#]]}]+(transcriptionPara[[4]]*sigma),sigma,0},-3]&/@Range[1,cyclePhase]];*)
newcellcylceduration=cellRelatedFunctions`cellcycleChangeOPT[{Max[{newtissue[[icell,5,1,#]],newtissue[[icell,5,2,#]]}]+(transcriptionPara[[4]]*sigma),sigma,0},-3]&/@Range[1,cyclePhase];];
If[sigma<-5,
newcellcylceduration=cellRelatedFunctions`cellcycleChangeOPT[{newtissue[[icell,5,1,#]],newtissue[[icell,5,2,#]],transcriptionPara[[4]]},-5]&/@Range[1,cyclePhase];];

newtissue[[icell,5,1]]=newcellcylceduration;

(*newtissue[[icell,5,1]]=-100&/@newtissue[[icell,5,1]];*)



(*move transcripts out of temp*)
newtissue[[icell,7,1]]=Join[newtissue[[icell,7,1]],newtissue[[icell,7,2]]];
newtissue[[icell,7,2]]={};
(*Print["div1",newtissue[[icell,5]]];*)


newtissue[[icell,4,4]]=0;(*go back to G1 =0in cell cycle time*)

newtissue[[icell,4,2]]=newtissue[[icell,4,2]]+newtissue[[icell,4,3]];(*accumulated cell cycle time*)

newtissue[[icell,4,3]]=Total[newtissue[[icell,5,1]]/. _?Negative->0];

(*current cycle time*)

(*increase divisions*)
(*direction of division*)
newtissue[[icell,3,3]]=cellRelatedFunctions`getunitDirectionOfDivision[icell,spaceParameters[[2]],newtissue,
{},polarityOpt];
(*Print[newtissue[[icell,3,3]]];*)
(*division*)
tempCell=cellRelatedFunctions`cellDivision[icell,newtissue,{spaceParameters[[2]],1-spaceParameters[[2]]},newtissue[[icell,3,3]],spaceParameters[[9]]];
tempCell[[1,3]][[2]]=tempCell[[1,3]][[2]]+1;(*division tracking*)
tempCell[[2,3]][[2]]=tempCell[[2,3]][[2]]+1;
(*tempCell[[1,3]][[3]]=tempCell[[1,3]][[3]];(*division tracking*)
tempCell[[2,3]][[3]]=tempCell[[1,3]][[3]];*)

(*distributes the transcripts*)
If[Length[newtissue[[icell,7,1]]]>0,
newtissue[[icell,7,1]]=RandomSample[newtissue[[icell,7,1]]];
tCell=cellRelatedFunctions`randDistofT[Length[newtissue[[icell,7,1]]]];
tempCell[[1,7,1]]=Take[newtissue[[icell,7,1]],tCell[[1]]];
tempCell[[2,7,1]]=Take[newtissue[[icell,7,1]],tCell[[2]]];
];

tempCell[[1,2]]=1;
tempCell[[2,2]]=1;
tempCell[[1,8]]=tempCell[[1,8]]<>ToString[icell]<>"1";
tempCell[[2,8]]=tempCell[[2,8]]<>ToString[icell]<>"2";

If[fileNameSis!= "nosave",
str = OpenAppend[fileNameSis];
	Write[str,{timestep,tempCell[[1,8]],tempCell[[2,8]]}];
	Close[str];
];

newtissue[[icell]]=tempCell[[1]];
newtissue=AppendTo[newtissue,tempCell[[2]]];
(*closepack*)

];(*if m phase (4) or not \[LessEqual]3*)
];(*for*)


(*Print["Problem13"];*)
(*change the cell cycle based on distance*)
If[sigma==-5&&(Length[newtissue]==2),
(*tempCell=cellRelatedFunctions`averageTissueSize[newtissue];*)
tempCell=Last[Sort[{EuclideanDistance[newtissue[[#,1]],{1,0,0}],#}&/@Range[1,Length[newtissue]]]];
(*Print["-5 ",newtissue[[tempCell[[2]],5]]];*)
If[newtissue[[tempCell[[2]],5,1,#]]<0,newtissue[[tempCell[[2]],5,2,#]]=newtissue[[tempCell[[2]],5,1,#]]+transcriptionPara[[4]];,
newtissue[[tempCell[[2]],5,1,#]]=newtissue[[tempCell[[2]],5,1,#]]+transcriptionPara[[4]];]&/@Range[1,cyclePhase];
(*Print["-5 after ",newtissue[[tempCell[[2]],5]]];*)
Table[newtissue[[i,3,1]]=If[Flatten[newtissue[[i,7]]]=={},0,Median[Flatten[newtissue[[i,7]]]]]/Max[genome[[All,2]]],{i,Length[newtissue]}];
];

Remove[oneCycle,cellCycles,cellorder,cpos,icell,transcriptionTime,cyclePhase,copies,ploidy,tCell,str,timerange,tempCell];
newtissue
]


(* ::Input::Initialization:: *)
End[]


(* ::Input::Initialization:: *)
Protect[Evaluate[$Context<>"*"]];


(* ::Input::Initialization:: *)
EndPackage[]
