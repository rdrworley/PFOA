%This .m file runs the .csl file and overlays data from four different biomonitoring studies in the Little Hocking community

output @clear
prepare @clear @all
WESTIG=0;WEDITG=0;CJVITG=0;

%Exposure Parameters
!! s exposeddw = 3.55

%Parameters that can be fit to data
!! s K0C = 1.0
!! s KABSC = 2.12
!! s KUNABSC = 7.06e-5

!! s KBILEC = 0.004
!! s KEFFLUXC = 2.49
!! s KURINEC = 1.6

%Data (serum concentrations reported in ug/L)
bartell = [4	91
4	424
4	757]

steenland = [6	130
6	227
6	318]

emmett = [8	221
8	374
8	448
8	576]
% 373 is median, 447 is mean

lhwa = [10	147
10	343
10	540]

!! st/nc

plot(_year, _ca, steenland(:,1),steenland(:,2),'+', bartell(:,1),bartell(:,2),'+', emmett(:,1),emmett(:,2),'+', lhwa(:,1), lhwa(:,2),'+')