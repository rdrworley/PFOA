% M file automatically generated by acslXtreme on Wednesday, March 04, 2015 at 8:42:08 AM
% WARNING: DO NOT EDIT THE CONTENTS OF THIS FILE !!!
cd 'C:\Program Files (x86)\AEgis Technologies\acslX\PFOA\pfoa adult rat'

% Execute pre-optimization script
use("optimization")

% Sensitivity Analysis Run : C:\Program Files (x86)\AEgis Technologies\acslX\PFOA\pfoa adult rat\PFOA Adult Rat Sensitivity Analysis.m
% Uses simulation : PFOA Adutl Rat.dll

disp("");
disp("Performing Sensitivity Analysis Run 1 of 33")
disp("---------------------------------------------------")

SvAlgorithm = 0
SvResponseNames = ["CA"]
SvParameterNames = ["BW"]
SvNormalizeToRespVar = 1
SvNormalizeToParam = 1
SvDelta = 0.003
senscoef = sense(SvAlgorithm, SvResponseNames, SvParameterNames, SvNormalizeToRespVar, SvNormalizeToParam, SvDelta)

% Plot the computed sensitivity coefficients
zzplthdl = plot(_t, senscoef(:,2), 'sa_ca_bw.aps');
set @Preference = BackSlashEscapes;
sertitle(zzplthdl, 0, "ca:bw");
set @Preference = NoBackSlashEscapes;
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
uitext = strcat(uitext, "\fs24 Date:\tab\tab\cf1 Wednesday, March 04, 2015 at 8:42:08 AM\tab\cf0\par ");
uitext = strcat(uitext, "Script File:\tab\tab\cf1 C:\\Program Files (x86)\\AEgis Technologies\\acslX\\PFOA\\pfoa adult rat\\PFOA Adult Rat Sensitivity Analysis.m\par ");
uitext = strcat(uitext, "\cf2 Simulation DLL\cf0 : \tab\cf1 PFOA Adutl Rat.dll\par ");
uitext = strcat(uitext, "\par\cf2 Algorithm:\tab\tab\cf1 ForwardDifference\par ");
uitext = strcat(uitext, "\cf2 Delta:\tab\tab\cf1 0.003\par ");
uitext = strcat(uitext, "\cf2 Normalize to Resp Var:\tab\tab\cf1 1\par ");
uitext = strcat(uitext, "\cf2 Normalize to Param:\tab\tab\cf1 1\par ");
uitext = strcat(uitext, "\cf0\fs22\par ");
% dont build the table if we have too much data
if(nr > 500)
uitext = strcat(uitext, "\par\cf2 *** Sensitivity Coefficient table not displayed - too many points (> 500) ***\par ");
else
uitext = strcat(uitext, "\trowd\trgaph10\trleft210 ");
uitext = strcat(uitext, "\clbrdrb\brdrw30\brdrs\clbrdrr\brdrw30\brdrs \cellx2710 ");
uitext = strcat(uitext, "\clbrdrb\brdrw30\brdrs \cellx5210 ");
uitext = strcat(uitext, "\pard\intbl\b\fs20");
uitext = strcat(uitext, "   Time\cell");
uitext = strcat(uitext, "   ca:bw\cell");
uitext = strcat(uitext, "\row ");
for ii = [1 : nr]
uitext = strcat(uitext, "\trowd\trgaph10");
uitext = strcat(uitext, "\trleft210\clbrdrr\brdrw30\brdrs \cellx2710");
uitext = strcat(uitext, "\cellx5210");
uitext = strcat(uitext, "\pard\intbl\b");
uitext = strcat(uitext, "   ");
uitext = strcat(uitext, txt2str(sprintf("%e", senscoef(ii, 1))));
uitext = strcat(uitext, "\cell");
uitext = strcat(uitext, "  \b0 ");
uitext = strcat(uitext, txt2str(sprintf("%e", senscoef(ii, 2))));
uitext = strcat(uitext, "\cell");
uitext = strcat(uitext, "\row ");
end
end
uitext = strcat(uitext, "\pard\li270\fs22\par ");
uitext = strcat(uitext, "\par ");
uitext = strcat(uitext, "\f1\fs20\par ");
uitext = strcat(uitext, "} ");
uiset(uiHandle, rtbHandle, "Rtf", uitext);
