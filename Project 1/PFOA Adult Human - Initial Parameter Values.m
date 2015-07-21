output @clear
prepare @clear @all

% Physiological Parameters
!! s BW = 80.0	

% Cardiac Output and Bloodflow 
!! s QCC = 12.5 	 
!! s QLC = 0.25 
!! s QKC = 0.175 
!! s Htc = 0.44 
		
% Tissue Volumes 
!! s VplasC = 0.0428 
!! s VLC = 0.026 
!! s VKC = 0.004 
!! s VfilC = 0.0004	
!! s VPTCC = 1.35e-4 
	
% Chemical Specific Parameters
!! s MW = 414.07	

%Free Fraction of Chemical in Plasma
!! s Free = 0.02
		
%Kidney Transport Parameters
!! s Vmax_baso_invitro = 439.2 
!! s Km_baso = 20100
!! s Vmax_apical_invitro = 9300 
!! s Km_apical = 77500 
!! s RAFbaso = 0.01356	
!! s RAFapical = 0.01356

!! s protein = 2.0e-6	

!! s GFRC = 24.19	

%Partition Coefficients (from A. Locissano, from rat tissue data, Kudo et al, 2007)
!! s PL = 1.03 
!! s PK = 1.17 
!! s PR = 0.11 
		
%rate constants (1/h)
!! s kdif = 0.001	
!! s keffluxc = 2.49	
!! s kurinec = 1.6 

%exposure parameters
!! s exposeddw = 1500
