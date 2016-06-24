output @clear
prepare @clear @all
WESTIG=0;WEDITG=0;CJVITG=0;


%Exposure Parameters
!! s BW = 89
!! s ingest = 0.00109
!! s backgrounddw = 0
!! s tbackground = 0
!! s exposeddw = 0.04	%average of all samples in ADEM efile data base from 2010 - present
!! s tstop = 262800

!! s kvoid = 0.039	% L/hour; urinary excretion rate calculated from EI data

%Parameters that can be fit to data
!! s K0C = 1.0
!! s KABSC = 2.12
!! s KUNABSC = 7.06e-5

!! s KBILEC = 0.0001
!! s KEFFLUXC = 0.1
!! s KURINEC = 0.0282

!! s RAFapi = .0007
!! s RAFbaso = 1.0

!! s Free = 0.02

%Data - Data from 2016 Decatur EI, Public Water Drinkers
public = [0	16.3
5.75	11.7
]


!! st/nc

plot(_year, _ca, public(:,1), public(:,2),'+')