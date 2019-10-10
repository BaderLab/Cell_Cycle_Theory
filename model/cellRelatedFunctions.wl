(* ::Package:: *)

(* ::Title:: *)
(*Cell Related Functions*)


(* ::Input::Initialization:: *)
Needs["coalescingToPackingFunctions`"]


(* ::Input::Initialization:: *)
BeginPackage["cellRelatedFunctions`"]


(* ::Input::Initialization:: *)
Unprotect["`*"];ClearAll["`*"];
(*unprotect and clear out old definitionsn-allows repeated loading and alterations*)


(* ::Input::Initialization:: *)
cellRelatedFunctions::usage="This package is where all functions that were to capture a cell behavior, rule, or biological first principle such as cell cycle, quiencence, division and so on";


(* ::Input::Initialization:: *)
cellDivision::usage=""


(* ::Input::Initialization:: *)
getunitDirectionOfDivision::usage="decides the polarity and the direction of cell division"


(* ::Input::Initialization:: *)
cellcycleChangeOPT::usage=""


(* ::Input::Initialization:: *)
cellcycle01::usage=""


(* ::Input::Initialization:: *)
cellcycle02::usage=""


(* ::Input::Initialization:: *)
cellcycle03::usage=""


(* ::Input::Initialization:: *)
getCellOrder::usage="orders cells based on cell cycle duration, up to the first Mphase, one division at a time"


(* ::Input::Initialization:: *)
parentalTranscripts::usage="calculates the probaility and keeps a certain number of transcripts from parental cell"


(* ::Input::Initialization:: *)
copiesT::usage="calculates the expected number of transcript copies"


(* ::Input::Initialization:: *)
transcriptsT::usage="calculates the total number of transcripts in a cell based on expected copies and active genome"


(* ::Input::Initialization:: *)
randDistofT::usage="divided the transcripts randomly between the progeny cells"


(* ::Input::Initialization:: *)
getCellPhase::usage="for each cell phase is calculated that fits within the time"


(* ::Input::Initialization:: *)
Begin["`Private`"]


(* ::Input::Initialization:: *)
(*Context[zPt];
Context[qPt];*)


(* ::Input::Initialization:: *)
cellDivision[icell_,organtissue_,sizeRatio_,directionVector_,cp_:-2]:=Module[{cell1,cell2},
(*one i calculate a direction to divide, I then have to use this to create two daugther cells in opposite directions from each other*)
cell2=cell1=organtissue[[icell]];
(*does the volume matter? and I need to replace an old cell with 2 new ones*)
cell2[[2]]=coalescingToPackingFunctions`relativeVolume[organtissue[[icell,2]],sizeRatio[[2]]];
cell1[[2]]=coalescingToPackingFunctions`relativeVolume[organtissue[[icell,2]],sizeRatio[[1]]];
(*what they have different directions*)
cell1[[1]]=organtissue[[icell,1]]-directionVector*(cell1[[2]]/2);
cell2[[1]]=organtissue[[icell,1]]+directionVector*(cell2[[2]]/2);
(*coalesceTwospheres[{cell1,cell2}]*)
(*Print[{cell1,cell2}];*)
coalescingToPackingFunctions`moveTwospheres[{cell1,cell2},Which[cp==-1,coalescingToPackingFunctions`centerDistance[cell1[[2]],cell2[[2]],Pi*60/180],cp==-2,cell1[[2]]+cell2[[2]],
cp>=0.,cp]]
(*{cell1,cell2}*)
]


(* ::Input::Initialization:: *)
getunitDirectionOfDivision[icell_,sizeR_,organtissue_,neighPos_,polarityOpt_]:=Module[{c2N,res,relv,uv},
(*there are few opts, 0\[Rule] random, 1\[Rule] spindle orient towards the neighbours (*neighbour chosen at random*),2\[Rule]spindle orient perpendicular to 1?*)
If[((polarityOpt[[1]]> 0)&&(polarityOpt[[1]]<= 3)),
c2N=If[((Length[neighPos]<1 )||(Length[organtissue]<2)),{},Complement[Take[neighPos[[3]],Count[neighPos[[1]],1]],{icell}]];
,c2N={};];
relv=coalescingToPackingFunctions`relativeVolume[organtissue[[icell,2]],sizeR];
(*Print["in ",polarityOpt," ",polarityOpt[[1]]];*)
(*RandomChoice[c2N]; *)(*picks a neighbour for the direction, the more neighbours on one side the higher the prob the direction will point twords the more junctions*) (*this resembles the cell-cell contact rule, where cells divide perpendicularly to the area of contact of one cell with another*)
If[((Length[c2N]<1)&&(polarityOpt[[1]]<= 3))||((organtissue[[icell,3,3]]=={})&&((polarityOpt[[1]]==4)))||((polarityOpt[[2]]=={})&&((polarityOpt[[1]]==5)))||
(polarityOpt[[1]]==0),
(*random direction*)

Do[
relv=coalescingToPackingFunctions`relativeVolume[organtissue[[icell,2]],sizeR];(*res={ organtissue[[icell,1]]+(*RandomChoice[{-1,1},1][[1]]**)coalescingToPackingFunctions`getUnitVector[RandomReal[{-relv,relv},3],organtissue[[icell,1]]]*(relv/2),relv};*)res= {organtissue[[icell,1]],organtissue[[icell,1]]+RandomReal[{-relv,relv},3]};If[EuclideanDistance[ organtissue[[icell,1]],res[[2]]]==0,k=0];,{k,1,1}];(*do*)
(*Print["1",res];*)
,
Which[polarityOpt[[1]]==1,
(*neighbours determine direction*)
res={organtissue[[icell,1]],organtissue[[RandomChoice[c2N],1]]+RandomReal[{-relv,relv},3]};(*Print["5",res];*),
polarityOpt[[1]]==2,
(*neighbours determine direction*)
res= {organtissue[[icell,1]],Mean[organtissue[[#,1]]&/@c2N]+RandomReal[{-relv,relv},3]};(*Print["4",res];*),
polarityOpt[[1]]==3,
(*neighbours determine direction*)res= {organtissue[[icell,1]],organtissue[[Last[c2N],1]]+RandomReal[{-relv,relv},3]};(*Print["3",res];*),
(polarityOpt[[1]]==4),
(*fixed, each cell carries a fixed direction*)
res={organtissue[[icell,3,3]],organtissue[[icell,3,3]]};,
(polarityOpt[[1]]==5),
(*random selection from a list*)
res=RandomSample[polarityOpt[[2]],1][[1]];
res={res,res};
(*Print["2",res];*)
];(*which*)
];(*if*)

uv=coalescingToPackingFunctions`getUnitVector[organtissue[[icell,1]],res[[1]]];
Which[polarityOpt[[3]]==1,
uv=uv*{1,0,0};
(*uv[[3]]=polarityOpt[[4]];*),
polarityOpt[[3]]==2,
uv=uv*{1,1,0};
(*uv[[3]]=polarityOpt[[4]];*)
];
(*Print["2",uv];*)
uv
]


(* ::Input::Initialization:: *)
cellcycle01[val_]:=RandomReal[val[[1]],WorkingPrecision->2]+val[[2]]+val[[3]]


(* ::Input::Initialization:: *)
cellcycle02[val_]:=RandomVariate[PoissonDistribution[val[[1]]]]+val[[2]]+val[[3]]


(* ::Input::Initialization:: *)
cellcycle03[val_]:=RandomVariate[NormalDistribution[val[[1]],val[[2]]]]+val[[3]]


(* ::Input::Initialization:: *)
cellcycleChangeOPT[val_,opt_]:=Which[opt==0,val[[3]]+val[[1]],
opt==-1,cellcycle01[val],
opt==-2,cellcycle02[val],
opt==-3,cellcycle03[val],
opt==-4,Max[{1,cellcycle03[val]}],
opt==-5,(Max[{val[[1]],val[[2]]}]*val[[3]])+Max[{val[[1]],val[[2]]}]
]


(* ::Input::Initialization:: *)
parentalTranscripts[transcripts_,probability_]:=RandomSample[transcripts,UpTo[((Floor[Length[transcripts]*probability])/. _?Negative->0)]
] 


(* ::Input::Initialization:: *)
copiesT[ploidy_,cellactivegeneList_,rnaPolRate_,transcriptionTime_,genome_]:=Block[{transcriptTime=(transcriptionTime/If[rnaPolRate[[2]]>0,1&/@genome[[All,2]],genome[[All,2]]])},
(*rnaPolRate[[2]]>0 is no cell cycle or gene length*)
(cellactivegeneList*ploidy*(
Floor[(Total[#*{If[rnaPolRate[[2]]>0,0,1],If[rnaPolRate[[1]]!= 0,RandomReal[Sort[{0,rnaPolRate[[1]]}]],0]}]+rnaPolRate[[2]])&/@transcriptTime]))
]



(* ::Input::Initialization:: *)
transcriptsT[copies_,activegenome_]:=Flatten[Tuples[{#[[1]]},#[[2]]][[1]]&/@Transpose[{activegenome,copies}]]


(* ::Input::Initialization:: *)
randDistofT[transcriptLength_]:=({transcriptLength,0}-RandomInteger[{1,transcriptLength}])


(* ::Input::Initialization:: *)
getCellPhase[cell_,shortestToMphase_]:=Module[{leftcc,a},leftcc=Subtract@@cell[[4,3;;4]];
If[leftcc>shortestToMphase,a=Select[Drop[Transpose[{Range[1,4],Accumulate[cell[[5,1]]/.{0.->0.,_?Negative->0}]}],-1],#[[2]]<=shortestToMphase&];If[a=={},1,Last[a][[2]]],4]
]


(* ::Input::Initialization:: *)
End[]


(* ::Input::Initialization:: *)
Protect[Evaluate[$Context<>"*"]];


(* ::Input::Initialization:: *)
EndPackage[]
