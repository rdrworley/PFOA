%This .m file runs the .csl file and overlays data reported in Zhang, 2013

output @clear
prepare @clear @all
WESTIG=0;WEDITG=0;CJVITG=0;

%Exposure Parameters
!! s exposeddw = 3.55
!! s tstop = 175200

%Parameters that can be fit to data
!! s K0C = 1.0
!! s KABSC = 2.12
!! s KUNABSC = 7.06e-5

!! s KBILEC = 0.0000018
!! s KEFFLUXC = 2.49
!! s KURINEC = 9

!! s RAFapi = .05
!! s RAFbaso = 1.0

!! s Free = 0.02

%!! s PL = 0.1
%!! s PR = 0.1
%!! s PK = 0.1

%Data (serum concentrations reported in ug/L)
bartell = [15	91
15	424
15	757]

steenland = [17	130
17	227
17	318]

emmett = [19	221
19	374
19	448
19	576]
% 373 is median, 447 is mean

lhwa = [13	147
13	343
13	540]

!! st/nc

plot(_year, _ca, steenland(:,1),steenland(:,2),'+', bartell(:,1),bartell(:,2),'+', emmett(:,1),emmett(:,2),'+', lhwa(:,1), lhwa(:,2),'+')

%plot(_year, _ca)
%plot(_year, _curine)