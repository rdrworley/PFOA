%This .m file runs the .csl file and overlays data from the Kemper, 2003 oral gavage Experiment 5.

output @clear
prepare @clear @all
WESTIG=0;WEDITG=0;CJVITG=0;

!! s K0C = 1.0
!! s KABSC = 2.12
!! s KUNABSC = 7.06e-5

!! s KBILEC = 0.004
!! s KEFFLUXC = 2.49
!! s KURINEC = 1.6

!! s RAFapi = 35	%relative activity factor, apical transporters, fit to data
!! s RAFbaso = 4.07	%relative activity factor, apical transporters, fit to data
!! s Free = 0.09	%FREE. fit to data
!! s GFRC = 62.1	%glomerular filtration rate (L/hr/kg kidney); Corley, 2005

%Experiment 5: 0.1 mg/kg administered via single oral dose. Whole blood collected from males at pre-dose, and 0.25, 0.5, 1,2,4,8, 12,16, 24 hours post-dose, 
%and at 24-hour intervals through 192 hours. Whole blood collected from females at pre-dose, and at 0.25, 0.5, 1, 2, 4, 8, 16, 24, 36, 48, 72, and 96 hours 
%post dose.

!! s TSTOP = 550	!MALE
!! s BW = 0.216	!MALE

!! s OdoseC = 0.1	!mg/kg BW
!! s IVdoseC = 0

!! st/nc

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


plot(_t, _ca, five_male_blood(:,1), five_male_blood(:,2),'+')		%MALE