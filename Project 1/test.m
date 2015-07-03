%This .m file runs the .csl file and overlays data from...

output @clear
prepare @clear @all
WESTIG=0;WEDITG=0;CJVITG=0;

% Exposure parameters
!! s tbackground = 0
!! s backgrounddw = 0.1
!! s exposeddw = 3.55

%Fit-to-data parameters
!! s K0C = 1.0
!! s KABSC = 2.12
!! s KUNABSC = 7.06e-5

!! s KBILEC = 0.004
!! s KEFFLUXC = 2.49
!! s KURINEC = 1.6
!! s RAFapi = 0.0136
!! s Km_apical = 128.5 %Value for OAT4 only (.csl has average of OAT4 and URAT1)

%Data
bartell = [30	91
30	424
30	757]

steenland = [32	130
32	227
32	318]

emmett = [34	221
34	374
34	448
34	576]
% 373 is median, 447 is mean

lhwa = [36	147
36	343
36	540]

!! st/nc

plot(_year, _ca, steenland(:,1),steenland(:,2),'+', bartell(:,1),bartell(:,2),'+', emmett(:,1),emmett(:,2),'+', lhwa(:,1), lhwa(:,2),'+')