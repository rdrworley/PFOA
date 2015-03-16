%This .m file runs the .csl file and overlays data from the Kemper, 2003 oral gavage Experiment 2.

output @clear
prepare @clear @all

%Potentially Sex-specific Parameters
!! s K0C = 1.0
!! s KABS = 3.0
!! s KUNABS = 0.0001

!! s KBILEC = 0.004	%Locissano uses 0.25, fit to data
!! s KEFFLUXC = 10
!! s KURINEC = 1.6	%Locissano uses 0.32, fit to data

!! s Free = 0.045	%Female value for FREE used in Locissano model (fit to data).
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
8	35.213
12	17.189
24	13.565
48	3.026
72	1.008
96	0.622
120	0.642
144	0.441
168	0.314
]

%cumulative percent of dose in feces (Kemper table 17)
two_female_feces = [12	1.134
24	3.934
48	0.560
72	0.341
96	0.146
120	0.119
144	0.106
168	0.114
]


plot(_t, _percentod_in_urine, two_female_urine(:,1), two_female_urine(:,2),'+')		%FEMALE
plot(_t, _percentod_in_feces, two_female_feces(:,1), two_female_feces(:,2),'+')		%FEMALE