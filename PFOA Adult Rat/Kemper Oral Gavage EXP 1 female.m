%This .m file runs the .csl file and overlays data from the Kemper, 2003 oral gavage Experiment 1.

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

%Experiment 1: 1 mg/kg administered via single oral dose. percent of dose in urine and feces reported from males at pre-dose, and 0.25, 0.5, 1,2,4,8, 12,16, 24 hours post-dose, 
%and at 24-hour intervals through 192 hours.

!! s TSTOP = 170	!FEMALE
!! s BW = 0.175	!FEMALE

!! s OdoseC = 1.0	!mg/kg BW
!! s IVdoseC = 0

!! st/nc

%cumulative percent of dose in urine (Kemper Table 10)
one_female_urine = [4	11.505
8	30.930
12	16.002	
24	10.713
48	3.119
72	1.538
96	0.826
120	0.432
144	0.329
168	0.480
]

%cumulative percent of dose in feces (Kemper table 11)
one_female_feces = [12	1.239
24	0.580
48	0.108
72	0.028
96	0.106
120	0.046
144	0.033
168	0.030
]

plot(_t, _percentod_in_urine, one_female_urine(:,1), one_female_urine(:,2),'+')		%FEMALE
plot(_t, _percentod_in_feces, one_female_feces(:,1), one_female_feces(:,2),'+')		%FEMALE