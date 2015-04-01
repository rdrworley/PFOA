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

!! s RAFapi = 0.001356	%relative activity factor, apical transporters (NEED VALUE - current value is copied from RAF for baso)
!! s Free = 0.09	%Female value for FREE used in Locissano model (fit to data).
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
8	42.435
12	58.437
24	69.15
48	72.269
72	73.807
96	74.633
120	75.065
144	75.394
168	75.874
]

%cumulative percent of dose in feces (Kemper table 11)
one_female_feces = [12	1.239
24	1.819
48	1.927
72	1.955
96	2.061
120	2.107
144	2.14
168	2.17
]

plot(_t, _percentod_in_urine, one_female_urine(:,1), one_female_urine(:,2),'+')		%FEMALE
plot(_t, _percentod_in_feces, one_female_feces(:,1), one_female_feces(:,2),'+')		%FEMALE