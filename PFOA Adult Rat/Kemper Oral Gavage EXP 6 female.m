%This .m file runs the .csl file and overlays data from the Kemper, 2003 oral gavage Experiment 6.

output @clear
prepare @clear @all

%Potentially Sex-specific Parameters
!! s K0C = 1.0
!! s KABS = 3.0
!! s KUNABS = 0.0001

!! s KBILEC = 0.004	%Locissano uses 0.25, fit to data
!! s KEFFLUXC = 10
!! s KURINEC = 1.6	%Locissano uses 0.32, fit to data

%Kidney Transport Parameters
!! s Vmax_baso_invitro = 393.45 %Vmax of basolateral transporter (pmol/mg protein/min); averaged in vitro value of OAT1 and OAT3 from Nakagawa, 2007
!! s Km_baso = 27.2 %Km of basolateral transporter (ug/mL) Average of OAT1 and OAT3 from Nakagawa et. al, 2007
!! s Vmax_apical_invitro = 9300 %Vmax of apical transporter (pmol/mg protein/min); invitro value for Oatp1a1 from Weaver, 2010
!! s Km_apical = 52.3 %Km of apical transporter (ug/mL), in vitro value for Oatp1a1 from Weaver, 2010.
!! s RAFbaso = 0.01356	%relative activity factor, basolateral transporters (averaged from OAT1 and OAT3 in Yamada, 2007)
!! s RAFapi = 0.0001356	%relative activity factor, apical transporters (NEED VALUE - current value is copied from RAF for baso)
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