%This .m file runs the .csl file and overlays data reported in Bartell et al, Fig 2a 
%Steenland samples collected in 07-08.

output @clear
prepare @clear @all
%prepare @clear t ca 
WESTIG=0;WEDITG=0;CJVITG=0;

%Exposure Parameters
!! s ingest_current = 0.01
!! s ingest_past = 0.01
!! s exposeddw = 0.0
!! s backgrounddw = 0.41
!! s tbackground = 263530	%30 years, 1 months, to correspond to time at which GAC was implemented
!! s tstop = 438000

%Parameters that can be fit to data
!! s K0C = 1.0
!! s KABSC = 2.12
!! s KUNABSC = 7.06e-5

!! s KBILEC = 0.0001
!! s KEFFLUXC = 0.1
!! s KURINEC = 0.063

!! s RAFapi = .0007
!! s RAFbaso = 1.0

!! s Free = 0.02

%Data (serum concentrations reported in ug/L)
% Bartell is mean +/-SD
bartell = [30	42.69598728
30	206.342007
30	350.9272255
30	482.6082149
30	1371.405503

30.08	40.48779443
30.08	169.8335675
30.08	310.0298664
30.08	418.88377
30.08	1169.437629

30.16	42.69598728
30.16	163.9261497
30.16	321.2024338
30.16	465.8213783
30.16	1070.382078

30.24	48.32819666
30.24	169.8335675
30.24	350.9272255
30.24	449.6184477
30.24	1169.437629

30.5	49.19129287
30.5	158.224213
30.5	299.2459208
30.5	433.9791129
30.5	1148.919014

31.0	40.48779443
31.0	142.2810501
31.0	264.3715453
31.0	376.6757408
31.0	880.9975706
]

!! st/nc

%plot(_year, _ca, bartell(:,1),bartell(:,2),'+')

plot(_year, _ca)
%plot(_year, _curine)