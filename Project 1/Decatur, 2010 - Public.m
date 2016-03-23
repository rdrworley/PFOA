%This .m file runs the .csl file and overlays data from public water drinkers in the 2010 ATSDR Decatur EI. Samples collected in 2010. 
%GM of public water drinkers in Decatur, from 2010 study = 17.59 ug/L
%AM of public water drinkers in Decatur, from 2010 study = 23.93 ug/L

output @clear
prepare @clear @all
WESTIG=0;WEDITG=0;CJVITG=0;


%Exposure Parameters
!! s BW = 89
!! s ingest = 0.0056
!! s exposeddw = 0.4
!! s tstop = 307000

%Parameters that can be fit to data
!! s K0C = 1.0
!! s KABSC = 2.12
!! s KUNABSC = 7.06e-5

!! s KBILEC = 0
!! s KEFFLUXC = 0.03
!! s KURINEC = 1.2

!! s RAFapi = .008
!! s RAFbaso = 1.0

%Data - Data from 2010 Decatur EI, Public Water Drinkers
public = [35	16.87599
35	23.11953
20	38.9
20.1	11.3
20.2	11
20.3	14.3
20.4	18.1
20.5	8.1
20.6	27.2
20.7	4.1
20.8	44.3
20.9	45.5
21	4.7
21.1	5.8
21.2	9
21.3	5.8
21.4	34.3
21.5	12.6
21.6	67.7
21.7	13.4
21.8	46.9
21.9	16.8
22	64.7
22.1	78.8
22.2	27.5
22.3	10.4
22.4	4.3
22.5	25.7
22.6	44.7
22.7	61.1
22.8	22.8
22.9	3.5
23	41.3
23.1	19.6
23.2	6.6
23.3	13.4
23.4	41.9
23.5	10.9
23.6	10.4
23.7	8.6
23.8	14.2
23.9	3.2
24	5.5
24.1	20.7
24.2	47.4
24.3	58.5
24.4	47.5
24.5	25.2
24.6	22.2
24.7	13
24.8	18.6
24.9	23.4
25	6.7
25.1	13.1
25.2	18.7
25.3	28.4
25.4	35.3
25.5	18.7
25.6	10.4
25.7	2.3
25.8	17.5
25.9	41
26	16.7
26.1	36.3
26.2	7.6
26.3	21.8
26.4	2.4
26.5	37.2
26.6	12.6
26.7	47.7
26.8	19.4
26.9	17.9
27	14.1
27.1	28.4
27.2	33.4
27.3	9.3
27.4	51.2
27.5	47.6
27.6	39.4
27.7	41.3
27.8	35.7
27.9	18.8
28	26.4
28.1	48.7
28.2	6.4
28.3	42.7
28.4	2.2
28.5	49.1
28.6	28.6
28.7	17.8
28.8	9
28.9	56.8
29	12.6
29.1	8.8
29.2	65.9
29.3	29.6
29.4	10.9
29.5	17.6
29.6	14.4
29.7	7.7
29.8	6.2
29.9	13
30	27.3
30.1	7.3
30.2	43.2
30.3	22.8
30.4	15.5
30.5	15.6
30.6	18.7
30.7	46.1
30.8	51
30.9	6.8
31	10.6
31.1	11.9
31.2	4
31.3	16.6
31.4	15.7
31.5	7.9
31.6	14.1
31.7	13.9
31.8	5.3
31.9	3.6
32	6.1
32.1	6.1
32.2	3.9
32.3	25.9
32.4	60.1
32.5	6.4
32.6	16.1
32.7	36.1]






!! st/nc

plot(_year, _ca, public(:,1), public(:,2),'+')
