% M file automatically generated by acslXtreme on Wednesday, February 04, 2015 at 9:05:04 AM
% WARNING: DO NOT EDIT THE CONTENTS OF THIS FILE !!!
cd 'C:\Program Files (x86)\AEgis Technologies\acslX\PFOA\pfoa adult rat'

% Execute pre-optimization script
use("optimization")

% Parameter Estimation Run : C:\Program Files (x86)\AEgis Technologies\acslX\PFOA\pfoa adult rat\PFOA Adult Parameter Estimation.m
% Uses simulation : PFOA Adutl Rat.dll
disp("-------------------------------")

OpAdjustable = ["K0C", ...
"KABS", ...
"KUNABS", ...
"KBILEC", ...
"KURINEC", ...
"KEFFLUXC"]
OpStartValues = [1, ...
3, ...
0.0001, ...
0.004, ...
1.6, ...
10]
OpConstrained = ["K0C", ...
"KABS", ...
"KUNABS", ...
"KBILEC", ...
"KURINEC", ...
"KEFFLUXC"]
OpConstraints = [0, -1; ...
3, 0; ...
0.0001, 0; ...
0, -1; ...
1.6, 0; ...
10, 0]

OpAlgorithm = 0
OpNMValues = [1E-05, 1E-05, 0.2, 1, 2, 0.5, 0.5, 10000];

OpTargetNames = [ ...
"CA" ]

OpErrModel = [ ...
1 0 ]

load @File='C:\Program Files (x86)\AEgis Technologies\acslX\PFOA\pfoa adult rat\kemper_exp_5mm.csv' @Format='Ascii' @Separator='Comma'

OpData = [...
kemper_exp_5mm( : , 1) kemper_exp_5mm( : , 2) ]

OpDescriptors = [ ...
"BW"
"ODOSEC"
"IVDOSEC" ]'

OpExperiments = [ ...
0.216 0.1 0 ]

OpNumEval = [];
OpFinal = [];
OpOptimum = [];
OpInitial = [];
OpSecs = [];
OpInform = [];
OpHetParms = [];
OpHessian = [];

[OpOptimum, OpFinal, OpInitial, OpNumEval, OpSecs, OpInform, OpHetParms, OpHessian] = fitmult(OpTargetNames, OpErrModel, OpData, OpAlgorithm, OpAdjustable, OpStartValues, OpConstrained, OpConstraints, OpDescriptors, OpExperiments)
disp("-------------------------------")
OpVarCovar = varcovar(OpHessian)
OpCorrelation = correl(OpVarCovar)
OpParmStdDev = parmstd(OpVarCovar)

% Plot the fitted variables and observed data
IVDOSEC = 0
ODOSEC = 0.1
BW = 0.216
start @NoCallback
plotHandle = plot( _t, _ca, ...
kemper_exp_5mm( : , 1), kemper_exp_5mm( : , 2), '*', 'pe_ca_1.aps');

set @Preference = NoBackSlashEscapes
uiHandle = uifigure;
rtbHandle = uicontrol(uiHandle, "RichTextBox");
uiset(uiHandle, rtbHandle, "Dock", "Fill");
uiset(uiHandle, rtbHandle, "ReadOnly", 1);
uiset(uiHandle, rtbHandle, "WordWrap", 0);
uiset(uiHandle, rtbHandle, "BackColor", "White");
[nr, nc] = size(OpFinal);
nr = nc;
nc = 2;
uitext = "";
uitext = strcat(uitext, "{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fswiss\fprq2\fcharset0 Arial;}{\f1\fswiss\fcharset0 Arial;}} ");
uitext = strcat(uitext, "{\colortbl ;\red51\green51\blue153;\red0\green0\blue0;\red255\green0\blue0;} ");
uitext = strcat(uitext, "\viewkind4\uc1\pard\li270\cf1\f0\fs28\par ");
uitext = strcat(uitext, "Parameter Estimation Results\par ");
uitext = strcat(uitext, "\cf0\fs22 ____________________________________________________________\par ");
uitext = strcat(uitext, "\par ");
uitext = strcat(uitext, "\fs24 Date:\tab\tab\cf1 Wednesday, February 04, 2015 at 9:05:04 AM\tab\cf0\par ");
uitext = strcat(uitext, "Script File:\tab\tab\cf1C:\\Program Files (x86)\\AEgis Technologies\\acslX\\PFOA\\pfoa adult rat\\PFOA Adult Parameter Estimation.m\par ");
uitext = strcat(uitext, "\cf2 Simulation DLL\cf0 : \tab\cf1 PFOA Adutl Rat.dll\par ");
uitext = strcat(uitext, "\par\cf2 Algorithm:\tab\tab\cf1 NelderMead\par ");
uitext = strcat(uitext, "\cf2 Initial LLF Value:\tab\cf1 ");
uitext = strcat(uitext, txt2str(sprintf("%e", -OpInitial)));
uitext = strcat(uitext, "\par ");
uitext = strcat(uitext, "\cf2 Final LLF Value:\tab\cf1 ");
uitext = strcat(uitext, txt2str(sprintf("%e", -OpOptimum)));
uitext = strcat(uitext, "\par ");
uitext = strcat(uitext, "\cf2 Obj Fun Evals:\tab\cf1 ");
uitext = strcat(uitext, txt2str(sprintf("%ld", OpNumEval)));
uitext = strcat(uitext, "\par ");
uitext = strcat(uitext, "\cf2 Processing Time:\tab\cf1 ");
uitext = strcat(uitext, txt2str(sprintf("%ld", OpSecs)));
uitext = strcat(uitext, " seconds \par ");
uitext = strcat(uitext, "\cf2 Result:\tab\tab\cf1 ");
uitext = strcat(uitext, txt2str(sprintf("%ld", OpInform)));
uitext = strcat(uitext, "\par ");
if OpInform == -1
uitext = strcat(uitext, "\cf3\b\fs24\par Note: Parameter estimation failed to converge.\par ");
uitext = strcat(uitext, "The results reported below reflect the values of the parameters\par ");
uitext = strcat(uitext, "at the conclusion of the run, but not necessarily the optimal values.\cf2\b0\par ");
end
uitext = strcat(uitext, "\cf2\par Parameter Estimates: \par");
uitext = strcat(uitext, "\cf0\fs22\par ");
uitext = strcat(uitext, "\trowd\trgaph10\trleft210 ");
uitext = strcat(uitext, "\clbrdrb\brdrw30\brdrs\clbrdrr\brdrw30\brdrs \cellx3600 ");
uitext = strcat(uitext, "\clbrdrb\brdrw30\brdrs \cellx5600 ");
uitext = strcat(uitext, "\clbrdrb\brdrw30\brdrs \cellx7600 ");
uitext = strcat(uitext, "\clbrdrb\brdrw30\brdrs \cellx9600 ");
uitext = strcat(uitext, "\pard\intbl\b\fs20");
uitext = strcat(uitext, "   Parameter\cell");
uitext = strcat(uitext, "   Initial Value\cell");
uitext = strcat(uitext, "   Final Value\cell");
uitext = strcat(uitext, "   Std. Dev.\cell");
uitext = strcat(uitext, "\row ");
for ii = [1 : nr]
uitext = strcat(uitext, "\trowd\trgaph10");
uitext = strcat(uitext, "\trleft210\clbrdrr\brdrw30\brdrs \cellx3600");
uitext = strcat(uitext, "\cellx5600");
uitext = strcat(uitext, "\cellx7600");
uitext = strcat(uitext, "\cellx9600");
uitext = strcat(uitext, "\pard\intbl\b");
uitext = strcat(uitext, "   ");
uitext = strcat(uitext, txt2str(sprintf("%s", OpAdjustable(ii))));
uitext = strcat(uitext, "\cell");
uitext = strcat(uitext, "  \b0 ");
uitext = strcat(uitext, txt2str(sprintf("%e", OpStartValues(ii))));
uitext = strcat(uitext, "\cell");
uitext = strcat(uitext, "  \b0 ");
uitext = strcat(uitext, txt2str(sprintf("%e", OpFinal(ii))));
uitext = strcat(uitext, "\cell");
uitext = strcat(uitext, "  \b0 ");
uitext = strcat(uitext, txt2str(sprintf("%e", OpParmStdDev(ii))));
uitext = strcat(uitext, "\cell");
uitext = strcat(uitext, "\row ");
end
uitext = strcat(uitext, "\pard\li270\fs22\par ");
uitext = strcat(uitext, "\par ");
uitext = strcat(uitext, "\cf2\fs24\par ");
uitext = strcat(uitext, "Note: Final values have been written to the following m-script file, in order to make them available for subsequent executions of the simulation: \par");
uitext = strcat(uitext, "\cf1 ");
uitext = strcat(uitext, "C:\\Program Files (x86)\\AEgis Technologies\\acslX\\PFOA\\pfoa adult rat\\PFOA Adult Parameter Estimation-params.m\par\par ");
uitext = strcat(uitext, rtftable("Variance-Covariance Matrix:", OpAdjustable, ["" OpAdjustable], OpVarCovar));
uitext = strcat(uitext, rtftable("Correlation Matrix:", OpAdjustable, ["" OpAdjustable], OpCorrelation));
uitext = strcat(uitext, "\f1\fs20\par ");
uitext = strcat(uitext, "} ");
uiset(uiHandle, rtbHandle, "Rtf", uitext);

set @Preference = BackSlashEscapes
mscript = "% Automatically generated through parameter estimation script 'PFOA Adult Parameter Estimation.m'";
mscript = strcat(mscript, "\r\n\r\n");
for ii = [1 : nr]
mscript = strcat(mscript, OpAdjustable(ii) + " = " + txt2str(sprintf("%e", OpFinal(ii))));
mscript = strcat(mscript, ";\r\n");
end
set @Preference = NoBackSlashEscapes
mScriptFileId = fopen('C:\Program Files (x86)\AEgis Technologies\acslX\PFOA\pfoa adult rat\PFOA Adult Parameter Estimation-params.m', 'w');
fprintf(mScriptFileId, "%s", mscript);
fclose(mScriptFileId);
