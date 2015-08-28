%This .m file runs the .csl file and overlays data from four different biomonitoring studies in the Little Hocking community

output @clear
prepare @clear @all
WESTIG=0;WEDITG=0;CJVITG=0;

%Exposure Parameters
!! s exposeddw = .08
!! s tstop = 175200

%Parameters that can be fit to data
!! s K0C = 1.0
!! s KABSC = 2.12
!! s KUNABSC = 7.06e-5

!! s KBILEC = 0
!! s KEFFLUXC = 2.49
!! s KURINEC = 1.2

!! s RAFapi = .02
!! s RAFbaso = 1.0

!! s kvoid = 0.0694

!! s Free = 0.02

%Data (paired blood and urine data from Zhang, 2013; all units in ug/L)
Zhang_blood = [15	3.1]

Zhang_urine = [15	0.081]

!! st/nc

plot(_year, _ca, Zhang_blood(:,1), Zhang_blood(:, 2), '+')
plot(_year, _curine, Zhang_urine(:,1), Zhang_urine(:, 2), '+')