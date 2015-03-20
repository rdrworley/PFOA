%This .m file runs the .csl file and overlays data from the Kemper, 2003 oral gavage Experiment 3.

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

%Experiment 3: 25 mg/kg administered via single oral dose. percent of dose in urine and feces reported from males at pre-dose, and 0.25, 0.5, 1,2,4,8, 12,16, 24 hours post-dose, 
%and at 24-hour intervals through 192 hours.

!! s TSTOP = 170	!FEMALE
!! s BW = 0.189	!FEMALE

!! s OdoseC = 25.0	!mg/kg BW
!! s IVdoseC = 0

!! st/nc

%cumulative percent of dose in urine (Kemper Table 22)
three_female_urine = [4	23.794
8	52.38
12	66.58
24	76.435
48	80.149
72	81.688
96	82.768
120	83.474
144	83.908
168	84.382
]

%cumulative percent of dose in feces (Kemper Table 23)
three_female_feces = [4	0.017
8	0.019
12	0.579
24	1.328
48	1.608
72	1.779
96	1.923
120	1.965
144	2.034
168	2.164
]

plot(_t, _percentod_in_urine, three_female_urine(:,1), three_female_urine(:,2),'+')		%FEMALE
plot(_t, _percentod_in_feces, three_female_feces(:,1), three_female_feces(:,2),'+')		%FEMALE