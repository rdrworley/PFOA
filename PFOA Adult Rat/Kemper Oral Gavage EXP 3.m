%This .m file runs the .csl file and overlays data from the Kemper, 2003 oral gavage Experiment 3.

output @clear
prepare @clear @all

%liver binding parameters (Values from Loccisano PFOS model, Bmax is female values)
!! s Bmax = 0
!! s koff = 0
!! s kbilec = 0.004
!! s kabs = 3.0
!! s kunabs = 0.0001
!! s k0c = 1.0
!! s GEC = 0.54

%kidney parameters
!! s keffluxc = 10
!! s kurinec = 1.3

%Experiment 3: 25 mg/kg administered via single oral dose. percent of dose in urine and feces reported from males at pre-dose, and 0.25, 0.5, 1,2,4,8, 12,16, 24 hours post-dose, 
%and at 24-hour intervals through 192 hours.

!! s TSTOP = 700	!MALE
!! s BW = 0.210	!MALE

!! s OdoseC = 25.0	!mg/kg BW
!! s IVdoseC = 0

!! st/nc

%cumulative percent of dose in urine (Kemper Table 22)
three_male_urine = [4	0.251
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
528	48.638
576	50.457
624	51.979
672	53.266]

%cumulative percent of dose in feces (Kemper Table 23)
three_male_feces = [4	0.02
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
528	11.75
576	12.047
624	12.369
672	12.629]

plot(_t, _percentod_in_urine, three_male_urine(:,1), three_male_urine(:,2),'+')		%MALE
plot(_t, _percentod_in_feces, three_male_feces(:,1), three_male_feces(:,2),'+')		%MALE