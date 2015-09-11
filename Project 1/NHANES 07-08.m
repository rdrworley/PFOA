%This .m file runs the .csl file and overlays data from NHANES 2007-2008

output @clear
prepare @clear @all
WESTIG=0;WEDITG=0;CJVITG=0;

%Exposure Parameters
!! s ingest = 0.0075
!! s exposeddw = 0
!! s tstop = 61320

%Parameters that can be fit to data
!! s K0C = 1.0
!! s KABSC = 2.12
!! s KUNABSC = 7.06e-5

!! s KBILEC = 0
!! s KEFFLUXC = 2.49
!! s KURINEC = 1.2

!! s RAFapi = .007
!! s RAFbaso = 1.0

!! s kvoid = 0.0694

!! s Free = 0.02

%Data (paired blood and urine data from Zhang, 2013; all units in ug/L)
NHANES_blood = [6	4.12]

!! st/nc

plot(_year, _ca, NHANES_blood(:,1), NHANES_blood(:, 2), '+')
