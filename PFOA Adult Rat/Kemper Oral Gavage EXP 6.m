%This .m file runs the .csl file and overlays data from the Kemper, 2003 oral gavage Experiment 6.

output @clear
prepare @clear @all

%liver binding parameters
!! s Bmax = 0
!! s koff = 0

%kidney parameters
!! s keffluxc = 10

%Experiment 6: 1 mg/kg administered via single oral dose. Whole blood collected from males at pre-dose, and 0.25, 0.5, 1,2,4,8, 12,16, 24 hours post-dose, 
%and at 24-hour intervals through 192 hours. Whole blood collected from females at pre-dose, and at 0.25, 0.5, 1, 2, 4, 8, 16, 24, 36, 48, 72, and 96 hours 
%post dose.   

!! s TSTOP = 550	!MALE
!! s BW = 0.249	!MALE

%!! s TSTOP = 100	!FEMALE
%!! s BW = 0.197	!FEMALE

!! s OdoseC = 1.0	!mg/kg BW
!! s IVdoseC = 0

!! st/nc

six_male_blood = [0	0
0.25	2.739
0.5	3.727
1.0	4.465
2.0	5.558
4.0	7.041
8.0	7.363
12.0	7.066
16.0	7.229
24.0	4.976
36.0	4.706
48.0	4.295
72.0	3.471
96.0	3.378
120.0	3.599
144.0	2.828
168.0	2.785
192.0	2.996
240.0	1.488
288.0	1.211
336.0	1.205
384.0	1.089
432.0	0.770
480.0	0.779
528.0	0.447]	

six_female_blood = [0.0	0
0.25	4.116
0.50	4.552
1.0	4.723
2.0	4.389
4.0	3.801
8.0	1.452
12.0	0.689
16.0	0.236
24.0	0.159
36.0	0.029
48.0	0.036
96.0	0.075]

%cumulative percent of dose in urine
six_male_urine = [4	0.048
8	0.408
12	0.896
24	2.114
48	3.37
72	2.978
96	2.32
120	2.101
144	2.155
168	1.914
192	1.735
216	1.626
240	1.75
264	1.496
288	1.472
312	1.086
336	1.191
384	2.34
432	2.457
480	2.377
528	2.272
576	2.062
624	1.499
672	1.619]

%cumulative percent of dose in feces
six_male_feces = [8	2.269
12	4.702
24	10.256
48	11.094
72	11.386
96	11.624
120	11.75
144	11.91
168	12.1
192	12.355
216	12.654
240	12.844
264	13.048
288	13.146
312	13.402
336	13.629
384	14.016
432	14.248
480	14.532
528	14.841
576	15.298
624	15.56
672	15.758

]





plot(_t, _ca, six_male_blood(:,1), six_male_blood(:,2),'+')		%MALE
%plot(_t, _ca, six_female_blood(:,1), six_female_blood(:,2),'+')		%FEMALE

plot(_t, _percent_in_urine, six_male_urine(:,1), six_male_urine(:,2),'+')		%MALE
plot(_t, _percent_in_feces, six_male_feces(:,1), six_male_feces(:,2),'+')		%MALE