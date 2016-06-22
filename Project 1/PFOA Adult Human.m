% M file automatically generated by acslXtreme on Wednesday, June 22, 2016 at 11:56:51 AM
% WARNING: DO NOT EDIT THE CONTENTS OF THIS FILE !!!
cd 'C:\acslX\PFOA\project 1'

% Execute pre-optimization script
use("pfoa adult human - initial parameter values")

% Sensitivity Analysis Run : C:\acslX\PFOA\project 1\PFOA Adult Human.m
% Uses simulation : PFOA Adult Human 06262015.dll

disp("");
disp("Performing Sensitivity Analysis Run 1 of 39")
disp("---------------------------------------------------")

SvAlgorithm = 0
SvResponseNames = ["CA"]
SvParameterNames = ["KABSC"]
SvNormalizeToRespVar = 1
SvNormalizeToParam = 1
SvDelta = 0.0212
senscoef = sense(SvAlgorithm, SvResponseNames, SvParameterNames, SvNormalizeToRespVar, SvNormalizeToParam, SvDelta)
OpResults = senscoef;

disp("-------------------------------")
set @Preference = NoBackSlashEscapes
uiHandle = uifigure;
rtbHandle = uicontrol(uiHandle, "RichTextBox");
uiset(uiHandle, rtbHandle, "Dock", "Fill");
uiset(uiHandle, rtbHandle, "ReadOnly", 1);
uiset(uiHandle, rtbHandle, "WordWrap", 0);
uiset(uiHandle, rtbHandle, "BackColor", "White");
[nr, nc] = size(senscoef);
uitext = "";
uitext = strcat(uitext, "{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fswiss\fprq2\fcharset0 Arial;}{\f1\fswiss\fcharset0 Arial;}} ");
uitext = strcat(uitext, "{\colortbl ;\red51\green51\blue153;\red0\green0\blue0;} ");
uitext = strcat(uitext, "\viewkind4\uc1\pard\li270\cf1\f0\fs28\par ");
uitext = strcat(uitext, "Sensitivity Analysis Results\par ");
uitext = strcat(uitext, "\cf0\fs22 ____________________________________________________________\par ");
uitext = strcat(uitext, "\par ");
uitext = strcat(uitext, "\fs24 Date:\tab\tab\cf1 Wednesday, June 22, 2016 at 11:56:51 AM\tab\cf0\par ");
uitext = strcat(uitext, "Script File:\tab\tab\cf1 C:\\acslX\\PFOA\\project 1\\PFOA Adult Human.m\par ");
uitext = strcat(uitext, "\cf2 Simulation DLL\cf0 : \tab\cf1 PFOA Adult Human 06262015.dll\par ");
uitext = strcat(uitext, "\par\cf2 Algorithm:\tab\tab\cf1 ForwardDifference\par ");
uitext = strcat(uitext, "\cf2 Delta:\tab\tab\cf1 0.0212\par ");
uitext = strcat(uitext, "\cf2 Normalize to Resp Var:\tab\tab\cf1 1\par ");
uitext = strcat(uitext, "\cf2 Normalize to Param:\tab\tab\cf1 1\par ");
uitext = strcat(uitext, "\cf0\fs22\par ");
uitext = strcat(uitext, "\cf0\fs22 Time for the final values: ");
uitext = strcat(uitext, txt2str(sprintf("%e", senscoef(nr, 1))));
uitext = strcat(uitext, "\cf0\fs22\par\par ");
uitext = strcat(uitext, "\trowd\trgaph10\trleft210 ");
uitext = strcat(uitext, "\clbrdrb\brdrw30\brdrs\clbrdrr\brdrw30\brdrs \cellx2710 ");
uitext = strcat(uitext, "\clbrdrb\brdrw30\brdrs \cellx2710 ");
uitext = strcat(uitext, "\clbrdrb\brdrw30\brdrs \cellx5210 ");
uitext = strcat(uitext, "\pard\intbl\b\fs20");
uitext = strcat(uitext, "   Coefficient\cell");
uitext = strcat(uitext, "   Value\cell\row");
uitext = strcat(uitext, "\trowd\trgaph10");
uitext = strcat(uitext, "\trleft210\clbrdrr\brdrw30\brdrs \cellx2710");
uitext = strcat(uitext, "\cellx2710");
uitext = strcat(uitext, "\cellx5210");
uitext = strcat(uitext, "\pard\intbl\b");
uitext = strcat(uitext, "   ");
uitext = strcat(uitext, "ca:kabsc");
uitext = strcat(uitext, "\cell");
uitext = strcat(uitext, "  \b0 ");
uitext = strcat(uitext, txt2str(sprintf("%e", senscoef(nr, 2))));
uitext = strcat(uitext, "\cell");
uitext = strcat(uitext, "\row ");
uitext = strcat(uitext, "\pard\li270\fs22\par ");
uitext = strcat(uitext, "\par ");
uitext = strcat(uitext, "\f1\fs20\par ");
uitext = strcat(uitext, "} ");
uiset(uiHandle, rtbHandle, "Rtf", uitext);
disp("");
disp("Performing Sensitivity Analysis Run 2 of 39")
disp("---------------------------------------------------")

SvAlgorithm = 0
SvResponseNames = ["CA"]
SvParameterNames = ["KUNABSC"]
SvNormalizeToRespVar = 1
SvNormalizeToParam = 1
SvDelta = 7.06E-07
senscoef = sense(SvAlgorithm, SvResponseNames, SvParameterNames, SvNormalizeToRespVar, SvNormalizeToParam, SvDelta)
OpResults = [OpResults senscoef];

disp("-------------------------------")
set @Preference = NoBackSlashEscapes
uiHandle = uifigure;
rtbHandle = uicontrol(uiHandle, "RichTextBox");
uiset(uiHandle, rtbHandle, "Dock", "Fill");
uiset(uiHandle, rtbHandle, "ReadOnly", 1);
uiset(uiHandle, rtbHandle, "WordWrap", 0);
uiset(uiHandle, rtbHandle, "BackColor", "White");
[nr, nc] = size(senscoef);
uitext = "";
uitext = strcat(uitext, "{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fswiss\fprq2\fcharset0 Arial;}{\f1\fswiss\fcharset0 Arial;}} ");
uitext = strcat(uitext, "{\colortbl ;\red51\green51\blue153;\red0\green0\blue0;} ");
uitext = strcat(uitext, "\viewkind4\uc1\pard\li270\cf1\f0\fs28\par ");
uitext = strcat(uitext, "Sensitivity Analysis Results\par ");
uitext = strcat(uitext, "\cf0\fs22 ____________________________________________________________\par ");
uitext = strcat(uitext, "\par ");
uitext = strcat(uitext, "\fs24 Date:\tab\tab\cf1 Wednesday, June 22, 2016 at 11:56:51 AM\tab\cf0\par ");
uitext = strcat(uitext, "Script File:\tab\tab\cf1 C:\\acslX\\PFOA\\project 1\\PFOA Adult Human.m\par ");
uitext = strcat(uitext, "\cf2 Simulation DLL\cf0 : \tab\cf1 PFOA Adult Human 06262015.dll\par ");
uitext = strcat(uitext, "\par\cf2 Algorithm:\tab\tab\cf1 ForwardDifference\par ");
uitext = strcat(uitext, "\cf2 Delta:\tab\tab\cf1 7.06E-07\par ");
uitext = strcat(uitext, "\cf2 Normalize to Resp Var:\tab\tab\cf1 1\par ");
uitext = strcat(uitext, "\cf2 Normalize to Param:\tab\tab\cf1 1\par ");
uitext = strcat(uitext, "\cf0\fs22\par ");
uitext = strcat(uitext, "\cf0\fs22 Time for the final values: ");
uitext = strcat(uitext, txt2str(sprintf("%e", senscoef(nr, 1))));
uitext = strcat(uitext, "\cf0\fs22\par\par ");
uitext = strcat(uitext, "\trowd\trgaph10\trleft210 ");
uitext = strcat(uitext, "\clbrdrb\brdrw30\brdrs\clbrdrr\brdrw30\brdrs \cellx2710 ");
uitext = strcat(uitext, "\clbrdrb\brdrw30\brdrs \cellx2710 ");
uitext = strcat(uitext, "\clbrdrb\brdrw30\brdrs \cellx5210 ");
uitext = strcat(uitext, "\pard\intbl\b\fs20");
uitext = strcat(uitext, "   Coefficient\cell");
uitext = strcat(uitext, "   Value\cell\row");
uitext = strcat(uitext, "\trowd\trgaph10");
uitext = strcat(uitext, "\trleft210\clbrdrr\brdrw30\brdrs \cellx2710");
uitext = strcat(uitext, "\cellx2710");
uitext = strcat(uitext, "\cellx5210");
uitext = strcat(uitext, "\pard\intbl\b");
uitext = strcat(uitext, "   ");
uitext = strcat(uitext, "ca:kunabsc");
uitext = strcat(uitext, "\cell");
uitext = strcat(uitext, "  \b0 ");
uitext = strcat(uitext, txt2str(sprintf("%e", senscoef(nr, 2))));
uitext = strcat(uitext, "\cell");
uitext = strcat(uitext, "\row ");
uitext = strcat(uitext, "\pard\li270\fs22\par ");
uitext = strcat(uitext, "\par ");
uitext = strcat(uitext, "\f1\fs20\par ");
uitext = strcat(uitext, "} ");
uiset(uiHandle, rtbHandle, "Rtf", uitext);
disp("");
disp("Performing Sensitivity Analysis Run 3 of 39")
disp("---------------------------------------------------")

SvAlgorithm = 0
SvResponseNames = ["CA"]
SvParameterNames = ["GEC"]
SvNormalizeToRespVar = 1
SvNormalizeToParam = 1
SvDelta = 0.035
senscoef = sense(SvAlgorithm, SvResponseNames, SvParameterNames, SvNormalizeToRespVar, SvNormalizeToParam, SvDelta)
OpResults = [OpResults senscoef];

disp("-------------------------------")
set @Preference = NoBackSlashEscapes
uiHandle = uifigure;
rtbHandle = uicontrol(uiHandle, "RichTextBox");
uiset(uiHandle, rtbHandle, "Dock", "Fill");
uiset(uiHandle, rtbHandle, "ReadOnly", 1);
uiset(uiHandle, rtbHandle, "WordWrap", 0);
uiset(uiHandle, rtbHandle, "BackColor", "White");
[nr, nc] = size(senscoef);
uitext = "";
uitext = strcat(uitext, "{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fswiss\fprq2\fcharset0 Arial;}{\f1\fswiss\fcharset0 Arial;}} ");
uitext = strcat(uitext, "{\colortbl ;\red51\green51\blue153;\red0\green0\blue0;} ");
uitext = strcat(uitext, "\viewkind4\uc1\pard\li270\cf1\f0\fs28\par ");
uitext = strcat(uitext, "Sensitivity Analysis Results\par ");
uitext = strcat(uitext, "\cf0\fs22 ____________________________________________________________\par ");
uitext = strcat(uitext, "\par ");
uitext = strcat(uitext, "\fs24 Date:\tab\tab\cf1 Wednesday, June 22, 2016 at 11:56:51 AM\tab\cf0\par ");
uitext = strcat(uitext, "Script File:\tab\tab\cf1 C:\\acslX\\PFOA\\project 1\\PFOA Adult Human.m\par ");
uitext = strcat(uitext, "\cf2 Simulation DLL\cf0 : \tab\cf1 PFOA Adult Human 06262015.dll\par ");
uitext = strcat(uitext, "\par\cf2 Algorithm:\tab\tab\cf1 ForwardDifference\par ");
uitext = strcat(uitext, "\cf2 Delta:\tab\tab\cf1 0.035\par ");
uitext = strcat(uitext, "\cf2 Normalize to Resp Var:\tab\tab\cf1 1\par ");
uitext = strcat(uitext, "\cf2 Normalize to Param:\tab\tab\cf1 1\par ");
uitext = strcat(uitext, "\cf0\fs22\par ");
uitext = strcat(uitext, "\cf0\fs22 Time for the final values: ");
uitext = strcat(uitext, txt2str(sprintf("%e", senscoef(nr, 1))));
uitext = strcat(uitext, "\cf0\fs22\par\par ");
uitext = strcat(uitext, "\trowd\trgaph10\trleft210 ");
uitext = strcat(uitext, "\clbrdrb\brdrw30\brdrs\clbrdrr\brdrw30\brdrs \cellx2710 ");
uitext = strcat(uitext, "\clbrdrb\brdrw30\brdrs \cellx2710 ");
uitext = strcat(uitext, "\clbrdrb\brdrw30\brdrs \cellx5210 ");
uitext = strcat(uitext, "\pard\intbl\b\fs20");
uitext = strcat(uitext, "   Coefficient\cell");
uitext = strcat(uitext, "   Value\cell\row");
uitext = strcat(uitext, "\trowd\trgaph10");
uitext = strcat(uitext, "\trleft210\clbrdrr\brdrw30\brdrs \cellx2710");
uitext = strcat(uitext, "\cellx2710");
uitext = strcat(uitext, "\cellx5210");
uitext = strcat(uitext, "\pard\intbl\b");
uitext = strcat(uitext, "   ");
uitext = strcat(uitext, "ca:gec");
uitext = strcat(uitext, "\cell");
uitext = strcat(uitext, "  \b0 ");
uitext = strcat(uitext, txt2str(sprintf("%e", senscoef(nr, 2))));
uitext = strcat(uitext, "\cell");
uitext = strcat(uitext, "\row ");
uitext = strcat(uitext, "\pard\li270\fs22\par ");
uitext = strcat(uitext, "\par ");
uitext = strcat(uitext, "\f1\fs20\par ");
uitext = strcat(uitext, "} ");
uiset(uiHandle, rtbHandle, "Rtf", uitext);
disp("");
disp("Performing Sensitivity Analysis Run 4 of 39")
disp("---------------------------------------------------")

SvAlgorithm = 0
SvResponseNames = ["CA"]
SvParameterNames = ["K0C"]
SvNormalizeToRespVar = 1
SvNormalizeToParam = 1
SvDelta = 0.01
senscoef = sense(SvAlgorithm, SvResponseNames, SvParameterNames, SvNormalizeToRespVar, SvNormalizeToParam, SvDelta)
OpResults = [OpResults senscoef];

disp("-------------------------------")
set @Preference = NoBackSlashEscapes
uiHandle = uifigure;
rtbHandle = uicontrol(uiHandle, "RichTextBox");
uiset(uiHandle, rtbHandle, "Dock", "Fill");
uiset(uiHandle, rtbHandle, "ReadOnly", 1);
uiset(uiHandle, rtbHandle, "WordWrap", 0);
uiset(uiHandle, rtbHandle, "BackColor", "White");
[nr, nc] = size(senscoef);
uitext = "";
uitext = strcat(uitext, "{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fswiss\fprq2\fcharset0 Arial;}{\f1\fswiss\fcharset0 Arial;}} ");
uitext = strcat(uitext, "{\colortbl ;\red51\green51\blue153;\red0\green0\blue0;} ");
uitext = strcat(uitext, "\viewkind4\uc1\pard\li270\cf1\f0\fs28\par ");
uitext = strcat(uitext, "Sensitivity Analysis Results\par ");
uitext = strcat(uitext, "\cf0\fs22 ____________________________________________________________\par ");
uitext = strcat(uitext, "\par ");
uitext = strcat(uitext, "\fs24 Date:\tab\tab\cf1 Wednesday, June 22, 2016 at 11:56:51 AM\tab\cf0\par ");
uitext = strcat(uitext, "Script File:\tab\tab\cf1 C:\\acslX\\PFOA\\project 1\\PFOA Adult Human.m\par ");
uitext = strcat(uitext, "\cf2 Simulation DLL\cf0 : \tab\cf1 PFOA Adult Human 06262015.dll\par ");
uitext = strcat(uitext, "\par\cf2 Algorithm:\tab\tab\cf1 ForwardDifference\par ");
uitext = strcat(uitext, "\cf2 Delta:\tab\tab\cf1 0.01\par ");
uitext = strcat(uitext, "\cf2 Normalize to Resp Var:\tab\tab\cf1 1\par ");
uitext = strcat(uitext, "\cf2 Normalize to Param:\tab\tab\cf1 1\par ");
uitext = strcat(uitext, "\cf0\fs22\par ");
uitext = strcat(uitext, "\cf0\fs22 Time for the final values: ");
uitext = strcat(uitext, txt2str(sprintf("%e", senscoef(nr, 1))));
uitext = strcat(uitext, "\cf0\fs22\par\par ");
uitext = strcat(uitext, "\trowd\trgaph10\trleft210 ");
uitext = strcat(uitext, "\clbrdrb\brdrw30\brdrs\clbrdrr\brdrw30\brdrs \cellx2710 ");
uitext = strcat(uitext, "\clbrdrb\brdrw30\brdrs \cellx2710 ");
uitext = strcat(uitext, "\clbrdrb\brdrw30\brdrs \cellx5210 ");
uitext = strcat(uitext, "\pard\intbl\b\fs20");
uitext = strcat(uitext, "   Coefficient\cell");
uitext = strcat(uitext, "   Value\cell\row");
uitext = strcat(uitext, "\trowd\trgaph10");
uitext = strcat(uitext, "\trleft210\clbrdrr\brdrw30\brdrs \cellx2710");
uitext = strcat(uitext, "\cellx2710");
uitext = strcat(uitext, "\cellx5210");
uitext = strcat(uitext, "\pard\intbl\b");
uitext = strcat(uitext, "   ");
uitext = strcat(uitext, "ca:k0c");
uitext = strcat(uitext, "\cell");
uitext = strcat(uitext, "  \b0 ");
uitext = strcat(uitext, txt2str(sprintf("%e", senscoef(nr, 2))));
uitext = strcat(uitext, "\cell");
uitext = strcat(uitext, "\row ");
uitext = strcat(uitext, "\pard\li270\fs22\par ");
uitext = strcat(uitext, "\par ");
uitext = strcat(uitext, "\f1\fs20\par ");
uitext = strcat(uitext, "} ");
uiset(uiHandle, rtbHandle, "Rtf", uitext);
disp("");
disp("Performing Sensitivity Analysis Run 5 of 39")
disp("---------------------------------------------------")

SvAlgorithm = 0
SvResponseNames = ["CA"]
SvParameterNames = ["KBILEC"]
SvNormalizeToRespVar = 1
SvNormalizeToParam = 1
SvDelta = 1E-06
senscoef = sense(SvAlgorithm, SvResponseNames, SvParameterNames, SvNormalizeToRespVar, SvNormalizeToParam, SvDelta)
OpResults = [OpResults senscoef];

disp("-------------------------------")
set @Preference = NoBackSlashEscapes
uiHandle = uifigure;
rtbHandle = uicontrol(uiHandle, "RichTextBox");
uiset(uiHandle, rtbHandle, "Dock", "Fill");
uiset(uiHandle, rtbHandle, "ReadOnly", 1);
uiset(uiHandle, rtbHandle, "WordWrap", 0);
uiset(uiHandle, rtbHandle, "BackColor", "White");
[nr, nc] = size(senscoef);
uitext = "";
uitext = strcat(uitext, "{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fswiss\fprq2\fcharset0 Arial;}{\f1\fswiss\fcharset0 Arial;}} ");
uitext = strcat(uitext, "{\colortbl ;\red51\green51\blue153;\red0\green0\blue0;} ");
uitext = strcat(uitext, "\viewkind4\uc1\pard\li270\cf1\f0\fs28\par ");
uitext = strcat(uitext, "Sensitivity Analysis Results\par ");
uitext = strcat(uitext, "\cf0\fs22 ____________________________________________________________\par ");
uitext = strcat(uitext, "\par ");
uitext = strcat(uitext, "\fs24 Date:\tab\tab\cf1 Wednesday, June 22, 2016 at 11:56:51 AM\tab\cf0\par ");
uitext = strcat(uitext, "Script File:\tab\tab\cf1 C:\\acslX\\PFOA\\project 1\\PFOA Adult Human.m\par ");
uitext = strcat(uitext, "\cf2 Simulation DLL\cf0 : \tab\cf1 PFOA Adult Human 06262015.dll\par ");
uitext = strcat(uitext, "\par\cf2 Algorithm:\tab\tab\cf1 ForwardDifference\par ");
uitext = strcat(uitext, "\cf2 Delta:\tab\tab\cf1 1E-06\par ");
uitext = strcat(uitext, "\cf2 Normalize to Resp Var:\tab\tab\cf1 1\par ");
uitext = strcat(uitext, "\cf2 Normalize to Param:\tab\tab\cf1 1\par ");
uitext = strcat(uitext, "\cf0\fs22\par ");
uitext = strcat(uitext, "\cf0\fs22 Time for the final values: ");
uitext = strcat(uitext, txt2str(sprintf("%e", senscoef(nr, 1))));
uitext = strcat(uitext, "\cf0\fs22\par\par ");
uitext = strcat(uitext, "\trowd\trgaph10\trleft210 ");
uitext = strcat(uitext, "\clbrdrb\brdrw30\brdrs\clbrdrr\brdrw30\brdrs \cellx2710 ");
uitext = strcat(uitext, "\clbrdrb\brdrw30\brdrs \cellx2710 ");
uitext = strcat(uitext, "\clbrdrb\brdrw30\brdrs \cellx5210 ");
uitext = strcat(uitext, "\pard\intbl\b\fs20");
uitext = strcat(uitext, "   Coefficient\cell");
uitext = strcat(uitext, "   Value\cell\row");
uitext = strcat(uitext, "\trowd\trgaph10");
uitext = strcat(uitext, "\trleft210\clbrdrr\brdrw30\brdrs \cellx2710");
uitext = strcat(uitext, "\cellx2710");
uitext = strcat(uitext, "\cellx5210");
uitext = strcat(uitext, "\pard\intbl\b");
uitext = strcat(uitext, "   ");
uitext = strcat(uitext, "ca:kbilec");
uitext = strcat(uitext, "\cell");
uitext = strcat(uitext, "  \b0 ");
uitext = strcat(uitext, txt2str(sprintf("%e", senscoef(nr, 2))));
uitext = strcat(uitext, "\cell");
uitext = strcat(uitext, "\row ");
uitext = strcat(uitext, "\pard\li270\fs22\par ");
uitext = strcat(uitext, "\par ");
uitext = strcat(uitext, "\f1\fs20\par ");
uitext = strcat(uitext, "} ");
uiset(uiHandle, rtbHandle, "Rtf", uitext);
disp("");
disp("Performing Sensitivity Analysis Run 6 of 39")
disp("---------------------------------------------------")

SvAlgorithm = 0
SvResponseNames = ["CA"]
SvParameterNames = ["KVOID"]
SvNormalizeToRespVar = 1
SvNormalizeToParam = 1
SvDelta = 0.0006974
senscoef = sense(SvAlgorithm, SvResponseNames, SvParameterNames, SvNormalizeToRespVar, SvNormalizeToParam, SvDelta)
OpResults = [OpResults senscoef];

disp("-------------------------------")
set @Preference = NoBackSlashEscapes
uiHandle = uifigure;
rtbHandle = uicontrol(uiHandle, "RichTextBox");
uiset(uiHandle, rtbHandle, "Dock", "Fill");
uiset(uiHandle, rtbHandle, "ReadOnly", 1);
uiset(uiHandle, rtbHandle, "WordWrap", 0);
uiset(uiHandle, rtbHandle, "BackColor", "White");
[nr, nc] = size(senscoef);
uitext = "";
uitext = strcat(uitext, "{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fswiss\fprq2\fcharset0 Arial;}{\f1\fswiss\fcharset0 Arial;}} ");
uitext = strcat(uitext, "{\colortbl ;\red51\green51\blue153;\red0\green0\blue0;} ");
uitext = strcat(uitext, "\viewkind4\uc1\pard\li270\cf1\f0\fs28\par ");
uitext = strcat(uitext, "Sensitivity Analysis Results\par ");
uitext = strcat(uitext, "\cf0\fs22 ____________________________________________________________\par ");
uitext = strcat(uitext, "\par ");
uitext = strcat(uitext, "\fs24 Date:\tab\tab\cf1 Wednesday, June 22, 2016 at 11:56:51 AM\tab\cf0\par ");
uitext = strcat(uitext, "Script File:\tab\tab\cf1 C:\\acslX\\PFOA\\project 1\\PFOA Adult Human.m\par ");
uitext = strcat(uitext, "\cf2 Simulation DLL\cf0 : \tab\cf1 PFOA Adult Human 06262015.dll\par ");
uitext = strcat(uitext, "\par\cf2 Algorithm:\tab\tab\cf1 ForwardDifference\par ");
uitext = strcat(uitext, "\cf2 Delta:\tab\tab\cf1 0.0006974\par ");
uitext = strcat(uitext, "\cf2 Normalize to Resp Var:\tab\tab\cf1 1\par ");
uitext = strcat(uitext, "\cf2 Normalize to Param:\tab\tab\cf1 1\par ");
uitext = strcat(uitext, "\cf0\fs22\par ");
uitext = strcat(uitext, "\cf0\fs22 Time for the final values: ");
uitext = strcat(uitext, txt2str(sprintf("%e", senscoef(nr, 1))));
uitext = strcat(uitext, "\cf0\fs22\par\par ");
uitext = strcat(uitext, "\trowd\trgaph10\trleft210 ");
uitext = strcat(uitext, "\clbrdrb\brdrw30\brdrs\clbrdrr\brdrw30\brdrs \cellx2710 ");
uitext = strcat(uitext, "\clbrdrb\brdrw30\brdrs \cellx2710 ");
uitext = strcat(uitext, "\clbrdrb\brdrw30\brdrs \cellx5210 ");
uitext = strcat(uitext, "\pard\intbl\b\fs20");
uitext = strcat(uitext, "   Coefficient\cell");
uitext = strcat(uitext, "   Value\cell\row");
uitext = strcat(uitext, "\trowd\trgaph10");
uitext = strcat(uitext, "\trleft210\clbrdrr\brdrw30\brdrs \cellx2710");
uitext = strcat(uitext, "\cellx2710");
uitext = strcat(uitext, "\cellx5210");
uitext = strcat(uitext, "\pard\intbl\b");
uitext = strcat(uitext, "   ");
uitext = strcat(uitext, "ca:kvoid");
uitext = strcat(uitext, "\cell");
uitext = strcat(uitext, "  \b0 ");
uitext = strcat(uitext, txt2str(sprintf("%e", senscoef(nr, 2))));
uitext = strcat(uitext, "\cell");
uitext = strcat(uitext, "\row ");
uitext = strcat(uitext, "\pard\li270\fs22\par ");
uitext = strcat(uitext, "\par ");
uitext = strcat(uitext, "\f1\fs20\par ");
uitext = strcat(uitext, "} ");
uiset(uiHandle, rtbHandle, "Rtf", uitext);
disp("");
disp("Performing Sensitivity Analysis Run 7 of 39")
disp("---------------------------------------------------")

SvAlgorithm = 0
SvResponseNames = ["CA"]
SvParameterNames = ["KURINEC"]
SvNormalizeToRespVar = 1
SvNormalizeToParam = 1
SvDelta = 0.000275
senscoef = sense(SvAlgorithm, SvResponseNames, SvParameterNames, SvNormalizeToRespVar, SvNormalizeToParam, SvDelta)
OpResults = [OpResults senscoef];

disp("-------------------------------")
set @Preference = NoBackSlashEscapes
uiHandle = uifigure;
rtbHandle = uicontrol(uiHandle, "RichTextBox");
uiset(uiHandle, rtbHandle, "Dock", "Fill");
uiset(uiHandle, rtbHandle, "ReadOnly", 1);
uiset(uiHandle, rtbHandle, "WordWrap", 0);
uiset(uiHandle, rtbHandle, "BackColor", "White");
[nr, nc] = size(senscoef);
uitext = "";
uitext = strcat(uitext, "{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fswiss\fprq2\fcharset0 Arial;}{\f1\fswiss\fcharset0 Arial;}} ");
uitext = strcat(uitext, "{\colortbl ;\red51\green51\blue153;\red0\green0\blue0;} ");
uitext = strcat(uitext, "\viewkind4\uc1\pard\li270\cf1\f0\fs28\par ");
uitext = strcat(uitext, "Sensitivity Analysis Results\par ");
uitext = strcat(uitext, "\cf0\fs22 ____________________________________________________________\par ");
uitext = strcat(uitext, "\par ");
uitext = strcat(uitext, "\fs24 Date:\tab\tab\cf1 Wednesday, June 22, 2016 at 11:56:51 AM\tab\cf0\par ");
uitext = strcat(uitext, "Script File:\tab\tab\cf1 C:\\acslX\\PFOA\\project 1\\PFOA Adult Human.m\par ");
uitext = strcat(uitext, "\cf2 Simulation DLL\cf0 : \tab\cf1 PFOA Adult Human 06262015.dll\par ");
uitext = strcat(uitext, "\par\cf2 Algorithm:\tab\tab\cf1 ForwardDifference\par ");
uitext = strcat(uitext, "\cf2 Delta:\tab\tab\cf1 0.000275\par ");
uitext = strcat(uitext, "\cf2 Normalize to Resp Var:\tab\tab\cf1 1\par ");
uitext = strcat(uitext, "\cf2 Normalize to Param:\tab\tab\cf1 1\par ");
uitext = strcat(uitext, "\cf0\fs22\par ");
uitext = strcat(uitext, "\cf0\fs22 Time for the final values: ");
uitext = strcat(uitext, txt2str(sprintf("%e", senscoef(nr, 1))));
uitext = strcat(uitext, "\cf0\fs22\par\par ");
uitext = strcat(uitext, "\trowd\trgaph10\trleft210 ");
uitext = strcat(uitext, "\clbrdrb\brdrw30\brdrs\clbrdrr\brdrw30\brdrs \cellx2710 ");
uitext = strcat(uitext, "\clbrdrb\brdrw30\brdrs \cellx2710 ");
uitext = strcat(uitext, "\clbrdrb\brdrw30\brdrs \cellx5210 ");
uitext = strcat(uitext, "\pard\intbl\b\fs20");
uitext = strcat(uitext, "   Coefficient\cell");
uitext = strcat(uitext, "   Value\cell\row");
uitext = strcat(uitext, "\trowd\trgaph10");
uitext = strcat(uitext, "\trleft210\clbrdrr\brdrw30\brdrs \cellx2710");
uitext = strcat(uitext, "\cellx2710");
uitext = strcat(uitext, "\cellx5210");
uitext = strcat(uitext, "\pard\intbl\b");
uitext = strcat(uitext, "   ");
uitext = strcat(uitext, "ca:kurinec");
uitext = strcat(uitext, "\cell");
uitext = strcat(uitext, "  \b0 ");
uitext = strcat(uitext, txt2str(sprintf("%e", senscoef(nr, 2))));
uitext = strcat(uitext, "\cell");
uitext = strcat(uitext, "\row ");
uitext = strcat(uitext, "\pard\li270\fs22\par ");
uitext = strcat(uitext, "\par ");
uitext = strcat(uitext, "\f1\fs20\par ");
uitext = strcat(uitext, "} ");
uiset(uiHandle, rtbHandle, "Rtf", uitext);
disp("");
disp("Performing Sensitivity Analysis Run 8 of 39")
disp("---------------------------------------------------")

SvAlgorithm = 0
SvResponseNames = ["CA"]
SvParameterNames = ["EXPOSEDDW"]
SvNormalizeToRespVar = 1
SvNormalizeToParam = 1
SvDelta = 0.0355
senscoef = sense(SvAlgorithm, SvResponseNames, SvParameterNames, SvNormalizeToRespVar, SvNormalizeToParam, SvDelta)
OpResults = [OpResults senscoef];

disp("-------------------------------")
set @Preference = NoBackSlashEscapes
uiHandle = uifigure;
rtbHandle = uicontrol(uiHandle, "RichTextBox");
uiset(uiHandle, rtbHandle, "Dock", "Fill");
uiset(uiHandle, rtbHandle, "ReadOnly", 1);
uiset(uiHandle, rtbHandle, "WordWrap", 0);
uiset(uiHandle, rtbHandle, "BackColor", "White");
[nr, nc] = size(senscoef);
uitext = "";
uitext = strcat(uitext, "{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fswiss\fprq2\fcharset0 Arial;}{\f1\fswiss\fcharset0 Arial;}} ");
uitext = strcat(uitext, "{\colortbl ;\red51\green51\blue153;\red0\green0\blue0;} ");
uitext = strcat(uitext, "\viewkind4\uc1\pard\li270\cf1\f0\fs28\par ");
uitext = strcat(uitext, "Sensitivity Analysis Results\par ");
uitext = strcat(uitext, "\cf0\fs22 ____________________________________________________________\par ");
uitext = strcat(uitext, "\par ");
uitext = strcat(uitext, "\fs24 Date:\tab\tab\cf1 Wednesday, June 22, 2016 at 11:56:51 AM\tab\cf0\par ");
uitext = strcat(uitext, "Script File:\tab\tab\cf1 C:\\acslX\\PFOA\\project 1\\PFOA Adult Human.m\par ");
uitext = strcat(uitext, "\cf2 Simulation DLL\cf0 : \tab\cf1 PFOA Adult Human 06262015.dll\par ");
uitext = strcat(uitext, "\par\cf2 Algorithm:\tab\tab\cf1 ForwardDifference\par ");
uitext = strcat(uitext, "\cf2 Delta:\tab\tab\cf1 0.0355\par ");
uitext = strcat(uitext, "\cf2 Normalize to Resp Var:\tab\tab\cf1 1\par ");
uitext = strcat(uitext, "\cf2 Normalize to Param:\tab\tab\cf1 1\par ");
uitext = strcat(uitext, "\cf0\fs22\par ");
uitext = strcat(uitext, "\cf0\fs22 Time for the final values: ");
uitext = strcat(uitext, txt2str(sprintf("%e", senscoef(nr, 1))));
uitext = strcat(uitext, "\cf0\fs22\par\par ");
uitext = strcat(uitext, "\trowd\trgaph10\trleft210 ");
uitext = strcat(uitext, "\clbrdrb\brdrw30\brdrs\clbrdrr\brdrw30\brdrs \cellx2710 ");
uitext = strcat(uitext, "\clbrdrb\brdrw30\brdrs \cellx2710 ");
uitext = strcat(uitext, "\clbrdrb\brdrw30\brdrs \cellx5210 ");
uitext = strcat(uitext, "\pard\intbl\b\fs20");
uitext = strcat(uitext, "   Coefficient\cell");
uitext = strcat(uitext, "   Value\cell\row");
uitext = strcat(uitext, "\trowd\trgaph10");
uitext = strcat(uitext, "\trleft210\clbrdrr\brdrw30\brdrs \cellx2710");
uitext = strcat(uitext, "\cellx2710");
uitext = strcat(uitext, "\cellx5210");
uitext = strcat(uitext, "\pard\intbl\b");
uitext = strcat(uitext, "   ");
uitext = strcat(uitext, "ca:exposeddw");
uitext = strcat(uitext, "\cell");
uitext = strcat(uitext, "  \b0 ");
uitext = strcat(uitext, txt2str(sprintf("%e", senscoef(nr, 2))));
uitext = strcat(uitext, "\cell");
uitext = strcat(uitext, "\row ");
uitext = strcat(uitext, "\pard\li270\fs22\par ");
uitext = strcat(uitext, "\par ");
uitext = strcat(uitext, "\f1\fs20\par ");
uitext = strcat(uitext, "} ");
uiset(uiHandle, rtbHandle, "Rtf", uitext);
disp("");
disp("Performing Sensitivity Analysis Run 9 of 39")
disp("---------------------------------------------------")

SvAlgorithm = 0
SvResponseNames = ["CA"]
SvParameterNames = ["DWTOTAL"]
SvNormalizeToRespVar = 1
SvNormalizeToParam = 1
SvDelta = 0.012
senscoef = sense(SvAlgorithm, SvResponseNames, SvParameterNames, SvNormalizeToRespVar, SvNormalizeToParam, SvDelta)
OpResults = [OpResults senscoef];

disp("-------------------------------")
set @Preference = NoBackSlashEscapes
uiHandle = uifigure;
rtbHandle = uicontrol(uiHandle, "RichTextBox");
uiset(uiHandle, rtbHandle, "Dock", "Fill");
uiset(uiHandle, rtbHandle, "ReadOnly", 1);
uiset(uiHandle, rtbHandle, "WordWrap", 0);
uiset(uiHandle, rtbHandle, "BackColor", "White");
[nr, nc] = size(senscoef);
uitext = "";
uitext = strcat(uitext, "{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fswiss\fprq2\fcharset0 Arial;}{\f1\fswiss\fcharset0 Arial;}} ");
uitext = strcat(uitext, "{\colortbl ;\red51\green51\blue153;\red0\green0\blue0;} ");
uitext = strcat(uitext, "\viewkind4\uc1\pard\li270\cf1\f0\fs28\par ");
uitext = strcat(uitext, "Sensitivity Analysis Results\par ");
uitext = strcat(uitext, "\cf0\fs22 ____________________________________________________________\par ");
uitext = strcat(uitext, "\par ");
uitext = strcat(uitext, "\fs24 Date:\tab\tab\cf1 Wednesday, June 22, 2016 at 11:56:51 AM\tab\cf0\par ");
uitext = strcat(uitext, "Script File:\tab\tab\cf1 C:\\acslX\\PFOA\\project 1\\PFOA Adult Human.m\par ");
uitext = strcat(uitext, "\cf2 Simulation DLL\cf0 : \tab\cf1 PFOA Adult Human 06262015.dll\par ");
uitext = strcat(uitext, "\par\cf2 Algorithm:\tab\tab\cf1 ForwardDifference\par ");
uitext = strcat(uitext, "\cf2 Delta:\tab\tab\cf1 0.012\par ");
uitext = strcat(uitext, "\cf2 Normalize to Resp Var:\tab\tab\cf1 1\par ");
uitext = strcat(uitext, "\cf2 Normalize to Param:\tab\tab\cf1 1\par ");
uitext = strcat(uitext, "\cf0\fs22\par ");
uitext = strcat(uitext, "\cf0\fs22 Time for the final values: ");
uitext = strcat(uitext, txt2str(sprintf("%e", senscoef(nr, 1))));
uitext = strcat(uitext, "\cf0\fs22\par\par ");
uitext = strcat(uitext, "\trowd\trgaph10\trleft210 ");
uitext = strcat(uitext, "\clbrdrb\brdrw30\brdrs\clbrdrr\brdrw30\brdrs \cellx2710 ");
uitext = strcat(uitext, "\clbrdrb\brdrw30\brdrs \cellx2710 ");
uitext = strcat(uitext, "\clbrdrb\brdrw30\brdrs \cellx5210 ");
uitext = strcat(uitext, "\pard\intbl\b\fs20");
uitext = strcat(uitext, "   Coefficient\cell");
uitext = strcat(uitext, "   Value\cell\row");
uitext = strcat(uitext, "\trowd\trgaph10");
uitext = strcat(uitext, "\trleft210\clbrdrr\brdrw30\brdrs \cellx2710");
uitext = strcat(uitext, "\cellx2710");
uitext = strcat(uitext, "\cellx5210");
uitext = strcat(uitext, "\pard\intbl\b");
uitext = strcat(uitext, "   ");
uitext = strcat(uitext, "ca:dwtotal");
uitext = strcat(uitext, "\cell");
uitext = strcat(uitext, "  \b0 ");
uitext = strcat(uitext, txt2str(sprintf("%e", senscoef(nr, 2))));
uitext = strcat(uitext, "\cell");
uitext = strcat(uitext, "\row ");
uitext = strcat(uitext, "\pard\li270\fs22\par ");
uitext = strcat(uitext, "\par ");
uitext = strcat(uitext, "\f1\fs20\par ");
uitext = strcat(uitext, "} ");
uiset(uiHandle, rtbHandle, "Rtf", uitext);
disp("");
disp("Performing Sensitivity Analysis Run 10 of 39")
disp("---------------------------------------------------")

SvAlgorithm = 0
SvResponseNames = ["CA"]
SvParameterNames = ["DRINKS"]
SvNormalizeToRespVar = 1
SvNormalizeToParam = 1
SvDelta = 0.04
senscoef = sense(SvAlgorithm, SvResponseNames, SvParameterNames, SvNormalizeToRespVar, SvNormalizeToParam, SvDelta)
OpResults = [OpResults senscoef];

disp("-------------------------------")
set @Preference = NoBackSlashEscapes
uiHandle = uifigure;
rtbHandle = uicontrol(uiHandle, "RichTextBox");
uiset(uiHandle, rtbHandle, "Dock", "Fill");
uiset(uiHandle, rtbHandle, "ReadOnly", 1);
uiset(uiHandle, rtbHandle, "WordWrap", 0);
uiset(uiHandle, rtbHandle, "BackColor", "White");
[nr, nc] = size(senscoef);
uitext = "";
uitext = strcat(uitext, "{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fswiss\fprq2\fcharset0 Arial;}{\f1\fswiss\fcharset0 Arial;}} ");
uitext = strcat(uitext, "{\colortbl ;\red51\green51\blue153;\red0\green0\blue0;} ");
uitext = strcat(uitext, "\viewkind4\uc1\pard\li270\cf1\f0\fs28\par ");
uitext = strcat(uitext, "Sensitivity Analysis Results\par ");
uitext = strcat(uitext, "\cf0\fs22 ____________________________________________________________\par ");
uitext = strcat(uitext, "\par ");
uitext = strcat(uitext, "\fs24 Date:\tab\tab\cf1 Wednesday, June 22, 2016 at 11:56:51 AM\tab\cf0\par ");
uitext = strcat(uitext, "Script File:\tab\tab\cf1 C:\\acslX\\PFOA\\project 1\\PFOA Adult Human.m\par ");
uitext = strcat(uitext, "\cf2 Simulation DLL\cf0 : \tab\cf1 PFOA Adult Human 06262015.dll\par ");
uitext = strcat(uitext, "\par\cf2 Algorithm:\tab\tab\cf1 ForwardDifference\par ");
uitext = strcat(uitext, "\cf2 Delta:\tab\tab\cf1 0.04\par ");
uitext = strcat(uitext, "\cf2 Normalize to Resp Var:\tab\tab\cf1 1\par ");
uitext = strcat(uitext, "\cf2 Normalize to Param:\tab\tab\cf1 1\par ");
uitext = strcat(uitext, "\cf0\fs22\par ");
uitext = strcat(uitext, "\cf0\fs22 Time for the final values: ");
uitext = strcat(uitext, txt2str(sprintf("%e", senscoef(nr, 1))));
uitext = strcat(uitext, "\cf0\fs22\par\par ");
uitext = strcat(uitext, "\trowd\trgaph10\trleft210 ");
uitext = strcat(uitext, "\clbrdrb\brdrw30\brdrs\clbrdrr\brdrw30\brdrs \cellx2710 ");
uitext = strcat(uitext, "\clbrdrb\brdrw30\brdrs \cellx2710 ");
uitext = strcat(uitext, "\clbrdrb\brdrw30\brdrs \cellx5210 ");
uitext = strcat(uitext, "\pard\intbl\b\fs20");
uitext = strcat(uitext, "   Coefficient\cell");
uitext = strcat(uitext, "   Value\cell\row");
uitext = strcat(uitext, "\trowd\trgaph10");
uitext = strcat(uitext, "\trleft210\clbrdrr\brdrw30\brdrs \cellx2710");
uitext = strcat(uitext, "\cellx2710");
uitext = strcat(uitext, "\cellx5210");
uitext = strcat(uitext, "\pard\intbl\b");
uitext = strcat(uitext, "   ");
uitext = strcat(uitext, "ca:drinks");
uitext = strcat(uitext, "\cell");
uitext = strcat(uitext, "  \b0 ");
uitext = strcat(uitext, txt2str(sprintf("%e", senscoef(nr, 2))));
uitext = strcat(uitext, "\cell");
uitext = strcat(uitext, "\row ");
uitext = strcat(uitext, "\pard\li270\fs22\par ");
uitext = strcat(uitext, "\par ");
uitext = strcat(uitext, "\f1\fs20\par ");
uitext = strcat(uitext, "} ");
uiset(uiHandle, rtbHandle, "Rtf", uitext);
disp("");
disp("Performing Sensitivity Analysis Run 11 of 39")
disp("---------------------------------------------------")

SvAlgorithm = 0
SvResponseNames = ["CA"]
SvParameterNames = ["TLENDW"]
SvNormalizeToRespVar = 1
SvNormalizeToParam = 1
SvDelta = 0.0025
senscoef = sense(SvAlgorithm, SvResponseNames, SvParameterNames, SvNormalizeToRespVar, SvNormalizeToParam, SvDelta)
OpResults = [OpResults senscoef];

disp("-------------------------------")
set @Preference = NoBackSlashEscapes
uiHandle = uifigure;
rtbHandle = uicontrol(uiHandle, "RichTextBox");
uiset(uiHandle, rtbHandle, "Dock", "Fill");
uiset(uiHandle, rtbHandle, "ReadOnly", 1);
uiset(uiHandle, rtbHandle, "WordWrap", 0);
uiset(uiHandle, rtbHandle, "BackColor", "White");
[nr, nc] = size(senscoef);
uitext = "";
uitext = strcat(uitext, "{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fswiss\fprq2\fcharset0 Arial;}{\f1\fswiss\fcharset0 Arial;}} ");
uitext = strcat(uitext, "{\colortbl ;\red51\green51\blue153;\red0\green0\blue0;} ");
uitext = strcat(uitext, "\viewkind4\uc1\pard\li270\cf1\f0\fs28\par ");
uitext = strcat(uitext, "Sensitivity Analysis Results\par ");
uitext = strcat(uitext, "\cf0\fs22 ____________________________________________________________\par ");
uitext = strcat(uitext, "\par ");
uitext = strcat(uitext, "\fs24 Date:\tab\tab\cf1 Wednesday, June 22, 2016 at 11:56:51 AM\tab\cf0\par ");
uitext = strcat(uitext, "Script File:\tab\tab\cf1 C:\\acslX\\PFOA\\project 1\\PFOA Adult Human.m\par ");
uitext = strcat(uitext, "\cf2 Simulation DLL\cf0 : \tab\cf1 PFOA Adult Human 06262015.dll\par ");
uitext = strcat(uitext, "\par\cf2 Algorithm:\tab\tab\cf1 ForwardDifference\par ");
uitext = strcat(uitext, "\cf2 Delta:\tab\tab\cf1 0.0025\par ");
uitext = strcat(uitext, "\cf2 Normalize to Resp Var:\tab\tab\cf1 1\par ");
uitext = strcat(uitext, "\cf2 Normalize to Param:\tab\tab\cf1 1\par ");
uitext = strcat(uitext, "\cf0\fs22\par ");
uitext = strcat(uitext, "\cf0\fs22 Time for the final values: ");
uitext = strcat(uitext, txt2str(sprintf("%e", senscoef(nr, 1))));
uitext = strcat(uitext, "\cf0\fs22\par\par ");
uitext = strcat(uitext, "\trowd\trgaph10\trleft210 ");
uitext = strcat(uitext, "\clbrdrb\brdrw30\brdrs\clbrdrr\brdrw30\brdrs \cellx2710 ");
uitext = strcat(uitext, "\clbrdrb\brdrw30\brdrs \cellx2710 ");
uitext = strcat(uitext, "\clbrdrb\brdrw30\brdrs \cellx5210 ");
uitext = strcat(uitext, "\pard\intbl\b\fs20");
uitext = strcat(uitext, "   Coefficient\cell");
uitext = strcat(uitext, "   Value\cell\row");
uitext = strcat(uitext, "\trowd\trgaph10");
uitext = strcat(uitext, "\trleft210\clbrdrr\brdrw30\brdrs \cellx2710");
uitext = strcat(uitext, "\cellx2710");
uitext = strcat(uitext, "\cellx5210");
uitext = strcat(uitext, "\pard\intbl\b");
uitext = strcat(uitext, "   ");
uitext = strcat(uitext, "ca:tlendw");
uitext = strcat(uitext, "\cell");
uitext = strcat(uitext, "  \b0 ");
uitext = strcat(uitext, txt2str(sprintf("%e", senscoef(nr, 2))));
uitext = strcat(uitext, "\cell");
uitext = strcat(uitext, "\row ");
uitext = strcat(uitext, "\pard\li270\fs22\par ");
uitext = strcat(uitext, "\par ");
uitext = strcat(uitext, "\f1\fs20\par ");
uitext = strcat(uitext, "} ");
uiset(uiHandle, rtbHandle, "Rtf", uitext);
disp("");
disp("Performing Sensitivity Analysis Run 12 of 39")
disp("---------------------------------------------------")

SvAlgorithm = 0
SvResponseNames = ["CA"]
SvParameterNames = ["INGEST"]
SvNormalizeToRespVar = 1
SvNormalizeToParam = 1
SvDelta = 5.3E-05
senscoef = sense(SvAlgorithm, SvResponseNames, SvParameterNames, SvNormalizeToRespVar, SvNormalizeToParam, SvDelta)
OpResults = [OpResults senscoef];

disp("-------------------------------")
set @Preference = NoBackSlashEscapes
uiHandle = uifigure;
rtbHandle = uicontrol(uiHandle, "RichTextBox");
uiset(uiHandle, rtbHandle, "Dock", "Fill");
uiset(uiHandle, rtbHandle, "ReadOnly", 1);
uiset(uiHandle, rtbHandle, "WordWrap", 0);
uiset(uiHandle, rtbHandle, "BackColor", "White");
[nr, nc] = size(senscoef);
uitext = "";
uitext = strcat(uitext, "{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fswiss\fprq2\fcharset0 Arial;}{\f1\fswiss\fcharset0 Arial;}} ");
uitext = strcat(uitext, "{\colortbl ;\red51\green51\blue153;\red0\green0\blue0;} ");
uitext = strcat(uitext, "\viewkind4\uc1\pard\li270\cf1\f0\fs28\par ");
uitext = strcat(uitext, "Sensitivity Analysis Results\par ");
uitext = strcat(uitext, "\cf0\fs22 ____________________________________________________________\par ");
uitext = strcat(uitext, "\par ");
uitext = strcat(uitext, "\fs24 Date:\tab\tab\cf1 Wednesday, June 22, 2016 at 11:56:51 AM\tab\cf0\par ");
uitext = strcat(uitext, "Script File:\tab\tab\cf1 C:\\acslX\\PFOA\\project 1\\PFOA Adult Human.m\par ");
uitext = strcat(uitext, "\cf2 Simulation DLL\cf0 : \tab\cf1 PFOA Adult Human 06262015.dll\par ");
uitext = strcat(uitext, "\par\cf2 Algorithm:\tab\tab\cf1 ForwardDifference\par ");
uitext = strcat(uitext, "\cf2 Delta:\tab\tab\cf1 5.3E-05\par ");
uitext = strcat(uitext, "\cf2 Normalize to Resp Var:\tab\tab\cf1 1\par ");
uitext = strcat(uitext, "\cf2 Normalize to Param:\tab\tab\cf1 1\par ");
uitext = strcat(uitext, "\cf0\fs22\par ");
uitext = strcat(uitext, "\cf0\fs22 Time for the final values: ");
uitext = strcat(uitext, txt2str(sprintf("%e", senscoef(nr, 1))));
uitext = strcat(uitext, "\cf0\fs22\par\par ");
uitext = strcat(uitext, "\trowd\trgaph10\trleft210 ");
uitext = strcat(uitext, "\clbrdrb\brdrw30\brdrs\clbrdrr\brdrw30\brdrs \cellx2710 ");
uitext = strcat(uitext, "\clbrdrb\brdrw30\brdrs \cellx2710 ");
uitext = strcat(uitext, "\clbrdrb\brdrw30\brdrs \cellx5210 ");
uitext = strcat(uitext, "\pard\intbl\b\fs20");
uitext = strcat(uitext, "   Coefficient\cell");
uitext = strcat(uitext, "   Value\cell\row");
uitext = strcat(uitext, "\trowd\trgaph10");
uitext = strcat(uitext, "\trleft210\clbrdrr\brdrw30\brdrs \cellx2710");
uitext = strcat(uitext, "\cellx2710");
uitext = strcat(uitext, "\cellx5210");
uitext = strcat(uitext, "\pard\intbl\b");
uitext = strcat(uitext, "   ");
uitext = strcat(uitext, "ca:ingest");
uitext = strcat(uitext, "\cell");
uitext = strcat(uitext, "  \b0 ");
uitext = strcat(uitext, txt2str(sprintf("%e", senscoef(nr, 2))));
uitext = strcat(uitext, "\cell");
uitext = strcat(uitext, "\row ");
uitext = strcat(uitext, "\pard\li270\fs22\par ");
uitext = strcat(uitext, "\par ");
uitext = strcat(uitext, "\f1\fs20\par ");
uitext = strcat(uitext, "} ");
uiset(uiHandle, rtbHandle, "Rtf", uitext);
