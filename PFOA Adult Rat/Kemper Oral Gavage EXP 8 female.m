%This .m file runs the .csl file and overlays data from the Kemper, 2003 oral gavage Experiment 8.

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

%Experiment 8: 25 mg/kg administered via single oral dose. Whole blood collected from males at pre-dose, and 0.25, 0.5, 1,2,4,8, 12,16, 24 hours post-dose, 
%and at 24-hour intervals through 192 hours. Whole blood collected from females at pre-dose, and at 0.25, 0.5, 1, 2, 4, 8, 16, 24, 36, 48, 72, and 96 hours 
%post dose.

!! s TSTOP = 100	!FEMALE
!! s BW = 0.195	!FEMALE

!! s OdoseC = 25.0	!mg/kg BW
!! s IVdoseC = 0

!! st/nc

eight_female_blood = [0.0	0.019
0.25	79.165
0.50	124.108
1.0	101.635
2.0	113.005
4.0	99.733
8.0	31.478
12.0	8.638
16.0	2.686
24.0	0.363
36.0	0.135
48.0	0.060
72.0	0.048
96.0	0.033]

plot(_t, _ca, eight_female_blood(:,1), eight_female_blood(:,2),'+')		%FEMALE