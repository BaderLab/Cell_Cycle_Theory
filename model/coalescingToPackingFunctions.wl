(* ::Package:: *)

(* ::Input::Initialization:: *)
BeginPackage["coalescingToPackingFunctions`"]


(* ::Input::Initialization:: *)
Unprotect["`*"];ClearAll["`*"];
(*unprotect and clear out old definitionsn-allows repeated loading and alterations*)


(* ::Input::Initialization:: *)
getUnitVector::usage="calculates the unit vectors between two vectors";


(* ::Input::Initialization:: *)
centerDistance::usage="calculates the distance between two circles if they need to meet at a certain angle";


(* ::Input::Initialization:: *)
moveTwospheres::usage=" when interaction occurs this moves the Cells some distance towards each other based on plateau's law, where the angles between the radi must make 60 degrees, or Pi*60/180 radians, or exacty r1+r2 dist away or some other distance based on cell attraction or repulsion";


(* ::Input::Initialization:: *)
relativeVolume::usage="calculates the relative spherical volume of a daughter cell given a specified size, 70% or mother or 50% of mother";


(* ::Input::Initialization:: *)
Begin["`Private`"]


(* ::Input::Initialization:: *)
(*Context[zPt];
Context[qPt];*)


(* ::Input::Initialization:: *)
getUnitVector[vectA_,vectB_]:=If[(vectA==vectB)||(EuclideanDistance[vectA,vectB]==0),vectA,(vectA-vectB)/(EuclideanDistance[vectA,vectB])]


(* ::Input::Initialization:: *)
centerDistance[rA_, rB_, angle_]:= N[Sqrt[(rA^2)+(rB^2)-(2*rA*rB)*(Cos[angle])]]


(* ::Input::Initialization:: *)
moveTwospheres[spheres_, dist_]:=Module[{cells,d},
cells=spheres;
d=(getUnitVector[spheres[[1,1]],spheres[[2,1]]]*dist);
If[EuclideanDistance[(spheres[[1,1]]-d),(spheres[[1,1]]-spheres[[1,1]])]<=0.01,{cells[[1]],ReplacePart[cells[[2]],1->cells[[1,1]]+d]},
{cells[[1]],ReplacePart[cells[[2]],1->cells[[1,1]]-d]}
]
]


(* ::Input::Initialization:: *)
relativeVolume[orgRadius_, sizeRatio_]:=(Abs[orgRadius]/.Solve[(4/3Pi *(orgRadius^3)) *sizeRatio==(4/3Pi radius^3),radius,WorkingPrecision->10])[[1]]


(* ::Input::Initialization:: *)
End[]


(* ::Input::Initialization:: *)
Protect[Evaluate[$Context<>"*"]];


(* ::Input::Initialization:: *)
EndPackage[]
