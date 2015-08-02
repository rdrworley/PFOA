%This .m file runs the .csl file and overlays data from the Kemper, 2003 oral gavage Experiment 6.

output @clear
prepare @clear @all
WESTIG=0;WEDITG=0;CJVITG=0;

% Physiological Parameters
!! s BW = 80	%human
!! s MKC = 0.0044	%human
!! s MLC = 0.0257	%human	

% Cardiac Output and Bloodflow 
!! s QCC = 12.5	%human 	 
!! s QLC = 0.25	%human 
!! s QKC = 0.175	%human 
!! s Htc = 0.44	%human
		
% Tissue Volumes 
!! s VplasC = 0.0428	%human
!! s VLC = 0.026	%human 
!! s VKC = 0.004	%human
!! s VfilC = 0.0004	%human	
!! s VPTCC = 1.35e-4	%human

% Chemical Specific Parameters
!! s MW = 414.07	%human

%Free Fraction of Chemical in Plasma
!! s Free = 0.02	%human
		
%Kidney Transport Parameters
!! s Vmax_baso_invitro = 439.2	%human 
!! s Km_baso = 20100	%human
!! s Vmax_apical_invitro = 37400	%human 
!! s Km_apical = 77500	%human 
!! s RAFbaso = 0.01356	%human	
!! s RAFapi = 0.01356	%human

!! s protein = 2.0e-6	%human

!! s GFRC = 24.19	%human

%Partition Coefficients (from A. Locissano, from rat tissue data, Kudo et al, 2007)
!! s PL = 1.03	%human 
!! s PK = 1.17	%human
!! s PR = 0.11	%human

%rate constants (1/h)
!! s kdif = 0.001	%human
!! s kabsc = 2.12	%human
!! s kunabsc = 7.06e-5	%human
!! s GEC = 3.5	%human
!! s k0C = 1.0	%human
		
!! s keffluxc = 2.49	%human
!! s kbilec = 0.004 %human
!! s kurinec = 1.6	%human

%Experiment 6: 1 mg/kg administered via single oral dose. Whole blood collected from males at pre-dose, and 0.25, 0.5, 1,2,4,8, 12,16, 24 hours post-dose, 
%and at 24-hour intervals through 192 hours. Whole blood collected from females at pre-dose, and at 0.25, 0.5, 1, 2, 4, 8, 16, 24, 36, 48, 72, and 96 hours 
%post dose.   

!! s TSTOP = 700	!MALE

!! s OdoseC = 1.0	!mg/kg BW
!! s IVdoseC = 0

!! st/nc

plot(_t, _ca)