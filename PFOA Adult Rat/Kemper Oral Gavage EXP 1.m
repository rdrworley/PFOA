%This .m file runs the .csl file and overlays data from the Kemper, 2003 oral gavage Experiment 1.

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

%Experiment 1: 1 mg/kg administered via single oral dose. percent of dose in urine and feces reported from males at pre-dose, and 0.25, 0.5, 1,2,4,8, 12,16, 24 hours post-dose, 
%and at 24-hour intervals through 192 hours.

!! s TSTOP = 700	!MALE
!! s BW = 0.233	!MALE

!! s OdoseC = 1.0	!mg/kg BW
!! s IVdoseC = 0

!! st/nc

%cumulative percent of dose in urine (Kemper Table 10)
one_male_urine = [4	0.048
8	0.456
12	1.352
24	3.466
48	6.836
72	9.814
96	12.134
120	14.235
144	16.39
168	18.304
192	20.039
216	21.665
240	23.415
264	24.911
288	26.383
312	27.469
336	28.66
384	31
432	33.457
480	35.834
528	38.106
576	40.168
624	41.667
672	43.286
]

%cumulative percent of dose in feces (Kemper table 11)
one_male_feces = [8	2.269
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

plot(_t, _percentod_in_urine, one_male_urine(:,1), one_male_urine(:,2),'+')		%MALE
plot(_t, _percentod_in_feces, one_male_feces(:,1), one_male_feces(:,2),'+')		%MALE

%!! display AOG, Afeces, Aurine, Aplas, percentod_in_urine, percentod_in_feces