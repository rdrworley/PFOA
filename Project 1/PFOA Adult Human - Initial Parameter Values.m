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
!! s Km_baso = 20100.0
!! s Vmax_apical_invitro = 37400.0
!! s Km_apical = 77500.0 
!! s RAFbaso = 1.0
!! s RAFapi = 0.007

!! s protein = 2.0e-6	

!! s GFRC = 24.19	

%Partition Coefficients (from A. Locissano, from rat tissue data, Kudo et al, 2007)
!! s PL = 1.03 
!! s PK = 1.17 
!! s PR = 0.11 
		
%rate constants (1/h)
!! s kdif = 0.001	
!! s kabsc = 2.12	
!! s kunabsc = 7.06e-5	
!! s GEC = 3.5 
!! s k0C = 1.0			
!! s kbilec = 0.004 
!! s kvoid = 0.06974
!! s keffluxc = 0.03	
!! s kurinec = 1.2 

%exposure parameters
!! s exposeddw = 1500
!! s backgrounddw = 0.0 
!! s exposeddw = 3.55 
!! s dwtotal = 1.2 
!! s drinks = 4.0 
!! s tlendw = 0.25 
!! s tbackground = 0.0	
!! s ingest = 0.0
