%This .m file runs the .csl file and overlays data from the Kemper, 2003 oral gavage Experiment 7.

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

%Experiment 7: 5 mg/kg administered via single oral dose. Whole blood collected from males at pre-dose, and 0.25, 0.5, 1,2,4,8, 12,16, 24 hours post-dose, 
%and at 24-hour intervals through 192 hours. Whole blood collected from females at pre-dose, and at 0.25, 0.5, 1, 2, 4, 8, 16, 24, 36, 48, 72, and 96 hours 
%post dose.

!! s TSTOP = 100	!FEMALE
!! s BW = 0.187	!FEMALE

!! s OdoseC = 5.0	!mg/kg BW
!! s IVdoseC = 0

!! st/nc

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

plot(_t, _ca, seven_female_blood(:,1), seven_female_blood(:,2),'+')		%FEMALE