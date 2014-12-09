%This .m file runs the .csl file and overlays data from the Kemper, 2003 oral gavage Experiment 8.

output @clear
prepare @clear @all

%liver binding parameters
!! s Bmax = 0
!! s koff = 0

%kidney parameters
!! s keffluxc = 10

%Experiment 8: 25 mg/kg administered via single oral dose. Whole blood collected from males at pre-dose, and 0.25, 0.5, 1,2,4,8, 12,16, 24 hours post-dose, 
%and at 24-hour intervals through 192 hours. Whole blood collected from females at pre-dose, and at 0.25, 0.5, 1, 2, 4, 8, 16, 24, 36, 48, 72, and 96 hours 
%post dose.

!! s TSTOP = 550	!MALE
!! s BW = 0.225	!MALE

%!! s TSTOP = 100	!FEMALE
%!! s BW = 0.195	!FEMALE

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

eight_female_blood = [0.0	0.019
0.25	79.165
0.50	124.108
1.0	101.635
2.0	113.005
4.0	99.733
8.0	31.478
12.0	8.638
16.0	2.686
24.0	0.363
36.0	0.135
48.0	0.060
72.0	0.048
96.0	0.033]

%cumulative percent of dose in urine
eight_male_urine = [4	0.251
8	1.022
12	2.372
24	5.63
48	12.433
72	17.042
96	21.068
120	24.847
144	28.085
168	30.652
192	32.718
216	34.374
240	36.23
264	37.945
288	39.484
312	40.666
336	41.79
384	43.285
432	44.436
480	46.685
5280	48.638
576	50.457
624	51.979
672	53.266]

%cumulative percent of dose in feces
eight_male_feces = [4	0.02
8	0.201
12	0.326
24	1.993
48	2.979
72	3.317
96	3.753
120	4.275
144	4.782
168	5.277
192	5.999
216	6.677
240	7.61
264	7.935
288	8.254
312	8.713
336	9.134
384	9.932
432	11.252
480	11.443
5280	11.75
576	12.047
624	12.369
672	12.629]

plot(_t, _ca, eight_male_blood(:,1), eight_male_blood(:,2),'+')		%MALE
%plot(_t, _ca, eight_female_blood(:,1), eight_female_blood(:,2),'+')		%FEMALE

