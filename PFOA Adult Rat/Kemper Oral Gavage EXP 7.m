%This .m file runs the .csl file and overlays data from the Kemper, 2003 oral gavage Experiment 7.

output @clear
prepare @clear @all

%liver binding parameters
!! s Bmax = 0
!! s koff = 0
!! s kbilec = 0.009
!! s kabs = 0.35
!! s kunabs = 0.0001

%kidney parameters
!! s keffluxc = 10
!! s kurinec = 0.17

%Experiment 7: 5 mg/kg administered via single oral dose. Whole blood collected from males at pre-dose, and 0.25, 0.5, 1,2,4,8, 12,16, 24 hours post-dose, 
%and at 24-hour intervals through 192 hours. Whole blood collected from females at pre-dose, and at 0.25, 0.5, 1, 2, 4, 8, 16, 24, 36, 48, 72, and 96 hours 
%post dose.

!! s TSTOP = 700	!MALE
!! s BW = 0.218	!MALE

%!! s TSTOP = 100	!FEMALE
%!! s BW = 0.187	!FEMALE

!! s OdoseC = 5.0	!mg/kg BW
!! s IVdoseC = 0

!! st/nc

seven_male_blood = [0	0
0.25	6.692
0.5	11.109
1.0	17.846
2.0	28.977
4.0	33.967
8.0	37.447
12.0	30.651
16.0	35.328
24.0	43.933
48.0	23.220
72.0	25.207
96.0	16.491
120.0	14.769
144.0	11.537
168.0	11.409
192.0	9.182
240.0	8.181
288.0	8.175
336.0	6.178
384.0	5.776
432.0	4.339
480.0	4.328
528.0	2.937]	

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

plot(_t, _ca, seven_male_blood(:,1), seven_male_blood(:,2),'+')		%MALE