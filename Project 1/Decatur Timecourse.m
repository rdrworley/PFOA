output @clear
prepare @clear @all
WESTIG=0;WEDITG=0;CJVITG=0;


%Exposure Parameters
!! s BW = 89
!! s ingest = 0.00185
!! s backgrounddw = 0.19
!! s tbackground = 175200
!! s exposeddw = 0.033
!! s tstop = 262800

!! s kvoid = 0.039	% L/hour; urinary excretion rate calculated from EI data

%Parameters that can be fit to data
!! s K0C = 1.0
!! s KABSC = 2.12
!! s KUNABSC = 7.06e-5

!! s KBILEC = 0
!! s KEFFLUXC = 0.1
!! s KURINEC = 0.12

!! s RAFapi = .0005
!! s RAFbaso = 1.0

!! s Free = 0.005

%Data - Data from 2016 Decatur EI, Public Water Drinkers
public = [20	16.1
25.75	11.7
]


!! st/nc

plot(_year, _ca, public(:,1), public(:,2),'+')