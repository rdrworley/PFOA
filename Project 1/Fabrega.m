%This .m file runs the .csl file and overlays data from Fabrega, 2014 and Ericson, 2007

output @clear
prepare @clear @all
WESTIG=0;WEDITG=0;CJVITG=0;

%Exposure Parameters
!! s exposeddw = .0185
!! s tstop = 175200

%Parameters that can be fit to data
!! s K0C = 1.0
!! s KABSC = 2.12
!! s KUNABSC = 7.06e-5

!! s KBILEC = 0
!! s KEFFLUXC = 2.49
!! s KURINEC = 1.6

!! s RAFapi =  0.0335
!! s RAFbaso = 0.01356

!! s kvoid = 0.0694

!! s Free = 0.02

%Data (ug/g)
Fabrega_liver = [15	0.0136]

Ericson_blood = [15	1.8]

!! st/nc

plot(_year, _ca, Ericson_blood(:,1), Ericson_blood(:, 2), '+')
plot(_year, _cliver, Fabrega_liver(:,1), Fabrega_liver(:, 2), '+')