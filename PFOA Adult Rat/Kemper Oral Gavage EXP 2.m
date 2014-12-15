%This .m file runs the .csl file and overlays data from the Kemper, 2003 oral gavage Experiment 2.

output @clear
prepare @clear @all

%liver parameters
!! s Bmax = 0
!! s koff = 0
!! s kbilec = 0.009
!! s kabs = 0.35
!! s kunabs = 0.0001

%kidney parameters
!! s keffluxc = 10
!! s kurinec = 0.17

%Experiment 2: 5 mg/kg administered via single oral dose. percent of dose in urine and feces reported from males at pre-dose, and 0.25, 0.5, 1,2,4,8, 12,16, 24 hours post-dose, 
%and at 24-hour intervals through 192 hours.

!! s TSTOP = 700	!MALE
!! s BW = 0.198	!MALE

!! s OdoseC = 5.0	!mg/kg BW
!! s IVdoseC = 0

!! st/nc

%cumulative percent of dose in urine (Kemper Table 16)
two_male_urine = [4	0.102
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

%cumulative percent of dose in feces (Kemper table 17)
two_male_feces = [12	1.027
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

plot(_t, _percentod_in_urine, two_male_urine(:,1), two_male_urine(:,2),'+')		%MALE
plot(_t, _percentod_in_feces, two_male_feces(:,1), two_male_feces(:,2),'+')		%MALE