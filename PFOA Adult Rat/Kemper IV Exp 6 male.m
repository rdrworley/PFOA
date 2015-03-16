%This .m file runs the .csl file and overlays data from the Kemper IV study, Exp 6

output @clear
prepare @clear @all
WESTIG=0;WEDITG=0;CJVITG=0;

!! s K0C = 1.0
!! s KABS = 3.0
!! s KUNABS = 0.0001

!! s KBILEC = 0.004
!! s KEFFLUXC = 10
!! s KURINEC = 1.6

%Experiment: 1 mg/kg administered via single IV dose. Whole blood collected from males at pre-dose, and 0.25, 0.5, 1,2,4,8, 12,16, 24 hours post-dose, 
%and at 24-hour intervals through 192 hours. Whole blood collected from females at pre-dose, and at 0.25, 0.5, 1, 2, 4, 8, 16, 24, 36, 48, 72, and 96 hours 
%post dose.  

!! s TSTOP = 550	
!! s BW = 0.248	%MALE 

!! s OdoseC = 1.0e-33	%mg/kg BW, SHOULD BE ZERO, BUT I GET A RUNTIME ERROR WHEN SET TO ZERO. 
!! s IVdoseC = 1.0

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
