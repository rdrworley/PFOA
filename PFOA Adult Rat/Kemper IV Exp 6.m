%This .m file runs the .csl file and overlays data from the Kemper IV study, Exp 6

output @clear
prepare @clear @all
WESTIG=0;WEDITG=0;CJVITG=0;

%liver parameters
!! s Bmax = 0
!! s koff = 0
!! s kbilec = 0.009
!! s kabs = 0.35
!! s kunabs = 0.0001

%kidney parameters
!! s keffluxc = 10
!! s kurinec = 0.0017

%Experiment: 0.041 mg/kg BW administered to male wistar rats in single bolus IV, serum and liver concentrations measured 2h post-dose serum collected at time points from 0-300 minutes.

!! s TSTOP = 550	
!! s BW = 0.248	!MALE 

!! s OdoseC = 1.0e-33	!mg/kg BW, SHOULD BE ZERO, BUT I GET A RUNTIME ERROR WHEN SET TO ZERO. 
!! s IVdoseC = 0.041

!! st/nc

%Data from Kemper, Appendix J
six_male_iv = [0.25	11.839
0.5	7.937
1.0	9.291
2.0	6.985
4.0	7.363
8.0	7.027
12.0	7.392
16.0	8.492
24.0	5.806
36.0	4.187
48.0	4.046
72.0	3.970
96.0	2.966
120.0	2.702
144.0	1.745
168.0	1.717
192.0	1.697
240.0	1.830
288.0	1.420
336.0	1.309
384.0	1.200
432.0	0.943
480.0	0.840
528.0	0.591]		

plot(_t, _ca, six_male_iv(:,1),six_male_iv(:,2),'+')
