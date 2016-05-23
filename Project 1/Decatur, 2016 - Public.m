
output @clear
prepare @clear @all
WESTIG=0;WEDITG=0;CJVITG=0;


%Exposure Parameters
!! s BW = 89
!! s ingest = 0.00185
!! s exposeddw = 0.033
!! s tstop = 307000

!! s kvoid = 0.039	%urinary excretion rate calculated from EI data

%Parameters that can be fit to data
!! s K0C = 1.0
!! s KABSC = 2.12
!! s KUNABSC = 7.06e-5

!! s KBILEC = 0
!! s KEFFLUXC = 0.1
!! s KURINEC = 0.12

!! s RAFapi = .0004
!! s RAFbaso = 1.0

!! s Free = 0.005

%Data - Data from 2016 Decatur EI, Public Water Drinkers
public = [15	11.7
25	15.4
25.1	2.7
25.2	4.4
25.3	10.9
25.4	15.6
25.5	14.4
25.6	31.5
25.7	26.6
25.8	30.9
25.9	16.9
26	9.8
26.1	10.1
26.2	29.3
26.3	1.4
26.4	20.1
26.5	10.4
26.6	10
26.7	23.6
26.8	7.9
26.9	12.7
27	42.4
27.1	18.6
27.2	15
27.3	16.4
27.4	12.1
27.5	8.6
27.6	4.7
27.7	12.7
27.8	8.1
27.9	8.5
28	10.3
28.1	14.3
28.2	11.3
28.3	9.8
28.4	5.5
28.5	19.3
28.6	18.8
28.7	6.9
28.8	11.4
28.9	1.9
29	9.7
29.1	7.3
29.2	9.8
29.3	80
29.4	17.7
29.5	52.8
]


!! st/nc

plot(_year, _ca, public(:,1), public(:,2),'+')