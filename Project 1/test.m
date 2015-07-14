%This .m file runs the .csl file and overlays data from...

output @clear
prepare @clear @all
WESTIG=0;WEDITG=0;CJVITG=0;

% Exposure parameters
!! s tbackground = 0
!! s backgrounddw = 0.1
!! s exposeddw = 3.55
!! s tstop = 96360

%Fit-to-data parameters
!! s K0C = 1.0
!! s KABSC = 2.12
!! s KUNABSC = 7.06e-5

!! s KBILEC = 0.004
!! s KEFFLUXC = 2.49e-4
!! s KURINEC = 1.6e-6
!! s Km_apical = 128500 %Value for OAT4 only (.csl has average of OAT4 and URAT1)

!! s RAFbaso = 1.356e-8
!! s RAFapi = 1.356e-7		

%Data
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