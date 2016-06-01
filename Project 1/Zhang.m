%This .m file runs the .csl file and overlays data from Zhang, 2013

output @clear
prepare @clear @all
WESTIG=0;WEDITG=0;CJVITG=0;

%Exposure Parameters
!! s ingest = 0.00107
!! s exposeddw = 0
!! s tstop = 262800

%Parameters that can be fit to data
!! s K0C = 1.0
!! s KABSC = 2.12
!! s KUNABSC = 7.06e-5

!! s KBILEC = 0.0001
!! s KEFFLUXC = 0.1
!! s KURINEC = 0.0715

!! s RAFapi = .0007
!! s RAFbaso = 1.0

!! s Free = 0.005

%Data (paired blood and urine data from Zhang, 2013; all units in ug/L)
Zhang_blood = [28	3.1]

Zhang_urine = [28	0.081]

!! st/nc

plot(_year, _ca, Zhang_blood(:,1), Zhang_blood(:, 2), '+')
plot(_year, _curine, Zhang_urine(:,1), Zhang_urine(:, 2), '+')