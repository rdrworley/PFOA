output @clear
prepare @clear @all
WESTIG=0;WEDITG=0;CJVITG=0;

!! s OdoseC = 1.0	
!! s IVdoseC = 0
!! s TSTOP = 700

% Physiological Parameters
!! s BW = 0.249	
!! s MKC = 0.0084	
!! s MLC = 0.034	

% Cardiac Output and Bloodflow 
!! s QCC = 14.0 	 
!! s QLC = 0.183 
!! s QKC = 0.141 
!! s Htc = 0.46 
		
% Tissue Volumes 
!! s VplasC = 0.0312 
!! s VLC = 0.035 
!! s VKC = 0.0084 
!! s VfilC = 8.4e-4	
!! s VPTCC = 1.35e-4 
	
% Chemical Specific Parameters
!! s MW = 414.07	

%Free Fraction of Chemical in Plasma
!! s Free = 0.006 %male
		
%Kidney Transport Parameters
!! s Vmax_baso_invitro = 393.45 
!! s Km_baso = 27.2 
!! s Vmax_apical_invitro = 9300 
!! s Km_apical = 52.3 
!! s RAFbaso = 0.01356	
!! s RAFapi = 0.01356	

!! s protein = 2.0e-6	

!! s GFRC = 62.1

%Partition Coefficients (from A. Locissano, from rat tissue data, Kudo et al, 2007)
!! s PL = 2.2 
!! s PK = 1.05 
!! s PR = 0.11 
 
%rate constants (1/h)
!! s kdif = 0.001	
!! s kabsc = 2.12 
!! s kunabsc = 7.06e-5
!! s GEC = 0.54 
!! s k0C = 1.0	
		
!! s keffluxc = 2.49	
!! s kbilec = 0.004 
!! s kurinec = 1.6e-3 

!! st/nc

plot(_year, _ca)