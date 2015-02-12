%This .m file runs the .csl file and overlays data from the Kudo, 2007 IV data, high dose.

output @clear
prepare @clear @all
WESTIG=0;WEDITG=0;CJVITG=0;

!! s K0C = 1.0
!! s KABS = 3.0
!! s KUNABS = 0.0001

!! s KBILEC = 0.004
!! s KEFFLUXC = 10
!! s KURINEC = 1.6

%Experiment: 16.56 mg/kg BW administered to male wistar rats in single bolus IV, serum and liver concentrations measured 2h post-dose serum collected at time points from 0-300 minutes.

!! s TSTOP = 5.5	
!! s BW = 0.3	!MALE (range in study was 280-200 mg)

!! s OdoseC = 1.0e-33	!mg/kg BW, SHOULD BE ZERO, BUT I GET A RUNTIME ERROR WHEN SET TO ZERO. 
!! s IVdoseC = 16.56	! mg/kg BW

!! st/nc

%Data from Kudo, 2007 Table 1
kudo_high_serum = [2.0	105.35]

kudo_high_liver = [2.0	87.45]	

plot(_t, _ca, kudo_high_serum(:,1),kudo_high_serum(:,2),'+')
plot(_t, _amount_per_gram_liver, kudo_high_liver(:,1),kudo_high_liver(:,2),'+')
