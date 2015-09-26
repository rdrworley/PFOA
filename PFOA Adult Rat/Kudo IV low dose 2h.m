%This .m file runs the .csl file and overlays data from the Kudo, 2007 IV data, low dose, 2h experiment.

output @clear
prepare @clear @all
WESTIG=0;WEDITG=0;CJVITG=0;

!! s K0C = 1.0
!! s KABSC = 2.12
!! s KUNABSC = 7.06e-5

!! s KBILEC = 0.004
!! s KEFFLUXC = 2.49
!! s KURINEC = 1.6

!! s RAFapi = 35	%relative activity factor, apical transporters, fit to data
!! s RAFbaso = 4.07	%relative activity factor, apical transporters, fit to data
!! s Free = 0.09	%FREE. fit to data
!! s GFRC = 62.1	%glomerular filtration rate (L/hr/kg kidney); Corley, 2005

%Experiment: 0.041 mg/kg BW administered to male wistar rats in single bolus IV, serum and liver concentrations measured 2h post-dose serum collected at time points from 0-300 minutes.

!! s TSTOP = 5.5	
!! s BW = 0.3	!MALE (range in study was 280-200 mg)

!! s OdoseC = 1.0e-33	!mg/kg BW, SHOULD BE ZERO, BUT I GET A RUNTIME ERROR WHEN SET TO ZERO. 
!! s IVdoseC = 0.041

!! st/nc

%Data from Kudo, 2007 Table 1
kudo_low_serum = [2.0	0.254]

kudo_low_liver = [2.0	0.558]	

plot(_t, _ca, kudo_low_serum(:,1),kudo_low_serum(:,2),'+')
plot(_t, _amount_per_gram_liver, kudo_low_liver(:,1),kudo_low_liver(:,2),'+')