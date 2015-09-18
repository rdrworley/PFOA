%This .m file runs the .csl file and overlays data reported in Little Hocking community. 
%Steenland samples collected in 07-08.


output @clear
prepare @clear @all
WESTIG=0;WEDITG=0;CJVITG=0;

%Exposure Parameters
!! s ingest = 0.0075
!! s exposeddw = 7.2
!! s tstop = 219000

%Parameters that can be fit to data
!! s K0C = 1.0
!! s KABSC = 2.12
!! s KUNABSC = 7.06e-5

!! s KBILEC = 0
!! s KEFFLUXC = 0.03
!! s KURINEC = 1.2

!! s RAFapi = .007
!! s RAFbaso = 1.0

%Data (serum concentrations reported in ug/L)
bartell = [20	91
20	424
20	757]

steenland = [21	130
21	227
21	318]

emmett = [22	221
22	374
22	448
22	576]
% 373 is median, 447 is mean

lhwa = [23	147
23	343
23	540]

!! st/nc

plot(_year, _ca, steenland(:,1),steenland(:,2),'+', bartell(:,1),bartell(:,2),'+', emmett(:,1),emmett(:,2),'+', lhwa(:,1), lhwa(:,2),'+')

%plot(_year, _ca)
%plot(_year, _curine)