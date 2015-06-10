%This .m file runs the .csl file and overlays data from the Kemper, 2003 oral gavage Experiment 8.

output @clear
prepare @clear @all

!! s K0C = 1.0
!! s KABSC = 2.12
!! s KUNABSC = 7.06e-5

!! s KBILEC = 0.004
!! s KEFFLUXC = 2.49
!! s KURINEC = 1.6


%Experiment 8: 25 mg/kg administered via single oral dose. Whole blood collected from males at pre-dose, and 0.25, 0.5, 1,2,4,8, 12,16, 24 hours post-dose, 
%and at 24-hour intervals through 192 hours. Whole blood collected from females at pre-dose, and at 0.25, 0.5, 1, 2, 4, 8, 16, 24, 36, 48, 72, and 96 hours 
%post dose.

!! s TSTOP = 700	!MALE
!! s BW = 0.225	!MALE

!! s OdoseC = 25.0	!mg/kg BW
!! s IVdoseC = 0

!! st/nc

eight_male_blood = [0	0
0.25	56.163
0.5	72.856
1.0	99.950
2.0	136.119
4.0	150.800
8.0	138.463
12.0	144.231
16.0	143.351
24.0	126.888
48.0	100.306
72.0	75.669
96.0	67.450
120.0	62.813
144.0	57.463
168.0	50.613
192.0	36.619
240.0	31.244
288.0	25.169
336.0	25.475
384.0	19.114
432.0	19.081
480.0	15.194
528.0	9.646]	

plot(_t, _ca, eight_male_blood(:,1), eight_male_blood(:,2),'+')		%MALE