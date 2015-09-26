%This .m file runs the .csl file and overlays data from the Kemper IV study, Exp 6

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

%Experiment: 1 mg/kg administered via single IV dose. Whole blood collected from males at pre-dose, and 0.25, 0.5, 1,2,4,8, 12,16, 24 hours post-dose, 
%and at 24-hour intervals through 192 hours. Whole blood collected from females at pre-dose, and at 0.25, 0.5, 1, 2, 4, 8, 16, 24, 36, 48, 72, and 96 hours 
%post dose.  

!! s TSTOP = 100	
!! s BW = 0.201	%FEMALE 

!! s OdoseC = 1.0e-33	%mg/kg BW, SHOULD BE ZERO, BUT I GET A RUNTIME ERROR WHEN SET TO ZERO. 
!! s IVdoseC = 1.0

!! st/nc

%Data from Kemper, Appendix J
six_female_iv = [0	0.012
0.25	4.967
0.5	4.529
1.0	3.941
2.0	3.675
4.0	2.739
8.0	0.792
12.0	2.204
16.0	0.108
24.0	0.017
36.0	0.092
72.0	00.42
]		

plot(_t, _ca, six_female_iv(:,1),six_female_iv(:,2),'+')