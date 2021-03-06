%This .m file runs the .csl file and overlays data from the Kemper, 2003 oral gavage Experiment 6.

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

%Experiment 6: 1 mg/kg administered via single oral dose. Whole blood collected from males at pre-dose, and 0.25, 0.5, 1,2,4,8, 12,16, 24 hours post-dose, 
%and at 24-hour intervals through 192 hours. Whole blood collected from females at pre-dose, and at 0.25, 0.5, 1, 2, 4, 8, 16, 24, 36, 48, 72, and 96 hours 
%post dose.   

!! s TSTOP = 100	!FEMALE
!! s BW = 0.197	!FEMALE

!! s OdoseC = 1.0	!mg/kg BW
!! s IVdoseC = 0

!! st/nc

six_female_blood = [0.0	0
0.25	4.116
0.50	4.552
1.0	4.723
2.0	4.389
4.0	3.801
8.0	1.452
12.0	0.689
16.0	0.236
24.0	0.159
36.0	0.029
48.0	0.036
96.0	0.075]

plot(_t, _ca, six_female_blood(:,1), six_female_blood(:,2),'+')		%FEMALE