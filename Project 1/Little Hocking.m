%This .m file runs the .csl file and overlays data reported in Little Hocking community. 
%Steenland samples collected in 07-08.

output @clear
prepare @clear @all
%prepare @clear t ca 
WESTIG=0;WEDITG=0;CJVITG=0;

%Exposure Parameters
!! s ingest = 0.00177
!! s exposeddw = 3.55
!! s tstop = 438000

%Parameters that can be fit to data
!! s K0C = 1.0
!! s KABSC = 2.12
!! s KUNABSC = 7.06e-5

!! s KBILEC = 0.0001
!! s KEFFLUXC = 0.1
!! s KURINEC = 0.0226

!! s RAFapi = .0007
!! s RAFbaso = 1.0

!! s Free = 0.02

%Data (serum concentrations reported in ug/L)
% Bartell is mean +/-SD
bartell = [30	91
30	424
30	757]

%Steenland, 224 is median for LH district, 
steenland = [20	130
20	224
20	318]

%Emmet, 354 is median, IQR is 181 - 571.
emmett = [25	181
25	354
25	571]
% 354 is median, 447 is mean

%lhwa = [23	147
%23	343
%23	540]

!! st/nc

plot(_year, _ca, steenland(:,1),steenland(:,2),'+', bartell(:,1),bartell(:,2),'+', emmett(:,1),emmett(:,2),'+') %, lhwa(:,1), lhwa(:,2),'+')

%plot(_year, _ca)
%plot(_year, _curine)