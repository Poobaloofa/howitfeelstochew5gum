(* Content-type: application/vnd.wolfram.cdf.text *)

(*** Wolfram CDF File ***)
(* http://www.wolfram.com/cdf *)

(* CreatedBy='Mathematica 11.1' *)

(*************************************************************************)
(*                                                                       *)
(*  The Mathematica License under which this file was created prohibits  *)
(*  restricting third parties in receipt of this file from republishing  *)
(*  or redistributing it by any means, including but not limited to      *)
(*  rights management or terms of use, without the express consent of    *)
(*  Wolfram Research, Inc. For additional information concerning CDF     *)
(*  licensing and redistribution see:                                    *)
(*                                                                       *)
(*        www.wolfram.com/cdf/adopting-cdf/licensing-options.html        *)
(*                                                                       *)
(*************************************************************************)

(*CacheID: 234*)
(* Internal cache information:
NotebookFileLineBreakTest
NotebookFileLineBreakTest
NotebookDataPosition[      1064,         20]
NotebookDataLength[      4729,        145]
NotebookOptionsPosition[      4877,        130]
NotebookOutlinePosition[      5305,        149]
CellTagsIndexPosition[      5262,        146]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{

Cell[CellGroupData[{
Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{
    RowBox[{
    "Type", " ", "an", " ", "input", " ", "into", " ", "the", " ", "input", 
     " ", "field", " ", "at", " ", "the", " ", "bottom"}], ",", " ", 
    RowBox[{
    "and", " ", "then", " ", "evaluate", " ", "the", " ", "statement", " ", 
     "directly", " ", "below", " ", "to", " ", "find", " ", "key", " ", 
     "words", " ", "from", " ", "the", " ", "article"}]}], " ", "*)"}], 
  "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{"words", "=", 
    RowBox[{"Tally", "[", 
     RowBox[{"DeleteStopwords", "[", 
      RowBox[{"ToLowerCase", "[", 
       RowBox[{"StringSplit", "[", 
        RowBox[{"input", ",", 
         RowBox[{
          RowBox[{"Except", "[", 
           RowBox[{"(", 
            RowBox[{"LetterCharacter", "|", "\"\<'\>\"", "|", "\"\<-\>\""}], 
            ")"}], "]"}], ".."}]}], "]"}], "]"}], "]"}], "]"}]}], ";", 
   RowBox[{"WordCloud", "[", 
    RowBox[{"SortBy", "[", 
     RowBox[{
      RowBox[{
       RowBox[{
        RowBox[{"{", 
         RowBox[{
          RowBox[{"#", "[", 
           RowBox[{"[", "1", "]"}], "]"}], ",", 
          RowBox[{
           RowBox[{"1", "/", 
            RowBox[{
             RowBox[{"If", "[", 
              RowBox[{
               RowBox[{
                RowBox[{"Head", "[", 
                 RowBox[{"WordFrequencyData", "[", 
                  RowBox[{"#", "[", 
                   RowBox[{"[", "1", "]"}], "]"}], "]"}], "]"}], "===", 
                "WordFrequencyData"}], ",", "1", ",", 
               RowBox[{"WordFrequencyData", "[", 
                RowBox[{"#", "[", 
                 RowBox[{"[", "1", "]"}], "]"}], "]"}]}], "]"}], "^", 
             "0.25"}]}], "*", 
           RowBox[{"#", "[", 
            RowBox[{"[", "2", "]"}], "]"}]}]}], "}"}], "&"}], "/@", 
       RowBox[{"Take", "[", 
        RowBox[{"words", ",", 
         RowBox[{"If", "[", 
          RowBox[{
           RowBox[{
            RowBox[{"Length", "[", "words", "]"}], "<", "20"}], ",", 
           RowBox[{"Length", "[", "words", "]"}], ",", "20"}], "]"}]}], 
        "]"}]}], ",", 
      RowBox[{
       RowBox[{"1", "/", 
        RowBox[{"#", "[", 
         RowBox[{"[", "2", "]"}], "]"}]}], "&"}]}], "]"}], "]"}]}]}]], "Input",\
ExpressionUUID->"01a3d81a-a782-4cc6-b335-be0224133b21"],

Cell[BoxData[
 GraphicsBox[{InsetBox[
    StyleBox["\<\"hello\"\>",
     StripOnInput->False,
     FontSize->Scaled[0.472972972972973],
     FontColor->RGBColor[0.368417, 0.506779, 0.709798]], {0, 0}, Center, 
    Automatic], InsetBox[
    StyleBox["\<\"world\"\>",
     StripOnInput->False,
     FontSize->Scaled[0.11967000934957608`],
     FontColor->RGBColor[0.880722, 0.611041, 0.142051]], {-18., 24.5}, Center,
     Automatic]},
  DefaultBaseStyle->{"Graphics", FontFamily -> "Helvetica"},
  Method->{
   "DefaultBoundaryStyle" -> Automatic, "DefaultPlotStyle" -> Automatic},
  PlotRange->{{-73.5, 74.5}, {-28., 33.}}]], "Output",ExpressionUUID->\
"9d3ce902-6d51-4c7d-9d08-23b9204155fd"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"InputField", "[", 
  RowBox[{
   RowBox[{"Dynamic", "[", "input", "]"}], ",", "String"}], "]"}]], "Input",Ex\
pressionUUID->"a940cea0-78df-4b7a-9751-6e96f4cfc390"],

Cell[BoxData[
 InputFieldBox[Dynamic[$CellContext`input], String]], "Output",ExpressionUUID->"573f9aaa-3a90-49d7-8f20-685a07a3deda"]
}, Open  ]]
},
WindowSize->{1366, 742},
Visible->True,
ScrollingOptions->{"VerticalScrollRange"->Fit},
ShowCellBracket->Automatic,
CellContext->Notebook,
TrackCellChangeTimes->False,
FrontEndVersion->"11.1 for Linux x86 (32-bit) (April 18, 2017)",
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
Cell[1486, 35, 2321, 62, 104, "Input", "ExpressionUUID" -> \
"01a3d81a-a782-4cc6-b335-be0224133b21"],
Cell[3810, 99, 692, 16, 163, "Output", "ExpressionUUID" -> \
"9d3ce902-6d51-4c7d-9d08-23b9204155fd"]
}, Open  ]],
Cell[CellGroupData[{
Cell[4539, 120, 187, 4, 34, "Input", "ExpressionUUID" -> \
"a940cea0-78df-4b7a-9751-6e96f4cfc390"],
Cell[4729, 126, 132, 1, 41, "Output", "ExpressionUUID" -> \
"573f9aaa-3a90-49d7-8f20-685a07a3deda"]
}, Open  ]]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature uv0Mp1mwjNoC4DKQ2VXF4pdx *)
