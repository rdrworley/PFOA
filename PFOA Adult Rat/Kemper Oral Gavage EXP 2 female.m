%This .m file runs the .csl file and overlays data from the Kemper, 2003 oral gavage Experiment 2.

output @clear
prepare @clear @all

%Potentially Sex-specific Parameters
!! s K0C = 1.0
!! s KABSC = 2.12
!! s KUNABSC = 7.06e-5

!! s KBILEC = 0.004
!! s KEFFLUXC = 2.49
!! s KURINEC = 1.6

!! s RAFapi = 0.001356	%relative activity factor, apical transporters, fit to data
!! s RAFbaso = 0.01356	%relative activity factor, apical transporters, fit to data
!! s Free = 0.09	%Female value for FREE. fit to data
!! s GFRC = 41.04	%glomerular filtration rate (L/hr/kg kidney) (female); Corley, 2005

%Experiment 2: 5 mg/kg administered via single oral dose. percent of dose in urine and feces reported from males at pre-dose, and 0.25, 0.5, 1,2,4,8, 12,16, 24 hours post-dose, 
%and at 24-hour intervals through 192 hours.

!! s TSTOP = 170	!FEMALE
!! s BW = 0.200	!FEMALE

!! s OdoseC = 5.0	!mg/kg BW
!! s IVdoseC = 0

!! st/nc

%cumulative percent of dose in urine (Kemper Table 16)
two_female_urine = [4	11.696
8	46.909
12	64.098
24	77.663
48	80.689
72	81.697
96	82.319
120	82.961
144	83.402
168	83.716
]

%cumulative percent of dose in feces (Kemper table 17)
two_female_feces = [4	1.134
8	5.068
12	5.628
24	5.969
48	6.115
72	6.234
96	6.34
120	6.454
]


plot(_t, _percentod_in_urine, two_female_urine(:,1), two_female_urine(:,2),'+')		%FEMALE
plot(_t, _percentod_in_feces, two_female_feces(:,1), two_female_feces(:,2),'+')		%FEMALE