   %Physiological parameters (Brown, 1997)
   %blood flows
    QCC = 12.5 ;		 %Cardiac blood output (L/h/kg^0.75)
    QFC = 0.052 ;		%Fraction cardiac output going to fat
    QLC = 0.25 ;		 %Fraction cardiac output going to liver
    QKC = 0.175 ;		%Fraction cardiac output going to kidney
   % QfilC = 0.035%0.0875	%Fraction cardiac output to the filtrate compartment (12% of kidney blood flow) ;(20% of kidney blood flow)
    QSKC = 0.058 ;		%Fraction cardiac output going to skin
    QGC = 0.181 ;		 %Fraction cardiac output going to gut

    BW = 70.0 ; %58 ; %70			   %Body weight (kg; male) ;58 kg (female)
    HTC = 0.44 ; %0.44      %hematocrit

   %tissue volumes
    VLC = 0.026 ;		 %Fraction liver volume
    VFC = 0.214 ;		 %Fraction fat volume
    VKC = 0.004 ;		 %Fraction kidney volume
    VFILC = 0.0004 ;	%Fraction filtrate compartment volume (10% of kidney volume)
    VGC = 0.017 ;		 %Fraction gut volume
    VPLASC = 0.0428 ; %Fraction plasma volume 

   %Chemical-specific parameters
   %tissue:plasma partition coefficients (from rat)
    PL = 2.2 ;			%Liver/blood partition coefficient
    PF = 0.04 ;		  %Fat/blood partition coefficient
    PK = 1.05 ;			%Kidney/blood partition coefficient
    PSK = 0.1 ;			%Skin/blood partition coefficient
    PR = 0.12 ;			%Rest of the body/blood partition coefficient
    PG = 0.05 ;      %Gut/blood partition coeff. 
 
    TMC = 8000.0 ;   %resorption maximum (ug/h/kg^0.75) 
                          %8000.0 (3.8 yr half-life)
                          %4835.0 (2.3 yr half-life)

    KT = 55.0 ;		 %affinity  (ug/L)

    FREE = 0.02 ;		%Free fraction of PFOA in plasma

    kURINEC = 0.0003 ;	%urinary elimination rate (1/h)


SKINAREA = 0.0 ;		% Exposed Skin area (cm^2)


%TMC = 387. ;
%FREE = 0.001 ;

PDOSE = 0.0 ;
ODOSE = 0.0 ;
IVDOSE = 0.0 ;
DRINKCONC = 0.0 ;
DRINKCONCHC = 0.0 ;
DRINKRATEHC = 1.5	;

