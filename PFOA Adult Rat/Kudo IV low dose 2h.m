%This .m file runs the .csl file and overlays data from the Kudo, 2007 IV data, low dose, 2h experiment.

output @clear
prepare @clear @all
WESTIG=0;WEDITG=0;CJVITG=0;

%liver binding parameters (Values from Loccisano PFOS model, Bmax is female values)
!! s Bmax = 0
!! s koff = 0
!! s kbilec = 0.0008
!! s kabs = 0.35
!! s kunabs = 0.0001
!! s k0c = 1.0e-33
!! s GEC = 0.54

%kidney parameters
!! s keffluxc = 10
!! s kurinec = 2.5

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