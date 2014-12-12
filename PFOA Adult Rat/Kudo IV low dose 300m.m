%This .m file runs the .csl file and overlays data from the Kudo, 2007 IV data, low dose.

output @clear
prepare @clear @all
WESTIG=0;WEDITG=0;CJVITG=0;

%liver parameters
!! s Bmax = 0
!! s koff = 0
!! s kbilec = 0.0003
!! s kabs = 0.4
!! s kunabs = 0.04

%kidney parameters
!! s keffluxc = 10
!! s kurinec = 1.0 

%Experiment: 0.041 mg/kg BW administered to male wistar rats in single bolus IV, serum and liver concentrations measured 2h post-dose serum collected at time points from 0-300 minutes.

!! s TSTOP = 5.5	!hours
!! s BW = 0.3	!MALE (range in study was 280-200 mg)

!! s OdoseC = 0.0000000001	!mg/kg BW, SHOULD BE ZERO, BUT I GET A RUNTIME ERROR WHEN SET TO ZERO. 
!! s IVdoseC = 0.041

!! st/nc


%Data from Kudo, 2007, Fig 2 (pulled from figure using graph digitizer)
kudo_low_serum = [0.08	0.234
0.25	0.141
0.75	0.124
1.5	0.113
2.0	0.116
2.5	0.126
3.5	0.131
4.5	0.126
5.0	0.131]


plot(_t, _ca, kudo_low_serum(:,1),kudo_low_serum(:,2),'+')	
