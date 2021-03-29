(*CacheID: 234*)
(* Internal cache information:
NotebookFileLineBreakTest
NotebookFileLineBreakTest
NotebookDataPosition[         0,          0]
NotebookDataLength[    133590,       3044]
NotebookOptionsPosition[    132847,       3019]
NotebookOutlinePosition[    133243,       3035]
CellTagsIndexPosition[    133200,       3032]
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
    RowBox[{"Off", "[", 
     StyleBox[
      RowBox[{"Eigenvalues", "::", "mindet"}], "MessageName"], "]"}], ";", 
    "\[IndentingNewLine]", 
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
    RowBox[{"emptList", "=", 
     RowBox[{"genomeName", "/.", 
      RowBox[{
       RowBox[{"_", "?", "NumberQ"}], "\[RuleDelayed]", "0"}]}]}], ";", 
    "\[IndentingNewLine]", 
    StyleBox[
     RowBox[{"(*", 
      RowBox[{"start", " ", "with", " ", "one", " ", "cell"}], "*)"}], 
     "Input"], 
    StyleBox["\[IndentingNewLine]", "Input"], 
    StyleBox[
     RowBox[{"genomeI", "=", 
      RowBox[{
       RowBox[{"Tuples", "[", 
        RowBox[{
         RowBox[{"{", "1", "}"}], ",", 
         RowBox[{"Length", "[", "genomeLength", "]"}]}], "]"}], "[", 
       RowBox[{"[", "1", "]"}], "]"}]}], "Input"], 
    StyleBox[";", "Input"], 
    StyleBox["\[IndentingNewLine]", "Input"], 
    RowBox[{"(*", 
     RowBox[{
      RowBox[{"Print", "[", "genomeI", "]"}], ";"}], "*)"}], 
    StyleBox["\[IndentingNewLine]", "Input"], 
    StyleBox[
     RowBox[{"xC", "=", 
      RowBox[{"{", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"0", ",", "0", ",", "0"}], "}"}], 
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
           RowBox[{"Total", "[", " ", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{"ccT", ",", 
               RowBox[{"-", "500"}], ",", 
               RowBox[{"-", "500"}], ",", 
               RowBox[{"-", "500"}]}], "}"}], "/.", 
             RowBox[{
              RowBox[{"_", "?", "Negative"}], "\[Rule]", "0"}]}], "]"}], ",", 
           "0", ",", "0"}], 
          RowBox[{"(*", 
           RowBox[{"relative", " ", "time", " ", "passed"}], "*)"}], "}"}], 
         ",", 
         RowBox[{"{", " ", 
          RowBox[{"{", 
           RowBox[{"ccT", ",", 
            RowBox[{"-", "500"}], ",", 
            RowBox[{"-", "500"}], ",", 
            RowBox[{"-", "500"}]}], "}"}], "}"}], 
         RowBox[{"(*", 
          RowBox[{
          "negative", " ", "values", " ", "ensure", " ", "no", " ", 
           "transcription", " ", "time"}], "*)"}], ",", 
         RowBox[{"{", 
          RowBox[{"1", ",", " ", 
           RowBox[{
            RowBox[{"genomeI", "&"}], "/@", 
            RowBox[{"Range", "[", 
             RowBox[{"1", ",", "ploidy"}], "]"}]}]}], "}"}], ",", 
         RowBox[{"{", 
          RowBox[{"(*", 
           RowBox[{"genomeLength", "[", 
            RowBox[{"[", "gl", "]"}], "]"}], "*)"}], 
          RowBox[{"emptList", ",", "emptList"}], 
          RowBox[{"(*", 
           RowBox[{"temp", " ", "transcripts"}], "*)"}], "}"}], ",", 
         RowBox[{
          RowBox[{"ToString", "[", "1", "]"}], "<>", "\"\<-1\>\""}], 
         RowBox[{"(*", 
          RowBox[{"cell", " ", "name"}], "*)"}], ",", 
         RowBox[{"{", "}"}]}], 
        RowBox[{"(*", 
         RowBox[{"lineage", " ", "tracking", " ", "1", " ", "step"}], "*)"}], 
        "}"}], "}"}]}], "Input"], 
    StyleBox[";", "Input"], 
    StyleBox["\[IndentingNewLine]", "Input"], 
    RowBox[{"(*", 
     StyleBox[
      RowBox[{
       RowBox[{"Print", "[", "xC", "]"}], ";"}], "Input"], "*)"}], 
    StyleBox["\[IndentingNewLine]", "Input"], 
    RowBox[{"Table", "[", "\[IndentingNewLine]", 
     RowBox[{
      RowBox[{
       RowBox[{"xC", "=", 
        RowBox[{"oneFullCycleV01", "[", 
         RowBox[{"xC", ",", "timestep", ",", 
          RowBox[{"{", 
           RowBox[{"ccTsigma", ",", "incCycle", ",", 
            RowBox[{"-", "3"}], ",", 
            RowBox[{"{", 
             RowBox[{"{", 
              RowBox[{"ccT", ",", 
               RowBox[{"-", "500"}], ",", 
               RowBox[{"-", "500"}], ",", 
               RowBox[{"-", "500"}]}], "}"}], "}"}]}], "}"}], ",", 
          RowBox[{"Transpose", "[", 
           RowBox[{"{", 
            RowBox[{"genomeName", ",", "genomeLength"}], "}"}], "]"}], ",", 
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
            ",", 
            RowBox[{"{", 
             RowBox[{
              RowBox[{"-", "1"}], ",", "\[CapitalOmega]"}], "}"}]}], 
           RowBox[{"(*", "rpol", "*)"}], "}"}]}], "]"}]}], ";", 
       RowBox[{"(*", 
        RowBox[{
         RowBox[{"[", 
          RowBox[{"[", "1", "]"}], "]"}], " ", "is", " ", "the", " ", "gene", 
         " ", 
         RowBox[{"network", "\n", "[", 
          RowBox[{"[", "2", "]"}], "]"}], " ", "probability", " ", "of", " ", 
         "transcripts", " ", "remaining", " ", "in", " ", "the", " ", 
         RowBox[{"system", "\n", "[", 
          RowBox[{"[", "3", "]"}], "]"}], " ", "ploidy", " ", 
         RowBox[{"level", "\n", "[", 
          RowBox[{"[", "4", "]"}], "]"}], " ", "cell", " ", "cycle", " ", 
         RowBox[{"increments", "\n", "[", 
          RowBox[{"[", "5", "]"}], "]"}], " ", "rnaPolII", " ", "rate", " ", 
         "0", " ", "is", " ", "no", " ", "rate"}], "*)"}], 
       "\[IndentingNewLine]", 
       RowBox[{"(*", 
        StyleBox[
         RowBox[{
          RowBox[{"Print", "[", "xC", "]"}], ";"}], "Input"], "*)"}], 
       "\[IndentingNewLine]", 
       RowBox[{"(*", 
        RowBox[{
         RowBox[{
          RowBox[{
           RowBox[{"Flatten", "[", 
            RowBox[{"{", 
             RowBox[{
              RowBox[{"#", "[", 
               RowBox[{"[", "8", "]"}], "]"}], " ", 
              RowBox[{"(*", "name", "*)"}], ",", 
              RowBox[{"#", "[", 
               RowBox[{"[", 
                RowBox[{"4", ",", "1"}], "]"}], "]"}], 
              RowBox[{"(*", "phase", "*)"}], ",", 
              RowBox[{"#", "[", 
               RowBox[{"[", 
                RowBox[{"4", ",", "5"}], "]"}], "]"}], " ", 
              RowBox[{"(*", 
               RowBox[{"time", " ", "elapsed"}], "*)"}], 
              RowBox[{"(*", 
               RowBox[{"StringJoin", "[", 
                RowBox[{
                 RowBox[{
                  RowBox[{
                   RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"ToString", "[", "#", "]"}], "&"}], "/@", "#"}], 
                    ")"}], "<>", "\"\<_\>\""}], "&"}], "/@", 
                 RowBox[{"#", "[", 
                  RowBox[{"[", 
                   RowBox[{"6", ",", "2"}], "]"}], "]"}]}], "]"}], "*)"}], 
              ",", 
              RowBox[{"Total", "[", 
               RowBox[{
                RowBox[{"#", "[", 
                 RowBox[{"[", "5", "]"}], "]"}], "/.", 
                RowBox[{
                 RowBox[{"_", "?", "Negative"}], "\[Rule]", "0"}]}], "]"}], 
              ",", 
              RowBox[{"Total", "[", 
               RowBox[{"#", "[", 
                RowBox[{"[", "7", "]"}], "]"}], "]"}]}], 
             "\[IndentingNewLine]", "}"}], "]"}], "&"}], "/@", 
          "\[InvisibleSpace]", "xC"}], ";"}], "*)"}], "\[IndentingNewLine]", 
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
             RowBox[{"#", "[", 
              RowBox[{"[", 
               RowBox[{"4", ",", "5"}], "]"}], "]"}], " ", 
             RowBox[{"(*", 
              RowBox[{"time", " ", "elapsed"}], "*)"}], ",", 
             RowBox[{"Total", "[", 
              RowBox[{
               RowBox[{"#", "[", 
                RowBox[{"[", "5", "]"}], "]"}], "/.", 
               RowBox[{
                RowBox[{"_", "?", "Negative"}], "\[Rule]", "0"}]}], "]"}], 
             ",", 
             RowBox[{"Total", "[", 
              RowBox[{"#", "[", 
               RowBox[{"[", "7", "]"}], "]"}], "]"}]}], "\[IndentingNewLine]",
             "}"}], "]"}], "&"}], "/@", "\[InvisibleSpace]", "xC"}]}], ";"}], 
      ",", "\[IndentingNewLine]", 
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
    RowBox[{"(*", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"0", ",", "0", ",", "0"}], "}"}], ",", "1", ",", 
         RowBox[{"{", 
          RowBox[{"0", ",", "1.1`", ",", 
           RowBox[{"{", "}"}]}], "}"}], ",", 
         RowBox[{"{", 
          RowBox[{"4", ",", "2", ",", "2", ",", "0", ",", "2"}], "}"}], ",", 
         RowBox[{"{", 
          RowBox[{"{", 
           RowBox[{"2", ",", 
            RowBox[{"-", "500"}], ",", 
            RowBox[{"-", "500"}], ",", 
            RowBox[{"-", "500"}]}], "}"}], "}"}], ",", 
         RowBox[{"{", 
          RowBox[{"1", ",", 
           RowBox[{"{", 
            RowBox[{"{", 
             RowBox[{"1", ",", "1", ",", "1"}], "}"}], "}"}]}], "}"}], ",", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"{", 
            RowBox[{"4", ",", "0", ",", "0"}], "}"}], ",", 
           RowBox[{"{", 
            RowBox[{"0", ",", "0", ",", "0"}], "}"}]}], "}"}], ",", 
         "\"\<1-111\>\"", ",", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"{", "0", "}"}], ",", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{"{", 
               RowBox[{"1", ",", "1", ",", "1"}], "}"}], "}"}], ",", 
             RowBox[{"{", 
              RowBox[{"5", ",", "1", ",", "0"}], "}"}], ",", "2"}], "}"}], 
           ",", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{"4", ",", "0", ",", "0"}], "}"}], ",", 
             RowBox[{"{", 
              RowBox[{"1", ",", "1", ",", "0"}], "}"}], ",", "2", ",", "2"}], 
            "}"}]}], "}"}]}], "}"}], ",", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"0", ",", "0", ",", "0"}], "}"}], ",", "1", ",", 
         RowBox[{"{", 
          RowBox[{"0", ",", "1.1`", ",", 
           RowBox[{"{", "}"}]}], "}"}], ",", 
         RowBox[{"{", 
          RowBox[{"4", ",", "2", ",", "2", ",", "0", ",", "2"}], "}"}], ",", 
         RowBox[{"{", 
          RowBox[{"{", 
           RowBox[{"2", ",", 
            RowBox[{"-", "500"}], ",", 
            RowBox[{"-", "500"}], ",", 
            RowBox[{"-", "500"}]}], "}"}], "}"}], ",", 
         RowBox[{"{", 
          RowBox[{"1", ",", 
           RowBox[{"{", 
            RowBox[{"{", 
             RowBox[{"1", ",", "1", ",", "1"}], "}"}], "}"}]}], "}"}], ",", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"{", 
            RowBox[{"1", ",", "1", ",", "0"}], "}"}], ",", 
           RowBox[{"{", 
            RowBox[{"0", ",", "0", ",", "0"}], "}"}]}], "}"}], ",", 
         "\"\<1-112\>\"", ",", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"{", "0", "}"}], ",", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{"{", 
               RowBox[{"1", ",", "1", ",", "1"}], "}"}], "}"}], ",", 
             RowBox[{"{", 
              RowBox[{"5", ",", "1", ",", "0"}], "}"}], ",", "2"}], "}"}], 
           ",", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{"4", ",", "0", ",", "0"}], "}"}], ",", 
             RowBox[{"{", 
              RowBox[{"1", ",", "1", ",", "0"}], "}"}], ",", "2", ",", "2"}], 
            "}"}]}], "}"}]}], "}"}]}], "}"}], "*)"}], "\[IndentingNewLine]", 
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
    RowBox[{"TableForm", "[", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"BoxWhiskerChart", "[", 
        RowBox[{
         RowBox[{"{", "pp", "}"}], ",", 
         RowBox[{"ChartStyle", "\[Rule]", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"Lighter", "[", 
             RowBox[{"Orange", ",", "0.20"}], "]"}], ",", 
            "\[IndentingNewLine]", 
            RowBox[{
             RowBox[{"ColorData", "[", "\"\<ThermometerColors\>\"", "]"}], 
             "[", "0.15", "]"}], ",", 
            RowBox[{
             RowBox[{"ColorData", "[", "24", "]"}], "[", "8", "]"}]}], 
           "}"}]}], ",", 
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
           RowBox[{"18", ",", "Black", ",", "\"\<Helvetica\>\""}], "}"}]}], 
         ",", 
         RowBox[{"ImageSize", "\[Rule]", "400"}]}], "]"}], ",", 
       RowBox[{"Text", "[", 
        RowBox[{"\"\<Transcriptome Diversity = \>\"", "<>", 
         RowBox[{"ToString", "[", 
          RowBox[{"Length", "[", 
           RowBox[{"Union", "[", "tt", "]"}], "]"}], "]"}]}], "]"}], ",", 
       RowBox[{"Text", "[", 
        RowBox[{"\"\<Clusters = \>\"", "<>", 
         RowBox[{"ToString", "[", 
          RowBox[{"Length", "[", 
           RowBox[{"FindClusters", "[", "tt", "]"}], "]"}], "]"}]}], "]"}], 
       ",", " ", "\"\<results from one iteration\>\""}], " ", "}"}], "]"}]}], 
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
     "20", ",", "1"}], "}"}], ",", 
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
     RowBox[{"{", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{
        "\[Lambda]", ",", "1", ",", "\"\<fixed RNA-pol rate, \[Lambda]\>\""}],
         "}"}], ",", "1", ",", "5"}], "}"}], ","}], "*)"}], 
   "\[IndentingNewLine]", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
      "\[CapitalOmega]", ",", "0.25", ",", 
       "\"\<RNA-pol re-initation distance, \[CapitalOmega]\>\""}], "}"}], ",",
      "0", ",", "5"}], "}"}], ",", "\[IndentingNewLine]", 
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
       RowBox[{"cellcycle01", "[", "val_", "]"}], ":=", 
       RowBox[{
        RowBox[{"RandomReal", "[", 
         RowBox[{
          RowBox[{"val", "[", 
           RowBox[{"[", "1", "]"}], "]"}], ",", 
          RowBox[{"WorkingPrecision", "->", "2"}]}], "]"}], "+", 
        RowBox[{"val", "[", 
         RowBox[{"[", "2", "]"}], "]"}], "+", 
        RowBox[{"val", "[", 
         RowBox[{"[", "3", "]"}], "]"}]}]}], ",", 
      RowBox[{
       RowBox[{"cellcycle02", "[", "val_", "]"}], ":=", 
       RowBox[{
        RowBox[{"RandomVariate", "[", 
         RowBox[{"PoissonDistribution", "[", 
          RowBox[{"val", "[", 
           RowBox[{"[", "1", "]"}], "]"}], "]"}], "]"}], "+", 
        RowBox[{"val", "[", 
         RowBox[{"[", "2", "]"}], "]"}], "+", 
        RowBox[{"val", "[", 
         RowBox[{"[", "3", "]"}], "]"}]}]}], ",", 
      RowBox[{
       RowBox[{"cellcycle03", "[", "val_", "]"}], ":=", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{"RandomVariate", "[", 
          RowBox[{"NormalDistribution", "[", 
           RowBox[{
            RowBox[{"val", "[", 
             RowBox[{"[", "1", "]"}], "]"}], ",", 
            RowBox[{"val", "[", 
             RowBox[{"[", "2", "]"}], "]"}]}], "]"}], "]"}], "+", 
         RowBox[{"val", "[", 
          RowBox[{"[", "3", "]"}], "]"}]}], ")"}]}], ",", 
      RowBox[{
       RowBox[{"cellcycle04", "[", "val_", "]"}], ":=", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{"RandomVariate", "[", 
          RowBox[{"NormalDistribution", "[", 
           RowBox[{
            RowBox[{
             RowBox[{"val", "[", 
              RowBox[{"[", "1", "]"}], "]"}], "+", 
             RowBox[{"(", 
              RowBox[{
               RowBox[{"val", "[", 
                RowBox[{"[", "2", "]"}], "]"}], "*", 
               RowBox[{"val", "[", 
                RowBox[{"[", "3", "]"}], "]"}]}], ")"}]}], ",", 
            RowBox[{"val", "[", 
             RowBox[{"[", "2", "]"}], "]"}]}], "]"}], "]"}], "+", 
         RowBox[{"val", "[", 
          RowBox[{"[", "3", "]"}], "]"}]}], ")"}]}], ",", 
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
          RowBox[{"-", "3"}]}], ",", " ", 
         RowBox[{"If", "[", 
          RowBox[{
           RowBox[{"(", 
            RowBox[{
             RowBox[{"val", "[", 
              RowBox[{"[", "2", "]"}], "]"}], ">", "0"}], ")"}], ",", 
           RowBox[{"cellcycle03", "[", "val", "]"}], " ", ",", 
           RowBox[{"val", "[", 
            RowBox[{"[", "1", "]"}], "]"}]}], "]"}], 
         RowBox[{"(*", 
          RowBox[{
           RowBox[{"Normal", " ", 
            RowBox[{"Distribution", "[", " ", 
             RowBox[{
              RowBox[{"mean", "+", 
               RowBox[{"(", 
                RowBox[{"increment", " ", "*", "sigma"}], ")"}]}], ",", " ", 
              "sigma"}], "]"}]}], " ", "+", " ", "increment"}], "*)"}], ",", 
         RowBox[{"opt", "==", 
          RowBox[{"-", "4"}]}], ",", 
         RowBox[{"If", "[", 
          RowBox[{
           RowBox[{"(", 
            RowBox[{
             RowBox[{"val", "[", 
              RowBox[{"[", "2", "]"}], "]"}], ">", "0"}], ")"}], ",", 
           RowBox[{"cellcycle04", "[", "val", "]"}], " ", ",", 
           RowBox[{"val", "[", 
            RowBox[{"[", "1", "]"}], "]"}]}], "]"}], ",", "\n", 
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
              RowBox[{"[", "2", "]"}], "]"}]}], "}"}], "]"}]}], ",", "\n", 
         RowBox[{"opt", "==", 
          RowBox[{"-", "6"}]}], ",", 
         RowBox[{"If", "[", 
          RowBox[{
           RowBox[{"(", 
            RowBox[{
             RowBox[{"val", "[", 
              RowBox[{"[", "2", "]"}], "]"}], ">", "0"}], ")"}], ",", 
           RowBox[{
            RowBox[{
             RowBox[{"{", 
              RowBox[{
               RowBox[{
                RowBox[{"val", "[", 
                 RowBox[{"[", "1", "]"}], "]"}], "-", "#"}], ",", "#"}], 
              "}"}], "&"}], "@", 
            RowBox[{"cellcycle03", "[", "val", "]"}]}], ",", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"(", 
              RowBox[{
               RowBox[{"Abs", "[", 
                RowBox[{"val", "[", 
                 RowBox[{"[", "3", "]"}], "]"}], "]"}], "*", 
               RowBox[{"val", "[", 
                RowBox[{"[", "1", "]"}], "]"}]}], ")"}], ",", 
             RowBox[{
              RowBox[{"(", 
               RowBox[{"1", "-", 
                RowBox[{"Abs", "[", 
                 RowBox[{"val", "[", 
                  RowBox[{"[", "3", "]"}], "]"}], "]"}]}], ")"}], "*", 
              RowBox[{"val", "[", 
               RowBox[{"[", "1", "]"}], "]"}]}]}], "}"}]}], "]"}], ",", "\n", 
         
         RowBox[{"opt", "==", 
          RowBox[{"-", "7"}]}], ",", 
         RowBox[{
          RowBox[{"(", 
           RowBox[{"(", 
            RowBox[{
             RowBox[{
              RowBox[{"{", 
               RowBox[{
                RowBox[{"1", "-", "#"}], ",", "#"}], "}"}], "&"}], "@", 
             RowBox[{"cellcycle03", "[", 
              RowBox[{"{", 
               RowBox[{
                RowBox[{"val", "[", 
                 RowBox[{"[", "3", "]"}], "]"}], ",", 
                RowBox[{"val", "[", 
                 RowBox[{"[", "2", "]"}], "]"}], ",", "0"}], "}"}], "]"}]}], 
            ")"}], ")"}], "*", 
          RowBox[{"val", "[", 
           RowBox[{"[", "1", "]"}], "]"}]}], "\n", 
         RowBox[{"(*", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{
             RowBox[{
             "split", " ", "between", " ", "two", " ", "daughter", " ", 
              "cells", " ", "0"}], "\[Rule]", "val"}], ",", 
            RowBox[{"1", "-"}]}]}], "*)"}], ",", "\n", 
         RowBox[{"opt", "==", "\"\<stemlike\>\""}], ",", 
         RowBox[{"(", 
          RowBox[{"If", "[", 
           RowBox[{
            RowBox[{
             RowBox[{"val", "[", 
              RowBox[{"[", "5", "]"}], "]"}], "==", "1"}], ",", 
            RowBox[{"val", "[", 
             RowBox[{"[", "4", "]"}], "]"}], ",", 
            RowBox[{"{", 
             RowBox[{
              RowBox[{"val", "[", 
               RowBox[{"[", "1", "]"}], "]"}], ",", 
              RowBox[{"val", "[", 
               RowBox[{"[", "1", "]"}], "]"}]}], "}"}]}], "]"}], ")"}]}], 
        "\n", 
        RowBox[{"(*", 
         RowBox[{"{", 
          RowBox[{
          "the", " ", "example", " ", "tries", " ", "to", " ", "capture", " ",
            "stem", " ", "cells", " ", "splitting", " ", "assymetrically", 
           " ", "basically", " ", 
           RowBox[{"val", "[", 
            RowBox[{"[", "4", "]"}], "]"}], " ", "is", " ", "a", " ", 
           "parameter", " ", "you", " ", "set", " ", "for", " ", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"stem", " ", "cell", " ", "cell", " ", "cycle"}], ",", 
             " ", 
             RowBox[{
             "non", " ", "stem", " ", "cell", " ", "cell", " ", "cycle"}]}], 
            "}"}]}], "}"}], "*)"}], "\n", "]"}]}], ",", "\[IndentingNewLine]", 
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
       RowBox[{"randDistofT2", "[", "transcriptValues_", "]"}], ":=", 
       RowBox[{"With", "[", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"(", 
           RowBox[{"tt", "=", 
            RowBox[{"RandomInteger", "/@", "transcriptValues"}]}], ")"}], 
          "}"}], ",", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"transcriptValues", "-", "tt"}], ",", "tt"}], "}"}]}], 
        "]"}]}], ",", 
      RowBox[{
       RowBox[{"transcriptDegredation", "[", 
        RowBox[{"oneCell_", ",", "prob_"}], "]"}], ":=", 
       RowBox[{"Module", "[", 
        RowBox[{
         RowBox[{"{", "newCell", "}"}], ",", "\n", 
         RowBox[{"(*", 
          RowBox[{"prob", "=", 
           RowBox[{
            RowBox[{"transcriptionPara", "[", 
             RowBox[{"[", "2", "]"}], "]"}], " ", "probability", " ", "of", 
            " ", "transcripts", " ", "remaining", " ", "in", " ", "the", " ", 
            "system"}]}], "*)"}], 
         RowBox[{"(*", " ", 
          RowBox[{
           RowBox[{"maintaining", " ", "trancript", " ", "probability"}], ",",
            " ", 
           RowBox[{
           "trying", " ", "to", " ", "capture", " ", "and", " ", "average", 
            " ", "degredation", " ", "rate"}], ",", 
           RowBox[{
           "this", " ", "may", " ", "be", " ", "improved", " ", "by", " ", 
            "relating", " ", "it", " ", "to", " ", "length"}]}], "*)"}], "\n", 
         RowBox[{
          RowBox[{"newCell", "=", "oneCell"}], ";", "\n", 
          RowBox[{"If", "[", 
           RowBox[{
            RowBox[{"(", 
             RowBox[{
              RowBox[{"(", 
               RowBox[{"prob", "==", "0"}], ")"}], "||", 
              RowBox[{"(", 
               RowBox[{
                RowBox[{"newCell", "[", 
                 RowBox[{"[", 
                  RowBox[{"7", ",", "1"}], "]"}], "]"}], "==", 
                RowBox[{"{", "}"}]}], ")"}], "||", 
              RowBox[{
               RowBox[{"Union", "[", 
                RowBox[{"newCell", "[", 
                 RowBox[{"[", 
                  RowBox[{"7", ",", "1"}], "]"}], "]"}], "]"}], "==", 
               RowBox[{"{", "0", "}"}]}]}], ")"}], ",", "\n", 
            RowBox[{
             RowBox[{
              RowBox[{"newCell", "[", 
               RowBox[{"[", 
                RowBox[{"7", ",", "1"}], "]"}], "]"}], "=", 
              RowBox[{
               RowBox[{"newCell", "[", 
                RowBox[{"[", 
                 RowBox[{"7", ",", "1"}], "]"}], "]"}], "/.", 
               RowBox[{
                RowBox[{"_", "?", "NumberQ"}], ":>", "0"}]}]}], ";"}], ",", 
            "\n", 
            RowBox[{
             RowBox[{"If", "[", 
              RowBox[{
               RowBox[{"(", 
                RowBox[{"prob", "<", "1"}], ")"}], ",", "\n", 
               RowBox[{
                RowBox[{
                 RowBox[{"newCell", "[", 
                  RowBox[{"[", 
                   RowBox[{"7", ",", "1"}], "]"}], "]"}], "=", 
                 RowBox[{"parentalTranscriptsAssociation", "[", 
                  RowBox[{
                   RowBox[{"newCell", "[", 
                    RowBox[{"[", 
                    RowBox[{"7", ",", "1"}], "]"}], "]"}], ",", "prob"}], 
                  "]"}]}], ";"}]}], 
              RowBox[{"(*", 
               RowBox[{
               "random", " ", "transcripts", " ", "remain", " ", "upto", " ", 
                "a", " ", "probability", " ", "returns", " ", "a", " ", 
                "list", " ", "with", " ", "transcript", " ", "copy", " ", 
                "numbers", " ", "for", " ", "each", " ", "gene"}], "*)"}], 
              "]"}], ";"}]}], " ", "\n", "]"}], ";", " ", 
          RowBox[{"(*", 
           RowBox[{
            RowBox[{"if", " ", "prob"}], "=", 
            RowBox[{
            "1", " ", "then", " ", "it", " ", "keeps", " ", "all", " ", "the",
              " ", "transcripts", " ", "as", " ", "is"}]}], "*)"}], "\n", 
          "newCell"}]}], "\n", "]"}]}], ",", "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"copiesT", "[", 
        RowBox[{
        "cellactivegeneList_", ",", "rnaPolRate_", ",", "transcriptionTime_", 
         ",", "genomeLength_"}], "]"}], ":=", "\n", 
       RowBox[{"(", 
        RowBox[{"(*", 
         RowBox[{
          RowBox[{"only", " ", "complete", " ", "transcripts"}], ",", 
          RowBox[{
           RowBox[{"rnapol", "[", 
            RowBox[{"[", "2", "]"}], "]"}], " ", "is", " ", "reinitiation", 
           " ", "distance"}], ",", " ", 
          RowBox[{"and", " ", 
           RowBox[{"rnapol", "[", 
            RowBox[{"[", "1", "]"}], "]"}], " ", "is", " ", "the", " ", 
           "rate", " ", "which", " ", "is", " ", "usually", " ", "1"}]}], 
         "*)"}], 
        RowBox[{
         RowBox[{"(", 
          RowBox[{
           RowBox[{"Floor", "[", 
            RowBox[{"(", 
             RowBox[{
              RowBox[{
               RowBox[{"(", 
                RowBox[{"Total", "[", 
                 RowBox[{"Map", "[", 
                  RowBox[{
                   RowBox[{"Function", "[", 
                    RowBox[{"dum", ",", 
                    RowBox[{
                    RowBox[{"ratePol", "=", 
                    RowBox[{"If", "[", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"rnaPolRate", "[", 
                    RowBox[{"[", "1", "]"}], "]"}], ">", "0"}], ",", 
                    RowBox[{"Abs", "[", 
                    RowBox[{"RandomVariate", "[", 
                    RowBox[{"NormalDistribution", "[", 
                    RowBox[{
                    RowBox[{"Abs", "[", 
                    RowBox[{"rnaPolRate", "[", 
                    RowBox[{"[", "1", "]"}], "]"}], "]"}], ",", 
                    RowBox[{"Abs", "[", 
                    RowBox[{"rnaPolRate", "[", 
                    RowBox[{"[", "1", "]"}], "]"}], "]"}]}], "]"}], "]"}], 
                    "]"}], 
                    RowBox[{"(*", 
                    RowBox[{
                    RowBox[{
                    "randomly", " ", "selects", " ", "a", " ", "positive", 
                    " ", "rate", "  ", "with", " ", "mean"}], "=", "sigma"}], 
                    "*)"}], ",", 
                    RowBox[{"Abs", "[", 
                    RowBox[{"rnaPolRate", "[", 
                    RowBox[{"[", "1", "]"}], "]"}], "]"}]}], "]"}]}], ";", 
                    RowBox[{
                    RowBox[{"Floor", "[", 
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{"transcriptionTime", "*", "ratePol"}], ")"}], "-", 
                    RowBox[{"(", 
                    RowBox[{"dum", "/", "ratePol"}], ")"}]}], ")"}], "/", 
                    "#"}], "]"}], "/.", " ", 
                    RowBox[{
                    RowBox[{"_", "?", "Negative"}], ":>", " ", "0"}]}]}]}], 
                    " ", "]"}], ",", 
                   RowBox[{"If", "[", 
                    RowBox[{
                    RowBox[{
                    RowBox[{
                    RowBox[{"rnaPolRate", "[", 
                    RowBox[{"[", "2", "]"}], "]"}], "<=", "0"}], "||", 
                    RowBox[{
                    RowBox[{"rnaPolRate", "[", 
                    RowBox[{"[", "2", "]"}], "]"}], "<=", "0."}], "||", 
                    RowBox[{
                    RowBox[{"rnaPolRate", "[", 
                    RowBox[{"[", "2", "]"}], "]"}], ">", "#"}]}], ",", 
                    RowBox[{"{", "0", "}"}], ",", 
                    RowBox[{"DeleteCases", "[", 
                    RowBox[{
                    RowBox[{"Range", "[", 
                    RowBox[{"0", ",", "#", ",", 
                    RowBox[{"rnaPolRate", "[", 
                    RowBox[{"[", "2", "]"}], "]"}]}], "]"}], ",", 
                    RowBox[{"N", "[", "#", "]"}]}], "]"}]}], "]"}]}], "]"}], 
                 "]"}], ")"}], "&"}], "/@", "genomeLength"}], ")"}], "\n", 
            RowBox[{"(*", 
             RowBox[{"*", 
              RowBox[{"If", "[", 
               RowBox[{
                RowBox[{
                 RowBox[{"rnaPolRate", "[", 
                  RowBox[{"[", "1", "]"}], "]"}], ">", "0"}], ",", 
                RowBox[{"Abs", "[", 
                 RowBox[{"RandomVariate", "[", 
                  RowBox[{
                   RowBox[{"NormalDistribution", "[", 
                    RowBox[{
                    RowBox[{"rnaPolRate", "[", 
                    RowBox[{"[", "1", "]"}], "]"}], ",", 
                    RowBox[{"rnaPolRate", "[", 
                    RowBox[{"[", "1", "]"}], "]"}]}], "]"}], ",", 
                   RowBox[{"Length", "[", "genomeLength", "]"}]}], "]"}], 
                 "]"}]}]}]}], "*)"}], "]"}], "/.", " ", 
           RowBox[{
            RowBox[{"_", "?", "Negative"}], ":>", " ", "0"}]}], ")"}], "*", 
         "cellactivegeneList"}], 
        RowBox[{"(*", "Active", "*)"}], ")"}]}], ",", "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"parentalTranscriptsAssociation", "[", 
        RowBox[{"transcripts_", ",", "probability_"}], "]"}], ":=", 
       RowBox[{"With", "[", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"tt", "=", 
           RowBox[{"RandomChoice", "[", 
            RowBox[{
             RowBox[{"transcripts", "->", 
              RowBox[{"Range", "[", 
               RowBox[{"1", ",", "transcripts"}], "]"}]}], ",", 
             RowBox[{"(", 
              RowBox[{"(", 
               RowBox[{
                RowBox[{"Floor", "[", 
                 RowBox[{
                  RowBox[{"Total", "[", "transcripts", "]"}], "*", 
                  RowBox[{"(", 
                   RowBox[{"1", "-", "probability"}], ")"}]}], "]"}], "/.", 
                RowBox[{
                 RowBox[{"_", "?", "Negative"}], "->", "0"}]}], ")"}], ")"}]}]
             , "]"}]}], "}"}], ",", "\n", 
         RowBox[{
          RowBox[{"(", 
           RowBox[{"transcripts", "-", 
            RowBox[{"ReplacePart", "[", 
             RowBox[{
              RowBox[{"transcripts", "/.", 
               RowBox[{
                RowBox[{"_", "?", "NumberQ"}], "->", "0"}]}], ",", 
              RowBox[{"Normal", "[", 
               RowBox[{"Counts", "[", "tt", "]"}], "]"}]}], "]"}]}], ")"}], "/.", 
          RowBox[{
           RowBox[{"_", "?", "Negative"}], "->", "0"}]}]}], "\n", "]"}]}], 
      ",", 
      RowBox[{
       RowBox[{"transcriptCopyNumber", "[", 
        RowBox[{
        "oneCell_", ",", "shortestToMphase_", ",", "rnapol_", ",", 
         "genomeLength_"}], "]"}], ":=", 
       RowBox[{"Module", "[", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"newCell", ",", "transcriptionTime"}], "}"}], ",", "\n", 
         RowBox[{
          RowBox[{"newCell", "=", "oneCell"}], ";", "\n", 
          RowBox[{"(*", 
           RowBox[{
           "calcualte", " ", "current", " ", "trancription", " ", "time", " ",
             "available", " ", "for", " ", "a", " ", "cell"}], "*)"}], 
          RowBox[{"transcriptionTime", "=", 
           RowBox[{"Min", "[", 
            RowBox[{"{", 
             RowBox[{
              RowBox[{"newCell", "[", 
               RowBox[{"[", 
                RowBox[{"4", ",", "3"}], "]"}], "]"}], ",", 
              RowBox[{
               RowBox[{"newCell", "[", 
                RowBox[{"[", 
                 RowBox[{"4", ",", "4"}], "]"}], "]"}], "+", 
               "shortestToMphase"}]}], "}"}], "]"}]}], ";", "\n", 
          RowBox[{"(*", 
           RowBox[{
           "identifies", " ", "the", " ", "shortest", " ", "cell", " ", 
            "cycle", " ", "duration"}], "*)"}], "\n", 
          RowBox[{"(*", 
           RowBox[{
            RowBox[{
            "the", " ", "shortest", " ", "cell", " ", "cycle", " ", "is", " ",
              "the", " ", "difference", " ", "between", " ", "the", " ", 
             "total", " ", "cell", " ", "cycle", " ", "time", " ", "and", " ",
              "the", " ", "time", " ", "that", " ", "has", " ", "passed"}], 
            ",", " ", 
            RowBox[{
             RowBox[{"[", 
              RowBox[{"[", 
               RowBox[{"4", ",", "3"}], "]"}], "]"}], " ", "is", " ", "the", 
             " ", "total", " ", "cell", " ", "cycle", " ", "duration"}], ",", 
            " ", 
            RowBox[{
             RowBox[{"and", " ", "[", 
              RowBox[{"[", 
               RowBox[{"4", ",", "4"}], "]"}], "]"}], " ", "is", " ", "the", 
             " ", "time", " ", "that", " ", "has", " ", "relatively", " ", 
             "passed", "\n", "example", " ", 
             RowBox[{"if", " ", "[", 
              RowBox[{"[", 
               RowBox[{"4", ",", "3"}], "]"}], "]"}], " ", "is", " ", "2", 
             "hrs", " ", 
             RowBox[{"and", " ", "[", 
              RowBox[{"[", 
               RowBox[{"4", ",", "4"}], "]"}], "]"}], " ", "is", " ", "1.5"}],
             ",", " ", 
            RowBox[{
             RowBox[{
              RowBox[{"[", 
               RowBox[{"[", 
                RowBox[{"4", ",", "3"}], "]"}], "]"}], "-", 
              RowBox[{"[", 
               RowBox[{"[", 
                RowBox[{"4", ",", "4"}], "]"}], "]"}]}], "=", 
             RowBox[{
              RowBox[{
               RowBox[{"0.5", ".", " ", "it"}], " ", "means", " ", "there", 
               " ", "is", " ", "only", " ", "half", " ", "hour", " ", "for", 
               " ", "this", " ", "cell", " ", "to", " ", 
               RowBox[{"divde", ".", " ", "\n", "We"}], " ", "calcualte", " ",
                "this", " ", "value", " ", "for", " ", "evey", " ", "cell", 
               " ", "and", " ", "get", " ", "the", " ", "shortest", " ", "in",
                " ", "the", " ", 
               RowBox[{"tissue", ".", " ", "\n", "All"}], " ", "cells", " ", 
               "that", " ", "have", " ", "a", " ", "value"}], " ", 
              "\[LessEqual]", " ", 
              RowBox[{"shortestToMphase", " ", "will", " ", "divide"}]}]}]}], 
           "\n", "*)"}], "\n", 
          RowBox[{"(*", 
           RowBox[{
            RowBox[{
            "calculates", " ", "the", " ", "trancripts", " ", "possible", " ",
              "and", " ", "their", " ", "copies", " ", "based", " ", "on", 
             " ", "time", " ", "and", " ", "ploidy"}], ",", " ", 
            RowBox[{
            "we", " ", "can", " ", "add", " ", "an", " ", "inefficiacy", " ", 
             "term", " ", "later"}]}], "*)"}], 
          RowBox[{"(*", 
           RowBox[{
            RowBox[{"genome", " ", "=", " ", 
             RowBox[{"Transpose", "[", 
              RowBox[{"{", 
               RowBox[{"genomeName", ",", "genomeLength"}], "}"}], "]"}]}], 
            ",", " ", 
            RowBox[{
            "we", " ", "just", " ", "need", " ", "the", " ", 
             "genomeLength"}]}], "*)"}], "\n", 
          RowBox[{"(*", 
           RowBox[{
            RowBox[{"active", " ", "genes"}], " ", "=", " ", 
            RowBox[{
             RowBox[{"newtissue", "[", 
              RowBox[{"[", 
               RowBox[{"icell", ",", "6", ",", "2"}], "]"}], "]"}], " ", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{"1", ",", "1", ",", "1"}], "}"}], ",", 
               RowBox[{
                RowBox[{
                 RowBox[{"{", 
                  RowBox[{"1", ",", "0", ",", "1"}], "}"}], "..."}], 
                "Ploidy"}]}], "}"}]}]}], "*)"}], "\n", 
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
             "and", " ", "slow"}]}], "*)"}], 
          RowBox[{"(*", 
           RowBox[{
           "places", " ", "the", " ", "transcripts", " ", "in", " ", "the", 
            " ", "temp", " ", "sections", " ", "until", " ", "division", " ", 
            "occurs"}], "*)"}], "\n", "\n", 
          RowBox[{
           RowBox[{"newCell", "[", 
            RowBox[{"[", 
             RowBox[{"7", ",", "2"}], "]"}], "]"}], "=", 
           RowBox[{"Total", "[", 
            RowBox[{
             RowBox[{
              RowBox[{"copiesT", "[", 
               RowBox[{"#", " ", 
                RowBox[{"(*", "activegenes", "*)"}], ",", "rnapol", ",", 
                "transcriptionTime", ",", "genomeLength"}], "]"}], "&"}], "/@", 
             RowBox[{"newCell", "[", 
              RowBox[{"[", 
               RowBox[{"6", ",", "2"}], "]"}], "]"}]}], "]"}]}], ";", "\n", 
          "\n", 
          RowBox[{"(*", 
           RowBox[{
            RowBox[{
            "since", " ", "the", " ", "genome", " ", "contains", " ", "the", 
             " ", "ploidy", " ", "number", " ", "we", " ", "dont", " ", 
             "have", " ", "to", " ", "include", " ", "ploidy", " ", "here"}], 
            ",", " ", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{"1", ",", "1", ",", "1"}], "}"}], ",", 
               RowBox[{"{", 
                RowBox[{"1", ",", "0", ",", "1"}], "}"}]}], "}"}], " ", 
             "tells", " ", "us", " ", "two", " ", "copies"}]}], " ", "*)"}], 
          RowBox[{"(*", 
           RowBox[{"Values", "[", 
            RowBox[{"AssociationThread", "[", 
             RowBox[{
              RowBox[{"genome", "[", 
               RowBox[{"[", 
                RowBox[{"All", ",", "1"}], "]"}], "]"}], ",", "copies"}], 
             "]"}], "]"}], "*)"}], ";", 
          RowBox[{"(*", 
           RowBox[{
            RowBox[{
            "temporary", " ", "vs", " ", "fixed", " ", "transcripts"}], ",", 
            " ", 
            RowBox[{
            "they", " ", "only", " ", "become", " ", "fixed", " ", "right", 
             " ", "before", " ", "division"}]}], "*)"}], "\n", "newCell"}]}], 
        "\n", "]"}]}], ",", "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"getCellPhase", "[", 
        RowBox[{"cell_", ",", "shortestToMphase_"}], "]"}], ":=", 
       RowBox[{"Module", "[", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"leftcc", ",", "a"}], "}"}], ",", "\n", 
         RowBox[{"(*", 
          RowBox[{
           RowBox[{
            RowBox[{"if", " ", "[", 
             RowBox[{"[", 
              RowBox[{"4", ",", "3"}], "]"}], "]"}], " ", "<", " ", 
            RowBox[{
             RowBox[{"[", 
              RowBox[{"[", 
               RowBox[{"4", ",", "4"}], "]"}], "]"}], " ", "then", " ", 
             "that", " ", "means", " ", "the", " ", "cell", " ", "has", " ", 
             "passed", " ", "enough", " ", "time", " ", "to", " ", "divide", 
             " ", "so", " ", "it", " ", "enters", " ", "Mphase", "\n", 
             RowBox[{"if", " ", "[", 
              RowBox[{"[", 
               RowBox[{"4", ",", "3"}], "]"}], "]"}]}], " ", ">", " ", 
            RowBox[{
             RowBox[{"[", 
              RowBox[{"[", 
               RowBox[{"4", ",", "4"}], "]"}], "]"}], " ", "then", " ", 
             "that", " ", "means", " ", "the", " ", "cell", " ", "cannot", 
             " ", "reach", " ", "Mphase", " ", "and", " ", "it", " ", "will", 
             " ", "be", " ", "in", " ", "a", " ", "particular", " ", "cell", 
             " ", "phase", " ", "either", " ", "in", " ", "G1"}]}], ",", " ", 
           
           RowBox[{"S", " ", "and", " ", "G2"}]}], "\n", "*)"}], "\n", 
         RowBox[{"(*", 
          RowBox[{
          "Calculated", " ", "the", " ", "amount", " ", "of", " ", "time", 
           " ", "left", " ", "in", " ", "the", " ", "cell", " ", "cycle"}], 
          "*)"}], "\n", 
         RowBox[{
          RowBox[{"leftcc", "=", 
           RowBox[{"Subtract", "@@", 
            RowBox[{"cell", "[", 
             RowBox[{"[", 
              RowBox[{"4", ",", 
               RowBox[{"3", ";;", "4"}]}], "]"}], "]"}]}]}], ";", 
          RowBox[{"(*", 
           RowBox[{
            RowBox[{"example", " ", 
             RowBox[{"if", " ", "[", 
              RowBox[{"[", 
               RowBox[{"4", ",", "3"}], "]"}], "]"}], " ", "is", " ", "2", 
             "hrs", " ", 
             RowBox[{"and", " ", "[", 
              RowBox[{"[", 
               RowBox[{"4", ",", "4"}], "]"}], "]"}], " ", "is", " ", "1.5"}],
             ",", " ", 
            RowBox[{
             RowBox[{
              RowBox[{"[", 
               RowBox[{"[", 
                RowBox[{"4", ",", "3"}], "]"}], "]"}], "-", 
              RowBox[{"[", 
               RowBox[{"[", 
                RowBox[{"4", ",", "4"}], "]"}], "]"}]}], "=", 
             RowBox[{
              RowBox[{"0.5", ".", " ", "it"}], " ", "means", " ", "there", 
              " ", "is", " ", "only", " ", "half", " ", "hour", " ", "for", 
              " ", "this", " ", "cell", " ", "to", " ", 
              RowBox[{"divde", "."}]}]}]}], "*)"}], "\n", 
          RowBox[{"(*", 
           RowBox[{
            RowBox[{"Print", "[", 
             RowBox[{"\"\<l-\>\"", ",", "leftcc"}], "]"}], ";", "\n", 
            RowBox[{"Print", "[", 
             RowBox[{"\"\<s-\>\"", ",", "shortestToMphase"}], "]"}], ";"}], 
           "*)"}], "\n", 
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
           "]"}]}]}], "\n", "]"}]}], "\[IndentingNewLine]", 
      RowBox[{"(*", 
       RowBox[{
       "cellRelatedFunctions`randDistofT2", "\[IndentingNewLine]", 
        "cellRelatedFunctions`cellcycleChangeOPT", "\[IndentingNewLine]", 
        "cellRelatedFunctions`transcriptCopyNumber", "\[IndentingNewLine]", 
        "cellRelatedFunctions`transcriptDegredation", "\[IndentingNewLine]", 
        "cellRelatedFunctions`getCellPhase", " ", "\[IndentingNewLine]", 
        "cellRelatedFunctions`parentalTranscriptsAssociation"}], "*)"}], ",", 
      "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"oneFullCycleV01", "[", 
        RowBox[{
        "tissue_", ",", "timestep_", ",", "cellCycleOpts_", ",", "genome_", 
         ",", "transcriptionPara_"}], "]"}], ":=", 
       RowBox[{"Module", "[", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{
          "ploidy", ",", "oneCycle", ",", "shortestToMphase", ",", 
           "cellCycles", ",", "stemstate", ",", "newtissue", ",", "cpos", ",",
            "icell", ",", "cyclePhase", ",", "tempCell", ",", "tCell", ",", 
           "newcellcylceduration", ",", "lineage"}], "}"}], ",", "\n", 
         RowBox[{"(*", 
          RowBox[{
           RowBox[{
            RowBox[{"\n", 
             RowBox[{"cellCycleOpts", "[", 
              RowBox[{"[", "1", "]"}], "]"}], "]"}], "]"}], "=", " ", 
           RowBox[{
            RowBox[{"sigma", "\n", 
             RowBox[{"cellCycleOpts", "[", 
              RowBox[{"[", "2", "]"}], "]"}]}], "=", " ", 
            RowBox[{
             RowBox[{"cell", " ", "cycle", " ", "increments", "\n", 
              RowBox[{"cellCycleOpts", "[", 
               RowBox[{"[", "3", "]"}], "]"}]}], "=", " ", 
             RowBox[{
              RowBox[{"\.08cellCycleEquation", " ", "Opts", "\n", 
               RowBox[{"cellCycleOpts", "[", 
                RowBox[{"[", "4", "]"}], "]"}]}], "=", " ", 
              RowBox[{"\.08for", " ", "\"\<stem like opts\>\""}]}]}]}]}], 
          "\n", "*)"}], "\n", 
         RowBox[{"(*", 
          RowBox[{
           RowBox[{"transcriptionPara", "[", 
            RowBox[{"[", "1", "]"}], "]"}], " ", "is", " ", "the", " ", 
           "gene", " ", "network", "\n", 
           RowBox[{"transcriptionPara", "[", 
            RowBox[{"[", "2", "]"}], "]"}], " ", "probability", " ", "of", 
           " ", "transcripts", " ", "remaining", " ", "in", " ", "the", " ", 
           "system", "\n", 
           RowBox[{"transcriptionPara", "[", 
            RowBox[{"[", "3", "]"}], "]"}], " ", "ploidy", " ", "level", "\n", 
           RowBox[{"transcriptionPara", "[", 
            RowBox[{"[", "4", "]"}], "]"}], " ", "rnaPolII", " ", "rate", " ",
            "0", " ", "is", " ", "no", " ", "rate"}], "\n", "*)"}], "\n", 
         "\n", 
         RowBox[{
          RowBox[{"ploidy", "=", 
           RowBox[{"transcriptionPara", "[", 
            RowBox[{"[", "3", "]"}], "]"}]}], ";", "\n", 
          RowBox[{"oneCycle", "=", 
           RowBox[{"Range", "[", 
            RowBox[{"1", ",", 
             RowBox[{"Length", "[", "tissue", "]"}]}], "]"}]}], ";", "\n", 
          "\n", 
          RowBox[{"(*", 
           RowBox[{
            RowBox[{"oneCycle", "=", 
             RowBox[{"RandomSample", "[", 
              RowBox[{"Range", "[", 
               RowBox[{"1", ",", 
                RowBox[{"Length", "[", "tissue", "]"}]}], "]"}], "]"}]}], 
            ";"}], "*)"}], 
          RowBox[{"(*", 
           RowBox[{
           "identifies", " ", "the", " ", "shortest", " ", "cell", " ", 
            "cycle", " ", "duration"}], "*)"}], "\n", 
          RowBox[{"(*", 
           RowBox[{
            RowBox[{
            "the", " ", "shortest", " ", "cell", " ", "cycle", " ", "is", " ",
              "the", " ", "difference", " ", "between", " ", "the", " ", 
             "total", " ", "cell", " ", "cycle", " ", "time", " ", "and", " ",
              "the", " ", "time", " ", "that", " ", "has", " ", "passed"}], 
            ",", " ", 
            RowBox[{
             RowBox[{"[", 
              RowBox[{"[", 
               RowBox[{"4", ",", "3"}], "]"}], "]"}], " ", "is", " ", "the", 
             " ", "total", " ", "cell", " ", "cycle", " ", "duration"}], ",", 
            " ", 
            RowBox[{
             RowBox[{"and", " ", "[", 
              RowBox[{"[", 
               RowBox[{"4", ",", "4"}], "]"}], "]"}], " ", "is", " ", "the", 
             " ", "time", " ", "that", " ", "has", " ", "relatively", " ", 
             "passed", "\n", "example", " ", 
             RowBox[{"if", " ", "[", 
              RowBox[{"[", 
               RowBox[{"4", ",", "3"}], "]"}], "]"}], " ", "is", " ", "2", 
             "hrs", " ", 
             RowBox[{"and", " ", "[", 
              RowBox[{"[", 
               RowBox[{"4", ",", "4"}], "]"}], "]"}], " ", "is", " ", "1.5"}],
             ",", " ", 
            RowBox[{
             RowBox[{
              RowBox[{"[", 
               RowBox[{"[", 
                RowBox[{"4", ",", "3"}], "]"}], "]"}], "-", 
              RowBox[{"[", 
               RowBox[{"[", 
                RowBox[{"4", ",", "4"}], "]"}], "]"}]}], "=", 
             RowBox[{
              RowBox[{
               RowBox[{"0.5", ".", " ", "it"}], " ", "means", " ", "there", 
               " ", "is", " ", "only", " ", "half", " ", "hour", " ", "for", 
               " ", "this", " ", "cell", " ", "to", " ", 
               RowBox[{"divde", ".", " ", "\n", "We"}], " ", "calcualte", " ",
                "this", " ", "value", " ", "for", " ", "evey", " ", "cell", 
               " ", "and", " ", "get", " ", "the", " ", "shortest", " ", "in",
                " ", "the", " ", 
               RowBox[{"tissue", ".", " ", "\n", "All"}], " ", "cells", " ", 
               "that", " ", "have", " ", "a", " ", "value"}], " ", 
              "\[LessEqual]", " ", 
              RowBox[{"shortestToMphase", " ", "will", " ", "divide"}]}]}]}], 
           "\n", "*)"}], "\n", "\n", 
          RowBox[{"shortestToMphase", "=", 
           RowBox[{"Min", "[", 
            RowBox[{
             RowBox[{
              RowBox[{"Subtract", "@@", "#"}], "&"}], "/@", 
             RowBox[{"tissue", "[", 
              RowBox[{"[", 
               RowBox[{"All", ",", "4", ",", 
                RowBox[{"3", ";;", "4"}]}], "]"}], "]"}]}], "]"}]}], ";", 
          "\n", "\n", 
          RowBox[{"(*", 
           RowBox[{
            RowBox[{"last", " ", "cell", " ", "cycle"}], " ", "-", " ", 
            RowBox[{"next", " ", "cell", " ", "cycle"}]}], "*)"}], "\n", 
          RowBox[{"newtissue", "=", "tissue"}], ";", "\n", 
          RowBox[{
           RowBox[{"newtissue", "[", 
            RowBox[{"[", 
             RowBox[{"All", ",", "4", ",", "5"}], "]"}], "]"}], "=", 
           "shortestToMphase"}], ";", 
          RowBox[{"(*", 
           RowBox[{
            RowBox[{"Print", "[", "newtissue", "]"}], ";"}], "*)"}], 
          RowBox[{"(*", 
           RowBox[{
           "for", " ", "each", " ", "cell", " ", "currently", " ", "in", " ", 
            "the", " ", "tissue"}], "*)"}], 
          RowBox[{"(*", 
           RowBox[{
            RowBox[{
             RowBox[{
              RowBox[{
               RowBox[{"cellCR", " ", "--"}], "\[Rule]", " ", "center"}], ",",
               " ", "radius", ",", " ", "divisions", ",", 
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
           "*)"}], "\n", "\n", 
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
                 RowBox[{"1", ",", " ", 
                  RowBox[{"{", "genomeI", "}"}]}], "}"}], ",", 
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
                  "}"}]}], "*)"}], "}"}]}], ";"}], "*)"}], 
          RowBox[{"For", "[", 
           RowBox[{
            RowBox[{"cpos", "=", "1"}], ",", 
            RowBox[{"cpos", "<=", 
             RowBox[{"Length", "[", "oneCycle", "]"}]}], ",", 
            RowBox[{"cpos", "++"}], ",", "\n", 
            RowBox[{
             RowBox[{"lineage", "=", 
              RowBox[{"{", "}"}]}], ";", "\n", 
             RowBox[{"icell", "=", 
              RowBox[{"oneCycle", "[", 
               RowBox[{"[", "cpos", "]"}], "]"}]}], ";", " ", 
             RowBox[{"(*", 
              RowBox[{"cell", " ", "number"}], "*)"}], "\n", "\n", 
             RowBox[{"(*", 
              RowBox[{
               RowBox[{
                RowBox[{"if", " ", "[", 
                 RowBox[{"[", 
                  RowBox[{"4", ",", "3"}], "]"}], "]"}], " ", "<", " ", 
                RowBox[{
                 RowBox[{"[", 
                  RowBox[{"[", 
                   RowBox[{"4", ",", "4"}], "]"}], "]"}], " ", "then", " ", 
                 "that", " ", "means", " ", "the", " ", "cell", " ", "has", 
                 " ", "passed", " ", "enough", " ", "time", " ", "to", " ", 
                 "divide", " ", "so", " ", "it", " ", "enters", " ", "Mphase",
                  "\n", 
                 RowBox[{"if", " ", "[", 
                  RowBox[{"[", 
                   RowBox[{"4", ",", "3"}], "]"}], "]"}]}], " ", ">", " ", 
                RowBox[{
                 RowBox[{"[", 
                  RowBox[{"[", 
                   RowBox[{"4", ",", "4"}], "]"}], "]"}], " ", "then", " ", 
                 "that", " ", "means", " ", "the", " ", "cell", " ", "cannot",
                  " ", "reach", " ", "Mphase", " ", "and", " ", "it", " ", 
                 "will", " ", "be", " ", "in", " ", "a", " ", "particular", 
                 " ", "cell", " ", "phase", " ", "either", " ", "in", " ", 
                 "G1"}]}], ",", " ", 
               RowBox[{"S", " ", "and", " ", "G2"}]}], "\n", "*)"}], "\n", 
             RowBox[{"(*", 
              RowBox[{
               RowBox[{"Print", "[", "\"\<b0\>\"", "]"}], ";"}], "*)"}], 
             "\[IndentingNewLine]", "\n", 
             RowBox[{"cyclePhase", "=", 
              RowBox[{"getCellPhase", "[", 
               RowBox[{
                RowBox[{"newtissue", "[", 
                 RowBox[{"[", "icell", "]"}], "]"}], ",", 
                "shortestToMphase"}], "]"}]}], ";", "\n", 
             RowBox[{"(*", 
              RowBox[{
               RowBox[{"Print", "[", "\"\<b1\>\"", "]"}], ";"}], "*)"}], "\n", 
             RowBox[{
              RowBox[{"newtissue", "[", 
               RowBox[{"[", 
                RowBox[{"icell", ",", "4", ",", "1"}], "]"}], "]"}], "=", 
              "cyclePhase"}], ";", 
             RowBox[{"(*", 
              RowBox[{
               RowBox[{"**", "in"}], " ", "V1", " ", "competition"}], 
              "***)"}], "\n", 
             RowBox[{"(*", 
              RowBox[{
               RowBox[{
                RowBox[{"newCell", "[", 
                 RowBox[{"[", 
                  RowBox[{"4", ",", "4"}], "]"}], "]"}], " ", "stores", " ", 
                "how", " ", "much", " ", "time", " ", "a", " ", "cell", " ", 
                "has", " ", "currently", " ", "cycled"}], ",", " ", 
               RowBox[{
               "if", " ", "it", " ", "is", " ", "0", " ", "means", " ", "it", 
                " ", "just", " ", "divided"}]}], "*)"}], "\n", "\n", 
             RowBox[{"(*", 
              RowBox[{
               RowBox[{"If", "[", 
                RowBox[{
                 RowBox[{"(", 
                  RowBox[{
                   RowBox[{
                    RowBox[{"newtissue", "[", 
                    RowBox[{"[", 
                    RowBox[{"icell", ",", "4", ",", "4"}], "]"}], "]"}], "==",
                     "0"}], "&&", 
                   RowBox[{
                    RowBox[{"Union", "[", 
                    RowBox[{"newtissue", "[", 
                    RowBox[{"[", 
                    RowBox[{"icell", ",", "7", ",", "1"}], "]"}], "]"}], 
                    "]"}], "!=", 
                    RowBox[{"{", "0", "}"}]}]}], ")"}], " ", 
                 RowBox[{"(*", 
                  RowBox[{
                  "occurs", " ", "only", " ", "if", " ", "the", " ", "cell", 
                   " ", "just", " ", "divided"}], "*)"}], ",", "\n", 
                 RowBox[{
                  RowBox[{
                   RowBox[{"newtissue", "[", 
                    RowBox[{"[", "icell", "]"}], "]"}], "=", 
                   RowBox[{
                   "cellRelatedFunctions`oneCellTranscriptCompetition", "[", 
                    RowBox[{
                    RowBox[{"newtissue", "[", 
                    RowBox[{"[", "icell", "]"}], "]"}], ",", 
                    RowBox[{"transcriptionPara", "[", 
                    RowBox[{"[", "1", "]"}], "]"}], ",", "ploidy"}], "]"}]}], 
                  ";"}]}], " ", "\n", "]"}], ";"}], "*)"}], "\n", 
             RowBox[{"(*", 
              RowBox[{
               RowBox[{"Print", "[", "\"\<b2\>\"", "]"}], ";"}], "*)"}], "\n", 
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
             "\[IndentingNewLine]", "\n", 
             RowBox[{"If", "[", 
              RowBox[{
               RowBox[{"(", 
                RowBox[{
                 RowBox[{"newtissue", "[", 
                  RowBox[{"[", 
                   RowBox[{"icell", ",", "4", ",", "4"}], "]"}], "]"}], "==", 
                 "0"}], ")"}], " ", 
               RowBox[{"(*", 
                RowBox[{
                "occurs", " ", "only", " ", "if", " ", "the", " ", "cell", 
                 " ", "just", " ", "divided"}], "*)"}], " ", ",", "\n", 
               RowBox[{
                RowBox[{
                 RowBox[{"newtissue", "[", 
                  RowBox[{"[", "icell", "]"}], "]"}], "=", 
                 RowBox[{"transcriptDegredation", "[", 
                  RowBox[{
                   RowBox[{"newtissue", "[", 
                    RowBox[{"[", "icell", "]"}], "]"}], ",", 
                   RowBox[{"transcriptionPara", "[", 
                    RowBox[{"[", "2", "]"}], "]"}]}], "]"}]}], ";"}]}], "\n", 
              "]"}], ";", "\n", 
             RowBox[{"(*", 
              RowBox[{
               RowBox[{"Print", "[", "\"\<b3\>\"", "]"}], ";"}], "*)"}], "\n", 
             RowBox[{
              RowBox[{"newtissue", "[", 
               RowBox[{"[", "icell", "]"}], "]"}], "=", 
              RowBox[{"transcriptCopyNumber", "[", 
               RowBox[{
                RowBox[{"newtissue", "[", 
                 RowBox[{"[", "icell", "]"}], "]"}], ",", "shortestToMphase", 
                ",", 
                RowBox[{"transcriptionPara", "[", 
                 RowBox[{"[", "4", "]"}], "]"}], ",", 
                RowBox[{"genome", "[", 
                 RowBox[{"[", 
                  RowBox[{"All", ",", "2"}], "]"}], "]"}]}], "]"}]}], ";", 
             "\n", 
             RowBox[{"(*", 
              RowBox[{
               RowBox[{"Print", "[", "\"\<b4\>\"", "]"}], ";"}], "*)"}], "\n", 
             RowBox[{"(*", 
              RowBox[{
               RowBox[{
                RowBox[{"Cell", " ", "Cycle", " ", "Phases", " ", "1"}], 
                "\[Rule]", " ", "G1"}], ",", " ", 
               RowBox[{"2", "\[Rule]", " ", "S"}], ",", " ", 
               RowBox[{"3", "\[Rule]", " ", "G2"}], ",", 
               RowBox[{"4", "\[Rule]", "M"}]}], "*)"}], "\n", 
             RowBox[{"If", "[", 
              RowBox[{
               RowBox[{"cyclePhase", "<=", "3"}], ",", " ", 
               RowBox[{"(*", 
                RowBox[{
                 RowBox[{
                 "Cell", " ", "is", " ", "not", " ", "in", " ", "Mphase"}], 
                 ";", " ", 
                 RowBox[{"No", " ", "Division", " ", "Yet"}]}], "*)"}], "\n", 
               
               RowBox[{
                RowBox[{
                 RowBox[{"newtissue", "[", 
                  RowBox[{"[", 
                   RowBox[{"icell", ",", "2"}], "]"}], "]"}], "=", "1"}], ";",
                 " ", 
                RowBox[{
                 RowBox[{"newtissue", "[", 
                  RowBox[{"[", 
                   RowBox[{"icell", ",", "4", ",", "4"}], "]"}], "]"}], "=", 
                 RowBox[{
                  RowBox[{"newtissue", "[", 
                   RowBox[{"[", 
                    RowBox[{"icell", ",", "4", ",", "4"}], "]"}], "]"}], "+", 
                  "shortestToMphase"}]}], ";"}], 
               RowBox[{"(*", 
                RowBox[{
                "growth", " ", "will", " ", "only", " ", "happen", " ", "in", 
                 " ", "S", " ", "phase"}], "*)"}], "\n", 
               RowBox[{"(*", 
                RowBox[{
                "during", " ", "these", " ", "phases", " ", "we", " ", "keep",
                  " ", "transcripts", " ", "in", " ", "temp"}], "*)"}], "\n", 
               
               RowBox[{"(*", 
                RowBox[{
                 RowBox[{"Print", "[", "\"\<b5\>\"", "]"}], ";"}], "*)"}], 
               "\n", "\n", ",", "\n", 
               RowBox[{"(*", "Mphase", "*)"}], "\n", "\t", 
               RowBox[{"(*", 
                RowBox[{
                 RowBox[{"Print", "[", "\"\<b6\>\"", "]"}], ";"}], "*)"}], 
               "\n", 
               RowBox[{"(*", 
                RowBox[{
                "move", " ", "transcripts", " ", "out", " ", "of", " ", 
                 "temp"}], "*)"}], "\n", 
               RowBox[{
                RowBox[{"If", "[", 
                 RowBox[{
                  RowBox[{
                   RowBox[{"newtissue", "[", 
                    RowBox[{"[", 
                    RowBox[{"icell", ",", "7", ",", "2"}], "]"}], "]"}], "!=", 
                   RowBox[{"{", "}"}]}], ",", 
                  RowBox[{"(*", 
                   RowBox[{
                   "there", " ", "is", " ", "no", " ", "need", " ", "to", " ",
                     "do", " ", "anything", " ", "if", " ", "it", " ", "is", 
                    " ", "empty"}], "*)"}], "\n", 
                  RowBox[{
                   RowBox[{"If", "[", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"newtissue", "[", 
                    RowBox[{"[", 
                    RowBox[{"icell", ",", "7", ",", "1"}], "]"}], "]"}], "==", 
                    RowBox[{"{", "}"}]}], ",", 
                    RowBox[{
                    RowBox[{"newtissue", "[", 
                    RowBox[{"[", 
                    RowBox[{"icell", ",", "7", ",", "1"}], "]"}], "]"}], "=", 
                    
                    RowBox[{"newtissue", "[", 
                    RowBox[{"[", 
                    RowBox[{"icell", ",", "7", ",", "2"}], "]"}], "]"}]}], 
                    ",", "\n", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"newtissue", "[", 
                    RowBox[{"[", 
                    RowBox[{"icell", ",", "7", ",", "1"}], "]"}], "]"}], "=", 
                    
                    RowBox[{"Plus", "[", 
                    RowBox[{
                    RowBox[{"newtissue", "[", 
                    RowBox[{"[", 
                    RowBox[{"icell", ",", "7", ",", "1"}], "]"}], "]"}], ",", 
                    
                    RowBox[{"newtissue", "[", 
                    RowBox[{"[", 
                    RowBox[{"icell", ",", "7", ",", "2"}], "]"}], "]"}]}], 
                    "]"}]}], ";"}]}], "\n", "]"}], ";"}]}], "\n", "]"}], ";", 
                "\n", 
                RowBox[{"(*", 
                 RowBox[{
                 "resets", " ", "everything", " ", "to", " ", "zero"}], 
                 "*)"}], "\n", 
                RowBox[{
                 RowBox[{"newtissue", "[", 
                  RowBox[{"[", 
                   RowBox[{"icell", ",", "7", ",", "2"}], "]"}], "]"}], "=", 
                 RowBox[{
                  RowBox[{"newtissue", "[", 
                   RowBox[{"[", 
                    RowBox[{"icell", ",", "7", ",", "2"}], "]"}], "]"}], "/.", 
                  RowBox[{
                   RowBox[{"_", "?", "NumberQ"}], ":>", "0"}]}]}], ";", "\n", 
                
                RowBox[{"(*", 
                 RowBox[{
                  RowBox[{"Print", "[", "\"\<div1\>\"", "]"}], ";"}], "*)"}], 
                "\n", 
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
                 "*)"}], 
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
                ";", " ", 
                RowBox[{"(*", 
                 RowBox[{
                 "accumulated", " ", "cell", " ", "cycle", " ", "time"}], 
                 "*)"}], "\n", "\n", 
                RowBox[{"(*", 
                 RowBox[{"track", " ", "lineage"}], "*)"}], "\n", 
                RowBox[{"lineage", "=", 
                 RowBox[{"{", 
                  RowBox[{
                   RowBox[{"{", "timestep", "}"}], ",", 
                   RowBox[{"{", 
                    RowBox[{
                    RowBox[{"newtissue", "[", 
                    RowBox[{"[", 
                    RowBox[{"icell", ",", "6", ",", "2"}], "]"}], "]"}], ",", 
                    
                    RowBox[{"newtissue", "[", 
                    RowBox[{"[", 
                    RowBox[{"icell", ",", "7", ",", "1"}], "]"}], "]"}], ",", 
                    
                    RowBox[{"newtissue", "[", 
                    RowBox[{"[", 
                    RowBox[{"icell", ",", "4", ",", "3"}], "]"}], "]"}]}], 
                    "}"}]}], "}"}]}], ";", "\n", "\n", 
                RowBox[{"(*", 
                 RowBox[{"Cell", " ", "DIVISION"}], "*)"}], "\n", 
                RowBox[{"(*", 
                 RowBox[{"divide", ",", " ", 
                  RowBox[{"increase", " ", "divisions"}]}], "*)"}], "\n", 
                RowBox[{"(*", 
                 RowBox[{
                  RowBox[{"creates", " ", "2", " ", "new", " ", "cells"}], 
                  ",", " ", 
                  RowBox[{"in", " ", "2", "D"}], ",", " ", 
                  RowBox[{
                  "space", " ", "is", " ", "not", " ", "important"}]}], 
                 "*)"}], "\n", 
                RowBox[{"tempCell", "=", 
                 RowBox[{"{", 
                  RowBox[{
                   RowBox[{"newtissue", "[", 
                    RowBox[{"[", "icell", "]"}], "]"}], ",", 
                   RowBox[{"newtissue", "[", 
                    RowBox[{"[", "icell", "]"}], "]"}]}], "}"}]}], ";", "\n", 
                
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
                "\n", 
                RowBox[{"(*", 
                 RowBox[{"(*", 
                  RowBox[{
                  "during", " ", "M", "  ", "phase", " ", "the", " ", "cell", 
                   " ", "cycle", " ", "changes"}], "*)"}], "*)"}], "\n", "\n", 
                RowBox[{"(*", 
                 RowBox[{
                 "changes", " ", "the", " ", "cell", " ", "cycle", " ", 
                  "duration", " ", "either", " ", "based", " ", "on", " ", 
                  "a", " ", "normal", " ", "distributions", " ", "or", " ", 
                  "some", " ", "determined", " ", "incremental", " ", 
                  "value"}], "*)"}], 
                RowBox[{"(*", 
                 RowBox[{
                  RowBox[{"newcellcylceduration", "=", 
                   RowBox[{"newtissue", "[", 
                    RowBox[{"[", 
                    RowBox[{"icell", ",", "5", ",", "1"}], "]"}], "]"}]}], 
                  ";"}], "*)"}], "\n", 
                RowBox[{"(*", 
                 RowBox[{
                  RowBox[{"Print", "[", "\"\<div2\>\"", "]"}], ";"}], "*)"}], 
                "\[IndentingNewLine]", "\n", 
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
                    RowBox[{"cellCycleOpts", "[", 
                    RowBox[{"[", "1", "]"}], "]"}], ",", 
                    RowBox[{"cellCycleOpts", "[", 
                    RowBox[{"[", "2", "]"}], "]"}], ",", 
                    RowBox[{"cellCycleOpts", "[", 
                    RowBox[{"[", 
                    RowBox[{"4", ",", "All", ",", "#"}], "]"}], "]"}], ",", 
                    RowBox[{"If", "[", 
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"newtissue", "[", 
                    RowBox[{"[", 
                    RowBox[{"icell", ",", "5", ",", "1"}], "]"}], "]"}], "==", 
                    RowBox[{"cellCycleOpts", "[", 
                    RowBox[{"[", 
                    RowBox[{"4", ",", "1"}], "]"}], "]"}]}], ")"}], ",", "1", 
                    ",", "0"}], "]"}]}], " ", "}"}], ",", 
                    RowBox[{"cellCycleOpts", "[", 
                    RowBox[{"[", "3", "]"}], "]"}]}], "]"}], "&"}], "/@", 
                  RowBox[{"Range", "[", 
                   RowBox[{"1", ",", "cyclePhase"}], "]"}]}]}], ";", "\n", 
                "\n", 
                RowBox[{"(*", 
                 RowBox[{
                 "each", " ", "phase", " ", "changes", " ", "independently", 
                  " ", "based", " ", "on", " ", "a", " ", "function"}], 
                 "*)"}], "\n", 
                RowBox[{"(*", 
                 RowBox[{
                  RowBox[{"Print", "[", "newcellcylceduration", "]"}], ";"}], 
                 "*)"}], "\n", 
                RowBox[{"(*", 
                 RowBox[{
                  RowBox[{"Print", "[", 
                   RowBox[{"newcellcylceduration", "[", 
                    RowBox[{"[", 
                    RowBox[{"All", ",", "1"}], "]"}], "]"}], "]"}], ";"}], 
                 "*)"}], "\n", 
                RowBox[{"(*", 
                 RowBox[{
                  RowBox[{"Print", "[", "\"\<div3\>\"", "]"}], ";"}], "*)"}], 
                "\n", 
                RowBox[{
                 RowBox[{"tempCell", "[", 
                  RowBox[{"[", 
                   RowBox[{"1", ",", "5", ",", "1"}], "]"}], "]"}], "=", 
                 "newcellcylceduration"}], ";", "\n", 
                RowBox[{
                 RowBox[{"tempCell", "[", 
                  RowBox[{"[", 
                   RowBox[{"2", ",", "5", ",", "1"}], "]"}], "]"}], "=", 
                 "newcellcylceduration"}], ";", 
                RowBox[{"If", "[", 
                 RowBox[{
                  RowBox[{"(", 
                   RowBox[{
                    RowBox[{
                    RowBox[{"cellCycleOpts", "[", 
                    RowBox[{"[", "3", "]"}], "]"}], "==", 
                    RowBox[{"-", "7"}]}], "||", 
                    RowBox[{
                    RowBox[{"cellCycleOpts", "[", 
                    RowBox[{"[", "3", "]"}], "]"}], "==", 
                    RowBox[{"-", "6"}]}], "||", 
                    RowBox[{
                    RowBox[{"cellCycleOpts", "[", 
                    RowBox[{"[", "3", "]"}], "]"}], "==", 
                    "\"\<stemlike\>\""}]}], ")"}], ",", "\n", 
                  RowBox[{"(*", 
                   RowBox[{
                   "this", " ", "is", " ", "the", " ", "case", " ", "where", 
                    " ", "two", " ", "daughtercells", " ", "have", " ", "a", 
                    " ", "proportion", " ", "of", " ", "the", " ", "parental",
                     " ", "cell"}], "*)"}], "\n", 
                  RowBox[{
                   RowBox[{
                    RowBox[{"tempCell", "[", 
                    RowBox[{"[", 
                    RowBox[{"1", ",", "5", ",", "1"}], "]"}], "]"}], "=", 
                    RowBox[{"newcellcylceduration", "[", 
                    RowBox[{"[", 
                    RowBox[{"All", ",", "1"}], "]"}], "]"}]}], ";", "\n", 
                   RowBox[{
                    RowBox[{"tempCell", "[", 
                    RowBox[{"[", 
                    RowBox[{"2", ",", "5", ",", "1"}], "]"}], "]"}], "=", 
                    RowBox[{"newcellcylceduration", "[", 
                    RowBox[{"[", 
                    RowBox[{"All", ",", "2"}], "]"}], "]"}]}], ";"}]}], "\n", 
                 "]"}], ";", "\n", "\n", 
                RowBox[{"(*", 
                 RowBox[{
                 "accumulated", " ", "cell", " ", "cycle", " ", "time"}], 
                 "*)"}], 
                RowBox[{
                 RowBox[{"tempCell", "[", 
                  RowBox[{"[", 
                   RowBox[{"1", ",", "4", ",", "3"}], "]"}], "]"}], "=", 
                 RowBox[{"Total", "[", 
                  RowBox[{
                   RowBox[{"tempCell", "[", 
                    RowBox[{"[", 
                    RowBox[{"1", ",", "5", ",", "1"}], "]"}], "]"}], "/.", 
                   " ", 
                   RowBox[{
                    RowBox[{"_", "?", "Negative"}], "->", "0"}]}], "]"}]}], 
                ";", "\n", 
                RowBox[{
                 RowBox[{"tempCell", "[", 
                  RowBox[{"[", 
                   RowBox[{"2", ",", "4", ",", "3"}], "]"}], "]"}], "=", 
                 RowBox[{"Total", "[", 
                  RowBox[{
                   RowBox[{"tempCell", "[", 
                    RowBox[{"[", 
                    RowBox[{"2", ",", "5", ",", "1"}], "]"}], "]"}], "/.", 
                   " ", 
                   RowBox[{
                    RowBox[{"_", "?", "Negative"}], "->", "0"}]}], "]"}]}], 
                ";", "\n", "\n", 
                RowBox[{"(*", 
                 RowBox[{"distributes", " ", "the", " ", "transcripts"}], 
                 "*)"}], "\n", 
                RowBox[{"If", "[", 
                 RowBox[{
                  RowBox[{
                   RowBox[{"Union", "[", 
                    RowBox[{"newtissue", "[", 
                    RowBox[{"[", 
                    RowBox[{"icell", ",", "7", ",", "1"}], "]"}], "]"}], 
                    "]"}], "!=", 
                   RowBox[{"{", "0", "}"}]}], ",", "\n", 
                  RowBox[{
                   RowBox[{"tCell", "=", 
                    RowBox[{"randDistofT2", "[", 
                    RowBox[{"newtissue", "[", 
                    RowBox[{"[", 
                    RowBox[{"icell", ",", "7", ",", "1"}], "]"}], "]"}], 
                    "]"}]}], ";", 
                   RowBox[{
                    RowBox[{"tempCell", "[", 
                    RowBox[{"[", 
                    RowBox[{"1", ",", "7", ",", "1"}], "]"}], "]"}], "=", 
                    RowBox[{"tCell", "[", 
                    RowBox[{"[", "1", "]"}], "]"}]}], ";", 
                   RowBox[{
                    RowBox[{"tempCell", "[", 
                    RowBox[{"[", 
                    RowBox[{"2", ",", "7", ",", "1"}], "]"}], "]"}], "=", 
                    RowBox[{"tCell", "[", 
                    RowBox[{"[", "2", "]"}], "]"}]}], ";"}]}], "\n", "]"}], 
                ";", "\n", 
                RowBox[{"(*", 
                 RowBox[{
                  RowBox[{"Print", "[", "\"\<div4\>\"", "]"}], ";"}], "*)"}], 
                "\n", 
                RowBox[{
                 RowBox[{"tempCell", "[", 
                  RowBox[{"[", 
                   RowBox[{"1", ",", "2"}], "]"}], "]"}], "=", "1"}], ";", 
                RowBox[{"(*", 
                 RowBox[{
                 "cell", " ", "size", " ", "stay", " ", "at", " ", "1"}], 
                 "*)"}], "\n", 
                RowBox[{
                 RowBox[{"tempCell", "[", 
                  RowBox[{"[", 
                   RowBox[{"2", ",", "2"}], "]"}], "]"}], "=", "1"}], ";", 
                RowBox[{"(*", 
                 RowBox[{
                 "cell", " ", "size", " ", "stay", " ", "at", " ", "1"}], 
                 "*)"}], 
                RowBox[{
                 RowBox[{"tempCell", "[", 
                  RowBox[{"[", 
                   RowBox[{"1", ",", "8"}], "]"}], "]"}], "=", 
                 RowBox[{
                  RowBox[{"tempCell", "[", 
                   RowBox[{"[", 
                    RowBox[{"1", ",", "8"}], "]"}], "]"}], "<>", 
                  RowBox[{"ToString", "[", "icell", "]"}], "<>", 
                  "\"\<1\>\""}]}], ";", 
                RowBox[{"(*", 
                 RowBox[{"name", " ", "of", " ", "the", " ", "cell"}], "*)"}], 
                RowBox[{
                 RowBox[{"tempCell", "[", 
                  RowBox[{"[", 
                   RowBox[{"2", ",", "8"}], "]"}], "]"}], "=", 
                 RowBox[{
                  RowBox[{"tempCell", "[", 
                   RowBox[{"[", 
                    RowBox[{"2", ",", "8"}], "]"}], "]"}], "<>", 
                  RowBox[{"ToString", "[", "icell", "]"}], "<>", 
                  "\"\<2\>\""}]}], ";", "\n", 
                RowBox[{"(*", 
                 RowBox[{"name", " ", "of", " ", "the", " ", "cell"}], "*)"}],
                 "\n", 
                RowBox[{"lineage", "=", 
                 RowBox[{"Join", "[", 
                  RowBox[{"lineage", ",", 
                   RowBox[{"{", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"tempCell", "[", 
                    RowBox[{"[", 
                    RowBox[{"1", ",", "7", ",", "1"}], "]"}], "]"}], ",", 
                    RowBox[{"tempCell", "[", 
                    RowBox[{"[", 
                    RowBox[{"2", ",", "7", ",", "1"}], "]"}], "]"}], ",", 
                    RowBox[{"tempCell", "[", 
                    RowBox[{"[", 
                    RowBox[{"1", ",", "4", ",", "3"}], "]"}], "]"}], ",", 
                    RowBox[{"tempCell", "[", 
                    RowBox[{"[", 
                    RowBox[{"2", ",", "4", ",", "3"}], "]"}], "]"}]}], "}"}], 
                    "}"}]}], "]"}]}], ";", "\n", "\n", 
                RowBox[{
                 RowBox[{"tempCell", "[", 
                  RowBox[{"[", 
                   RowBox[{"1", ",", "9"}], "]"}], "]"}], "=", "lineage"}], 
                ";", "\n", 
                RowBox[{
                 RowBox[{"tempCell", "[", 
                  RowBox[{"[", 
                   RowBox[{"2", ",", "9"}], "]"}], "]"}], "=", "lineage"}], 
                ";", "\n", 
                RowBox[{"(*", 
                 RowBox[{"lineage", " ", "=", " ", 
                  RowBox[{"{", 
                   RowBox[{"timestep", ",", " ", 
                    RowBox[{"parental", " ", "genotype"}], ",", 
                    RowBox[{"parental", " ", "phenotype"}], ",", " ", 
                    RowBox[{"parental", " ", "cell", " ", "cycle"}], ",", " ", 
                    RowBox[{"offspring1", " ", "phenotype"}], ",", 
                    RowBox[{"offspring2", " ", "phenotype"}], ",", " ", 
                    RowBox[{
                    "offspring1", " ", "cell", " ", "cycle", " ", 
                    "duration"}], ",", 
                    RowBox[{
                    "offspring2", " ", "cell", " ", "cycle", " ", 
                    "duration"}]}], "}"}]}], "*)"}], "\n", 
                RowBox[{
                 RowBox[{"newtissue", "[", 
                  RowBox[{"[", "icell", "]"}], "]"}], "=", 
                 RowBox[{"tempCell", "[", 
                  RowBox[{"[", "1", "]"}], "]"}]}], ";", 
                RowBox[{"newtissue", "=", 
                 RowBox[{"AppendTo", "[", 
                  RowBox[{"newtissue", ",", 
                   RowBox[{"tempCell", "[", 
                    RowBox[{"[", "2", "]"}], "]"}]}], "]"}]}], ";"}]}], 
              RowBox[{"(*", "closepack", "*)"}], "\n", "]"}], ";"}]}], 
           RowBox[{"(*", 
            RowBox[{
             RowBox[{"if", " ", "m", " ", "phase", " ", 
              RowBox[{"(", "4", ")"}], " ", "or", " ", "not"}], " ", 
             "\[LessEqual]", "3"}], "*)"}], "\n", "]"}], ";", 
          RowBox[{"(*", 
           RowBox[{"for", " ", "each", " ", "cell"}], "*)"}], "\n", "\n", 
          RowBox[{"Remove", "[", 
           RowBox[{
           "oneCycle", ",", "cellCycles", ",", "cpos", ",", "icell", ",", 
            "cyclePhase", ",", "ploidy", ",", "tCell", ",", "tempCell"}], 
           "]"}], ";", "\n", "\n", "newtissue"}]}], "\n", "]"}]}]}], 
     "}"}]}]}], "]"}]], "Input",
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
   3.779146662150004*^9}, {3.78087209297688*^9, 3.7808721014719763`*^9}, {
   3.7808721657039757`*^9, 3.780872209141766*^9}, {3.7808723613031683`*^9, 
   3.780872362117291*^9}, {3.780872410378112*^9, 3.780872410892103*^9}, {
   3.780872483989889*^9, 3.7808725687148046`*^9}, {3.780872673371972*^9, 
   3.7808726743125257`*^9}, {3.7808727808184767`*^9, 3.78087281459166*^9}, {
   3.780872956545951*^9, 3.7808730004576693`*^9}, {3.780873094293805*^9, 
   3.780873158191828*^9}, 3.824396798705254*^9, {3.824396848118927*^9, 
   3.824396938628729*^9}, {3.8243969708398857`*^9, 3.8243969720566673`*^9}, {
   3.824397018131785*^9, 3.824397023859486*^9}, 3.8243970597496147`*^9, {
   3.82439710418895*^9, 3.824397136517976*^9}, {3.824397228241769*^9, 
   3.824397269096451*^9}, {3.8243973369506617`*^9, 3.824397355408422*^9}, {
   3.8243974681275883`*^9, 3.824397477376893*^9}, 3.824398592646002*^9, {
   3.82439863183316*^9, 3.824398687741733*^9}, {3.824398718470811*^9, 
   3.824398747385564*^9}, {3.824398796082971*^9, 3.824398813658626*^9}, {
   3.824399053039493*^9, 3.824399063486754*^9}, 3.8244608641363983`*^9, {
   3.824460922212986*^9, 3.824461009563952*^9}, {3.824461106230074*^9, 
   3.8244611206737137`*^9}, {3.824461189397276*^9, 3.824461202277248*^9}, {
   3.8244614540998507`*^9, 3.824461465093586*^9}, {3.8244615941689177`*^9, 
   3.8244616566743927`*^9}, {3.8244617134110317`*^9, 
   3.8244617510631857`*^9}, {3.824461823210367*^9, 3.824461839398031*^9}, 
   3.824461897335618*^9, {3.8244620615846453`*^9, 3.824462073098884*^9}, {
   3.82446215397871*^9, 3.824462156284717*^9}, {3.824462194747806*^9, 
   3.824462307574986*^9}, 3.824462359451833*^9, {3.8244624311204777`*^9, 
   3.824462436475917*^9}, {3.824462487769968*^9, 3.824462503974063*^9}, {
   3.824462545055541*^9, 3.824462565950384*^9}, {3.824462633551635*^9, 
   3.8244626348660383`*^9}, {3.8244626955504293`*^9, 3.824462700182729*^9}, {
   3.824462734587718*^9, 3.824462738973461*^9}, {3.82446288060771*^9, 
   3.824462880893091*^9}, {3.824462947823892*^9, 3.82446299588804*^9}, {
   3.8244630334960613`*^9, 3.824463034912101*^9}, {3.824463088311727*^9, 
   3.82446313092418*^9}, {3.824463200751086*^9, 3.824463202496509*^9}, {
   3.824463242368335*^9, 3.8244632734718723`*^9}, {3.824463324690096*^9, 
   3.824463357036357*^9}, {3.8244634157962418`*^9, 3.824463479822257*^9}, {
   3.8260408976515083`*^9, 3.826041057405795*^9}, 3.826041113401761*^9, {
   3.826041160988923*^9, 3.826041178101066*^9}, {3.826041386837413*^9, 
   3.8260414203246202`*^9}, {3.826041539241827*^9, 3.8260415468529587`*^9}},
 CellLabel->"In[4]:=",ExpressionUUID->"8cff46a2-83c5-49e4-8afe-53f15c89564f"],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`ccT$$ = 8.57, $CellContext`ccTsigma$$ = 
    0, $CellContext`cDivisions$$ = 3, $CellContext`G$$ = 
    12, $CellContext`incCycle$$ = 1.58, $CellContext`L1$$ = 
    1, $CellContext`LG$$ = 7.61, $CellContext`maternal$$ = 
    0, $CellContext`ploidy$$ = 2, $CellContext`\[CapitalOmega]$$ = 3.35, 
    Typeset`show$$ = True, Typeset`bookmarkList$$ = {}, 
    Typeset`bookmarkMode$$ = "Menu", Typeset`animator$$, Typeset`animvar$$ = 
    1, Typeset`name$$ = "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`L1$$], 1, "L1"}, 1, 10}, {{
       Hold[$CellContext`LG$$], 3, "LG"}, 1, 10}, {{
       Hold[$CellContext`G$$], 3, "G"}, 1, 20, 1}, {{
       Hold[$CellContext`maternal$$], 0, "Half-Life"}, 0, 1}, {{
       Hold[$CellContext`cDivisions$$], 2, "Cell Divisions"}, 1, 10, 1}, {{
       Hold[$CellContext`ccTsigma$$], 0, "Gaussian sigma"}, 0, 1}, {{
       Hold[$CellContext`ccT$$], 2, "Cell Cycle"}, 1, 10}, {{
       Hold[$CellContext`incCycle$$], 0, "increments"}, 0, 10}, {{
       Hold[$CellContext`ploidy$$], 1, "ploidy"}, 1, 5, 1}, {{
       Hold[$CellContext`\[CapitalOmega]$$], 0.25, 
       "RNA-pol re-initation distance, \[CapitalOmega]"}, 0, 5}}, 
    Typeset`size$$ = {538., {193.134033203125, 198.865966796875}}, 
    Typeset`update$$ = 3.826027191674546`16.335323041404354*^9, 
    Typeset`initDone$$, Typeset`skipInitDone$$ = False}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, 
      "Variables" :> {$CellContext`ccT$$ = 2, $CellContext`ccTsigma$$ = 
        0, $CellContext`cDivisions$$ = 2, $CellContext`G$$ = 
        3, $CellContext`incCycle$$ = 0, $CellContext`L1$$ = 
        1, $CellContext`LG$$ = 3, $CellContext`maternal$$ = 
        0, $CellContext`ploidy$$ = 1, $CellContext`\[CapitalOmega]$$ = 0.25}, 
      "ControllerVariables" :> {}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> (Off[
         MessageName[Eigenvalues, "mindet"]]; $CellContext`genomeLength = 
        Range[$CellContext`L1$$, $CellContext`LG$$, \
$CellContext`LG$$/$CellContext`G$$]; $CellContext`genomeName = Range[1, 
          Length[$CellContext`genomeLength]]; $CellContext`emptList = 
        ReplaceAll[$CellContext`genomeName, PatternTest[
            Blank[], NumberQ] :> 0]; $CellContext`genomeI = Part[
          Tuples[{1}, 
           Length[$CellContext`genomeLength]], 
          1]; $CellContext`xC = {{{0, 0, 0}, 1, {0, 0.1, {}}, {0, 0, 
            Total[
             ReplaceAll[{$CellContext`ccT$$, -500, -500, -500}, PatternTest[
                Blank[], Negative] -> 0]], 0, 
            0}, {{$CellContext`ccT$$, -500, -500, -500}}, {1, 
            Map[$CellContext`genomeI& , 
             Range[
             1, $CellContext`ploidy$$]]}, {$CellContext`emptList, \
$CellContext`emptList}, 
           StringJoin[
            ToString[1], "-1"], {}}}; 
       Table[$CellContext`xC = $CellContext`oneFullCycleV01[$CellContext`xC, \
$CellContext`timestep, {$CellContext`ccTsigma$$, $CellContext`incCycle$$, -3, \
{{$CellContext`ccT$$, -500, -500, -500}}}, 
            Transpose[{$CellContext`genomeName, $CellContext`genomeLength}], {
            
             Part[
              Tuples[{Blank[] -> 1}, {
                Length[$CellContext`genomeName], 
                Length[$CellContext`genomeName]}], 
              1], $CellContext`maternal$$, $CellContext`ploidy$$, {-1, \
$CellContext`\[CapitalOmega]$$}}]; $CellContext`tt = Map[Flatten[{
              Part[#, 8], 
              Part[#, 4, 1], 
              Part[#, 4, 5], 
              Total[
               ReplaceAll[
                Part[#, 5], PatternTest[
                  Blank[], Negative] -> 0]], 
              Total[
               Part[#, 7]]}]& , $CellContext`xC]; 
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
            Length[$CellContext`col1]}]); TableForm[{
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
           BaseStyle -> {18, Black, "Helvetica"}, ImageSize -> 400], 
          Text[
           StringJoin["Transcriptome Diversity = ", 
            ToString[
             Length[
              Union[$CellContext`tt]]]]], 
          Text[
           StringJoin["Clusters = ", 
            ToString[
             Length[
              FindClusters[$CellContext`tt]]]]], 
          "results from one iteration"}]), 
      "Specifications" :> {{{$CellContext`L1$$, 1, "L1"}, 1, 
         10}, {{$CellContext`LG$$, 3, "LG"}, 1, 
         10}, {{$CellContext`G$$, 3, "G"}, 1, 20, 
         1}, {{$CellContext`maternal$$, 0, "Half-Life"}, 0, 
         1}, {{$CellContext`cDivisions$$, 2, "Cell Divisions"}, 1, 10, 1, 
         ContinuousAction -> 
         False}, {{$CellContext`ccTsigma$$, 0, "Gaussian sigma"}, 0, 
         1}, {{$CellContext`ccT$$, 2, "Cell Cycle"}, 1, 10, ContinuousAction -> 
         False}, {{$CellContext`incCycle$$, 0, "increments"}, 0, 
         10}, {{$CellContext`ploidy$$, 1, "ploidy"}, 1, 5, 
         1}, {{$CellContext`\[CapitalOmega]$$, 0.25, 
          "RNA-pol re-initation distance, \[CapitalOmega]"}, 0, 5}}, 
      "Options" :> {
       ControlPlacement -> Left, SynchronousUpdating -> False, 
        AutorunSequencing -> {Automatic, 0}, ContinuousAction -> None, 
        LabelStyle -> Directive[{"Helvetica", 
           GrayLevel[0], 14}]}, "DefaultOptions" :> {}],
     ImageSizeCache->{1025., {224., 229.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    Initialization:>({
       SeedRandom[Method -> "MersenneTwister"], ContinuousAction -> 
       False, $CellContext`cellcycle01[
         Pattern[$CellContext`val, 
          Blank[]]] := RandomReal[
          Part[$CellContext`val, 1], WorkingPrecision -> 2] + 
        Part[$CellContext`val, 2] + 
        Part[$CellContext`val, 3], $CellContext`cellcycle02[
         Pattern[$CellContext`val, 
          Blank[]]] := RandomVariate[
          PoissonDistribution[
           Part[$CellContext`val, 1]]] + Part[$CellContext`val, 2] + 
        Part[$CellContext`val, 3], $CellContext`cellcycle03[
         Pattern[$CellContext`val, 
          Blank[]]] := RandomVariate[
          NormalDistribution[
           Part[$CellContext`val, 1], 
           Part[$CellContext`val, 2]]] + 
        Part[$CellContext`val, 3], $CellContext`cellcycle04[
         Pattern[$CellContext`val, 
          Blank[]]] := RandomVariate[
          NormalDistribution[
          Part[$CellContext`val, 1] + 
           Part[$CellContext`val, 2] Part[$CellContext`val, 3], 
           Part[$CellContext`val, 2]]] + 
        Part[$CellContext`val, 3], $CellContext`cellcycleChangeOPT[
         Pattern[$CellContext`val, 
          Blank[]], 
         Pattern[$CellContext`opt, 
          Blank[]]] := 
       Which[$CellContext`opt == 0, Part[$CellContext`val, 3] + 
         Part[$CellContext`val, 1], $CellContext`opt == -1, 
         $CellContext`cellcycle01[$CellContext`val], $CellContext`opt == -2, 
         $CellContext`cellcycle02[$CellContext`val], $CellContext`opt == -3, 
         If[Part[$CellContext`val, 2] > 0, 
          $CellContext`cellcycle03[$CellContext`val], 
          Part[$CellContext`val, 1]], $CellContext`opt == -4, 
         If[Part[$CellContext`val, 2] > 0, 
          $CellContext`cellcycle04[$CellContext`val], 
          Part[$CellContext`val, 1]], $CellContext`opt == -5, Max[{
             Part[$CellContext`val, 1], 
             Part[$CellContext`val, 2]}] Part[$CellContext`val, 3] + Max[{
            Part[$CellContext`val, 1], 
            Part[$CellContext`val, 2]}], $CellContext`opt == -6, 
         If[Part[$CellContext`val, 2] > 0, 
          ({Part[$CellContext`val, 1] - #, #}& )[
           $CellContext`cellcycle03[$CellContext`val]], {Abs[
             Part[$CellContext`val, 3]] Part[$CellContext`val, 1], (1 - Abs[
             Part[$CellContext`val, 3]]) 
           Part[$CellContext`val, 1]}], $CellContext`opt == -7, ({1 - #, #}& )[
           $CellContext`cellcycle03[{
             Part[$CellContext`val, 3], 
             Part[$CellContext`val, 2], 0}]] 
         Part[$CellContext`val, 1], $CellContext`opt == "stemlike", 
         If[Part[$CellContext`val, 5] == 1, 
          Part[$CellContext`val, 4], {
           Part[$CellContext`val, 1], 
           Part[$CellContext`val, 1]}]], $CellContext`transcriptsT[
         Pattern[$CellContext`copies, 
          Blank[]], 
         Pattern[$CellContext`activegenome, 
          Blank[]]] := Flatten[
         Map[Part[
           Tuples[{
             Part[#, 1]}, 
            Part[#, 2]], 1]& , 
          
          Transpose[{$CellContext`activegenome, $CellContext`copies}]]], \
$CellContext`randDistofT2[
         Pattern[$CellContext`transcriptValues, 
          Blank[]]] := 
       With[{$CellContext`tt = 
          Map[RandomInteger, $CellContext`transcriptValues]}, \
{$CellContext`transcriptValues - $CellContext`tt, $CellContext`tt}], \
$CellContext`transcriptDegredation[
         Pattern[$CellContext`oneCell, 
          Blank[]], 
         Pattern[$CellContext`prob, 
          Blank[]]] := 
       Module[{$CellContext`newCell}, $CellContext`newCell = \
$CellContext`oneCell; If[
           
           Or[$CellContext`prob == 0, Part[$CellContext`newCell, 7, 1] == {}, 
            Union[
              Part[$CellContext`newCell, 7, 1]] == {0}], 
           Part[$CellContext`newCell, 7, 1] = ReplaceAll[
              Part[$CellContext`newCell, 7, 1], PatternTest[
                Blank[], NumberQ] :> 0]; Null, 
           If[$CellContext`prob < 1, 
             Part[$CellContext`newCell, 7, 
                1] = $CellContext`parentalTranscriptsAssociation[
                Part[$CellContext`newCell, 7, 1], $CellContext`prob]; Null]; 
           Null]; $CellContext`newCell], $CellContext`copiesT[
         Pattern[$CellContext`cellactivegeneList, 
          Blank[]], 
         Pattern[$CellContext`rnaPolRate, 
          Blank[]], 
         Pattern[$CellContext`transcriptionTime, 
          Blank[]], 
         Pattern[$CellContext`genomeLength, 
          Blank[]]] := ReplaceAll[
          Floor[
           Map[Total[
             Map[
              Function[$CellContext`dum, $CellContext`ratePol = 
                If[Part[$CellContext`rnaPolRate, 1] > 0, 
                  Abs[
                   RandomVariate[
                    NormalDistribution[
                    Abs[
                    Part[$CellContext`rnaPolRate, 1]], 
                    Abs[
                    Part[$CellContext`rnaPolRate, 1]]]]], 
                  Abs[
                   Part[$CellContext`rnaPolRate, 1]]]; ReplaceAll[
                 
                 Floor[($CellContext`transcriptionTime $CellContext`ratePol - \
$CellContext`dum/$CellContext`ratePol)/#], PatternTest[
                   Blank[], Negative] :> 0]], 
              If[
               Or[
               Part[$CellContext`rnaPolRate, 2] <= 0, 
                Part[$CellContext`rnaPolRate, 2] <= 0., 
                Part[$CellContext`rnaPolRate, 2] > #], {0}, 
               DeleteCases[
                Range[0, #, 
                 Part[$CellContext`rnaPolRate, 2]], 
                N[#]]]]]& , $CellContext`genomeLength]], PatternTest[
            Blank[], Negative] :> 
          0] $CellContext`cellactivegeneList, \
$CellContext`parentalTranscriptsAssociation[
         Pattern[$CellContext`transcripts, 
          Blank[]], 
         Pattern[$CellContext`probability, 
          Blank[]]] := 
       With[{$CellContext`tt = 
          RandomChoice[$CellContext`transcripts -> 
            Range[1, $CellContext`transcripts], 
            ReplaceAll[
             Floor[
             Total[$CellContext`transcripts] (1 - $CellContext`probability)], 
             PatternTest[
               Blank[], Negative] -> 0]]}, 
         ReplaceAll[$CellContext`transcripts - ReplacePart[
           ReplaceAll[$CellContext`transcripts, PatternTest[
              Blank[], NumberQ] -> 0], 
           Normal[
            Counts[$CellContext`tt]]], PatternTest[
            Blank[], Negative] -> 0]], $CellContext`transcriptCopyNumber[
         Pattern[$CellContext`oneCell, 
          Blank[]], 
         Pattern[$CellContext`shortestToMphase, 
          Blank[]], 
         Pattern[$CellContext`rnapol, 
          Blank[]], 
         Pattern[$CellContext`genomeLength, 
          Blank[]]] := 
       Module[{$CellContext`newCell, $CellContext`transcriptionTime}, \
$CellContext`newCell = $CellContext`oneCell; $CellContext`transcriptionTime = 
          Min[{
             Part[$CellContext`newCell, 4, 3], 
             Part[$CellContext`newCell, 4, 
               4] + $CellContext`shortestToMphase}]; 
         Part[$CellContext`newCell, 7, 2] = Total[
            
            Map[$CellContext`copiesT[#, $CellContext`rnapol, \
$CellContext`transcriptionTime, $CellContext`genomeLength]& , 
             Part[$CellContext`newCell, 6, 2]]]; 
         Null; $CellContext`newCell], $CellContext`getCellPhase[
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
              Last[$CellContext`a], 2]], 4]], $CellContext`oneFullCycleV01[
         Pattern[$CellContext`tissue, 
          Blank[]], 
         Pattern[$CellContext`timestep, 
          Blank[]], 
         Pattern[$CellContext`cellCycleOpts, 
          Blank[]], 
         Pattern[$CellContext`genome, 
          Blank[]], 
         Pattern[$CellContext`transcriptionPara, 
          Blank[]]] := 
       Module[{$CellContext`ploidy, $CellContext`oneCycle, \
$CellContext`shortestToMphase, $CellContext`cellCycles, \
$CellContext`stemstate, $CellContext`newtissue, $CellContext`cpos, \
$CellContext`icell, $CellContext`cyclePhase, $CellContext`tempCell, \
$CellContext`tCell, $CellContext`newcellcylceduration, $CellContext`lineage}, \
$CellContext`ploidy = 
          Part[$CellContext`transcriptionPara, 3]; $CellContext`oneCycle = 
          Range[1, 
            Length[$CellContext`tissue]]; $CellContext`shortestToMphase = 
          Min[
            Map[Apply[Subtract, #]& , 
             Part[$CellContext`tissue, All, 4, 
              Span[3, 4]]]]; $CellContext`newtissue = $CellContext`tissue; 
         Part[$CellContext`newtissue, All, 4, 
            5] = $CellContext`shortestToMphase; 
         For[$CellContext`cpos = 1, $CellContext`cpos <= 
           Length[$CellContext`oneCycle], 
           
           Increment[$CellContext`cpos], $CellContext`lineage = {}; \
$CellContext`icell = 
            Part[$CellContext`oneCycle, $CellContext`cpos]; \
$CellContext`cyclePhase = $CellContext`getCellPhase[
              
              Part[$CellContext`newtissue, $CellContext`icell], \
$CellContext`shortestToMphase]; 
           Part[$CellContext`newtissue, $CellContext`icell, 4, 
              1] = $CellContext`cyclePhase; 
           If[Part[$CellContext`newtissue, $CellContext`icell, 4, 4] == 0, 
             Part[$CellContext`newtissue, $CellContext`icell] = \
$CellContext`transcriptDegredation[
                Part[$CellContext`newtissue, $CellContext`icell], 
                Part[$CellContext`transcriptionPara, 2]]; Null]; 
           Part[$CellContext`newtissue, $CellContext`icell] = \
$CellContext`transcriptCopyNumber[
              
              Part[$CellContext`newtissue, $CellContext`icell], \
$CellContext`shortestToMphase, 
              Part[$CellContext`transcriptionPara, 4], 
              Part[$CellContext`genome, All, 2]]; 
           If[$CellContext`cyclePhase <= 3, 
             Part[$CellContext`newtissue, $CellContext`icell, 2] = 1; 
             Part[$CellContext`newtissue, $CellContext`icell, 4, 4] = 
              Part[$CellContext`newtissue, $CellContext`icell, 4, 
                 4] + $CellContext`shortestToMphase; Null, 
             If[Part[$CellContext`newtissue, $CellContext`icell, 7, 2] != {}, 
               If[Part[$CellContext`newtissue, $CellContext`icell, 7, 
                   1] == {}, 
                 Part[$CellContext`newtissue, $CellContext`icell, 7, 1] = 
                 Part[$CellContext`newtissue, $CellContext`icell, 7, 2], 
                 Part[$CellContext`newtissue, $CellContext`icell, 7, 1] = 
                  Part[$CellContext`newtissue, $CellContext`icell, 7, 1] + 
                   Part[$CellContext`newtissue, $CellContext`icell, 7, 2]; 
                 Null]; Null]; 
             Part[$CellContext`newtissue, $CellContext`icell, 7, 2] = 
              ReplaceAll[
                Part[$CellContext`newtissue, $CellContext`icell, 7, 2], 
                PatternTest[
                  Blank[], NumberQ] :> 0]; 
             Part[$CellContext`newtissue, $CellContext`icell, 4, 4] = 0; 
             Part[$CellContext`newtissue, $CellContext`icell, 4, 2] = 
              Part[$CellContext`newtissue, $CellContext`icell, 4, 2] + 
               Part[$CellContext`newtissue, $CellContext`icell, 4, 
                 3]; $CellContext`lineage = {{$CellContext`timestep}, {
                 Part[$CellContext`newtissue, $CellContext`icell, 6, 2], 
                 Part[$CellContext`newtissue, $CellContext`icell, 7, 1], 
                 
                 Part[$CellContext`newtissue, $CellContext`icell, 4, 
                  3]}}; $CellContext`tempCell = {
                Part[$CellContext`newtissue, $CellContext`icell], 
                Part[$CellContext`newtissue, $CellContext`icell]}; Part[
                Part[$CellContext`tempCell, 1, 3], 2] = Part[
                 Part[$CellContext`tempCell, 1, 3], 2] + 1; Part[
                Part[$CellContext`tempCell, 2, 3], 2] = Part[
                 Part[$CellContext`tempCell, 2, 3], 2] + 
               1; $CellContext`newcellcylceduration = 
              Map[$CellContext`cellcycleChangeOPT[{
                  Part[$CellContext`newtissue, $CellContext`icell, 5, 1, #], 
                  Part[$CellContext`cellCycleOpts, 1], 
                  Part[$CellContext`cellCycleOpts, 2], 
                  Part[$CellContext`cellCycleOpts, 4, All, #], 
                  If[
                  Part[$CellContext`newtissue, $CellContext`icell, 5, 1] == 
                   Part[$CellContext`cellCycleOpts, 4, 1], 1, 0]}, 
                 Part[$CellContext`cellCycleOpts, 3]]& , 
                Range[1, $CellContext`cyclePhase]]; 
             Part[$CellContext`tempCell, 1, 5, 
                1] = $CellContext`newcellcylceduration; 
             Part[$CellContext`tempCell, 2, 5, 
                1] = $CellContext`newcellcylceduration; If[
               Or[
               Part[$CellContext`cellCycleOpts, 3] == -7, 
                Part[$CellContext`cellCycleOpts, 3] == -6, 
                Part[$CellContext`cellCycleOpts, 3] == "stemlike"], 
               Part[$CellContext`tempCell, 1, 5, 1] = 
                Part[$CellContext`newcellcylceduration, All, 1]; 
               Part[$CellContext`tempCell, 2, 5, 1] = 
                Part[$CellContext`newcellcylceduration, All, 2]; Null]; 
             Part[$CellContext`tempCell, 1, 4, 3] = Total[
                ReplaceAll[
                 Part[$CellContext`tempCell, 1, 5, 1], PatternTest[
                   Blank[], Negative] -> 0]]; 
             Part[$CellContext`tempCell, 2, 4, 3] = Total[
                ReplaceAll[
                 Part[$CellContext`tempCell, 2, 5, 1], PatternTest[
                   Blank[], Negative] -> 0]]; If[Union[
                 Part[$CellContext`newtissue, $CellContext`icell, 7, 1]] != {
                0}, $CellContext`tCell = $CellContext`randDistofT2[
                  Part[$CellContext`newtissue, $CellContext`icell, 7, 1]]; 
               Part[$CellContext`tempCell, 1, 7, 1] = 
                Part[$CellContext`tCell, 1]; 
               Part[$CellContext`tempCell, 2, 7, 1] = 
                Part[$CellContext`tCell, 2]; Null]; 
             Part[$CellContext`tempCell, 1, 2] = 1; 
             Part[$CellContext`tempCell, 2, 2] = 1; 
             Part[$CellContext`tempCell, 1, 8] = StringJoin[
                Part[$CellContext`tempCell, 1, 8], 
                ToString[$CellContext`icell], "1"]; 
             Part[$CellContext`tempCell, 2, 8] = StringJoin[
                Part[$CellContext`tempCell, 2, 8], 
                ToString[$CellContext`icell], "2"]; $CellContext`lineage = 
              Join[$CellContext`lineage, {{
                  Part[$CellContext`tempCell, 1, 7, 1], 
                  Part[$CellContext`tempCell, 2, 7, 1], 
                  Part[$CellContext`tempCell, 1, 4, 3], 
                  Part[$CellContext`tempCell, 2, 4, 3]}}]; 
             Part[$CellContext`tempCell, 1, 9] = $CellContext`lineage; 
             Part[$CellContext`tempCell, 2, 9] = $CellContext`lineage; 
             Part[$CellContext`newtissue, $CellContext`icell] = 
              Part[$CellContext`tempCell, 1]; $CellContext`newtissue = 
              AppendTo[$CellContext`newtissue, 
                Part[$CellContext`tempCell, 2]]; Null]; Null]; 
         Remove[$CellContext`oneCycle, $CellContext`cellCycles, \
$CellContext`cpos, $CellContext`icell, $CellContext`cyclePhase, \
$CellContext`ploidy, $CellContext`tCell, $CellContext`tempCell]; \
$CellContext`newtissue]}; Typeset`initDone$$ = True),
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
   3.779146546699082*^9, {3.7791466920303593`*^9, 3.779146700074847*^9}, {
   3.780872102323893*^9, 3.780872118263418*^9}, 3.780872413996209*^9, 
   3.780872541483059*^9, 3.7808725752398643`*^9, 3.780872818408827*^9, 
   3.7808729664782867`*^9, 3.780873002645269*^9, {3.78087313795457*^9, 
   3.780873159176374*^9}, 3.824460774049645*^9, 3.824461018925641*^9, 
   3.824461121162681*^9, 3.824461478984314*^9, 3.824461786422111*^9, 
   3.824461858700685*^9, 3.8244619051041193`*^9, 3.8244620758182383`*^9, 
   3.824462158457045*^9, 3.8244622449479637`*^9, 3.824462292890646*^9, 
   3.8244624371716223`*^9, 3.824462513165642*^9, 3.824462545674904*^9, 
   3.8244626355853567`*^9, 3.824462700981061*^9, 3.824462739592494*^9, 
   3.824462882062166*^9, 3.824462951460278*^9, 3.82446299814744*^9, 
   3.824463097482088*^9, 3.8244631317835217`*^9, 3.8244632035985813`*^9, 
   3.8244634235216846`*^9, 3.824463482621195*^9, {3.826040679561453*^9, 
   3.826040708867981*^9}, 3.826041058949719*^9, 3.826041179295847*^9, 
   3.826041209693935*^9, {3.8260412488435717`*^9, 3.826041280087345*^9}, 
   3.826041421803739*^9, {3.826041452937429*^9, 3.8260414733434753`*^9}, {
   3.826041547511489*^9, 3.826041576268599*^9}},
 CellLabel->"Out[4]=",ExpressionUUID->"c8712b71-84bc-45ba-83ad-4f2ddf5d5d64"]
}, Open  ]],

Cell[BoxData[
 RowBox[{"\[IndentingNewLine]", "\[IndentingNewLine]", 
  "\[IndentingNewLine]"}]], "Input",
 CellChangeTimes->{{3.824472940884685*^9, 3.824472984104457*^9}, {
   3.824473033113298*^9, 3.8244730423042583`*^9}, 3.824473227378695*^9, 
   3.82447337271255*^9, 3.824473525023554*^9, {3.824473579968183*^9, 
   3.824473604333701*^9}, {3.824473643451911*^9, 3.824473645959305*^9}, 
   3.824478172766633*^9},ExpressionUUID->"d6989342-36b3-47df-872e-\
d67b7d41fe79"]
},
WindowSize->{1105, 732},
WindowMargins->{{0, Automatic}, {Automatic, 0}},
FrontEndVersion->"12.2 for Mac OS X x86 (64-bit) (December 12, 2020)",
StyleDefinitions->"Default.nb",
ExpressionUUID->"41e6a2eb-5b5d-4650-b0ac-898547a6bc61"
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
Cell[422, 15, 105783, 2468, 6730, "Input",ExpressionUUID->"8cff46a2-83c5-49e4-8afe-53f15c89564f"],
Cell[106208, 2485, 26148, 521, 472, "Output",ExpressionUUID->"c8712b71-84bc-45ba-83ad-4f2ddf5d5d64"]
}, Open  ]],
Cell[132371, 3009, 472, 8, 94, "Input",ExpressionUUID->"d6989342-36b3-47df-872e-d67b7d41fe79"]
}
]
*)

