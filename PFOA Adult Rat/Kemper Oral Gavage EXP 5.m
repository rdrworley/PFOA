%This .m file runs the .csl file and overlays data from the Kemper, 2003 oral gavage Experiment 5.

output @clear
prepare @clear @all

%liver binding parameters
!! s Bmax = 1
!! s Kb = 1
!! s koff = 1

%kidney parameters
!! s keffluxc = 0.1

!! st/nc

%Experiment 5: 0.1 mg/kg administered via single oral dose. Whole blood collected from males at pre-dose, and 0.25, 0.5, 1,2,4,8, 12,16, 24 hours post-dose, 
%and at 24-hour intervals through 192 hours. Whole blood collected from females at pre-dose, and at 0.25, 0.5, 1, 2, 4, 8, 16, 24, 36, 48, 72, and 96 hours 
%post dose.

!! s TSTOP = 550	% MALE
!! s BW = 0.216	%MALE

%!! s TSTOP = 100	%FEMALE
%!! s BW = 0.176	%FEMALE

!! s OdoseC = 0.1	%mg/kg BW
!! s IVdoseC = 0

five_male_blood = [0	0
0.25	0.282
0.5	0.302
1.0	0.376
2.0	0.388
4.0	0.404
8.0	0.467
12.0	0.517
16.0	0.511
24.0	0.399
36.0	0.364
48.0	0.328
72.0	0.324
96.0	0.311
120.0	0.262
144.0	0.251
168.0	0.253
192.0	0.225
240.0	0.177
288.0	0.181
336.0	0.125
384.0	0.108
432.0	0.100
480.0	0.087
528.0	0.063]	

five_female_blood = [0.0	0
0.25	0.603
0.50	0.630
1.0	0.539
2.0	0.528
4.0	0.381
8.0	0.102
16.0	0.050]

plot(_year, _ca, five_male_blood(:,1), five_male_blood(:,2),'+')		%MALE
%plot(_year, _ca, five_female_blood(:,1), five_female_blood(:,2),'+')		%FEMALE

%Experiment 7: 5 mg/kg administered via single oral dose. Whole blood collected from males at pre-dose, and 0.25, 0.5, 1,2,4,8, 12,16, 24 hours post-dose, 
%and at 24-hour intervals through 192 hours. Whole blood collected from females at pre-dose, and at 0.25, 0.5, 1, 2, 4, 8, 16, 24, 36, 48, 72, and 96 hours 
%post dose.

% Experiment 8: 25 mg/kg administered via single oral dose. Whole blood collected from males at pre-dose, and 0.25, 0.5, 1,2,4,8, 12,16, 24 hours post-dose, 
%and at 24-hour intervals through 192 hours. Whole blood collected from females at pre-dose, and at 0.25, 0.5, 1, 2, 4, 8, 16, 24, 36, 48, 72, and 96 hours 
%post dose.

%Experiment 10: 1 mg/kg administered via single oral dose. Whole blood and tissues collected from males at Tmax (10.5 hours) and Tmax/2 (171 hours). Whole 
%blood and tissues collected from females at Tmax (1.25 hours) and Tmax/2 (4 hours).  

%Experiment 11: 5 mg/kg administered via single oral dose. Whole blood and tissues collected from males at Tmax (10.5 hours) and Tmax/2 (171 hours). Whole 
%blood and tissues collected from females at Tmax (1.25 hours) and Tmax/2 (4 hours).  

%Experiment 12: 5 mg/kg administered via single oral dose. Whole blood and tissues collected from males at Tmax (10.5 hours) and Tmax/2 (171 hours). Whole 
%blood and tissues collected from females at Tmax (1.25 hours) and Tmax/2 (4 hours).  