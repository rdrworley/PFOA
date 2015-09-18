%This .m file runs the .csl file 
output @clear
prepare @clear @all
WESTIG=0;WEDITG=0;CJVITG=0;

%Exposure Parameters
!! s ingest = 0.0
!! s exposeddw = 0.0
!! s backgrounddw = 0.5
!! s tbackground = 280320.0
!! s tstop = 350400.0

%Parameters that can be fit to data
!! s K0C = 1.0
!! s KABSC = 2.12
!! s KUNABSC = 7.06e-5

!! s KBILEC = 0
!! s KEFFLUXC = 0.03
!! s KURINEC = 1.2

!! s RAFapi = .007
!! s RAFbaso = 1.0

!! st/nc

plot(_year, _ca)
