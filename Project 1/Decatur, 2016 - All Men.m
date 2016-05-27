output @clear
prepare @clear @all
WESTIG=0;WEDITG=0;CJVITG=0;


%Exposure Parameters
!! s BW = 89
!! s ingest = 0.00151
!! s exposeddw = 0.057
!! s tstop = 351000

!! s kvoid = 0.039	%urinary excretion rate calculated from EI data

%Parameters that can be fit to data
!! s K0C = 1.0
!! s KABSC = 2.12
!! s KUNABSC = 7.06e-5

!! s KBILEC = 0.0001
!! s KEFFLUXC = 0.1
!! s KURINEC = 0.0715

!! s RAFapi = .0007
!! s RAFbaso = 1.0

!! s Free = 0.005

%Data - Data from 2016 Decatur EI, Public Water Drinkers
public = [32	15.4
32.2	2.7
32.4	15.6
32.6	14.4
32.8	16.9
33	9.8
33.2	10.1
33.4	29.3
33.6	10.4
33.8	23.6
34	12.7
34.2	18.6
34.4	16.4
34.6	12.7
34.8	10.3
35	8.1
35.2	11.3
35.4	9.8
35.6	19.3
35.8	11.4
36	1.9
36.2	80
36.4	52.8
40	15.16
40	12.44]

urine = [32	0.0154
32.2	0.0027
32.4	0.0156
32.6	0.0144
32.8	0.0169
33	0.0098
33.2	0.0101
33.4	0.0293
33.6	0.0104
33.8	0.0236
34	0.0127
34.2	0.0186
34.4	0.0164
34.6	0.0127
34.8	0.0103
35	0.0081
35.2	0.0113
35.4	0.0098
35.6	0.0193
35.8	0.0114
36	0.0019
36.2	0.08
36.4	0.0528
40	0.031
40	0.025]

!! st/nc

plot(_year, _ca, public(:,1), public(:,2),'+')
plot(_year, _curine, urine(:,1), urine(:,2),'+')