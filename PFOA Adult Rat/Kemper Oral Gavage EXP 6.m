%This .m file runs the .csl file and overlays data from the Kemper, 2003 oral gavage Experiment 6.

output @clear
prepare @clear @all
WESTIG=0;WEDITG=0;CJVITG=0;

%liver binding parameters (Values from Loccisano PFOS model, Bmax is female values)
!! s Bmax = 0
!! s koff = 0
!! s kbilec = 0.009
!! s kabs = .35
!! s kunabs = 0.0001
!! s k0c = 0.5
!! s GEC = 0.54

%kidney parameters
!! s keffluxc = 10
!! s kurinec = 1.3

%Experiment 6: 1 mg/kg administered via single oral dose. Whole blood collected from males at pre-dose, and 0.25, 0.5, 1,2,4,8, 12,16, 24 hours post-dose, 
%and at 24-hour intervals through 192 hours. Whole blood collected from females at pre-dose, and at 0.25, 0.5, 1, 2, 4, 8, 16, 24, 36, 48, 72, and 96 hours 
%post dose.   

!! s TSTOP = 700	!MALE
!! s BW = 0.249	!MALE

%!! s TSTOP = 100	!FEMALE
%!! s BW = 0.197	!FEMALE

!! s OdoseC = 1.0	!mg/kg BW
!! s IVdoseC = 0

!! st/nc

six_male_blood = [0	0
0.25	2.739
0.5	3.727
1.0	4.465
2.0	5.558
4.0	7.041
8.0	7.363
12.0	7.066
16.0	7.229
24.0	4.976
36.0	4.706
48.0	4.295
72.0	3.471
96.0	3.378
120.0	3.599
144.0	2.828
168.0	2.785
192.0	2.996
240.0	1.488
288.0	1.211
336.0	1.205
384.0	1.089
432.0	0.770
480.0	0.779
528.0	0.447]	

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

plot(_t, _ca, six_male_blood(:,1), six_male_blood(:,2),'+')		%MALE
%plot(_t, _ca, six_female_blood(:,1), six_female_blood(:,2),'+')		%FEMALE