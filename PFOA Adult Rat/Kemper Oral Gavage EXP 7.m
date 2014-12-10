%This .m file runs the .csl file and overlays data from the Kemper, 2003 oral gavage Experiment 7.

output @clear
prepare @clear @all

%liver binding parameters
!! s Bmax = 0
!! s koff = 0
!! s kbilec = 0.0003
!! s kabs = 0.3
!! s kunabs = 0.004

%kidney parameters
!! s keffluxc = 10
!! s kurinec = 3.0

%Experiment 7: 5 mg/kg administered via single oral dose. Whole blood collected from males at pre-dose, and 0.25, 0.5, 1,2,4,8, 12,16, 24 hours post-dose, 
%and at 24-hour intervals through 192 hours. Whole blood collected from females at pre-dose, and at 0.25, 0.5, 1, 2, 4, 8, 16, 24, 36, 48, 72, and 96 hours 
%post dose.

!! s TSTOP = 700	!MALE
!! s BW = 0.218	!MALE

%!! s TSTOP = 100	!FEMALE
%!! s BW = 0.187	!FEMALE

!! s OdoseC = 5.0	!mg/kg BW
!! s IVdoseC = 0

!! st/nc

seven_male_blood = [0	0
0.25	6.692
0.5	11.109
1.0	17.846
2.0	28.977
4.0	33.967
8.0	37.447
12.0	30.651
16.0	35.328
24.0	43.933
48.0	23.220
72.0	25.207
96.0	16.491
120.0	14.769
144.0	11.537
168.0	11.409
192.0	9.182
240.0	8.181
288.0	8.175
336.0	6.178
384.0	5.776
432.0	4.339
480.0	4.328
528.0	2.937]	

seven_female_blood = [0.0	0
0.25	10.946
0.50	13.318
1.0	16.555
2.0	17.828
4.0	13.983
8.0	3.270
12.0	1.653
16.0	0.627
24.0	0.173
36.0	0.043
48.0	0.020
72.0	0.012]

%cumulative percent of dose in urine
seven_male_urine = [4	0.102
8	0.709
12	1.752
24	4.327
48	8.772
72	12.703
96	16.176
120	19.924
144	23.27
168	26.724
192	29.649
216	32.283
240	34.957
264	37.336
288	39.577
312	41.622
336	43.491
384	46.705
432	50.084
480	53.087
528	55.875
576	58.189
624	60.447
672	62.382]

%cumulative percent of dose in feces
seven_male_feces = [12	1.027
24	1.767
48	2.303
72	2.883
96	3.238
120	3.435
144	3.611
168	3.751
192	3.879
216	3.99
240	4.139
264	4.284
288	4.403
312	4.491
336	4.592
384	4.796
432	4.957
480	5.081
528	5.188
576	5.308
624	5.423
672	5.571]



plot(_t, _ca, seven_male_blood(:,1), seven_male_blood(:,2),'+')		%MALE
%plot(_t, _ca, seven_female_blood(:,1), seven_female_blood(:,2),'+')		%FEMALE

plot(_t, _percentod_in_urine, seven_male_urine(:,1), seven_male_urine(:,2),'+')		%MALE
plot(_t, _percentod_in_feces, seven_male_feces(:,1), seven_male_feces(:,2),'+')		%MALE
