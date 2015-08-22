%This .m file runs the .csl file and overlays data from four different biomonitoring studies in the Little Hocking community

output @clear
prepare @clear @all
WESTIG=0;WEDITG=0;CJVITG=0;

%Exposure Parameters
!! s exposeddw = .35
!! s tstop = 175200

%Parameters that can be fit to data
!! s K0C = 1.0
!! s KABSC = 2.12
!! s KUNABSC = 7.06e-5

!! s KBILEC = 0
!! s KEFFLUXC = 2.49
!! s KURINEC = 1.6

%!! s Km_baso = 20.1
%!! s Km_apical = 77.5

!! s RAFapi =  0.0335
!! s RAFbaso = 0.01356

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

%plot(_year, _ca, steenland(:,1),steenland(:,2),'+', bartell(:,1),bartell(:,2),'+', emmett(:,1),emmett(:,2),'+', lhwa(:,1), lhwa(:,2),'+')

plot(_year, _ca)
plot(_year, _curine)