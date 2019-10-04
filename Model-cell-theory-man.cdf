(* Content-type: application/vnd.wolfram.cdf.text *)

(*** Wolfram CDF File ***)
(* http://www.wolfram.com/cdf *)

(* CreatedBy='Mathematica 12.0' *)

(***************************************************************************)
(*                                                                         *)
(*                                                                         *)
(*  Under the Wolfram FreeCDF terms of use, this file and its content are  *)
(*  bound by the Creative Commons BY-SA Attribution-ShareAlike license.    *)
(*                                                                         *)
(*        For additional information concerning CDF licensing, see:        *)
(*                                                                         *)
(*         www.wolfram.com/cdf/adopting-cdf/licensing-options.html         *)
(*                                                                         *)
(*                                                                         *)
(***************************************************************************)

(*CacheID: 234*)
(* Internal cache information:
NotebookFileLineBreakTest
NotebookFileLineBreakTest
NotebookDataPosition[      1088,         20]
NotebookDataLength[    136384,       3135]
NotebookOptionsPosition[    136886,       3132]
NotebookOutlinePosition[    137223,       3147]
CellTagsIndexPosition[    137180,       3144]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{

Cell[CellGroupData[{
Cell[BoxData[
 RowBox[{"Manipulate", "[", "\[IndentingNewLine]", 
  RowBox[{"(*", 
   RowBox[{
    RowBox[{
     RowBox[{
     "number", " ", "of", " ", "initially", " ", "active", " ", "genes"}], 
     "..."}], "for", " ", "now", " ", "it", " ", "is", " ", "just", " ", 
    "1"}], " ", "*)"}], "\[IndentingNewLine]", 
  RowBox[{"(*", 
   RowBox[{
    RowBox[{
    "gene", " ", "name", " ", "is", " ", "just", " ", "their", " ", 
     "location"}], ",", " ", 
    RowBox[{"for", " ", "easy", " ", "identification"}]}], "*)"}], 
  "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{
    RowBox[{"genomeLength", "=", 
     RowBox[{"Range", "[", 
      RowBox[{"L1", ",", "LG", ",", 
       RowBox[{"LG", "/", "G"}]}], "]"}]}], ";", "\[IndentingNewLine]", 
    RowBox[{"genomeName", "=", 
     RowBox[{"Range", "[", 
      RowBox[{"1", ",", 
       RowBox[{"Length", "[", "genomeLength", "]"}]}], "]"}]}], ";", " ", 
    RowBox[{"(*", 
     RowBox[{
      RowBox[{"label", " ", "of", " ", "the", " ", "gene"}], ",", " ", 
      RowBox[{"1", "-", 
       RowBox[{
       "#", " ", "if", " ", "it", " ", "is", " ", "not", " ", "based", " ", 
        "on", " ", "a", " ", "system"}]}]}], "*)"}], "\[IndentingNewLine]", 
    StyleBox[
     RowBox[{"(*", 
      RowBox[{"start", " ", "with", " ", "one", " ", "cell"}], "*)"}], 
     "Input"], 
    StyleBox["\[IndentingNewLine]", "Input"], 
    StyleBox[
     RowBox[{"xC", "=", 
      RowBox[{"{", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"0", ",", "0", ",", "0"}], "}"}], " ", 
         RowBox[{"(*", "center", "*)"}], ",", "1", " ", 
         RowBox[{"(*", "radius", "*)"}], ",", 
         RowBox[{"{", 
          RowBox[{"0", ",", "0.1", ",", 
           RowBox[{"{", "}"}]}], "}"}], 
         RowBox[{"(*", 
          RowBox[{"{", 
           RowBox[{",", 
            RowBox[{"Number", " ", "of", " ", "divisions"}], ",", 
            RowBox[{"polarity", " ", "direction"}]}], "}"}], "*)"}], ",", 
         RowBox[{"{", 
          RowBox[{"0", ",", "0", ",", 
           RowBox[{"Total", "[", 
            RowBox[{"ccT", "/.", 
             RowBox[{
              RowBox[{"_", "?", "Negative"}], "\[Rule]", "0"}]}], "]"}], ",", 
           "0"}], "}"}], ",", 
         RowBox[{"{", " ", 
          RowBox[{
           RowBox[{"{", 
            RowBox[{"ccT", ",", 
             RowBox[{"-", "5"}], ",", 
             RowBox[{"-", "5"}], ",", 
             RowBox[{"-", "5"}]}], "}"}], ",", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"-", "100"}], ",", 
             RowBox[{"-", "100"}], ",", 
             RowBox[{"-", "100"}], ",", 
             RowBox[{"-", "100"}]}], "}"}]}], "}"}], 
         RowBox[{"(*", 
          RowBox[{
          "negative", " ", "values", " ", "ensure", " ", "no", " ", 
           "transcription", " ", "time"}], "*)"}], " ", 
         RowBox[{"(*", 
          RowBox[{
           RowBox[{"{", 
            RowBox[{",", "phase", ",", " ", 
             RowBox[{"Length", " ", "of", "  ", "last", " ", "cycle"}], ",", 
             RowBox[{"next", " ", "cycle"}]}], "}"}], ",", " ", 
           "\[IndentingNewLine]", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{"cycle", " ", "length", " ", "Now"}], "}"}], ",", 
             RowBox[{"{", 
              RowBox[{"cycle", " ", "Length", " ", "Next"}], "}"}]}], "}"}]}],
           "*)"}], " ", ",", 
         RowBox[{"{", 
          RowBox[{"1", ",", 
           RowBox[{
            RowBox[{"Tuples", "[", 
             RowBox[{
              RowBox[{"{", "1", "}"}], ",", 
              RowBox[{"Length", "[", "genomeLength", "]"}]}], "]"}], "[", 
            RowBox[{"[", "1", "]"}], "]"}]}], "}"}], ",", 
         RowBox[{"{", 
          RowBox[{"(*", "genomeLength", "*)"}], " ", 
          RowBox[{
           RowBox[{"{", "}"}], 
           RowBox[{"(*", "permanent", "*)"}], ",", 
           RowBox[{"{", "}"}]}], 
          RowBox[{"(*", 
           RowBox[{
            RowBox[{"new", "/", "temp"}], " ", "transcripts"}], "*)"}], "}"}],
          ",", 
         RowBox[{
          RowBox[{"ToString", "[", "0", "]"}], "<>", "\"\<-1\>\""}]}], 
        RowBox[{"(*", 
         RowBox[{"cell", " ", "name"}], "*)"}], "}"}], "}"}]}], "Input"], 
    StyleBox[";", "Input"], 
    StyleBox["\[IndentingNewLine]", "Input"], 
    RowBox[{"Table", "[", "\[IndentingNewLine]", 
     RowBox[{
      RowBox[{
       RowBox[{"xC", "=", 
        RowBox[{"oneFullCycleV0", "[", 
         RowBox[{"xC", ",", "timestep", ",", "ccTsigma", ",", 
          RowBox[{"Transpose", "[", 
           RowBox[{"{", 
            RowBox[{"genomeName", ",", "genomeLength"}], "}"}], "]"}], ",", 
          "\"\<nosave\>\"", ",", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{
             RowBox[{"Tuples", "[", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{"_", "\[Rule]", "1"}], "}"}], ",", 
               RowBox[{"{", 
                RowBox[{
                 RowBox[{"Length", "[", "genomeName", "]"}], ",", 
                 RowBox[{"Length", "[", "genomeName", "]"}]}], "}"}]}], "]"}],
              "[", 
             RowBox[{"[", "1", "]"}], "]"}], ",", "maternal", ",", "ploidy", 
            ",", "incCycle", ",", 
            RowBox[{"{", 
             RowBox[{"0", ",", "0"}], "}"}]}], 
           RowBox[{"(*", "rpol", "*)"}], "}"}], "\[IndentingNewLine]", 
          RowBox[{"(*", 
           RowBox[{
            RowBox[{"[", 
             RowBox[{"[", "1", "]"}], "]"}], " ", "is", " ", "the", " ", 
            "gene", " ", 
            RowBox[{"network", "\n", "[", 
             RowBox[{"[", "2", "]"}], "]"}], " ", "probability", " ", "of", 
            " ", "transcripts", " ", "remaining", " ", "in", " ", "the", " ", 
            
            RowBox[{"system", "\n", "[", 
             RowBox[{"[", "3", "]"}], "]"}], " ", "ploidy", " ", 
            RowBox[{"level", "\n", "[", 
             RowBox[{"[", "4", "]"}], "]"}], " ", "cell", " ", "cycle", " ", 
            RowBox[{"increments", "\n", "[", 
             RowBox[{"[", "5", "]"}], "]"}], " ", "rnaPolII", " ", "rate", 
            " ", "0", " ", "is", " ", "no", " ", "rate"}], "*)"}], ",", 
          RowBox[{"Join", "[", 
           RowBox[{
            RowBox[{"{", 
             RowBox[{"0", ",", "0.5", ",", 
              RowBox[{"{", 
               RowBox[{"0", ",", "0", ",", "0", ",", "0", ",", "0"}], "}"}]}],
              "}"}], ",", 
            RowBox[{"{", 
             RowBox[{"0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0"}], 
             "}"}]}], "]"}], ",", 
          RowBox[{"{", "0", "}"}]}], "]"}]}], ";", "\[IndentingNewLine]", 
       RowBox[{"tt", "=", 
        RowBox[{
         RowBox[{
          RowBox[{"Flatten", "[", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"#", "[", 
              RowBox[{"[", "8", "]"}], "]"}], ",", 
             RowBox[{"#", "[", 
              RowBox[{"[", 
               RowBox[{"4", ",", "1"}], "]"}], "]"}], ",", 
             RowBox[{"StringJoin", "[", 
              RowBox[{
               RowBox[{
                RowBox[{"ToString", "[", "#", "]"}], "&"}], "/@", 
               RowBox[{"#", "[", 
                RowBox[{"[", 
                 RowBox[{"6", ",", "2"}], "]"}], "]"}]}], "]"}], ",", 
             RowBox[{"Total", "[", 
              RowBox[{
               RowBox[{"#", "[", 
                RowBox[{"[", "5", "]"}], "]"}], "/.", 
               RowBox[{
                RowBox[{"_", "?", "Negative"}], "\[Rule]", "0"}]}], "]"}], 
             ",", 
             RowBox[{
              RowBox[{"temp", "=", 
               RowBox[{"Counts", "[", 
                RowBox[{"Flatten", "[", 
                 RowBox[{"#", "[", 
                  RowBox[{"[", "7", "]"}], "]"}], "]"}], "]"}]}], ";", 
              "\[IndentingNewLine]", 
              RowBox[{"tt", "=", 
               RowBox[{
                RowBox[{"Tuples", "[", 
                 RowBox[{
                  RowBox[{"{", "0", "}"}], ",", 
                  RowBox[{"Length", "[", "genomeName", "]"}]}], "]"}], "[", 
                RowBox[{"[", "1", "]"}], "]"}]}], ";", "\[IndentingNewLine]", 
              
              RowBox[{
               RowBox[{
                RowBox[{"(", 
                 RowBox[{
                  RowBox[{"tt", "[", 
                   RowBox[{"[", "#", "]"}], "]"}], "=", 
                  RowBox[{"temp", "[", "#", "]"}]}], ")"}], "&"}], "/@", 
               RowBox[{"Keys", "[", "temp", "]"}]}], ";", 
              "\[IndentingNewLine]", 
              StyleBox["tt", "Input"]}]}], "\[IndentingNewLine]", "}"}], 
           "]"}], "&"}], "/@", "\[InvisibleSpace]", "xC"}]}], ";"}], ",", 
      "\[IndentingNewLine]", 
      RowBox[{"{", 
       RowBox[{"timestep", ",", "0", ",", "cDivisions"}], "}"}]}], "]"}], ";",
     "\[IndentingNewLine]", 
    RowBox[{"tt", "=", 
     RowBox[{"tt", "[", 
      RowBox[{"[", 
       RowBox[{"All", ",", 
        RowBox[{
         RowBox[{"-", "1"}], "*", 
         RowBox[{"Range", "[", 
          RowBox[{"G", ",", "1", ",", 
           RowBox[{"-", "1"}]}], "]"}]}]}], "]"}], "]"}]}], ";", 
    "\[IndentingNewLine]", 
    RowBox[{"pp", "=", 
     RowBox[{"(", 
      RowBox[{
       RowBox[{"cc", "=", 
        RowBox[{
         RowBox[{"Partition", "[", 
          RowBox[{
           RowBox[{"{", 
            RowBox[{"0", ",", 
             RowBox[{
              RowBox[{"LG", "/", "3"}], "+", "0.05"}], ",", 
             RowBox[{
              RowBox[{"2", "*", 
               RowBox[{"LG", "/", "3"}]}], "+", "0.05"}], ",", 
             RowBox[{"LG", "+", "0.05"}]}], "}"}], ",", "2", ",", "1"}], 
          "]"}], "//", "N"}]}], ";", "\[IndentingNewLine]", 
       RowBox[{"col1", "=", 
        RowBox[{"Table", "[", 
         RowBox[{
          RowBox[{"Flatten", "[", 
           RowBox[{
            RowBox[{
             RowBox[{"Position", "[", 
              RowBox[{"genomeLength", ",", "#"}], "]"}], "&"}], "/@", 
            RowBox[{"Select", "[", 
             RowBox[{"genomeLength", ",", " ", 
              RowBox[{
               RowBox[{
                RowBox[{"#", ">=", 
                 RowBox[{"cc", "[", 
                  RowBox[{"[", 
                   RowBox[{"i", ",", "1"}], "]"}], "]"}]}], " ", "&&", " ", 
                RowBox[{"#", "<", 
                 RowBox[{"cc", "[", 
                  RowBox[{"[", 
                   RowBox[{"i", ",", "2"}], "]"}], "]"}]}]}], "&"}]}], 
             "]"}]}], "]"}], ",", 
          RowBox[{"{", 
           RowBox[{"i", ",", "1", ",", 
            RowBox[{"Length", "[", "cc", "]"}]}], "}"}]}], "]"}]}], ";", 
       "\[IndentingNewLine]", 
       RowBox[{"Table", "[", 
        RowBox[{
         RowBox[{"If", "[", 
          RowBox[{
           RowBox[{
            RowBox[{"col1", "[", 
             RowBox[{"[", "i", "]"}], "]"}], "\[NotEqual]", " ", 
            RowBox[{"{", "}"}]}], ",", "\[IndentingNewLine]", 
           RowBox[{"Mean", "/@", 
            RowBox[{"tt", "[", 
             RowBox[{"[", 
              RowBox[{"All", ",", 
               RowBox[{"Range", "[", 
                RowBox[{
                 RowBox[{"Min", "[", 
                  RowBox[{"col1", "[", 
                   RowBox[{"[", "i", "]"}], "]"}], "]"}], ",", 
                 RowBox[{"Max", "[", 
                  RowBox[{"col1", "[", 
                   RowBox[{"[", "i", "]"}], "]"}], "]"}]}], "]"}]}], "]"}], 
             "]"}]}], ",", 
           RowBox[{"{", "0", "}"}]}], "]"}], ",", 
         RowBox[{"{", 
          RowBox[{"i", ",", "1", ",", 
           RowBox[{"Length", "[", "col1", "]"}]}], "}"}]}], "]"}]}], ")"}]}], 
    ";", "\[IndentingNewLine]", 
    RowBox[{"BoxWhiskerChart", "[", 
     RowBox[{
      RowBox[{"{", "pp", "}"}], ",", 
      RowBox[{"ChartStyle", "\[Rule]", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"Lighter", "[", 
          RowBox[{"Orange", ",", "0.20"}], "]"}], ",", "\[IndentingNewLine]", 
         
         RowBox[{
          RowBox[{"ColorData", "[", "\"\<ThermometerColors\>\"", "]"}], "[", 
          "0.15", "]"}], ",", 
         RowBox[{
          RowBox[{"ColorData", "[", "24", "]"}], "[", "8", "]"}]}], "}"}]}], 
      ",", 
      RowBox[{"BarSpacing", "\[Rule]", 
       RowBox[{"{", 
        RowBox[{"0", ",", "2", ",", "4"}], "}"}]}], ",", 
      RowBox[{"ChartLabels", "\[Rule]", 
       RowBox[{"{", 
        RowBox[{"(*", 
         RowBox[{"\"\<Cell Cycle Duration\>\"", ","}], "*)"}], 
        RowBox[{
         RowBox[{"{", "ccT", "}"}], ",", 
         RowBox[{"{", 
          RowBox[{
          "\"\<short\>\"", ",", "\"\<medium\>\"", ",", "\"\<long\>\""}], 
          "}"}]}], "}"}]}], ",", 
      RowBox[{"ChartLegends", "\[Rule]", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"\"\<Short \[LessEqual]\>\"", "<>", " ", 
          RowBox[{"ToString", "[", 
           RowBox[{
            RowBox[{"LG", "/", "3"}], "+", "0.05"}], "]"}]}], ",", 
         RowBox[{"\"\<Medium \[LessEqual]\>\"", "<>", 
          RowBox[{"ToString", "[", 
           RowBox[{
            RowBox[{"2", "*", 
             RowBox[{"LG", "/", "3"}]}], "+", "0.05"}], "]"}]}], ",", 
         RowBox[{"\"\<Long \[LessEqual]\>\"", " ", "<>", 
          RowBox[{"ToString", "[", 
           RowBox[{"LG", "+", "0.05"}], "]"}]}]}], "}"}]}], ",", 
      RowBox[{"FrameStyle", "\[Rule]", "Black"}], ",", 
      RowBox[{"FrameLabel", "\[Rule]", 
       RowBox[{"{", 
        RowBox[{
        "\"\<Cell Cycle Duration (hrs)\>\"", ",", 
         "\"\<Transcript Count per Cell\>\""}], "}"}]}], ",", 
      RowBox[{"PlotLabel", "\[Rule]", 
       RowBox[{"Style", "[", 
        RowBox[{"\"\<Simulation\>\"", ",", "Black"}], "]"}]}], ",", 
      RowBox[{"BaseStyle", "\[Rule]", 
       RowBox[{"{", 
        RowBox[{"18", ",", "Black", ",", "\"\<Helvetica\>\""}], "}"}]}], ",", 
      
      RowBox[{"ImageSize", "\[Rule]", "400"}]}], "]"}]}], 
   "\[IndentingNewLine]", ",", "\[IndentingNewLine]", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"L1", ",", "1", " ", ",", "\"\<L1\>\""}], "}"}], ",", "1", ",", 
     "10"}], "}"}], ",", "\[IndentingNewLine]", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"LG", ",", "3", " ", ",", "\"\<LG\>\""}], "}"}], ",", "1", ",", 
     "10"}], "}"}], ",", "\[IndentingNewLine]", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"G", ",", "3", " ", ",", "\"\<G\>\""}], "}"}], ",", "1", ",", 
     "10", ",", "1"}], "}"}], ",", 
   StyleBox["\[IndentingNewLine]", "Input"], 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"maternal", ",", "0", ",", "\"\<Half-Life\>\""}], "}"}], ",", 
     "0", ",", "1"}], "}"}], ",", " ", 
   RowBox[{"(*", 
    RowBox[{"half", " ", 
     RowBox[{"life", "/", "transcript"}], " ", "degradation", " ", 
     "probability"}], "*)"}], "\[IndentingNewLine]", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"cDivisions", ",", "2", ",", "\"\<Cell Divisions\>\""}], "}"}], 
     ",", "1", ",", "10", ",", "1", ",", 
     RowBox[{"ContinuousAction", "->", "False"}]}], "}"}], ",", 
   "\[IndentingNewLine]", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"ccTsigma", ",", "0", ",", "\"\<Gaussian sigma\>\""}], "}"}], 
     ",", "0", ",", "1"}], "}"}], 
   RowBox[{"(*", 
    RowBox[{"{", 
     RowBox[{"(*", 
      RowBox[{"0.00000000001", ","}], "*)"}], "0", 
     RowBox[{"(*", 
      RowBox[{",", "0.03", ",", "0.01"}], "*)"}], 
     RowBox[{"(*", 
      RowBox[{",", "0.07"}], "*)"}], 
     RowBox[{"(*", 
      RowBox[{",", "0.08", ",", "0.09", ",", "0.1"}], "*)"}], 
     RowBox[{"(*", 
      RowBox[{"0.01", ",", "0.02", ",", "0.05"}], "*)"}], 
     RowBox[{"(*", 
      RowBox[{"0.05", ",", "0.1", ",", "0.2"}], "*)"}], 
     RowBox[{"(*", 
      RowBox[{",", "0", ",", 
       RowBox[{"-", "2"}]}], "*)"}], 
     RowBox[{"(*", 
      RowBox[{",", "0.1"}], "*)"}], "}"}], "*)"}], 
   RowBox[{"(*", 
    RowBox[{"sgma", "=", 
     RowBox[{"0", " ", "no", " ", "gausian"}]}], "*)"}], 
   RowBox[{"(*", 
    RowBox[{
     RowBox[{
      RowBox[{"increase", " ", "the", " ", "cell", " ", "cycle", " ", "by"}], 
      " ", "+", 
      RowBox[{"inc", "*", "sigma", " ", "if", " ", "sigma", " ", "is"}]}], 
     " ", ">", 
     RowBox[{"0", " ", "or", " ", "just", " ", "by", " ", "inc", "*", 
      RowBox[{"(", 
       RowBox[{"current", " ", "cell", " ", "cycle", " ", "time"}], ")"}]}]}],
     " ", "*)"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"ccT", ",", "2", ",", "\"\<Cell Cycle\>\""}], "}"}], ",", "1", 
     ",", "10", ",", 
     RowBox[{"ContinuousAction", "->", "False"}]}], "}"}], 
   RowBox[{"(*", 
    RowBox[{"cell", " ", "cycle"}], "*)"}], "\[IndentingNewLine]", 
   RowBox[{"(*", 
    RowBox[{
     RowBox[{
      RowBox[{"cell", " ", "cycle", " ", "time", " ", "in", " ", "hours"}], 
      ".."}], "or", " ", "some", " ", "unit", " ", "make", " ", "sure", " ", 
     "everything", " ", "else", " ", "matches"}], "*)"}], 
   "\[IndentingNewLine]", ",", "\[IndentingNewLine]", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"incCycle", ",", "0", ",", "\"\<increments\>\""}], "}"}], ",", 
     "0", ",", "10"}], "}"}], ",", "\[IndentingNewLine]", 
   RowBox[{"(*", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"rpol", ",", 
       RowBox[{"{", 
        RowBox[{"{", 
         RowBox[{"0", ",", "0"}], "}"}], 
        RowBox[{"(*", 
         RowBox[{",", 
          RowBox[{"{", 
           RowBox[{"1", ",", "0"}], "}"}]}], "*)"}], 
        RowBox[{"(*", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{"0.5", ",", "0"}], "}"}], ",", 
          RowBox[{"{", 
           RowBox[{"1", ",", "0"}], "}"}], ",", 
          RowBox[{"{", 
           RowBox[{"2", ",", "0"}], "}"}], ",", 
          RowBox[{"{", 
           RowBox[{"0.5", ",", "10"}], "}"}], ",", 
          RowBox[{"{", 
           RowBox[{"1", ",", "10"}], "}"}], ",", 
          RowBox[{"{", 
           RowBox[{"2", ",", "10"}], "}"}]}], "*)"}], "}"}]}], 
      "\[IndentingNewLine]", 
      RowBox[{"(*", 
       RowBox[{
        RowBox[{"2", "\[Rule]", " ", 
         RowBox[{
         "if", " ", "positive", " ", "means", " ", "baseline", " ", 
          "rate"}]}], ",", " ", 
        RowBox[{
        "because", " ", "gene", " ", "length", " ", "doesnt", " ", 
         "mattr"}]}], "*)"}], 
      RowBox[{"(*", 
       RowBox[{"rna", " ", "Polimeraze"}], " ", "*)"}], "}"}], ","}], "*)"}], 
   "\[IndentingNewLine]", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"ploidy", ",", "1", ",", "\"\<ploidy\>\""}], "}"}], ",", "1", 
     ",", "5", ",", "1"}], "}"}], ",", "\[IndentingNewLine]", 
   RowBox[{"(*", 
    RowBox[{
     RowBox[{"SaveDefinitions", "->", "True"}], ","}], "\[IndentingNewLine]", 
    "*)"}], 
   RowBox[{"(*", "PARAMETERs", "*)"}], "\[IndentingNewLine]", 
   RowBox[{"ControlPlacement", "\[Rule]", "Left"}], ",", 
   RowBox[{"SynchronousUpdating", "\[Rule]", "False"}], ",", 
   RowBox[{"AutorunSequencing", "\[Rule]", 
    RowBox[{"{", 
     RowBox[{"Automatic", ",", "0"}], "}"}]}], ",", 
   RowBox[{"ContinuousAction", "\[Rule]", "None"}], ",", 
   RowBox[{"LabelStyle", "\[Rule]", 
    RowBox[{"Directive", "[", 
     RowBox[{"{", 
      RowBox[{"\"\<Helvetica\>\"", ",", "Black", ",", "14"}], "}"}], "]"}]}], 
   ",", "\[IndentingNewLine]", 
   RowBox[{"Initialization", "\[RuleDelayed]", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"SeedRandom", "[", 
       RowBox[{"Method", "\[Rule]", "\"\<MersenneTwister\>\""}], "]"}], ",", 
      RowBox[{"ContinuousAction", "\[Rule]", "False"}], ",", 
      "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"getUnitVector", "[", 
        RowBox[{"vectA_", ",", "vectB_"}], "]"}], ":=", 
       RowBox[{"If", "[", 
        RowBox[{
         RowBox[{
          RowBox[{"(", 
           RowBox[{"vectA", "==", "vectB"}], ")"}], "||", 
          RowBox[{"(", 
           RowBox[{
            RowBox[{"EuclideanDistance", "[", 
             RowBox[{"vectA", ",", "vectB"}], "]"}], "==", "0"}], ")"}]}], 
         ",", "vectA", ",", 
         RowBox[{
          RowBox[{"(", 
           RowBox[{"vectA", "-", "vectB"}], ")"}], "/", 
          RowBox[{"(", 
           RowBox[{"EuclideanDistance", "[", 
            RowBox[{"vectA", ",", "vectB"}], "]"}], ")"}]}]}], "]"}]}], ",", 
      "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"centerDistance", "[", 
        RowBox[{"rA_", ",", " ", "rB_", ",", " ", "angle_"}], "]"}], ":=", 
       " ", 
       RowBox[{"N", "[", 
        RowBox[{"Sqrt", "[", 
         RowBox[{
          RowBox[{"(", 
           RowBox[{"rA", "^", "2"}], ")"}], "+", 
          RowBox[{"(", 
           RowBox[{"rB", "^", "2"}], ")"}], "-", 
          RowBox[{
           RowBox[{"(", 
            RowBox[{"2", "*", "rA", "*", "rB"}], ")"}], "*", 
           RowBox[{"(", 
            RowBox[{"Cos", "[", "angle", "]"}], ")"}]}]}], "]"}], "]"}]}], 
      ",", 
      RowBox[{
       RowBox[{"relativeVolume", "[", 
        RowBox[{"orgRadius_", ",", " ", "sizeRatio_"}], "]"}], ":=", 
       RowBox[{
        RowBox[{"(", 
         RowBox[{
          RowBox[{"Abs", "[", "orgRadius", "]"}], "/.", 
          RowBox[{"Solve", "[", 
           RowBox[{
            RowBox[{
             RowBox[{
              RowBox[{"(", 
               RowBox[{
                RowBox[{"4", "/", "3"}], "Pi", " ", "*", 
                RowBox[{"(", 
                 RowBox[{"orgRadius", "^", "3"}], ")"}]}], ")"}], " ", "*", 
              "sizeRatio"}], "==", 
             RowBox[{"(", 
              RowBox[{
               RowBox[{"4", "/", "3"}], "Pi", " ", 
               RowBox[{"radius", "^", "3"}]}], ")"}]}], ",", "radius", ",", 
            RowBox[{"WorkingPrecision", "->", "10"}]}], "]"}]}], ")"}], "[", 
        RowBox[{"[", "1", "]"}], "]"}]}], ",", 
      RowBox[{
       RowBox[{"moveTwospheres", "[", 
        RowBox[{"spheres_", ",", " ", "dist_"}], "]"}], ":=", 
       RowBox[{"Module", "[", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"cells", ",", "d"}], "}"}], ",", "\n", 
         RowBox[{
          RowBox[{"cells", "=", "spheres"}], ";", "\n", 
          RowBox[{"d", "=", 
           RowBox[{"(", 
            RowBox[{
             RowBox[{"getUnitVector", "[", 
              RowBox[{
               RowBox[{"spheres", "[", 
                RowBox[{"[", 
                 RowBox[{"1", ",", "1"}], "]"}], "]"}], ",", 
               RowBox[{"spheres", "[", 
                RowBox[{"[", 
                 RowBox[{"2", ",", "1"}], "]"}], "]"}]}], "]"}], "*", 
             "dist"}], ")"}]}], ";", "\n", 
          RowBox[{"If", "[", 
           RowBox[{
            RowBox[{
             RowBox[{"EuclideanDistance", "[", 
              RowBox[{
               RowBox[{"(", 
                RowBox[{
                 RowBox[{"spheres", "[", 
                  RowBox[{"[", 
                   RowBox[{"1", ",", "1"}], "]"}], "]"}], "-", "d"}], ")"}], 
               ",", 
               RowBox[{"(", 
                RowBox[{
                 RowBox[{"spheres", "[", 
                  RowBox[{"[", 
                   RowBox[{"1", ",", "1"}], "]"}], "]"}], "-", 
                 RowBox[{"spheres", "[", 
                  RowBox[{"[", 
                   RowBox[{"1", ",", "1"}], "]"}], "]"}]}], ")"}]}], "]"}], "<=",
              "0.01"}], ",", 
            RowBox[{"{", 
             RowBox[{
              RowBox[{"cells", "[", 
               RowBox[{"[", "1", "]"}], "]"}], ",", 
              RowBox[{"ReplacePart", "[", 
               RowBox[{
                RowBox[{"cells", "[", 
                 RowBox[{"[", "2", "]"}], "]"}], ",", 
                RowBox[{"1", "->", 
                 RowBox[{
                  RowBox[{"cells", "[", 
                   RowBox[{"[", 
                    RowBox[{"1", ",", "1"}], "]"}], "]"}], "+", "d"}]}]}], 
               "]"}]}], "}"}], ",", "\n", 
            RowBox[{"{", 
             RowBox[{
              RowBox[{"cells", "[", 
               RowBox[{"[", "1", "]"}], "]"}], ",", 
              RowBox[{"ReplacePart", "[", 
               RowBox[{
                RowBox[{"cells", "[", 
                 RowBox[{"[", "2", "]"}], "]"}], ",", 
                RowBox[{"1", "->", 
                 RowBox[{
                  RowBox[{"cells", "[", 
                   RowBox[{"[", 
                    RowBox[{"1", ",", "1"}], "]"}], "]"}], "-", "d"}]}]}], 
               "]"}]}], "}"}]}], "\n", "]"}]}]}], "\n", "]"}]}], ",", 
      "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"cellDivision", "[", 
        RowBox[{
        "icell_", ",", "organtissue_", ",", "sizeRatio_", ",", 
         "directionVector_", ",", 
         RowBox[{"cp_:", "-", "2"}]}], "]"}], ":=", 
       RowBox[{"Module", "[", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"cell1", ",", "cell2"}], "}"}], ",", "\n", 
         RowBox[{"(*", 
          RowBox[{
           RowBox[{
           "one", " ", "i", " ", "calculate", " ", "a", " ", "direction", " ",
             "to", " ", "divide"}], ",", " ", 
           RowBox[{
           "I", " ", "then", " ", "have", " ", "to", " ", "use", " ", "this", 
            " ", "to", " ", "create", " ", "two", " ", "daugther", " ", 
            "cells", " ", "in", " ", "opposite", " ", "directions", " ", 
            "from", " ", "each", " ", "other"}]}], "*)"}], "\n", 
         RowBox[{
          RowBox[{"cell2", "=", 
           RowBox[{"cell1", "=", 
            RowBox[{"organtissue", "[", 
             RowBox[{"[", "icell", "]"}], "]"}]}]}], ";", "\n", 
          RowBox[{"(*", 
           RowBox[{"does", " ", "the", " ", "volume", " ", 
            RowBox[{"matter", "?", " ", "and"}], " ", "I", " ", "need", " ", 
            "to", " ", "replace", " ", "an", " ", "old", " ", "cell", " ", 
            "with", " ", "2", " ", "new", " ", "ones"}], "*)"}], "\n", 
          RowBox[{
           RowBox[{"cell2", "[", 
            RowBox[{"[", "2", "]"}], "]"}], "=", 
           RowBox[{"relativeVolume", "[", 
            RowBox[{
             RowBox[{"organtissue", "[", 
              RowBox[{"[", 
               RowBox[{"icell", ",", "2"}], "]"}], "]"}], ",", 
             RowBox[{"sizeRatio", "[", 
              RowBox[{"[", "2", "]"}], "]"}]}], "]"}]}], ";", "\n", 
          RowBox[{
           RowBox[{"cell1", "[", 
            RowBox[{"[", "2", "]"}], "]"}], "=", 
           RowBox[{"relativeVolume", "[", 
            RowBox[{
             RowBox[{"organtissue", "[", 
              RowBox[{"[", 
               RowBox[{"icell", ",", "2"}], "]"}], "]"}], ",", 
             RowBox[{"sizeRatio", "[", 
              RowBox[{"[", "1", "]"}], "]"}]}], "]"}]}], ";", "\n", 
          RowBox[{"(*", 
           RowBox[{
           "what", " ", "they", " ", "have", " ", "different", " ", 
            "directions"}], "*)"}], "\n", 
          RowBox[{
           RowBox[{"cell1", "[", 
            RowBox[{"[", "1", "]"}], "]"}], "=", 
           RowBox[{
            RowBox[{"organtissue", "[", 
             RowBox[{"[", 
              RowBox[{"icell", ",", "1"}], "]"}], "]"}], "-", 
            RowBox[{"directionVector", "*", 
             RowBox[{"(", 
              RowBox[{
               RowBox[{"cell1", "[", 
                RowBox[{"[", "2", "]"}], "]"}], "/", "2"}], ")"}]}]}]}], ";", 
          "\n", 
          RowBox[{
           RowBox[{"cell2", "[", 
            RowBox[{"[", "1", "]"}], "]"}], "=", 
           RowBox[{
            RowBox[{"organtissue", "[", 
             RowBox[{"[", 
              RowBox[{"icell", ",", "1"}], "]"}], "]"}], "+", 
            RowBox[{"directionVector", "*", 
             RowBox[{"(", 
              RowBox[{
               RowBox[{"cell2", "[", 
                RowBox[{"[", "2", "]"}], "]"}], "/", "2"}], ")"}]}]}]}], ";", 
          "\n", 
          RowBox[{"(*", 
           RowBox[{"coalesceTwospheres", "[", 
            RowBox[{"{", 
             RowBox[{"cell1", ",", "cell2"}], "}"}], "]"}], "*)"}], "\n", 
          RowBox[{"(*", 
           RowBox[{
            RowBox[{"Print", "[", 
             RowBox[{"{", 
              RowBox[{"cell1", ",", "cell2"}], "}"}], "]"}], ";"}], "*)"}], 
          "\n", 
          RowBox[{"moveTwospheres", "[", 
           RowBox[{
            RowBox[{"{", 
             RowBox[{"cell1", ",", "cell2"}], "}"}], ",", 
            RowBox[{"Which", "[", 
             RowBox[{
              RowBox[{"cp", "==", 
               RowBox[{"-", "1"}]}], ",", 
              RowBox[{"centerDistance", "[", 
               RowBox[{
                RowBox[{"cell1", "[", 
                 RowBox[{"[", "2", "]"}], "]"}], ",", 
                RowBox[{"cell2", "[", 
                 RowBox[{"[", "2", "]"}], "]"}], ",", 
                RowBox[{"Pi", "*", 
                 RowBox[{"60", "/", "180"}]}]}], "]"}], ",", 
              RowBox[{"cp", "==", 
               RowBox[{"-", "2"}]}], ",", 
              RowBox[{
               RowBox[{"cell1", "[", 
                RowBox[{"[", "2", "]"}], "]"}], "+", 
               RowBox[{"cell2", "[", 
                RowBox[{"[", "2", "]"}], "]"}]}], ",", "\n", 
              RowBox[{"cp", ">=", "0."}], ",", "cp"}], "]"}]}], "]"}]}]}], 
        "\n", 
        RowBox[{"(*", 
         RowBox[{"{", 
          RowBox[{"cell1", ",", "cell2"}], "}"}], "*)"}], "\n", "]"}]}], ",", 
      "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"getunitDirectionOfDivision", "[", 
        RowBox[{
        "icell_", ",", "sizeR_", ",", "organtissue_", ",", "neighPos_", ",", 
         "polarityOpt_"}], "]"}], ":=", 
       RowBox[{"Module", "[", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"c2N", ",", "res", ",", "relv", ",", "uv"}], "}"}], ",", 
         "\n", 
         RowBox[{"(*", 
          RowBox[{
           RowBox[{"there", " ", "are", " ", "few", " ", "opts"}], ",", " ", 
           RowBox[{"0", "\[Rule]", " ", "random"}], ",", " ", 
           RowBox[{"1", "\[Rule]", " ", 
            RowBox[{
            "spindle", " ", "orient", " ", "towards", " ", "the", " ", 
             "neighbours"}]}], " ", 
           RowBox[{"(*", 
            RowBox[{"neighbour", " ", "chosen", " ", "at", " ", "random"}], 
            "*)"}], ",", 
           RowBox[{"2", "\[Rule]", 
            RowBox[{
            "spindle", " ", "orient", " ", "perpendicular", " ", "to", " ", 
             RowBox[{"1", "?"}]}]}]}], "*)"}], "\n", 
         RowBox[{
          RowBox[{"If", "[", 
           RowBox[{
            RowBox[{"(", 
             RowBox[{
              RowBox[{"(", 
               RowBox[{
                RowBox[{"polarityOpt", "[", 
                 RowBox[{"[", "1", "]"}], "]"}], ">", " ", "0"}], ")"}], "&&", 
              RowBox[{"(", 
               RowBox[{
                RowBox[{"polarityOpt", "[", 
                 RowBox[{"[", "1", "]"}], "]"}], "<=", " ", "3"}], ")"}]}], 
             ")"}], ",", "\n", 
            RowBox[{
             RowBox[{"c2N", "=", 
              RowBox[{"If", "[", 
               RowBox[{
                RowBox[{"(", 
                 RowBox[{
                  RowBox[{"(", 
                   RowBox[{
                    RowBox[{"Length", "[", "neighPos", "]"}], "<", "1"}], " ",
                    ")"}], "||", 
                  RowBox[{"(", 
                   RowBox[{
                    RowBox[{"Length", "[", "organtissue", "]"}], "<", "2"}], 
                   ")"}]}], ")"}], ",", 
                RowBox[{"{", "}"}], ",", 
                RowBox[{"Complement", "[", 
                 RowBox[{
                  RowBox[{"Take", "[", 
                   RowBox[{
                    RowBox[{"neighPos", "[", 
                    RowBox[{"[", "3", "]"}], "]"}], ",", 
                    RowBox[{"Count", "[", 
                    RowBox[{
                    RowBox[{"neighPos", "[", 
                    RowBox[{"[", "1", "]"}], "]"}], ",", "1"}], "]"}]}], 
                   "]"}], ",", 
                  RowBox[{"{", "icell", "}"}]}], "]"}]}], "]"}]}], ";"}], 
            "\n", ",", 
            RowBox[{
             RowBox[{"c2N", "=", 
              RowBox[{"{", "}"}]}], ";"}]}], "]"}], ";", "\n", 
          RowBox[{"relv", "=", 
           RowBox[{"relativeVolume", "[", 
            RowBox[{
             RowBox[{"organtissue", "[", 
              RowBox[{"[", 
               RowBox[{"icell", ",", "2"}], "]"}], "]"}], ",", "sizeR"}], 
            "]"}]}], ";", "\n", 
          RowBox[{"(*", 
           RowBox[{
            RowBox[{"Print", "[", 
             RowBox[{"\"\<in \>\"", ",", "polarityOpt", ",", "\"\< \>\"", ",", 
              RowBox[{"polarityOpt", "[", 
               RowBox[{"[", "1", "]"}], "]"}]}], "]"}], ";"}], "*)"}], "\n", 
          RowBox[{"(*", 
           RowBox[{
            RowBox[{"RandomChoice", "[", "c2N", "]"}], ";"}], " ", "*)"}], 
          RowBox[{"(*", 
           RowBox[{
            RowBox[{
            "picks", " ", "a", " ", "neighbour", " ", "for", " ", "the", " ", 
             "direction"}], ",", " ", 
            RowBox[{
            "the", " ", "more", " ", "neighbours", " ", "on", " ", "one", " ",
              "side", " ", "the", " ", "higher", " ", "the", " ", "prob", " ",
              "the", " ", "direction", " ", "will", " ", "point", " ", 
             "twords", " ", "the", " ", "more", " ", "junctions"}]}], "*)"}], 
          " ", 
          RowBox[{"(*", 
           RowBox[{
            RowBox[{
             RowBox[{"this", " ", "resembles", " ", "the", " ", "cell"}], "-", 
             RowBox[{"cell", " ", "contact", " ", "rule"}]}], ",", " ", 
            RowBox[{
            "where", " ", "cells", " ", "divide", " ", "perpendicularly", " ",
              "to", " ", "the", " ", "area", " ", "of", " ", "contact", " ", 
             "of", " ", "one", " ", "cell", " ", "with", " ", "another"}]}], 
           "*)"}], "\n", 
          RowBox[{"If", "[", 
           RowBox[{
            RowBox[{
             RowBox[{"(", 
              RowBox[{
               RowBox[{"(", 
                RowBox[{
                 RowBox[{"Length", "[", "c2N", "]"}], "<", "1"}], ")"}], "&&", 
               RowBox[{"(", 
                RowBox[{
                 RowBox[{"polarityOpt", "[", 
                  RowBox[{"[", "1", "]"}], "]"}], "<=", " ", "3"}], ")"}]}], 
              ")"}], "||", 
             RowBox[{"(", 
              RowBox[{
               RowBox[{"(", 
                RowBox[{
                 RowBox[{"organtissue", "[", 
                  RowBox[{"[", 
                   RowBox[{"icell", ",", "3", ",", "3"}], "]"}], "]"}], "==", 
                 
                 RowBox[{"{", "}"}]}], ")"}], "&&", 
               RowBox[{"(", 
                RowBox[{"(", 
                 RowBox[{
                  RowBox[{"polarityOpt", "[", 
                   RowBox[{"[", "1", "]"}], "]"}], "==", "4"}], ")"}], 
                ")"}]}], ")"}], "||", 
             RowBox[{"(", 
              RowBox[{
               RowBox[{"(", 
                RowBox[{
                 RowBox[{"polarityOpt", "[", 
                  RowBox[{"[", "2", "]"}], "]"}], "==", 
                 RowBox[{"{", "}"}]}], ")"}], "&&", 
               RowBox[{"(", 
                RowBox[{"(", 
                 RowBox[{
                  RowBox[{"polarityOpt", "[", 
                   RowBox[{"[", "1", "]"}], "]"}], "==", "5"}], ")"}], 
                ")"}]}], ")"}], "||", "\n", 
             RowBox[{"(", 
              RowBox[{
               RowBox[{"polarityOpt", "[", 
                RowBox[{"[", "1", "]"}], "]"}], "==", "0"}], ")"}]}], ",", 
            "\n", 
            RowBox[{"(*", 
             RowBox[{"random", " ", "direction"}], "*)"}], "\n", "\n", 
            RowBox[{
             RowBox[{"Do", "[", "\n", 
              RowBox[{
               RowBox[{
                RowBox[{"relv", "=", 
                 RowBox[{"relativeVolume", "[", 
                  RowBox[{
                   RowBox[{"organtissue", "[", 
                    RowBox[{"[", 
                    RowBox[{"icell", ",", "2"}], "]"}], "]"}], ",", "sizeR"}],
                   "]"}]}], ";", 
                RowBox[{"(*", 
                 RowBox[{
                  RowBox[{"res", "=", 
                   RowBox[{"{", " ", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"organtissue", "[", 
                    RowBox[{"[", 
                    RowBox[{"icell", ",", "1"}], "]"}], "]"}], "+", 
                    RowBox[{"(*", 
                    RowBox[{
                    RowBox[{"RandomChoice", "[", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"-", "1"}], ",", "1"}], "}"}], ",", "1"}], "]"}], 
                    "[", 
                    RowBox[{"[", "1", "]"}], "]"}], "**)"}], 
                    RowBox[{
                    RowBox[{"coalescingToPackingFunctions`getUnitVector", "[", 
                    RowBox[{
                    RowBox[{"RandomReal", "[", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"-", "relv"}], ",", "relv"}], "}"}], ",", "3"}], 
                    "]"}], ",", 
                    RowBox[{"organtissue", "[", 
                    RowBox[{"[", 
                    RowBox[{"icell", ",", "1"}], "]"}], "]"}]}], "]"}], "*", 
                    RowBox[{"(", 
                    RowBox[{"relv", "/", "2"}], ")"}]}]}], ",", "relv"}], 
                    "}"}]}], ";"}], "*)"}], 
                RowBox[{"res", "=", " ", 
                 RowBox[{"{", 
                  RowBox[{
                   RowBox[{"organtissue", "[", 
                    RowBox[{"[", 
                    RowBox[{"icell", ",", "1"}], "]"}], "]"}], ",", 
                   RowBox[{
                    RowBox[{"organtissue", "[", 
                    RowBox[{"[", 
                    RowBox[{"icell", ",", "1"}], "]"}], "]"}], "+", 
                    RowBox[{"RandomReal", "[", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"-", "relv"}], ",", "relv"}], "}"}], ",", "3"}], 
                    "]"}]}]}], "}"}]}], ";", 
                RowBox[{"If", "[", 
                 RowBox[{
                  RowBox[{
                   RowBox[{"EuclideanDistance", "[", " ", 
                    RowBox[{
                    RowBox[{"organtissue", "[", 
                    RowBox[{"[", 
                    RowBox[{"icell", ",", "1"}], "]"}], "]"}], ",", 
                    RowBox[{"res", "[", 
                    RowBox[{"[", "2", "]"}], "]"}]}], "]"}], "==", "0"}], ",", 
                  RowBox[{"k", "=", "0"}]}], "]"}], ";"}], ",", 
               RowBox[{"{", 
                RowBox[{"k", ",", "1", ",", "1"}], "}"}]}], "]"}], ";"}], 
            RowBox[{"(*", "do", "*)"}], "\n", 
            RowBox[{"(*", 
             RowBox[{
              RowBox[{"Print", "[", 
               RowBox[{"\"\<1\>\"", ",", "res"}], "]"}], ";"}], "*)"}], "\n", 
            ",", "\n", 
            RowBox[{
             RowBox[{"Which", "[", 
              RowBox[{
               RowBox[{
                RowBox[{"polarityOpt", "[", 
                 RowBox[{"[", "1", "]"}], "]"}], "==", "1"}], ",", "\n", 
               RowBox[{"(*", 
                RowBox[{"neighbours", " ", "determine", " ", "direction"}], 
                "*)"}], "\n", 
               RowBox[{
                RowBox[{"res", "=", 
                 RowBox[{"{", 
                  RowBox[{
                   RowBox[{"organtissue", "[", 
                    RowBox[{"[", 
                    RowBox[{"icell", ",", "1"}], "]"}], "]"}], ",", 
                   RowBox[{
                    RowBox[{"organtissue", "[", 
                    RowBox[{"[", 
                    RowBox[{
                    RowBox[{"RandomChoice", "[", "c2N", "]"}], ",", "1"}], 
                    "]"}], "]"}], "+", 
                    RowBox[{"RandomReal", "[", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"-", "relv"}], ",", "relv"}], "}"}], ",", "3"}], 
                    "]"}]}]}], "}"}]}], ";"}], 
               RowBox[{"(*", 
                RowBox[{
                 RowBox[{"Print", "[", 
                  RowBox[{"\"\<5\>\"", ",", "res"}], "]"}], ";"}], "*)"}], 
               ",", "\n", 
               RowBox[{
                RowBox[{"polarityOpt", "[", 
                 RowBox[{"[", "1", "]"}], "]"}], "==", "2"}], ",", "\n", 
               RowBox[{"(*", 
                RowBox[{"neighbours", " ", "determine", " ", "direction"}], 
                "*)"}], "\n", 
               RowBox[{
                RowBox[{"res", "=", " ", 
                 RowBox[{"{", 
                  RowBox[{
                   RowBox[{"organtissue", "[", 
                    RowBox[{"[", 
                    RowBox[{"icell", ",", "1"}], "]"}], "]"}], ",", 
                   RowBox[{
                    RowBox[{"Mean", "[", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"organtissue", "[", 
                    RowBox[{"[", 
                    RowBox[{"#", ",", "1"}], "]"}], "]"}], "&"}], "/@", 
                    "c2N"}], "]"}], "+", 
                    RowBox[{"RandomReal", "[", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"-", "relv"}], ",", "relv"}], "}"}], ",", "3"}], 
                    "]"}]}]}], "}"}]}], ";"}], 
               RowBox[{"(*", 
                RowBox[{
                 RowBox[{"Print", "[", 
                  RowBox[{"\"\<4\>\"", ",", "res"}], "]"}], ";"}], "*)"}], 
               ",", "\n", 
               RowBox[{
                RowBox[{"polarityOpt", "[", 
                 RowBox[{"[", "1", "]"}], "]"}], "==", "3"}], ",", "\n", 
               RowBox[{"(*", 
                RowBox[{"neighbours", " ", "determine", " ", "direction"}], 
                "*)"}], 
               RowBox[{
                RowBox[{"res", "=", " ", 
                 RowBox[{"{", 
                  RowBox[{
                   RowBox[{"organtissue", "[", 
                    RowBox[{"[", 
                    RowBox[{"icell", ",", "1"}], "]"}], "]"}], ",", 
                   RowBox[{
                    RowBox[{"organtissue", "[", 
                    RowBox[{"[", 
                    RowBox[{
                    RowBox[{"Last", "[", "c2N", "]"}], ",", "1"}], "]"}], 
                    "]"}], "+", 
                    RowBox[{"RandomReal", "[", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"-", "relv"}], ",", "relv"}], "}"}], ",", "3"}], 
                    "]"}]}]}], "}"}]}], ";"}], 
               RowBox[{"(*", 
                RowBox[{
                 RowBox[{"Print", "[", 
                  RowBox[{"\"\<3\>\"", ",", "res"}], "]"}], ";"}], "*)"}], 
               ",", "\n", 
               RowBox[{"(", 
                RowBox[{
                 RowBox[{"polarityOpt", "[", 
                  RowBox[{"[", "1", "]"}], "]"}], "==", "4"}], ")"}], ",", 
               "\n", 
               RowBox[{"(*", 
                RowBox[{"fixed", ",", " ", 
                 RowBox[{
                 "each", " ", "cell", " ", "carries", " ", "a", " ", "fixed", 
                  " ", "direction"}]}], "*)"}], "\n", 
               RowBox[{
                RowBox[{"res", "=", 
                 RowBox[{"{", 
                  RowBox[{
                   RowBox[{"organtissue", "[", 
                    RowBox[{"[", 
                    RowBox[{"icell", ",", "3", ",", "3"}], "]"}], "]"}], ",", 
                   
                   RowBox[{"organtissue", "[", 
                    RowBox[{"[", 
                    RowBox[{"icell", ",", "3", ",", "3"}], "]"}], "]"}]}], 
                  "}"}]}], ";"}], ",", "\n", 
               RowBox[{"(", 
                RowBox[{
                 RowBox[{"polarityOpt", "[", 
                  RowBox[{"[", "1", "]"}], "]"}], "==", "5"}], ")"}], ",", 
               "\n", 
               RowBox[{"(*", 
                RowBox[{
                "random", " ", "selection", " ", "from", " ", "a", " ", 
                 "list"}], "*)"}], "\n", 
               RowBox[{
                RowBox[{"res", "=", 
                 RowBox[{
                  RowBox[{"RandomSample", "[", 
                   RowBox[{
                    RowBox[{"polarityOpt", "[", 
                    RowBox[{"[", "2", "]"}], "]"}], ",", "1"}], "]"}], "[", 
                  RowBox[{"[", "1", "]"}], "]"}]}], ";", "\n", 
                RowBox[{"res", "=", 
                 RowBox[{"{", 
                  RowBox[{"res", ",", "res"}], "}"}]}], ";"}]}], "\n", 
              RowBox[{"(*", 
               RowBox[{
                RowBox[{"Print", "[", 
                 RowBox[{"\"\<2\>\"", ",", "res"}], "]"}], ";"}], "*)"}], 
              "\n", "]"}], ";"}]}], 
           RowBox[{"(*", "which", "*)"}], "\n", "]"}], ";", 
          RowBox[{"(*", "if", "*)"}], "\n", "\n", 
          RowBox[{"uv", "=", 
           RowBox[{"getUnitVector", "[", 
            RowBox[{
             RowBox[{"organtissue", "[", 
              RowBox[{"[", 
               RowBox[{"icell", ",", "1"}], "]"}], "]"}], ",", 
             RowBox[{"res", "[", 
              RowBox[{"[", "1", "]"}], "]"}]}], "]"}]}], ";", "\n", 
          RowBox[{"Which", "[", 
           RowBox[{
            RowBox[{
             RowBox[{"polarityOpt", "[", 
              RowBox[{"[", "3", "]"}], "]"}], "==", "1"}], ",", "\n", 
            RowBox[{
             RowBox[{"uv", "=", 
              RowBox[{"uv", "*", 
               RowBox[{"{", 
                RowBox[{"1", ",", "0", ",", "0"}], "}"}]}]}], ";"}], "\n", 
            RowBox[{"(*", 
             RowBox[{
              RowBox[{
               RowBox[{"uv", "[", 
                RowBox[{"[", "3", "]"}], "]"}], "=", 
               RowBox[{"polarityOpt", "[", 
                RowBox[{"[", "4", "]"}], "]"}]}], ";"}], "*)"}], ",", "\n", 
            RowBox[{
             RowBox[{"polarityOpt", "[", 
              RowBox[{"[", "3", "]"}], "]"}], "==", "2"}], ",", "\n", 
            RowBox[{
             RowBox[{"uv", "=", 
              RowBox[{"uv", "*", 
               RowBox[{"{", 
                RowBox[{"1", ",", "1", ",", "0"}], "}"}]}]}], ";"}]}], "\n", 
           RowBox[{"(*", 
            RowBox[{
             RowBox[{
              RowBox[{"uv", "[", 
               RowBox[{"[", "3", "]"}], "]"}], "=", 
              RowBox[{"polarityOpt", "[", 
               RowBox[{"[", "4", "]"}], "]"}]}], ";"}], "*)"}], "\n", "]"}], 
          ";", "\n", 
          RowBox[{"(*", 
           RowBox[{
            RowBox[{"Print", "[", 
             RowBox[{"\"\<2\>\"", ",", "uv"}], "]"}], ";"}], "*)"}], "\n", 
          "uv"}]}], "\n", "]"}]}], ",", 
      RowBox[{
       RowBox[{"cellcycle03", "[", "val_", "]"}], ":=", 
       RowBox[{
        RowBox[{"RandomVariate", "[", 
         RowBox[{"NormalDistribution", "[", 
          RowBox[{
           RowBox[{"val", "[", 
            RowBox[{"[", "1", "]"}], "]"}], ",", 
           RowBox[{"val", "[", 
            RowBox[{"[", "2", "]"}], "]"}]}], "]"}], "]"}], "+", 
        RowBox[{"val", "[", 
         RowBox[{"[", "3", "]"}], "]"}]}]}], ",", 
      RowBox[{
       RowBox[{"cellcycleChangeOPT", "[", 
        RowBox[{"val_", ",", "opt_"}], "]"}], ":=", 
       RowBox[{"Which", "[", 
        RowBox[{
         RowBox[{"opt", "==", "0"}], ",", 
         RowBox[{
          RowBox[{"val", "[", 
           RowBox[{"[", "3", "]"}], "]"}], "+", 
          RowBox[{"val", "[", 
           RowBox[{"[", "1", "]"}], "]"}]}], ",", "\n", 
         RowBox[{"opt", "==", 
          RowBox[{"-", "1"}]}], ",", 
         RowBox[{"cellcycle01", "[", "val", "]"}], ",", "\n", 
         RowBox[{"opt", "==", 
          RowBox[{"-", "2"}]}], ",", 
         RowBox[{"cellcycle02", "[", "val", "]"}], ",", "\n", 
         RowBox[{"opt", "==", 
          RowBox[{"-", "3"}]}], ",", 
         RowBox[{"cellcycle03", "[", "val", "]"}], ",", "\n", 
         RowBox[{"opt", "==", 
          RowBox[{"-", "4"}]}], ",", 
         RowBox[{"Max", "[", 
          RowBox[{"{", 
           RowBox[{"1", ",", 
            RowBox[{"cellcycle03", "[", "val", "]"}]}], "}"}], "]"}], ",", 
         "\n", 
         RowBox[{"opt", "==", 
          RowBox[{"-", "5"}]}], ",", 
         RowBox[{
          RowBox[{"(", 
           RowBox[{
            RowBox[{"Max", "[", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"val", "[", 
                RowBox[{"[", "1", "]"}], "]"}], ",", 
               RowBox[{"val", "[", 
                RowBox[{"[", "2", "]"}], "]"}]}], "}"}], "]"}], "*", 
            RowBox[{"val", "[", 
             RowBox[{"[", "3", "]"}], "]"}]}], ")"}], "+", 
          RowBox[{"Max", "[", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"val", "[", 
              RowBox[{"[", "1", "]"}], "]"}], ",", 
             RowBox[{"val", "[", 
              RowBox[{"[", "2", "]"}], "]"}]}], "}"}], "]"}]}]}], "\n", 
        "]"}]}], ",", "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"copiesT", "[", 
        RowBox[{
        "ploidy_", ",", "cellactivegeneList_", ",", "rnaPolRate_", ",", 
         "transcriptionTime_", ",", "genome_"}], "]"}], ":=", 
       RowBox[{"Block", "[", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"transcriptTime", "=", 
           RowBox[{"(", 
            RowBox[{"transcriptionTime", "/", 
             RowBox[{"If", "[", 
              RowBox[{
               RowBox[{
                RowBox[{"rnaPolRate", "[", 
                 RowBox[{"[", "2", "]"}], "]"}], ">", "0"}], ",", 
               RowBox[{
                RowBox[{"1", "&"}], "/@", 
                RowBox[{"genome", "[", 
                 RowBox[{"[", 
                  RowBox[{"All", ",", "2"}], "]"}], "]"}]}], ",", 
               RowBox[{"genome", "[", 
                RowBox[{"[", 
                 RowBox[{"All", ",", "2"}], "]"}], "]"}]}], "]"}]}], ")"}]}], 
          "}"}], ",", "\n", 
         RowBox[{"(*", 
          RowBox[{
           RowBox[{"rnaPolRate", "[", 
            RowBox[{"[", "2", "]"}], "]"}], ">", 
           RowBox[{
           "0", " ", "is", " ", "no", " ", "cell", " ", "cycle", " ", "or", 
            " ", "gene", " ", "length"}]}], "*)"}], "\n", 
         RowBox[{"(", 
          RowBox[{"cellactivegeneList", "*", "ploidy", "*", 
           RowBox[{"(", "\n", 
            RowBox[{"Floor", "[", 
             RowBox[{
              RowBox[{
               RowBox[{"(", 
                RowBox[{
                 RowBox[{"Total", "[", 
                  RowBox[{"#", "*", 
                   RowBox[{"{", 
                    RowBox[{
                    RowBox[{"If", "[", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"rnaPolRate", "[", 
                    RowBox[{"[", "2", "]"}], "]"}], ">", "0"}], ",", "0", ",",
                     "1"}], "]"}], ",", 
                    RowBox[{"If", "[", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"rnaPolRate", "[", 
                    RowBox[{"[", "1", "]"}], "]"}], "!=", " ", "0"}], ",", 
                    RowBox[{"RandomReal", "[", 
                    RowBox[{"Sort", "[", 
                    RowBox[{"{", 
                    RowBox[{"0", ",", 
                    RowBox[{"rnaPolRate", "[", 
                    RowBox[{"[", "1", "]"}], "]"}]}], "}"}], "]"}], "]"}], 
                    ",", "0"}], "]"}]}], "}"}]}], "]"}], "+", 
                 RowBox[{"rnaPolRate", "[", 
                  RowBox[{"[", "2", "]"}], "]"}]}], ")"}], "&"}], "/@", 
              "transcriptTime"}], "]"}], ")"}]}], ")"}]}], "\n", "]"}]}], ",",
       "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"parentalTranscripts", "[", 
        RowBox[{"transcripts_", ",", "probability_"}], "]"}], ":=", 
       RowBox[{"RandomSample", "[", 
        RowBox[{"transcripts", ",", 
         RowBox[{"UpTo", "[", 
          RowBox[{"(", 
           RowBox[{
            RowBox[{"(", 
             RowBox[{"Floor", "[", 
              RowBox[{
               RowBox[{"Length", "[", "transcripts", "]"}], "*", 
               "probability"}], "]"}], ")"}], "/.", " ", 
            RowBox[{
             RowBox[{"_", "?", "Negative"}], "->", "0"}]}], ")"}], "]"}]}], 
        "\n", "]"}]}], " ", ",", "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"transcriptsT", "[", 
        RowBox[{"copies_", ",", "activegenome_"}], "]"}], ":=", 
       RowBox[{"Flatten", "[", 
        RowBox[{
         RowBox[{
          RowBox[{
           RowBox[{"Tuples", "[", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{"#", "[", 
               RowBox[{"[", "1", "]"}], "]"}], "}"}], ",", 
             RowBox[{"#", "[", 
              RowBox[{"[", "2", "]"}], "]"}]}], "]"}], "[", 
           RowBox[{"[", "1", "]"}], "]"}], "&"}], "/@", 
         RowBox[{"Transpose", "[", 
          RowBox[{"{", 
           RowBox[{"activegenome", ",", "copies"}], "}"}], "]"}]}], "]"}]}], 
      ",", "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"randDistofT", "[", "transcriptLength_", "]"}], ":=", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"transcriptLength", ",", "0"}], "}"}], "-", 
         RowBox[{"RandomInteger", "[", 
          RowBox[{"{", 
           RowBox[{"1", ",", "transcriptLength"}], "}"}], "]"}]}], ")"}]}], 
      ",", "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"getCellPhase", "[", 
        RowBox[{"cell_", ",", "shortestToMphase_"}], "]"}], ":=", 
       RowBox[{"Module", "[", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"leftcc", ",", "a"}], "}"}], ",", 
         RowBox[{
          RowBox[{"leftcc", "=", 
           RowBox[{"Subtract", "@@", 
            RowBox[{"cell", "[", 
             RowBox[{"[", 
              RowBox[{"4", ",", 
               RowBox[{"3", ";;", "4"}]}], "]"}], "]"}]}]}], ";", "\n", 
          RowBox[{"If", "[", 
           RowBox[{
            RowBox[{"leftcc", ">", "shortestToMphase"}], ",", 
            RowBox[{
             RowBox[{"a", "=", 
              RowBox[{"Select", "[", 
               RowBox[{
                RowBox[{"Drop", "[", 
                 RowBox[{
                  RowBox[{"Transpose", "[", 
                   RowBox[{"{", 
                    RowBox[{
                    RowBox[{"Range", "[", 
                    RowBox[{"1", ",", "4"}], "]"}], ",", 
                    RowBox[{"Accumulate", "[", 
                    RowBox[{
                    RowBox[{"cell", "[", 
                    RowBox[{"[", 
                    RowBox[{"5", ",", "1"}], "]"}], "]"}], "/.", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"0.", "->", "0."}], ",", 
                    RowBox[{
                    RowBox[{"_", "?", "Negative"}], "->", "0"}]}], "}"}]}], 
                    "]"}]}], "}"}], "]"}], ",", 
                  RowBox[{"-", "1"}]}], "]"}], ",", 
                RowBox[{
                 RowBox[{
                  RowBox[{"#", "[", 
                   RowBox[{"[", "2", "]"}], "]"}], "<=", "shortestToMphase"}],
                  "&"}]}], "]"}]}], ";", 
             RowBox[{"If", "[", 
              RowBox[{
               RowBox[{"a", "==", 
                RowBox[{"{", "}"}]}], ",", "1", ",", 
               RowBox[{
                RowBox[{"Last", "[", "a", "]"}], "[", 
                RowBox[{"[", "2", "]"}], "]"}]}], "]"}]}], ",", "4"}], 
           "]"}]}]}], "\n", "]"}]}], ",", "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"oneFullCycleV0", "[", 
        RowBox[{
        "tissue_", ",", "timestep_", ",", "sigma_", ",", "genome_", ",", 
         "fileNameSis_", ",", 
         RowBox[{"transcriptionPara_:", 
          RowBox[{"{", "}"}]}], ",", 
         RowBox[{"spaceParameters1_:", 
          RowBox[{"{", 
           RowBox[{"1", ",", "0.5", ",", "0", ",", 
            RowBox[{"-", "2"}], ",", "0.35", ",", 
            RowBox[{"-", "2"}]}], "}"}]}], ",", 
         RowBox[{"growthParameters_:", 
          RowBox[{"{", "0", "}"}]}]}], "]"}], ":=", 
       RowBox[{"Module", "[", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{
          "newtissue", ",", "oneCycle", ",", "cellCycles", ",", "cellorder", 
           ",", "cpos", ",", "icell", ",", "transcriptionTime", ",", 
           "cyclePhase", ",", "copies", ",", "ploidy", ",", "tCell", ",", 
           "str", ",", "timerange", ",", "tempCell", ",", "spaceParameters", 
           ",", "polarityOpt", ",", "newcellcylceduration", ",", 
           "shortestToMphase"}], "}"}], "\n", ",", "\n", 
         RowBox[{
          RowBox[{"spaceParameters", "=", "spaceParameters1"}], ";", "\n", 
          RowBox[{"polarityOpt", "=", 
           RowBox[{"spaceParameters1", "[", 
            RowBox[{"[", "3", "]"}], "]"}]}], ";", "\n", 
          RowBox[{"(*", 
           RowBox[{
            RowBox[{"Print", "[", "spaceParameters", "]"}], ";"}], "*)"}], 
          "\n", 
          RowBox[{"(*", 
           RowBox[{
            RowBox[{
             RowBox[{"-", "2"}], " ", "closepack"}], ",", 
            RowBox[{
             RowBox[{"-", "1"}], " ", "coalesce"}], ",", " ", 
            RowBox[{
             RowBox[{"-", "3"}], " ", "relative", " ", "volume", " ", 
             "sizeR"}], ",", " ", 
            RowBox[{
             RowBox[{"else", " ", "spaceparameters"}], " ", "=", " ", 
             RowBox[{"distance", " ", "to", " ", "move"}]}]}], "*)"}], "\n", 
          "\n", "\n", 
          RowBox[{"(*", "\n", 
           RowBox[{
            RowBox[{"transcriptionPara", "[", 
             RowBox[{"[", "1", "]"}], "]"}], " ", "is", " ", "the", " ", 
            "gene", " ", "network", "\n", 
            RowBox[{"transcriptionPara", "[", 
             RowBox[{"[", "2", "]"}], "]"}], " ", "probability", " ", "of", 
            " ", "transcripts", " ", "remaining", " ", "in", " ", "the", " ", 
            "system", "\n", 
            RowBox[{"transcriptionPara", "[", 
             RowBox[{"[", "3", "]"}], "]"}], " ", "ploidy", " ", "level", 
            "\n", 
            RowBox[{"transcriptionPara", "[", 
             RowBox[{"[", "4", "]"}], "]"}], " ", "cell", " ", "cycle", " ", 
            "increments", "\n", 
            RowBox[{"transcriptionPara", "[", 
             RowBox[{"[", "5", "]"}], "]"}], " ", "rnaPolII", " ", "rate", 
            " ", "0", " ", "is", " ", "no", " ", "rate"}], "\n", "*)"}], "\n", 
          RowBox[{"ploidy", "=", 
           RowBox[{"transcriptionPara", "[", 
            RowBox[{"[", "3", "]"}], "]"}]}], ";", "\n", 
          RowBox[{"oneCycle", "=", 
           RowBox[{"Range", "[", 
            RowBox[{"1", ",", 
             RowBox[{"Length", "[", "tissue", "]"}]}], "]"}]}], ";", "\n", 
          RowBox[{"If", "[", 
           RowBox[{
            RowBox[{
             RowBox[{"spaceParameters", "[", 
              RowBox[{"[", "1", "]"}], "]"}], "==", "1"}], ",", "\n", 
            RowBox[{
             RowBox[{"oneCycle", "=", 
              RowBox[{"RandomSample", "[", 
               RowBox[{"Range", "[", 
                RowBox[{"1", ",", 
                 RowBox[{"Length", "[", "tissue", "]"}]}], "]"}], "]"}]}], 
             ";"}]}], "\n", "]"}], ";", "\n", "\n", 
          RowBox[{"newtissue", "=", "tissue"}], ";", "\n", 
          RowBox[{"(*", 
           RowBox[{
            RowBox[{"Print", "[", "newtissue", "]"}], ";"}], "*)"}], "\n", 
          RowBox[{"(*", 
           RowBox[{
           "for", " ", "each", " ", "cell", " ", "currently", " ", "in", " ", 
            "the", " ", "tissue"}], "*)"}], "\n", 
          RowBox[{"(*", 
           RowBox[{
            RowBox[{
             RowBox[{
              RowBox[{
               RowBox[{"cellCR", " ", "--"}], "\[Rule]", " ", "center"}], ",",
               " ", "radius", ",", " ", 
              RowBox[{"divisions", " ", 
               RowBox[{"{", 
                RowBox[{",", 
                 RowBox[{"Number", " ", "of", " ", "divisions"}], ",", 
                 RowBox[{"polarity", " ", "direction"}]}], "}"}]}], ",", 
              RowBox[{"cellCycleInfo", " ", 
               RowBox[{"{", 
                RowBox[{",", "phase", ",", " ", 
                 RowBox[{"Length", " ", "of", "  ", "last", " ", "cycle"}], 
                 ",", 
                 RowBox[{"next", " ", "cycle"}]}], "}"}]}], ",", " ", 
              RowBox[{"{", 
               RowBox[{
                RowBox[{"{", 
                 RowBox[{"cycle", " ", "length", " ", "Now"}], "}"}], ",", 
                RowBox[{"{", 
                 RowBox[{"cycle", " ", "Length", " ", "Next"}], "}"}]}], 
               "}"}], " ", 
              RowBox[{"(*", 
               RowBox[{
                RowBox[{
                 RowBox[{"These", " ", "will", " ", "be"}], " ", "-", 
                 RowBox[{
                 "100", " ", "if", " ", "they", " ", "are", " ", "not", " ", 
                  "holding", " ", "any", " ", "value"}]}], ",", " ", 
                RowBox[{
                "since", " ", "zero", " ", "may", " ", "mean", " ", 
                 "something"}]}], "*)"}], "\n", ",", 
              RowBox[{"{", " ", 
               RowBox[{"GeneState", " ", "Expression", " ", "level"}], "}"}], 
              ",", " ", 
              RowBox[{
               RowBox[{
                RowBox[{
                 RowBox[{"transcripts", " ", "..."}], "ineages"}], "..."}], 
               "."}]}], "}"}], " ", "for", " ", "last", " ", "timestep"}], 
           "*)"}], "\n", 
          RowBox[{"(*", 
           RowBox[{
            RowBox[{"xC", "=", 
             RowBox[{"{", 
              RowBox[{"{", 
               RowBox[{
                RowBox[{"{", 
                 RowBox[{"0", ",", "0", ",", "0"}], "}"}], ",", "1", ",", 
                RowBox[{"{", 
                 RowBox[{"0", ",", "0.1"}], "}"}], ",", 
                RowBox[{"{", 
                 RowBox[{"0", ",", "0", ",", "1.16"}], "}"}], ",", 
                RowBox[{"{", 
                 RowBox[{
                  RowBox[{"{", 
                   RowBox[{"1", ",", "0.01", ",", "0.15", ",", 
                    RowBox[{"-", "5"}]}], "}"}], " ", ",", 
                  RowBox[{"{", 
                   RowBox[{"0", ",", "0", ",", "0", ",", "0"}], "}"}]}], 
                 "}"}], 
                RowBox[{"(*", 
                 RowBox[{
                 "negative", " ", "values", " ", "ensure", " ", "no", " ", 
                  "transcription", " ", "time"}], "*)"}], ",", 
                RowBox[{"{", 
                 RowBox[{"1", ",", " ", "genomeI"}], "}"}], ",", 
                RowBox[{"{", 
                 RowBox[{
                  RowBox[{"{", "1", "}"}], ",", 
                  RowBox[{"{", "}"}]}], "}"}]}], "}"}], 
              RowBox[{"(*", 
               RowBox[{",", 
                RowBox[{"{", 
                 RowBox[{
                  RowBox[{"{", 
                   RowBox[{"0", ",", "0.5", ",", "0"}], "}"}], ",", "1", ",", 
                  
                  RowBox[{"{", 
                   RowBox[{"0", ",", "0.1"}], "}"}], ",", 
                  RowBox[{"{", 
                   RowBox[{"0", ",", "0", ",", "0"}], "}"}], ",", 
                  RowBox[{"{", 
                   RowBox[{"1", ",", "genome", ",", " ", "genomeI"}], "}"}]}],
                  "}"}]}], "*)"}], "}"}]}], ";"}], "*)"}], "\n", 
          RowBox[{"(*", 
           RowBox[{"updates", " ", "the", " ", "cell", " ", "cycles"}], 
           "*)"}], "\n", 
          RowBox[{"(*", 
           RowBox[{
            RowBox[{
            "calculated", " ", "the", " ", "time", " ", "to", " ", "the", " ",
              "first", " ", "Mphase"}], ",", " ", 
            RowBox[{
            "that", " ", "is", " ", "the", " ", "shortest", " ", "cycle"}]}], 
           "*)"}], "\n", 
          RowBox[{"shortestToMphase", "=", 
           RowBox[{"Min", "[", 
            RowBox[{
             RowBox[{
              RowBox[{"Subtract", "@@", "#"}], "&"}], "/@", 
             RowBox[{"newtissue", "[", 
              RowBox[{"[", 
               RowBox[{"All", ",", "4", ",", 
                RowBox[{"3", ";;", "4"}]}], "]"}], "]"}]}], "]"}]}], ";", 
          "\n", 
          RowBox[{"For", "[", 
           RowBox[{
            RowBox[{"cpos", "=", "1"}], ",", 
            RowBox[{"cpos", "<=", 
             RowBox[{"Length", "[", "oneCycle", "]"}]}], ",", 
            RowBox[{"cpos", "++"}], ",", "\n", "\n", 
            RowBox[{
             RowBox[{"icell", "=", 
              RowBox[{"oneCycle", "[", 
               RowBox[{"[", "cpos", "]"}], "]"}]}], ";", " ", 
             RowBox[{"(*", 
              RowBox[{"cell", " ", "number"}], "*)"}], "\n", 
             RowBox[{"cyclePhase", "=", 
              RowBox[{"getCellPhase", "[", 
               RowBox[{
                RowBox[{"newtissue", "[", 
                 RowBox[{"[", "icell", "]"}], "]"}], ",", 
                "shortestToMphase"}], "]"}]}], ";", "\n", 
             RowBox[{
              RowBox[{"newtissue", "[", 
               RowBox[{"[", 
                RowBox[{"icell", ",", "4", ",", "1"}], "]"}], "]"}], "=", 
              "cyclePhase"}], ";", "\n", "\n", " ", 
             RowBox[{"(*", " ", 
              RowBox[{
               RowBox[{"maintaining", " ", "trancript", " ", "probability"}], 
               ",", " ", 
               RowBox[{
               "trying", " ", "to", " ", "capture", " ", "and", " ", 
                "average", " ", "degredation", " ", "rate"}], ",", " ", 
               RowBox[{
               "this", " ", "may", " ", "be", " ", "improved", " ", "by", " ",
                 "relating", " ", "it", " ", "to", " ", "length"}]}], "*)"}], 
             "\n", 
             RowBox[{"If", "[", 
              RowBox[{
               RowBox[{"(", 
                RowBox[{
                 RowBox[{"newtissue", "[", 
                  RowBox[{"[", 
                   RowBox[{"icell", ",", "4", ",", "4"}], "]"}], "]"}], "==", 
                 "0"}], ")"}], " ", ",", "\n", 
               RowBox[{
                RowBox[{"If", "[", 
                 RowBox[{
                  RowBox[{
                   RowBox[{"(", 
                    RowBox[{
                    RowBox[{"transcriptionPara", "[", 
                    RowBox[{"[", "2", "]"}], "]"}], "==", "0"}], ")"}], "||", 
                   
                   RowBox[{"(", 
                    RowBox[{
                    RowBox[{"newtissue", "[", 
                    RowBox[{"[", 
                    RowBox[{"icell", ",", "7", ",", "1"}], "]"}], "]"}], "==", 
                    RowBox[{"{", "}"}]}], ")"}]}], ",", 
                  RowBox[{
                   RowBox[{"newtissue", "[", 
                    RowBox[{"[", 
                    RowBox[{"icell", ",", "7", ",", "1"}], "]"}], "]"}], "=", 
                   
                   RowBox[{"{", "}"}]}], ",", "\n", 
                  RowBox[{
                   RowBox[{"If", "[", 
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"transcriptionPara", "[", 
                    RowBox[{"[", "2", "]"}], "]"}], "<", "1"}], ")"}], ",", 
                    "\n", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"newtissue", "[", 
                    RowBox[{"[", 
                    RowBox[{"icell", ",", "7", ",", "1"}], "]"}], "]"}], "=", 
                    
                    RowBox[{"parentalTranscripts", "[", 
                    RowBox[{
                    RowBox[{"newtissue", "[", 
                    RowBox[{"[", 
                    RowBox[{"icell", ",", "7", ",", "1"}], "]"}], "]"}], ",", 
                    
                    RowBox[{"transcriptionPara", "[", 
                    RowBox[{"[", "2", "]"}], "]"}]}], "]"}]}], ";"}]}], "\n", 
                    
                    RowBox[{"(*", 
                    RowBox[{
                    "random", " ", "transcripts", " ", "remain", " ", "upto", 
                    " ", "a", " ", "probability", " ", 
                    RowBox[{"transcriptionPara", "[", 
                    RowBox[{"[", "2", "]"}], "]"}]}], "*)"}], "\n", "]"}], 
                   ";"}]}], " ", "\n", "]"}], ";"}]}], "\n", "]"}], ";", "\n",
              "\n", 
             RowBox[{"(*", 
              RowBox[{
              "calcualte", " ", "current", " ", "trancription", " ", "time", 
               " ", "available", " ", "for", " ", "a", " ", "cell"}], "*)"}], 
             "\n", "\n", 
             RowBox[{"transcriptionTime", "=", 
              RowBox[{"Min", "[", 
               RowBox[{"{", 
                RowBox[{
                 RowBox[{"newtissue", "[", 
                  RowBox[{"[", 
                   RowBox[{"icell", ",", "4", ",", "3"}], "]"}], "]"}], ",", 
                 RowBox[{
                  RowBox[{"newtissue", "[", 
                   RowBox[{"[", 
                    RowBox[{"icell", ",", "4", ",", "4"}], "]"}], "]"}], "+", 
                  "shortestToMphase"}]}], "}"}], "]"}]}], ";", "\n", 
             RowBox[{"(*", 
              RowBox[{
               RowBox[{"Print", "[", "\"\<Not 1\>\"", "]"}], ";"}], "*)"}], 
             "\n", 
             RowBox[{"(*", 
              RowBox[{
               RowBox[{
               "calculates", " ", "the", " ", "trancripts", " ", "possible", 
                " ", "and", " ", "their", " ", "copies", " ", "based", " ", 
                "on", " ", "time", " ", "and", " ", "ploidy"}], ",", " ", 
               RowBox[{
               "we", " ", "can", " ", "add", " ", "an", " ", "inefficiacy", 
                " ", "term", " ", "later"}]}], "*)"}], "\n", 
             RowBox[{"(*", 
              RowBox[{"genome", " ", "=", " ", 
               RowBox[{"Transpose", "[", 
                RowBox[{"{", 
                 RowBox[{"genomeName", ",", "genomeLength"}], "}"}], "]"}]}], 
              "*)"}], "\n", 
             RowBox[{"(*", 
              RowBox[{
               RowBox[{"active", " ", "genes"}], " ", "=", " ", 
               RowBox[{"newtissue", "[", 
                RowBox[{"[", 
                 RowBox[{"icell", ",", "6", ",", "2"}], "]"}], "]"}]}], 
              "*)"}], "\n", 
             RowBox[{"(*", 
              RowBox[{
               RowBox[{
                RowBox[{
                "transcriptionPara5", " ", "rpolII", " ", "rate", " ", "0"}], 
                "=", " ", 
                RowBox[{"no", " ", "change"}]}], ",", " ", 
               RowBox[{
                RowBox[{
                "2", " ", "is", " ", "up", " ", "to", " ", "2", "x", " ", 
                 "faster", " ", "or"}], " ", "-", 
                RowBox[{"2", " ", "slower"}]}], ",", 
               RowBox[{
               "i", " ", "didnt", " ", "try", " ", "both", " ", "fast", " ", 
                "and", " ", "slow"}]}], "*)"}], "\n", 
             RowBox[{"copies", "=", 
              RowBox[{"copiesT", "[", 
               RowBox[{"ploidy", ",", 
                RowBox[{"newtissue", "[", 
                 RowBox[{"[", 
                  RowBox[{"icell", ",", "6", ",", "2"}], "]"}], "]"}], " ", 
                RowBox[{"(*", "activegenes", "*)"}], ",", 
                RowBox[{"transcriptionPara", "[", 
                 RowBox[{"[", "5", "]"}], "]"}], 
                RowBox[{"(*", "rnalpol", "*)"}], ",", "transcriptionTime", 
                ",", "genome"}], "]"}]}], ";", "\n", 
             RowBox[{"(*", 
              RowBox[{
              "places", " ", "the", " ", "transcripts", " ", "in", " ", "the",
                " ", "temp", " ", "sections", " ", "until", " ", "division", 
               " ", "occurs"}], "*)"}], "\n", 
             RowBox[{
              RowBox[{"newtissue", "[", 
               RowBox[{"[", 
                RowBox[{"icell", ",", "7", ",", "2"}], "]"}], "]"}], "=", 
              RowBox[{"transcriptsT", "[", 
               RowBox[{"copies", ",", 
                RowBox[{"genome", "[", 
                 RowBox[{"[", 
                  RowBox[{"All", ",", "1"}], "]"}], "]"}]}], "]"}]}], ";", 
             "\n", 
             RowBox[{"(*", 
              RowBox[{
               RowBox[{"Print", "[", "\"\<Not 2\>\"", "]"}], ";"}], "*)"}], 
             "\n", 
             RowBox[{"(*", 
              RowBox[{
               RowBox[{
               "temporary", " ", "vs", " ", "fixed", " ", "transcripts"}], 
               ",", " ", 
               RowBox[{
               "they", " ", "only", " ", "become", " ", "fixed", " ", "right",
                 " ", "before", " ", "division"}]}], "*)"}], "\n", 
             RowBox[{"(*", 
              RowBox[{
               RowBox[{"Print", "[", "\"\<Not 3\>\"", "]"}], ";"}], "*)"}], 
             "\n", "\n", 
             RowBox[{"If", "[", 
              RowBox[{
               RowBox[{"cyclePhase", "<=", "3"}], ",", " ", 
               RowBox[{"(*", 
                RowBox[{"No", " ", "Division", " ", "Yet"}], "*)"}], "\n", 
               RowBox[{
                RowBox[{
                 RowBox[{"newtissue", "[", 
                  RowBox[{"[", 
                   RowBox[{"icell", ",", "2"}], "]"}], "]"}], "=", "1"}], ";",
                 " ", "\n", 
                RowBox[{
                 RowBox[{"newtissue", "[", 
                  RowBox[{"[", 
                   RowBox[{"icell", ",", "4", ",", "4"}], "]"}], "]"}], "=", 
                 RowBox[{
                  RowBox[{"newtissue", "[", 
                   RowBox[{"[", 
                    RowBox[{"icell", ",", "4", ",", "4"}], "]"}], "]"}], "+", 
                  "shortestToMphase"}]}], ";"}], "\n", "\n", 
               RowBox[{"(*", "growth", "*)"}], "\n", 
               RowBox[{"(*", 
                RowBox[{"keeps", " ", "transcripts", " ", "in", " ", "temp"}],
                 "*)"}], "\n", 
               RowBox[{"(*", 
                RowBox[{
                "changes", " ", "the", " ", "cell", " ", "cycle", " ", 
                 "duration", " ", "either", " ", "based", " ", "on", " ", "a",
                  " ", "normal", " ", "distributions", " ", "or", " ", "some",
                  " ", "determined", " ", "incremental", " ", "value"}], 
                "*)"}], "\n", "\n", ",", "\n", 
               RowBox[{"(*", 
                RowBox[{"(*", 
                 RowBox[{
                 "only", " ", "at", " ", "M", "  ", "phase", " ", "does", " ",
                   "cell", " ", "cycle", " ", "changes"}], "*)"}], "*)"}], 
               "\n", "\n", 
               RowBox[{
                RowBox[{"newcellcylceduration", "=", 
                 RowBox[{"newtissue", "[", 
                  RowBox[{"[", 
                   RowBox[{"icell", ",", "5", ",", "1"}], "]"}], "]"}]}], ";",
                 "\n", "\n", 
                RowBox[{"If", "[", 
                 RowBox[{
                  RowBox[{"sigma", ">", "0"}], ",", "\n", 
                  RowBox[{"(*", 
                   RowBox[{
                    RowBox[{"Print", "[", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"cellRelatedFunctions`cellcycleChangeOPT", "[", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"Max", "[", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"newtissue", "[", 
                    RowBox[{"[", 
                    RowBox[{"icell", ",", "5", ",", "1", ",", "#"}], "]"}], 
                    "]"}], ",", 
                    RowBox[{"newtissue", "[", 
                    RowBox[{"[", 
                    RowBox[{"icell", ",", "5", ",", "2", ",", "#"}], "]"}], 
                    "]"}]}], "}"}], "]"}], "+", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"transcriptionPara", "[", 
                    RowBox[{"[", "4", "]"}], "]"}], "*", "sigma"}], ")"}]}], 
                    ",", "sigma", ",", "0"}], "}"}], ",", 
                    RowBox[{"-", "3"}]}], "]"}], "&"}], "/@", 
                    RowBox[{"Range", "[", 
                    RowBox[{"1", ",", "cyclePhase"}], "]"}]}], "]"}], ";"}], 
                   "*)"}], "\n", 
                  RowBox[{
                   RowBox[{"newcellcylceduration", "=", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"cellcycleChangeOPT", "[", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"Max", "[", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"newtissue", "[", 
                    RowBox[{"[", 
                    RowBox[{"icell", ",", "5", ",", "1", ",", "#"}], "]"}], 
                    "]"}], ",", 
                    RowBox[{"newtissue", "[", 
                    RowBox[{"[", 
                    RowBox[{"icell", ",", "5", ",", "2", ",", "#"}], "]"}], 
                    "]"}]}], "}"}], "]"}], "+", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"transcriptionPara", "[", 
                    RowBox[{"[", "4", "]"}], "]"}], "*", "sigma"}], ")"}]}], 
                    ",", "sigma", ",", "0"}], "}"}], ",", 
                    RowBox[{"-", "3"}]}], "]"}], "&"}], "/@", 
                    RowBox[{"Range", "[", 
                    RowBox[{"1", ",", "cyclePhase"}], "]"}]}]}], ";"}]}], 
                 "]"}], ";", "\n", 
                RowBox[{"If", "[", 
                 RowBox[{
                  RowBox[{"sigma", "<", 
                   RowBox[{"-", "5"}]}], ",", "\n", 
                  RowBox[{
                   RowBox[{"newcellcylceduration", "=", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"cellcycleChangeOPT", "[", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"newtissue", "[", 
                    RowBox[{"[", 
                    RowBox[{"icell", ",", "5", ",", "1", ",", "#"}], "]"}], 
                    "]"}], ",", 
                    RowBox[{"newtissue", "[", 
                    RowBox[{"[", 
                    RowBox[{"icell", ",", "5", ",", "2", ",", "#"}], "]"}], 
                    "]"}], ",", 
                    RowBox[{"transcriptionPara", "[", 
                    RowBox[{"[", "4", "]"}], "]"}]}], "}"}], ",", 
                    RowBox[{"-", "5"}]}], "]"}], "&"}], "/@", 
                    RowBox[{"Range", "[", 
                    RowBox[{"1", ",", "cyclePhase"}], "]"}]}]}], ";"}]}], 
                 "]"}], ";", "\n", "\n", 
                RowBox[{
                 RowBox[{"newtissue", "[", 
                  RowBox[{"[", 
                   RowBox[{"icell", ",", "5", ",", "1"}], "]"}], "]"}], "=", 
                 "newcellcylceduration"}], ";", "\n", "\n", 
                RowBox[{"(*", 
                 RowBox[{
                  RowBox[{
                   RowBox[{"newtissue", "[", 
                    RowBox[{"[", 
                    RowBox[{"icell", ",", "5", ",", "1"}], "]"}], "]"}], "=", 
                   
                   RowBox[{
                    RowBox[{
                    RowBox[{"-", "100"}], "&"}], "/@", 
                    RowBox[{"newtissue", "[", 
                    RowBox[{"[", 
                    RowBox[{"icell", ",", "5", ",", "1"}], "]"}], "]"}]}]}], 
                  ";"}], "*)"}], "\n", "\n", "\n", "\n", 
                RowBox[{"(*", 
                 RowBox[{
                 "move", " ", "transcripts", " ", "out", " ", "of", " ", 
                  "temp"}], "*)"}], "\n", 
                RowBox[{
                 RowBox[{"newtissue", "[", 
                  RowBox[{"[", 
                   RowBox[{"icell", ",", "7", ",", "1"}], "]"}], "]"}], "=", 
                 RowBox[{"Join", "[", 
                  RowBox[{
                   RowBox[{"newtissue", "[", 
                    RowBox[{"[", 
                    RowBox[{"icell", ",", "7", ",", "1"}], "]"}], "]"}], ",", 
                   
                   RowBox[{"newtissue", "[", 
                    RowBox[{"[", 
                    RowBox[{"icell", ",", "7", ",", "2"}], "]"}], "]"}]}], 
                  "]"}]}], ";", "\n", 
                RowBox[{
                 RowBox[{"newtissue", "[", 
                  RowBox[{"[", 
                   RowBox[{"icell", ",", "7", ",", "2"}], "]"}], "]"}], "=", 
                 RowBox[{"{", "}"}]}], ";", "\n", 
                RowBox[{"(*", 
                 RowBox[{
                  RowBox[{"Print", "[", 
                   RowBox[{"\"\<div1\>\"", ",", 
                    RowBox[{"newtissue", "[", 
                    RowBox[{"[", 
                    RowBox[{"icell", ",", "5"}], "]"}], "]"}]}], "]"}], ";"}],
                  "*)"}], "\n", "\n", "\n", 
                RowBox[{
                 RowBox[{"newtissue", "[", 
                  RowBox[{"[", 
                   RowBox[{"icell", ",", "4", ",", "4"}], "]"}], "]"}], "=", 
                 "0"}], ";", 
                RowBox[{"(*", 
                 RowBox[{
                  RowBox[{"go", " ", "back", " ", "to", " ", "G1"}], " ", "=", 
                  RowBox[{
                  "0", "in", " ", "cell", " ", "cycle", " ", "time"}]}], 
                 "*)"}], "\n", "\n", 
                RowBox[{
                 RowBox[{"newtissue", "[", 
                  RowBox[{"[", 
                   RowBox[{"icell", ",", "4", ",", "2"}], "]"}], "]"}], "=", 
                 RowBox[{
                  RowBox[{"newtissue", "[", 
                   RowBox[{"[", 
                    RowBox[{"icell", ",", "4", ",", "2"}], "]"}], "]"}], "+", 
                  
                  RowBox[{"newtissue", "[", 
                   RowBox[{"[", 
                    RowBox[{"icell", ",", "4", ",", "3"}], "]"}], "]"}]}]}], 
                ";", 
                RowBox[{"(*", 
                 RowBox[{
                 "accumulated", " ", "cell", " ", "cycle", " ", "time"}], 
                 "*)"}], "\n", "\n", 
                RowBox[{
                 RowBox[{"newtissue", "[", 
                  RowBox[{"[", 
                   RowBox[{"icell", ",", "4", ",", "3"}], "]"}], "]"}], "=", 
                 RowBox[{"Total", "[", 
                  RowBox[{
                   RowBox[{"newtissue", "[", 
                    RowBox[{"[", 
                    RowBox[{"icell", ",", "5", ",", "1"}], "]"}], "]"}], "/.",
                    " ", 
                   RowBox[{
                    RowBox[{"_", "?", "Negative"}], "->", "0"}]}], "]"}]}], 
                ";", "\n", "\n", 
                RowBox[{"(*", 
                 RowBox[{"current", " ", "cycle", " ", "time"}], "*)"}], "\n",
                 "\n", 
                RowBox[{"(*", 
                 RowBox[{"increase", " ", "divisions"}], "*)"}], "\n", 
                RowBox[{"(*", 
                 RowBox[{"direction", " ", "of", " ", "division"}], "*)"}], 
                "\n", 
                RowBox[{
                 RowBox[{"newtissue", "[", 
                  RowBox[{"[", 
                   RowBox[{"icell", ",", "3", ",", "3"}], "]"}], "]"}], "=", 
                 RowBox[{"getunitDirectionOfDivision", "[", 
                  RowBox[{"icell", ",", 
                   RowBox[{"spaceParameters", "[", 
                    RowBox[{"[", "2", "]"}], "]"}], ",", "newtissue", ",", 
                   "\n", 
                   RowBox[{"{", "}"}], ",", "polarityOpt"}], "]"}]}], ";", 
                "\n", 
                RowBox[{"(*", 
                 RowBox[{
                  RowBox[{"Print", "[", 
                   RowBox[{"newtissue", "[", 
                    RowBox[{"[", 
                    RowBox[{"icell", ",", "3", ",", "3"}], "]"}], "]"}], 
                   "]"}], ";"}], "*)"}], "\n", 
                RowBox[{"(*", "division", "*)"}], "\n", 
                RowBox[{"tempCell", "=", 
                 RowBox[{"cellDivision", "[", 
                  RowBox[{"icell", ",", "newtissue", ",", 
                   RowBox[{"{", 
                    RowBox[{
                    RowBox[{"spaceParameters", "[", 
                    RowBox[{"[", "2", "]"}], "]"}], ",", 
                    RowBox[{"1", "-", 
                    RowBox[{"spaceParameters", "[", 
                    RowBox[{"[", "2", "]"}], "]"}]}]}], "}"}], ",", 
                   RowBox[{"newtissue", "[", 
                    RowBox[{"[", 
                    RowBox[{"icell", ",", "3", ",", "3"}], "]"}], "]"}], ",", 
                   
                   RowBox[{"spaceParameters", "[", 
                    RowBox[{"[", "9", "]"}], "]"}]}], "]"}]}], ";", "\n", 
                RowBox[{
                 RowBox[{
                  RowBox[{"tempCell", "[", 
                   RowBox[{"[", 
                    RowBox[{"1", ",", "3"}], "]"}], "]"}], "[", 
                  RowBox[{"[", "2", "]"}], "]"}], "=", 
                 RowBox[{
                  RowBox[{
                   RowBox[{"tempCell", "[", 
                    RowBox[{"[", 
                    RowBox[{"1", ",", "3"}], "]"}], "]"}], "[", 
                   RowBox[{"[", "2", "]"}], "]"}], "+", "1"}]}], ";", 
                RowBox[{"(*", 
                 RowBox[{"division", " ", "tracking"}], "*)"}], "\n", 
                RowBox[{
                 RowBox[{
                  RowBox[{"tempCell", "[", 
                   RowBox[{"[", 
                    RowBox[{"2", ",", "3"}], "]"}], "]"}], "[", 
                  RowBox[{"[", "2", "]"}], "]"}], "=", 
                 RowBox[{
                  RowBox[{
                   RowBox[{"tempCell", "[", 
                    RowBox[{"[", 
                    RowBox[{"2", ",", "3"}], "]"}], "]"}], "[", 
                   RowBox[{"[", "2", "]"}], "]"}], "+", "1"}]}], ";", "\n", 
                RowBox[{"(*", 
                 RowBox[{
                  RowBox[{
                   RowBox[{
                    RowBox[{"tempCell", "[", 
                    RowBox[{"[", 
                    RowBox[{"1", ",", "3"}], "]"}], "]"}], "[", 
                    RowBox[{"[", "3", "]"}], "]"}], "=", 
                   RowBox[{
                    RowBox[{"tempCell", "[", 
                    RowBox[{"[", 
                    RowBox[{"1", ",", "3"}], "]"}], "]"}], "[", 
                    RowBox[{"[", "3", "]"}], "]"}]}], ";", 
                  RowBox[{"(*", 
                   RowBox[{"division", " ", "tracking"}], "*)"}], "\n", 
                  RowBox[{
                   RowBox[{
                    RowBox[{"tempCell", "[", 
                    RowBox[{"[", 
                    RowBox[{"2", ",", "3"}], "]"}], "]"}], "[", 
                    RowBox[{"[", "3", "]"}], "]"}], "=", 
                   RowBox[{
                    RowBox[{"tempCell", "[", 
                    RowBox[{"[", 
                    RowBox[{"1", ",", "3"}], "]"}], "]"}], "[", 
                    RowBox[{"[", "3", "]"}], "]"}]}], ";"}], "*)"}], "\n", 
                "\n", 
                RowBox[{"(*", 
                 RowBox[{"distributes", " ", "the", " ", "transcripts"}], 
                 "*)"}], "\n", 
                RowBox[{"If", "[", 
                 RowBox[{
                  RowBox[{
                   RowBox[{"Length", "[", 
                    RowBox[{"newtissue", "[", 
                    RowBox[{"[", 
                    RowBox[{"icell", ",", "7", ",", "1"}], "]"}], "]"}], 
                    "]"}], ">", "0"}], ",", "\n", 
                  RowBox[{
                   RowBox[{
                    RowBox[{"newtissue", "[", 
                    RowBox[{"[", 
                    RowBox[{"icell", ",", "7", ",", "1"}], "]"}], "]"}], "=", 
                    
                    RowBox[{"RandomSample", "[", 
                    RowBox[{"newtissue", "[", 
                    RowBox[{"[", 
                    RowBox[{"icell", ",", "7", ",", "1"}], "]"}], "]"}], 
                    "]"}]}], ";", "\n", 
                   RowBox[{"tCell", "=", 
                    RowBox[{"randDistofT", "[", 
                    RowBox[{"Length", "[", 
                    RowBox[{"newtissue", "[", 
                    RowBox[{"[", 
                    RowBox[{"icell", ",", "7", ",", "1"}], "]"}], "]"}], 
                    "]"}], "]"}]}], ";", "\n", 
                   RowBox[{
                    RowBox[{"tempCell", "[", 
                    RowBox[{"[", 
                    RowBox[{"1", ",", "7", ",", "1"}], "]"}], "]"}], "=", 
                    RowBox[{"Take", "[", 
                    RowBox[{
                    RowBox[{"newtissue", "[", 
                    RowBox[{"[", 
                    RowBox[{"icell", ",", "7", ",", "1"}], "]"}], "]"}], ",", 
                    
                    RowBox[{"tCell", "[", 
                    RowBox[{"[", "1", "]"}], "]"}]}], "]"}]}], ";", "\n", 
                   RowBox[{
                    RowBox[{"tempCell", "[", 
                    RowBox[{"[", 
                    RowBox[{"2", ",", "7", ",", "1"}], "]"}], "]"}], "=", 
                    RowBox[{"Take", "[", 
                    RowBox[{
                    RowBox[{"newtissue", "[", 
                    RowBox[{"[", 
                    RowBox[{"icell", ",", "7", ",", "1"}], "]"}], "]"}], ",", 
                    
                    RowBox[{"tCell", "[", 
                    RowBox[{"[", "2", "]"}], "]"}]}], "]"}]}], ";"}]}], "\n", 
                 "]"}], ";", "\n", "\n", 
                RowBox[{
                 RowBox[{"tempCell", "[", 
                  RowBox[{"[", 
                   RowBox[{"1", ",", "2"}], "]"}], "]"}], "=", "1"}], ";", 
                "\n", 
                RowBox[{
                 RowBox[{"tempCell", "[", 
                  RowBox[{"[", 
                   RowBox[{"2", ",", "2"}], "]"}], "]"}], "=", "1"}], ";", 
                "\n", 
                RowBox[{
                 RowBox[{"tempCell", "[", 
                  RowBox[{"[", 
                   RowBox[{"1", ",", "8"}], "]"}], "]"}], "=", 
                 RowBox[{
                  RowBox[{"tempCell", "[", 
                   RowBox[{"[", 
                    RowBox[{"1", ",", "8"}], "]"}], "]"}], "<>", 
                  RowBox[{"ToString", "[", "icell", "]"}], "<>", 
                  "\"\<1\>\""}]}], ";", "\n", 
                RowBox[{
                 RowBox[{"tempCell", "[", 
                  RowBox[{"[", 
                   RowBox[{"2", ",", "8"}], "]"}], "]"}], "=", 
                 RowBox[{
                  RowBox[{"tempCell", "[", 
                   RowBox[{"[", 
                    RowBox[{"2", ",", "8"}], "]"}], "]"}], "<>", 
                  RowBox[{"ToString", "[", "icell", "]"}], "<>", 
                  "\"\<2\>\""}]}], ";", "\n", "\n", 
                RowBox[{"If", "[", 
                 RowBox[{
                  RowBox[{"fileNameSis", "!=", " ", "\"\<nosave\>\""}], ",", 
                  "\n", 
                  RowBox[{
                   RowBox[{"str", " ", "=", " ", 
                    RowBox[{"OpenAppend", "[", "fileNameSis", "]"}]}], ";", 
                   "\n", "\t", 
                   RowBox[{"Write", "[", 
                    RowBox[{"str", ",", 
                    RowBox[{"{", 
                    RowBox[{"timestep", ",", 
                    RowBox[{"tempCell", "[", 
                    RowBox[{"[", 
                    RowBox[{"1", ",", "8"}], "]"}], "]"}], ",", 
                    RowBox[{"tempCell", "[", 
                    RowBox[{"[", 
                    RowBox[{"2", ",", "8"}], "]"}], "]"}]}], "}"}]}], "]"}], 
                   ";", "\n", "\t", 
                   RowBox[{"Close", "[", "str", "]"}], ";"}]}], "\n", "]"}], 
                ";", "\n", "\n", 
                RowBox[{
                 RowBox[{"newtissue", "[", 
                  RowBox[{"[", "icell", "]"}], "]"}], "=", 
                 RowBox[{"tempCell", "[", 
                  RowBox[{"[", "1", "]"}], "]"}]}], ";", "\n", 
                RowBox[{"newtissue", "=", 
                 RowBox[{"AppendTo", "[", 
                  RowBox[{"newtissue", ",", 
                   RowBox[{"tempCell", "[", 
                    RowBox[{"[", "2", "]"}], "]"}]}], "]"}]}], ";"}]}], "\n", 
              
              RowBox[{"(*", "closepack", "*)"}], "\n", "\n", "]"}], ";"}]}], 
           RowBox[{"(*", 
            RowBox[{
             RowBox[{"if", " ", "m", " ", "phase", " ", 
              RowBox[{"(", "4", ")"}], " ", "or", " ", "not"}], " ", 
             "\[LessEqual]", "3"}], "*)"}], "\n", "]"}], ";", 
          RowBox[{"(*", "for", "*)"}], "\n", "\n", "\n", 
          RowBox[{"(*", 
           RowBox[{
            RowBox[{"Print", "[", "\"\<Problem13\>\"", "]"}], ";"}], "*)"}], 
          "\n", 
          RowBox[{"(*", 
           RowBox[{
           "change", " ", "the", " ", "cell", " ", "cycle", " ", "based", " ",
             "on", " ", "distance"}], "*)"}], "\n", 
          RowBox[{"If", "[", 
           RowBox[{
            RowBox[{
             RowBox[{"sigma", "==", 
              RowBox[{"-", "5"}]}], "&&", 
             RowBox[{"(", 
              RowBox[{
               RowBox[{"Length", "[", "newtissue", "]"}], "==", "2"}], 
              ")"}]}], ",", "\n", 
            RowBox[{"(*", 
             RowBox[{
              RowBox[{"tempCell", "=", 
               RowBox[{
               "cellRelatedFunctions`averageTissueSize", "[", "newtissue", 
                "]"}]}], ";"}], "*)"}], "\n", 
            RowBox[{
             RowBox[{"tempCell", "=", 
              RowBox[{"Last", "[", 
               RowBox[{"Sort", "[", 
                RowBox[{
                 RowBox[{
                  RowBox[{"{", 
                   RowBox[{
                    RowBox[{"EuclideanDistance", "[", 
                    RowBox[{
                    RowBox[{"newtissue", "[", 
                    RowBox[{"[", 
                    RowBox[{"#", ",", "1"}], "]"}], "]"}], ",", 
                    RowBox[{"{", 
                    RowBox[{"1", ",", "0", ",", "0"}], "}"}]}], "]"}], ",", 
                    "#"}], "}"}], "&"}], "/@", 
                 RowBox[{"Range", "[", 
                  RowBox[{"1", ",", 
                   RowBox[{"Length", "[", "newtissue", "]"}]}], "]"}]}], 
                "]"}], "]"}]}], ";", "\n", 
             RowBox[{"(*", 
              RowBox[{
               RowBox[{"Print", "[", 
                RowBox[{"\"\<-5 \>\"", ",", 
                 RowBox[{"newtissue", "[", 
                  RowBox[{"[", 
                   RowBox[{
                    RowBox[{"tempCell", "[", 
                    RowBox[{"[", "2", "]"}], "]"}], ",", "5"}], "]"}], 
                  "]"}]}], "]"}], ";"}], "*)"}], "\n", 
             RowBox[{
              RowBox[{
               RowBox[{"If", "[", 
                RowBox[{
                 RowBox[{
                  RowBox[{"newtissue", "[", 
                   RowBox[{"[", 
                    RowBox[{
                    RowBox[{"tempCell", "[", 
                    RowBox[{"[", "2", "]"}], "]"}], ",", "5", ",", "1", ",", 
                    "#"}], "]"}], "]"}], "<", "0"}], ",", 
                 RowBox[{
                  RowBox[{
                   RowBox[{"newtissue", "[", 
                    RowBox[{"[", 
                    RowBox[{
                    RowBox[{"tempCell", "[", 
                    RowBox[{"[", "2", "]"}], "]"}], ",", "5", ",", "2", ",", 
                    "#"}], "]"}], "]"}], "=", 
                   RowBox[{
                    RowBox[{"newtissue", "[", 
                    RowBox[{"[", 
                    RowBox[{
                    RowBox[{"tempCell", "[", 
                    RowBox[{"[", "2", "]"}], "]"}], ",", "5", ",", "1", ",", 
                    "#"}], "]"}], "]"}], "+", 
                    RowBox[{"transcriptionPara", "[", 
                    RowBox[{"[", "4", "]"}], "]"}]}]}], ";"}], ",", "\n", 
                 RowBox[{
                  RowBox[{
                   RowBox[{"newtissue", "[", 
                    RowBox[{"[", 
                    RowBox[{
                    RowBox[{"tempCell", "[", 
                    RowBox[{"[", "2", "]"}], "]"}], ",", "5", ",", "1", ",", 
                    "#"}], "]"}], "]"}], "=", 
                   RowBox[{
                    RowBox[{"newtissue", "[", 
                    RowBox[{"[", 
                    RowBox[{
                    RowBox[{"tempCell", "[", 
                    RowBox[{"[", "2", "]"}], "]"}], ",", "5", ",", "1", ",", 
                    "#"}], "]"}], "]"}], "+", 
                    RowBox[{"transcriptionPara", "[", 
                    RowBox[{"[", "4", "]"}], "]"}]}]}], ";"}]}], "]"}], "&"}],
               "/@", 
              RowBox[{"Range", "[", 
               RowBox[{"1", ",", "cyclePhase"}], "]"}]}], ";", "\n", 
             RowBox[{"(*", 
              RowBox[{
               RowBox[{"Print", "[", 
                RowBox[{"\"\<-5 after \>\"", ",", 
                 RowBox[{"newtissue", "[", 
                  RowBox[{"[", 
                   RowBox[{
                    RowBox[{"tempCell", "[", 
                    RowBox[{"[", "2", "]"}], "]"}], ",", "5"}], "]"}], 
                  "]"}]}], "]"}], ";"}], "*)"}], "\n", 
             RowBox[{"Table", "[", 
              RowBox[{
               RowBox[{
                RowBox[{"newtissue", "[", 
                 RowBox[{"[", 
                  RowBox[{"i", ",", "3", ",", "1"}], "]"}], "]"}], "=", 
                RowBox[{
                 RowBox[{"If", "[", 
                  RowBox[{
                   RowBox[{
                    RowBox[{"Flatten", "[", 
                    RowBox[{"newtissue", "[", 
                    RowBox[{"[", 
                    RowBox[{"i", ",", "7"}], "]"}], "]"}], "]"}], "==", 
                    RowBox[{"{", "}"}]}], ",", "0", ",", 
                   RowBox[{"Median", "[", 
                    RowBox[{"Flatten", "[", 
                    RowBox[{"newtissue", "[", 
                    RowBox[{"[", 
                    RowBox[{"i", ",", "7"}], "]"}], "]"}], "]"}], "]"}]}], 
                  "]"}], "/", 
                 RowBox[{"Max", "[", 
                  RowBox[{"genome", "[", 
                   RowBox[{"[", 
                    RowBox[{"All", ",", "2"}], "]"}], "]"}], "]"}]}]}], ",", 
               RowBox[{"{", 
                RowBox[{"i", ",", 
                 RowBox[{"Length", "[", "newtissue", "]"}]}], "}"}]}], "]"}], 
             ";"}]}], "\n", "]"}], ";", "\n", "\n", 
          RowBox[{"Remove", "[", 
           RowBox[{
           "oneCycle", ",", "cellCycles", ",", "cellorder", ",", "cpos", ",", 
            "icell", ",", "transcriptionTime", ",", "cyclePhase", ",", 
            "copies", ",", "ploidy", ",", "tCell", ",", "str", ",", 
            "timerange", ",", "tempCell"}], "]"}], ";", "\n", "newtissue"}]}],
         "\n", "]"}]}]}], "}"}]}]}], "]"}]], "Input",
 CellChangeTimes->{{3.7767759270482407`*^9, 3.776775946565825*^9}, {
   3.776775990196795*^9, 3.7767759954863777`*^9}, {3.7767760351363287`*^9, 
   3.776776083755659*^9}, 3.7767761686325607`*^9, {3.776776218789012*^9, 
   3.776776222400504*^9}, {3.77677899746502*^9, 3.7767790273464413`*^9}, {
   3.7767790603723497`*^9, 3.776779084571763*^9}, {3.7767792237793007`*^9, 
   3.7767792311111813`*^9}, {3.776779304014049*^9, 3.776779329870633*^9}, {
   3.776779393759605*^9, 3.776779521805809*^9}, {3.776779552071142*^9, 
   3.776779566493906*^9}, {3.776779605121777*^9, 3.7767796496291037`*^9}, {
   3.776779719398262*^9, 3.7767797281015244`*^9}, {3.7767817881196327`*^9, 
   3.776781822070825*^9}, 3.776781853727971*^9, {3.776782565787239*^9, 
   3.776782592499634*^9}, {3.776782774775825*^9, 3.7767828722054157`*^9}, {
   3.776782903197968*^9, 3.776782930584537*^9}, {3.776783171834784*^9, 
   3.776783220982004*^9}, {3.7767833024815483`*^9, 3.776783327498554*^9}, {
   3.776783485341507*^9, 3.776783533858938*^9}, {3.776783714001478*^9, 
   3.776783861507122*^9}, {3.7767839270552893`*^9, 3.776783953613592*^9}, {
   3.77678399094899*^9, 3.776784050322548*^9}, {3.776892995089445*^9, 
   3.776893037846929*^9}, 3.776893082078136*^9, {3.776893132752844*^9, 
   3.776893134307761*^9}, {3.776894245762807*^9, 3.776894270678905*^9}, {
   3.7768943881997213`*^9, 3.776894456997343*^9}, {3.7768946305183573`*^9, 
   3.776894643320004*^9}, {3.7768947022489*^9, 3.776894751737775*^9}, {
   3.776894792800652*^9, 3.776894797948495*^9}, 3.776894864872764*^9, {
   3.77689501744387*^9, 3.776895175845121*^9}, {3.776895219959882*^9, 
   3.7768952614490147`*^9}, {3.776895643342826*^9, 3.776895752548324*^9}, 
   3.7768959963440533`*^9, {3.776896052085681*^9, 3.776896058416504*^9}, {
   3.7768973215710783`*^9, 3.776897629462015*^9}, {3.776897661963943*^9, 
   3.776897665622417*^9}, {3.776897698514719*^9, 3.776897713599103*^9}, {
   3.7768978178369713`*^9, 3.776897823248006*^9}, {3.776897866073598*^9, 
   3.7768978681239777`*^9}, {3.776898168650752*^9, 3.776898171290215*^9}, {
   3.7768992038432217`*^9, 3.776899215563048*^9}, 3.776899269039912*^9, {
   3.7768993093711853`*^9, 3.776899380807386*^9}, {3.776899449648789*^9, 
   3.776899467322812*^9}, {3.77689950116395*^9, 3.776899508420903*^9}, {
   3.776899602988987*^9, 3.7768996032378387`*^9}, {3.7768998254038687`*^9, 
   3.776899844169029*^9}, {3.776899924091359*^9, 3.776899927233947*^9}, {
   3.7768999578910713`*^9, 3.776899966980925*^9}, {3.776900451281596*^9, 
   3.776900452931335*^9}, {3.777027111228479*^9, 3.7770271299755297`*^9}, {
   3.777027267217576*^9, 3.77702726951698*^9}, {3.7770640626916933`*^9, 
   3.7770640788230352`*^9}, {3.77706416057864*^9, 3.777064165253829*^9}, 
   3.7770646885329227`*^9, 3.777064901399514*^9, {3.779144500551148*^9, 
   3.779144515186224*^9}, {3.7791446530215673`*^9, 3.7791447113971853`*^9}, {
   3.779144770518622*^9, 3.7791447788660583`*^9}, {3.779144813226059*^9, 
   3.779144858566853*^9}, {3.7791449789072723`*^9, 3.779145044942752*^9}, {
   3.779145080645805*^9, 3.779145083107752*^9}, {3.7791451735588303`*^9, 
   3.7791451759502153`*^9}, {3.7791453979670677`*^9, 3.77914541402133*^9}, {
   3.779145476159996*^9, 3.77914547813125*^9}, {3.779145591113493*^9, 
   3.779145604923237*^9}, {3.779145663501472*^9, 3.779145685831685*^9}, {
   3.779145753999007*^9, 3.779145807969261*^9}, {3.779145987469049*^9, 
   3.779146014311561*^9}, {3.77914606001436*^9, 3.7791460910232983`*^9}, {
   3.779146147086814*^9, 3.7791461506143703`*^9}, {3.7791464199134293`*^9, 
   3.779146421360413*^9}, 3.779146541905778*^9, {3.7791466512487803`*^9, 
   3.779146662150004*^9}},
 CellLabel->"In[2]:=",ExpressionUUID->"8cff46a2-83c5-49e4-8afe-53f15c89564f"],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`ccT$$ = 2, $CellContext`ccTsigma$$ = 
    0, $CellContext`cDivisions$$ = 2, $CellContext`G$$ = 
    3, $CellContext`incCycle$$ = 0, $CellContext`L1$$ = 1, $CellContext`LG$$ =
     3, $CellContext`maternal$$ = 0, $CellContext`ploidy$$ = 1, 
    Typeset`show$$ = True, Typeset`bookmarkList$$ = {}, 
    Typeset`bookmarkMode$$ = "Menu", Typeset`animator$$, Typeset`animvar$$ = 
    1, Typeset`name$$ = "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`L1$$], 1, "L1"}, 1, 10}, {{
       Hold[$CellContext`LG$$], 3, "LG"}, 1, 10}, {{
       Hold[$CellContext`G$$], 3, "G"}, 1, 10, 1}, {{
       Hold[$CellContext`maternal$$], 0, "Half-Life"}, 0, 1}, {{
       Hold[$CellContext`cDivisions$$], 2, "Cell Divisions"}, 1, 10, 1}, {{
       Hold[$CellContext`ccTsigma$$], 0, "Gaussian sigma"}, 0, 1}, {{
       Hold[$CellContext`ccT$$], 2, "Cell Cycle"}, 1, 10}, {{
       Hold[$CellContext`incCycle$$], 0, "increments"}, 0, 10}, {{
       Hold[$CellContext`ploidy$$], 1, "ploidy"}, 1, 5, 1}}, 
    Typeset`size$$ = {519., {157., 161.}}, Typeset`update$$ = 0, 
    Typeset`initDone$$, Typeset`skipInitDone$$ = 
    False, $CellContext`L1$5620$$ = 0, $CellContext`LG$5621$$ = 
    0, $CellContext`G$5622$$ = 0, $CellContext`maternal$5623$$ = 
    0, $CellContext`cDivisions$5624$$ = 0, $CellContext`ccTsigma$5625$$ = 
    0, $CellContext`ccT$5626$$ = 0, $CellContext`incCycle$5627$$ = 
    0, $CellContext`ploidy$5628$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, 
      "Variables" :> {$CellContext`ccT$$ = 2, $CellContext`ccTsigma$$ = 
        0, $CellContext`cDivisions$$ = 2, $CellContext`G$$ = 
        3, $CellContext`incCycle$$ = 0, $CellContext`L1$$ = 
        1, $CellContext`LG$$ = 3, $CellContext`maternal$$ = 
        0, $CellContext`ploidy$$ = 1}, "ControllerVariables" :> {
        Hold[$CellContext`L1$$, $CellContext`L1$5620$$, 0], 
        Hold[$CellContext`LG$$, $CellContext`LG$5621$$, 0], 
        Hold[$CellContext`G$$, $CellContext`G$5622$$, 0], 
        Hold[$CellContext`maternal$$, $CellContext`maternal$5623$$, 0], 
        Hold[$CellContext`cDivisions$$, $CellContext`cDivisions$5624$$, 0], 
        Hold[$CellContext`ccTsigma$$, $CellContext`ccTsigma$5625$$, 0], 
        Hold[$CellContext`ccT$$, $CellContext`ccT$5626$$, 0], 
        Hold[$CellContext`incCycle$$, $CellContext`incCycle$5627$$, 0], 
        Hold[$CellContext`ploidy$$, $CellContext`ploidy$5628$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, 
      "Body" :> ($CellContext`genomeLength = 
        Range[$CellContext`L1$$, $CellContext`LG$$, \
$CellContext`LG$$/$CellContext`G$$]; $CellContext`genomeName = Range[1, 
          
          Length[$CellContext`genomeLength]]; $CellContext`xC = {{{0, 0, 0}, 
           1, {0, 0.1, {}}, {0, 0, 
            Total[
             ReplaceAll[$CellContext`ccT$$, PatternTest[
                Blank[], Negative] -> 0]], 
            0}, {{$CellContext`ccT$$, -5, -5, -5}, {-100, -100, -100, -100}}, \
{1, 
            Part[
             Tuples[{1}, 
              Length[$CellContext`genomeLength]], 1]}, {{}, {}}, 
           StringJoin[
            ToString[0], "-1"]}}; 
       Table[$CellContext`xC = 
          cellCycleHypothesis`oneFullCycleV0[$CellContext`xC, \
$CellContext`timestep, $CellContext`ccTsigma$$, 
            Transpose[{$CellContext`genomeName, $CellContext`genomeLength}], 
            "nosave", {
             Part[
              Tuples[{Blank[] -> 1}, {
                Length[$CellContext`genomeName], 
                Length[$CellContext`genomeName]}], 
              1], $CellContext`maternal$$, $CellContext`ploidy$$, \
$CellContext`incCycle$$, {0, 0}}, 
            Join[{0, 0.5, {0, 0, 0, 0, 0}}, {0, 0, 0, 0, 0, 0}], {
            0}]; $CellContext`tt = Map[Flatten[{
              Part[#, 8], 
              Part[#, 4, 1], 
              StringJoin[
               Map[ToString[#]& , 
                Part[#, 6, 2]]], 
              Total[
               ReplaceAll[
                Part[#, 5], PatternTest[
                  Blank[], Negative] -> 0]], $CellContext`temp = Counts[
                 Flatten[
                  Part[#, 7]]]; $CellContext`tt = Part[
                 Tuples[{0}, 
                  Length[$CellContext`genomeName]], 1]; 
              Map[(Part[$CellContext`tt, #] = $CellContext`temp[#])& , 
                
                Keys[$CellContext`temp]]; $CellContext`tt}]& , \
$CellContext`xC]; 
         Null, {$CellContext`timestep, 
          0, $CellContext`cDivisions$$}]; $CellContext`tt = 
        Part[$CellContext`tt, All, -
          Range[$CellContext`G$$, 1, -1]]; $CellContext`pp = ($CellContext`cc = 
          N[
            
            Partition[{
             0, $CellContext`LG$$/3 + 0.05, 2 ($CellContext`LG$$/3) + 
              0.05, $CellContext`LG$$ + 0.05}, 2, 1]]; $CellContext`col1 = 
          Table[
            Flatten[
             Map[Position[$CellContext`genomeLength, #]& , 
              
              Select[$CellContext`genomeLength, 
               And[# >= Part[$CellContext`cc, $CellContext`i, 1], # < 
                Part[$CellContext`cc, $CellContext`i, 
                  2]]& ]]], {$CellContext`i, 1, 
             Length[$CellContext`cc]}]; Table[
           If[Part[$CellContext`col1, $CellContext`i] != {}, 
            Map[Mean, 
             Part[$CellContext`tt, All, 
              Range[
               Min[
                Part[$CellContext`col1, $CellContext`i]], 
               Max[
                Part[$CellContext`col1, $CellContext`i]]]]], {
            0}], {$CellContext`i, 1, 
            Length[$CellContext`col1]}]); 
       BoxWhiskerChart[{$CellContext`pp}, ChartStyle -> {
           Lighter[Orange, 0.2], 
           ColorData["ThermometerColors"][0.15], 
           ColorData[24][8]}, BarSpacing -> {0, 2, 4}, 
         ChartLabels -> {{$CellContext`ccT$$}, {"short", "medium", "long"}}, 
         ChartLegends -> {
           StringJoin["Short \[LessEqual]", 
            ToString[$CellContext`LG$$/3 + 0.05]], 
           StringJoin["Medium \[LessEqual]", 
            ToString[2 ($CellContext`LG$$/3) + 0.05]], 
           StringJoin["Long \[LessEqual]", 
            ToString[$CellContext`LG$$ + 0.05]]}, FrameStyle -> Black, 
         FrameLabel -> {
          "Cell Cycle Duration (hrs)", "Transcript Count per Cell"}, 
         PlotLabel -> Style["Simulation", Black], 
         BaseStyle -> {18, Black, "Helvetica"}, ImageSize -> 400]), 
      "Specifications" :> {{{$CellContext`L1$$, 1, "L1"}, 1, 
         10}, {{$CellContext`LG$$, 3, "LG"}, 1, 
         10}, {{$CellContext`G$$, 3, "G"}, 1, 10, 
         1}, {{$CellContext`maternal$$, 0, "Half-Life"}, 0, 
         1}, {{$CellContext`cDivisions$$, 2, "Cell Divisions"}, 1, 10, 1, 
         ContinuousAction -> 
         False}, {{$CellContext`ccTsigma$$, 0, "Gaussian sigma"}, 0, 
         1}, {{$CellContext`ccT$$, 2, "Cell Cycle"}, 1, 10, ContinuousAction -> 
         False}, {{$CellContext`incCycle$$, 0, "increments"}, 0, 
         10}, {{$CellContext`ploidy$$, 1, "ploidy"}, 1, 5, 1}}, 
      "Options" :> {
       ControlPlacement -> Left, SynchronousUpdating -> False, 
        AutorunSequencing -> {Automatic, 0}, ContinuousAction -> None, 
        LabelStyle -> Directive[{"Helvetica", 
           GrayLevel[0], 14}]}, "DefaultOptions" :> {}],
     ImageSizeCache->{892., {186., 192.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    Initialization:>({
       SeedRandom[Method -> "MersenneTwister"], ContinuousAction -> False, 
       coalescingToPackingFunctions`getUnitVector[
         Pattern[$CellContext`vectA, 
          Blank[]], 
         Pattern[$CellContext`vectB, 
          Blank[]]] := If[
         Or[$CellContext`vectA == $CellContext`vectB, 
          EuclideanDistance[$CellContext`vectA, $CellContext`vectB] == 
          0], $CellContext`vectA, ($CellContext`vectA - $CellContext`vectB)/
         EuclideanDistance[$CellContext`vectA, $CellContext`vectB]], 
       coalescingToPackingFunctions`centerDistance[
         Pattern[$CellContext`rA, 
          Blank[]], 
         Pattern[$CellContext`rB, 
          Blank[]], 
         Pattern[$CellContext`angle, 
          Blank[]]] := N[
         Sqrt[$CellContext`rA^2 + $CellContext`rB^2 - (
           2 $CellContext`rA $CellContext`rB) Cos[$CellContext`angle]]], 
       coalescingToPackingFunctions`relativeVolume[
         Pattern[$CellContext`orgRadius, 
          Blank[]], 
         Pattern[$CellContext`sizeRatio, 
          Blank[]]] := Part[
         ReplaceAll[
          Abs[$CellContext`orgRadius], 
          
          Solve[((4/3) 
             Pi $CellContext`orgRadius^3) $CellContext`sizeRatio == (4/3) 
            Pi $CellContext`radius^3, $CellContext`radius, WorkingPrecision -> 
           10]], 1], coalescingToPackingFunctions`moveTwospheres[
         Pattern[$CellContext`spheres, 
          Blank[]], 
         Pattern[$CellContext`dist, 
          Blank[]]] := 
       Module[{$CellContext`cells, $CellContext`d}, $CellContext`cells = \
$CellContext`spheres; $CellContext`d = 
          coalescingToPackingFunctions`getUnitVector[
             Part[$CellContext`spheres, 1, 1], 
             Part[$CellContext`spheres, 2, 1]] $CellContext`dist; 
         If[EuclideanDistance[
            Part[$CellContext`spheres, 1, 1] - $CellContext`d, 
             Part[$CellContext`spheres, 1, 1] - 
             Part[$CellContext`spheres, 1, 1]] <= 0.01, {
            Part[$CellContext`cells, 1], 
            ReplacePart[
             Part[$CellContext`cells, 2], 1 -> 
             Part[$CellContext`cells, 1, 1] + $CellContext`d]}, {
            Part[$CellContext`cells, 1], 
            ReplacePart[
             Part[$CellContext`cells, 2], 1 -> 
             Part[$CellContext`cells, 1, 1] - $CellContext`d]}]], 
       cellRelatedFunctions`cellDivision[
         Pattern[$CellContext`icell, 
          Blank[]], 
         Pattern[$CellContext`organtissue, 
          Blank[]], 
         Pattern[$CellContext`sizeRatio, 
          Blank[]], 
         Pattern[$CellContext`directionVector, 
          Blank[]], 
         Optional[
          Pattern[$CellContext`cp, 
           Blank[]], -2]] := 
       Module[{$CellContext`cell1, $CellContext`cell2}, $CellContext`cell2 = \
($CellContext`cell1 = Part[$CellContext`organtissue, $CellContext`icell]); 
         Part[$CellContext`cell2, 2] = 
          coalescingToPackingFunctions`relativeVolume[
            Part[$CellContext`organtissue, $CellContext`icell, 2], 
            Part[$CellContext`sizeRatio, 2]]; 
         Part[$CellContext`cell1, 2] = 
          coalescingToPackingFunctions`relativeVolume[
            Part[$CellContext`organtissue, $CellContext`icell, 2], 
            Part[$CellContext`sizeRatio, 1]]; 
         Part[$CellContext`cell1, 1] = 
          Part[$CellContext`organtissue, $CellContext`icell, 
             1] - $CellContext`directionVector (Part[$CellContext`cell1, 2]/
            2); Part[$CellContext`cell2, 1] = 
          Part[$CellContext`organtissue, $CellContext`icell, 
             1] + $CellContext`directionVector (Part[$CellContext`cell2, 2]/
             2); coalescingToPackingFunctions`moveTwospheres[{$CellContext`\
cell1, $CellContext`cell2}, 
           Which[$CellContext`cp == -1, 
            coalescingToPackingFunctions`centerDistance[
             Part[$CellContext`cell1, 2], 
             Part[$CellContext`cell2, 2], Pi (60/180)], $CellContext`cp == -2,
             Part[$CellContext`cell1, 2] + 
            Part[$CellContext`cell2, 2], $CellContext`cp >= 
            0., $CellContext`cp]]], 
       cellRelatedFunctions`getunitDirectionOfDivision[
         Pattern[$CellContext`icell, 
          Blank[]], 
         Pattern[$CellContext`sizeR, 
          Blank[]], 
         Pattern[$CellContext`organtissue, 
          Blank[]], 
         Pattern[$CellContext`neighPos, 
          Blank[]], 
         Pattern[$CellContext`polarityOpt, 
          Blank[]]] := 
       Module[{$CellContext`c2N, $CellContext`res, $CellContext`relv, \
$CellContext`uv}, If[
           And[
           Part[$CellContext`polarityOpt, 1] > 0, 
            Part[$CellContext`polarityOpt, 1] <= 3], $CellContext`c2N = If[
              Or[
              Length[$CellContext`neighPos] < 1, 
               Length[$CellContext`organtissue] < 2], {}, 
              Complement[
               Take[
                Part[$CellContext`neighPos, 3], 
                Count[
                 Part[$CellContext`neighPos, 1], 1]], {$CellContext`icell}]]; 
           Null, $CellContext`c2N = {}; Null]; $CellContext`relv = 
          coalescingToPackingFunctions`relativeVolume[
            
            Part[$CellContext`organtissue, $CellContext`icell, 
             2], $CellContext`sizeR]; If[
           Or[
            And[
            Length[$CellContext`c2N] < 1, Part[$CellContext`polarityOpt, 1] <= 
             3], 
            And[
            Part[$CellContext`organtissue, $CellContext`icell, 3, 3] == {}, 
             Part[$CellContext`polarityOpt, 1] == 4], 
            And[
            Part[$CellContext`polarityOpt, 2] == {}, 
             Part[$CellContext`polarityOpt, 1] == 5], 
            Part[$CellContext`polarityOpt, 1] == 0], 
           Do[$CellContext`relv = 
              coalescingToPackingFunctions`relativeVolume[
                
                Part[$CellContext`organtissue, $CellContext`icell, 
                 2], $CellContext`sizeR]; $CellContext`res = {
                Part[$CellContext`organtissue, $CellContext`icell, 1], 
                Part[$CellContext`organtissue, $CellContext`icell, 1] + 
                RandomReal[{-$CellContext`relv, $CellContext`relv}, 3]}; 
             If[EuclideanDistance[
                 Part[$CellContext`organtissue, $CellContext`icell, 1], 
                 Part[$CellContext`res, 2]] == 0, $CellContext`k = 0]; 
             Null, {$CellContext`k, 1, 1}]; Null, 
           Which[Part[$CellContext`polarityOpt, 1] == 1, $CellContext`res = {
                Part[$CellContext`organtissue, $CellContext`icell, 1], 
                Part[$CellContext`organtissue, 
                  RandomChoice[$CellContext`c2N], 1] + 
                RandomReal[{-$CellContext`relv, $CellContext`relv}, 3]}; Null,
              Part[$CellContext`polarityOpt, 1] == 2, $CellContext`res = {
                Part[$CellContext`organtissue, $CellContext`icell, 1], Mean[
                  Map[
                  Part[$CellContext`organtissue, #, 1]& , $CellContext`c2N]] + 
                RandomReal[{-$CellContext`relv, $CellContext`relv}, 3]}; Null,
              Part[$CellContext`polarityOpt, 1] == 3, $CellContext`res = {
                Part[$CellContext`organtissue, $CellContext`icell, 1], 
                Part[$CellContext`organtissue, 
                  Last[$CellContext`c2N], 1] + 
                RandomReal[{-$CellContext`relv, $CellContext`relv}, 3]}; Null,
              Part[$CellContext`polarityOpt, 1] == 4, $CellContext`res = {
                Part[$CellContext`organtissue, $CellContext`icell, 3, 3], 
                Part[$CellContext`organtissue, $CellContext`icell, 3, 3]}; 
             Null, Part[$CellContext`polarityOpt, 1] == 
             5, $CellContext`res = Part[
                RandomSample[
                 Part[$CellContext`polarityOpt, 2], 1], 
                1]; $CellContext`res = {$CellContext`res, $CellContext`res}; 
             Null]; Null]; $CellContext`uv = 
          coalescingToPackingFunctions`getUnitVector[
            Part[$CellContext`organtissue, $CellContext`icell, 1], 
            Part[$CellContext`res, 1]]; 
         Which[Part[$CellContext`polarityOpt, 3] == 
           1, $CellContext`uv = $CellContext`uv {1, 0, 0}; Null, 
           Part[$CellContext`polarityOpt, 3] == 
           2, $CellContext`uv = $CellContext`uv {1, 1, 0}; 
           Null]; $CellContext`uv], cellRelatedFunctions`cellcycle03[
         Pattern[$CellContext`val, 
          Blank[]]] := RandomVariate[
          NormalDistribution[
           Part[$CellContext`val, 1], 
           Part[$CellContext`val, 2]]] + Part[$CellContext`val, 3], 
       cellRelatedFunctions`cellcycleChangeOPT[
         Pattern[$CellContext`val, 
          Blank[]], 
         Pattern[$CellContext`opt, 
          Blank[]]] := 
       Which[$CellContext`opt == 0, Part[$CellContext`val, 3] + 
         Part[$CellContext`val, 1], $CellContext`opt == -1, 
         cellRelatedFunctions`cellcycle01[$CellContext`val], $CellContext`opt == \
-2, 
         cellRelatedFunctions`cellcycle02[$CellContext`val], $CellContext`opt == \
-3, 
         cellRelatedFunctions`cellcycle03[$CellContext`val], $CellContext`opt == \
-4, 
         Max[{1, 
           
           cellRelatedFunctions`cellcycle03[$CellContext`val]}], \
$CellContext`opt == -5, Max[{
             Part[$CellContext`val, 1], 
             Part[$CellContext`val, 2]}] Part[$CellContext`val, 3] + Max[{
            Part[$CellContext`val, 1], 
            Part[$CellContext`val, 2]}]], cellRelatedFunctions`copiesT[
         Pattern[$CellContext`ploidy, 
          Blank[]], 
         Pattern[$CellContext`cellactivegeneList, 
          Blank[]], 
         Pattern[$CellContext`rnaPolRate, 
          Blank[]], 
         Pattern[$CellContext`transcriptionTime, 
          Blank[]], 
         Pattern[$CellContext`genome, 
          Blank[]]] := 
       Block[{$CellContext`transcriptTime = $CellContext`transcriptionTime/If[
           Part[$CellContext`rnaPolRate, 2] > 0, 
            Map[1& , 
             Part[$CellContext`genome, All, 2]], 
            
            Part[$CellContext`genome, All, 
             2]]}, $CellContext`cellactivegeneList $CellContext`ploidy Floor[
           Map[Total[# {
                If[Part[$CellContext`rnaPolRate, 2] > 0, 0, 1], 
                If[Part[$CellContext`rnaPolRate, 1] != 0, 
                 RandomReal[
                  Sort[{0, 
                    Part[$CellContext`rnaPolRate, 1]}]], 0]}] + 
            Part[$CellContext`rnaPolRate, 
              2]& , $CellContext`transcriptTime]]], 
       cellRelatedFunctions`parentalTranscripts[
         Pattern[$CellContext`transcripts, 
          Blank[]], 
         Pattern[$CellContext`probability, 
          Blank[]]] := RandomSample[$CellContext`transcripts, 
         UpTo[
          ReplaceAll[
           Floor[Length[$CellContext`transcripts] $CellContext`probability], 
           PatternTest[
             Blank[], Negative] -> 0]]], cellRelatedFunctions`transcriptsT[
         Pattern[$CellContext`copies, 
          Blank[]], 
         Pattern[$CellContext`activegenome, 
          Blank[]]] := Flatten[
         Map[Part[
           Tuples[{
             Part[#, 1]}, 
            Part[#, 2]], 1]& , 
          Transpose[{$CellContext`activegenome, $CellContext`copies}]]], 
       cellRelatedFunctions`randDistofT[
         Pattern[$CellContext`transcriptLength, 
          Blank[]]] := {$CellContext`transcriptLength, 0} - 
        RandomInteger[{1, $CellContext`transcriptLength}], 
       cellRelatedFunctions`getCellPhase[
         Pattern[$CellContext`cell, 
          Blank[]], 
         Pattern[$CellContext`shortestToMphase, 
          Blank[]]] := 
       Module[{$CellContext`leftcc, $CellContext`a}, $CellContext`leftcc = 
          Apply[Subtract, 
            Part[$CellContext`cell, 4, 
             Span[3, 4]]]; 
         If[$CellContext`leftcc > $CellContext`shortestToMphase, \
$CellContext`a = Select[
              Drop[
               Transpose[{
                 Range[1, 4], 
                 Accumulate[
                  ReplaceAll[
                   Part[$CellContext`cell, 5, 1], {0. -> 0., PatternTest[
                    Blank[], Negative] -> 0}]]}], -1], 
              Part[#, 2] <= $CellContext`shortestToMphase& ]; 
           If[$CellContext`a == {}, 1, 
             Part[
              Last[$CellContext`a], 2]], 4]], 
       cellCycleHypothesis`oneFullCycleV0[
         Pattern[$CellContext`tissue, 
          Blank[]], 
         Pattern[$CellContext`timestep, 
          Blank[]], 
         Pattern[$CellContext`sigma, 
          Blank[]], 
         Pattern[$CellContext`genome, 
          Blank[]], 
         Pattern[$CellContext`fileNameSis, 
          Blank[]], 
         Optional[
          Pattern[$CellContext`transcriptionPara, 
           Blank[]], {}], 
         Optional[
          Pattern[$CellContext`spaceParameters1, 
           Blank[]], {1, 0.5, 0, -2, 0.35, -2}], 
         Optional[
          Pattern[$CellContext`growthParameters, 
           Blank[]], {0}]] := 
       Module[{$CellContext`newtissue, $CellContext`oneCycle, \
$CellContext`cellCycles, $CellContext`cellorder, $CellContext`cpos, \
$CellContext`icell, $CellContext`transcriptionTime, $CellContext`cyclePhase, \
$CellContext`copies, $CellContext`ploidy, $CellContext`tCell, \
$CellContext`str, $CellContext`timerange, $CellContext`tempCell, \
$CellContext`spaceParameters, $CellContext`polarityOpt, \
$CellContext`newcellcylceduration, $CellContext`shortestToMphase}, \
$CellContext`spaceParameters = $CellContext`spaceParameters1; \
$CellContext`polarityOpt = 
          Part[$CellContext`spaceParameters1, 3]; $CellContext`ploidy = 
          Part[$CellContext`transcriptionPara, 3]; $CellContext`oneCycle = 
          Range[1, 
            Length[$CellContext`tissue]]; 
         If[Part[$CellContext`spaceParameters, 1] == 
           1, $CellContext`oneCycle = RandomSample[
              Range[1, 
               Length[$CellContext`tissue]]]; 
           Null]; $CellContext`newtissue = $CellContext`tissue; \
$CellContext`shortestToMphase = Min[
            Map[Apply[Subtract, #]& , 
             Part[$CellContext`newtissue, All, 4, 
              Span[3, 4]]]]; 
         For[$CellContext`cpos = 1, $CellContext`cpos <= 
           Length[$CellContext`oneCycle], 
           
           Increment[$CellContext`cpos], $CellContext`icell = 
            Part[$CellContext`oneCycle, $CellContext`cpos]; \
$CellContext`cyclePhase = cellRelatedFunctions`getCellPhase[
              
              Part[$CellContext`newtissue, $CellContext`icell], \
$CellContext`shortestToMphase]; 
           Part[$CellContext`newtissue, $CellContext`icell, 4, 
              1] = $CellContext`cyclePhase; 
           If[Part[$CellContext`newtissue, $CellContext`icell, 4, 4] == 0, 
             If[
               Or[
               Part[$CellContext`transcriptionPara, 2] == 0, 
                Part[$CellContext`newtissue, $CellContext`icell, 7, 1] == {}],
                Part[$CellContext`newtissue, $CellContext`icell, 7, 1] = {}, 
               If[
                Part[$CellContext`transcriptionPara, 2] < 1, 
                 Part[$CellContext`newtissue, $CellContext`icell, 7, 1] = 
                  cellRelatedFunctions`parentalTranscripts[
                    Part[$CellContext`newtissue, $CellContext`icell, 7, 1], 
                    Part[$CellContext`transcriptionPara, 2]]; Null]; Null]; 
             Null]; $CellContext`transcriptionTime = Min[{
               Part[$CellContext`newtissue, $CellContext`icell, 4, 3], 
               Part[$CellContext`newtissue, $CellContext`icell, 4, 
                 4] + $CellContext`shortestToMphase}]; $CellContext`copies = 
            cellRelatedFunctions`copiesT[$CellContext`ploidy, 
              Part[$CellContext`newtissue, $CellContext`icell, 6, 2], 
              
              Part[$CellContext`transcriptionPara, 
               5], $CellContext`transcriptionTime, $CellContext`genome]; 
           Part[$CellContext`newtissue, $CellContext`icell, 7, 2] = 
            cellRelatedFunctions`transcriptsT[$CellContext`copies, 
              Part[$CellContext`genome, All, 1]]; 
           If[$CellContext`cyclePhase <= 3, 
             Part[$CellContext`newtissue, $CellContext`icell, 2] = 1; 
             Part[$CellContext`newtissue, $CellContext`icell, 4, 4] = 
              Part[$CellContext`newtissue, $CellContext`icell, 4, 
                 4] + $CellContext`shortestToMphase; 
             Null, $CellContext`newcellcylceduration = 
              Part[$CellContext`newtissue, $CellContext`icell, 5, 1]; 
             If[$CellContext`sigma > 
               0, $CellContext`newcellcylceduration = 
                Map[cellRelatedFunctions`cellcycleChangeOPT[{Max[{
                    Part[$CellContext`newtissue, $CellContext`icell, 5, 1, #], 
                    
                    Part[$CellContext`newtissue, $CellContext`icell, 5, 
                    2, #]}] + 
                    Part[$CellContext`transcriptionPara, 
                    4] $CellContext`sigma, $CellContext`sigma, 0}, -3]& , 
                  Range[1, $CellContext`cyclePhase]]; Null]; 
             If[$CellContext`sigma < -5, $CellContext`newcellcylceduration = 
                Map[cellRelatedFunctions`cellcycleChangeOPT[{
                    Part[$CellContext`newtissue, $CellContext`icell, 5, 1, #], 
                    Part[$CellContext`newtissue, $CellContext`icell, 5, 2, #], 
                    Part[$CellContext`transcriptionPara, 4]}, -5]& , 
                  Range[1, $CellContext`cyclePhase]]; Null]; 
             Part[$CellContext`newtissue, $CellContext`icell, 5, 
                1] = $CellContext`newcellcylceduration; 
             Part[$CellContext`newtissue, $CellContext`icell, 7, 1] = Join[
                Part[$CellContext`newtissue, $CellContext`icell, 7, 1], 
                Part[$CellContext`newtissue, $CellContext`icell, 7, 2]]; 
             Part[$CellContext`newtissue, $CellContext`icell, 7, 2] = {}; 
             Part[$CellContext`newtissue, $CellContext`icell, 4, 4] = 0; 
             Part[$CellContext`newtissue, $CellContext`icell, 4, 2] = 
              Part[$CellContext`newtissue, $CellContext`icell, 4, 2] + 
               Part[$CellContext`newtissue, $CellContext`icell, 4, 3]; 
             Part[$CellContext`newtissue, $CellContext`icell, 4, 3] = Total[
                ReplaceAll[
                 Part[$CellContext`newtissue, $CellContext`icell, 5, 1], 
                 PatternTest[
                   Blank[], Negative] -> 0]]; 
             Part[$CellContext`newtissue, $CellContext`icell, 3, 3] = 
              cellRelatedFunctions`getunitDirectionOfDivision[$CellContext`\
icell, 
                
                Part[$CellContext`spaceParameters, 
                 2], $CellContext`newtissue, {}, $CellContext`polarityOpt]; \
$CellContext`tempCell = 
              cellRelatedFunctions`cellDivision[$CellContext`icell, \
$CellContext`newtissue, {
                 Part[$CellContext`spaceParameters, 2], 1 - 
                 Part[$CellContext`spaceParameters, 2]}, 
                Part[$CellContext`newtissue, $CellContext`icell, 3, 3], 
                Part[$CellContext`spaceParameters, 9]]; Part[
                Part[$CellContext`tempCell, 1, 3], 2] = Part[
                 Part[$CellContext`tempCell, 1, 3], 2] + 1; Part[
                Part[$CellContext`tempCell, 2, 3], 2] = Part[
                 Part[$CellContext`tempCell, 2, 3], 2] + 1; If[Length[
                 Part[$CellContext`newtissue, $CellContext`icell, 7, 1]] > 0, 
               Part[$CellContext`newtissue, $CellContext`icell, 7, 1] = 
                RandomSample[
                  
                  Part[$CellContext`newtissue, $CellContext`icell, 7, 
                   1]]; $CellContext`tCell = 
                cellRelatedFunctions`randDistofT[
                  Length[
                   Part[$CellContext`newtissue, $CellContext`icell, 7, 1]]]; 
               Part[$CellContext`tempCell, 1, 7, 1] = Take[
                  Part[$CellContext`newtissue, $CellContext`icell, 7, 1], 
                  Part[$CellContext`tCell, 1]]; 
               Part[$CellContext`tempCell, 2, 7, 1] = Take[
                  Part[$CellContext`newtissue, $CellContext`icell, 7, 1], 
                  Part[$CellContext`tCell, 2]]; Null]; 
             Part[$CellContext`tempCell, 1, 2] = 1; 
             Part[$CellContext`tempCell, 2, 2] = 1; 
             Part[$CellContext`tempCell, 1, 8] = StringJoin[
                Part[$CellContext`tempCell, 1, 8], 
                ToString[$CellContext`icell], "1"]; 
             Part[$CellContext`tempCell, 2, 8] = StringJoin[
                Part[$CellContext`tempCell, 2, 8], 
                ToString[$CellContext`icell], "2"]; 
             If[$CellContext`fileNameSis != 
               "nosave", $CellContext`str = 
                OpenAppend[$CellContext`fileNameSis]; 
               Write[$CellContext`str, {$CellContext`timestep, 
                  Part[$CellContext`tempCell, 1, 8], 
                  Part[$CellContext`tempCell, 2, 8]}]; 
               Close[$CellContext`str]; Null]; 
             Part[$CellContext`newtissue, $CellContext`icell] = 
              Part[$CellContext`tempCell, 1]; $CellContext`newtissue = 
              AppendTo[$CellContext`newtissue, 
                Part[$CellContext`tempCell, 2]]; Null]; Null]; If[
           
           And[$CellContext`sigma == -5, Length[$CellContext`newtissue] == 
            2], $CellContext`tempCell = Last[
              Sort[
               Map[{
                 EuclideanDistance[
                  Part[$CellContext`newtissue, #, 1], {1, 0, 0}], #}& , 
                Range[1, 
                 Length[$CellContext`newtissue]]]]]; 
           Map[If[Part[$CellContext`newtissue, 
                Part[$CellContext`tempCell, 2], 5, 1, #] < 0, 
              Part[$CellContext`newtissue, 
                 Part[$CellContext`tempCell, 2], 5, 2, #] = 
               Part[$CellContext`newtissue, 
                  Part[$CellContext`tempCell, 2], 5, 1, #] + 
                Part[$CellContext`transcriptionPara, 4]; Null, 
              Part[$CellContext`newtissue, 
                 Part[$CellContext`tempCell, 2], 5, 1, #] = 
               Part[$CellContext`newtissue, 
                  Part[$CellContext`tempCell, 2], 5, 1, #] + 
                Part[$CellContext`transcriptionPara, 4]; Null]& , 
             Range[1, $CellContext`cyclePhase]]; 
           Table[Part[$CellContext`newtissue, $CellContext`i, 3, 1] = 
             If[Flatten[
                  Part[$CellContext`newtissue, $CellContext`i, 7]] == {}, 0, 
                Median[
                 Flatten[
                  Part[$CellContext`newtissue, $CellContext`i, 7]]]]/Max[
               Part[$CellContext`genome, All, 2]], {$CellContext`i, 
              Length[$CellContext`newtissue]}]; Null]; 
         Remove[$CellContext`oneCycle, $CellContext`cellCycles, \
$CellContext`cellorder, $CellContext`cpos, $CellContext`icell, \
$CellContext`transcriptionTime, $CellContext`cyclePhase, $CellContext`copies, \
$CellContext`ploidy, $CellContext`tCell, $CellContext`str, \
$CellContext`timerange, $CellContext`tempCell]; $CellContext`newtissue]}; 
     Typeset`initDone$$ = True),
    SynchronousInitialization->True,
    UndoTrackedVariables:>{Typeset`show$$, Typeset`bookmarkMode$$},
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output",
 CellChangeTimes->{{3.776899510177238*^9, 3.776899606142692*^9}, {
   3.776899805090576*^9, 3.776899848973687*^9}, {3.7768999059030313`*^9, 
   3.7768999330532513`*^9}, 3.776899968197105*^9, 3.7769004537354403`*^9, 
   3.777027130735075*^9, 3.777027270283682*^9, 3.777027506929729*^9, {
   3.7770640638584833`*^9, 3.7770640807368793`*^9}, 3.777064165967279*^9, {
   3.777064327506132*^9, 3.777064343903512*^9}, 3.7770645444165287`*^9, {
   3.777064584534823*^9, 3.777064605774994*^9}, {3.777064689993823*^9, 
   3.777064720066184*^9}, {3.777064902273741*^9, 3.777064929046606*^9}, {
   3.777065382317428*^9, 3.777065401578887*^9}, 3.7791463202786617`*^9, 
   3.779146546699082*^9, {3.7791466920303593`*^9, 3.779146700074847*^9}},
 CellLabel->"Out[2]=",ExpressionUUID->"7a6bdf22-20b7-4e15-b4f8-53f9517c5b33"]
}, {2}]]
},
WindowSize->{1128, 732},
WindowMargins->{{38, Automatic}, {Automatic, 0}},
FrontEndVersion->"12.0 for Mac OS X x86 (64-bit) (April 8, 2019)",
StyleDefinitions->"Default.nb"
]
(* End of Notebook Content *)

(* Internal cache information *)
(*CellTagsOutline
CellTagsIndex->{}
*)
(*CellTagsIndex
CellTagsIndex->{}
*)
(*NotebookFileOutline
Notebook[{
Cell[CellGroupData[{
Cell[1510, 35, 103116, 2447, 7213, "Input",ExpressionUUID->"8cff46a2-83c5-49e4-8afe-53f15c89564f"],
Cell[104629, 2484, 32244, 645, 397, "Output",ExpressionUUID->"7a6bdf22-20b7-4e15-b4f8-53f9517c5b33"]
}, {2}]]
}
]
*)

(* NotebookSignature 5vpZS3oIv6uN5Aw@ASyacSxL *)
