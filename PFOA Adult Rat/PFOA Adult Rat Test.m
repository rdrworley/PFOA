%This .m file runs the .csl file 

output @clear
prepare @clear @all
WESTIG=0;WEDITG=0;CJVITG=0;

%liver binding parameters (Values from Loccisano PFOS model, Bmax is female values)
!! s Bmax = 0
!! s koff = 0
!! s kbilec = 0.004
!! s kabs = 3.0
!! s kunabs = 0.0001
!! s k0c = 1.0
!! s GEC = 0.54

%kidney parameters
!! s keffluxc = 10
!! s kurinec = 1.6

%GI Tract Parameters
!! s GEC = 0.54

%IV dosing parameters
!! s IVTime = 0.1


!! s TSTOP = 1.0

!! s OdoseC = 1.0e-33	!mg/kg BW
!! s IVdoseC = 1.0

!! st/nc

!! display CA, RPlas_free, Aplas_free, CA_free, QR, CVR, QK, CVK, QL, CVL, QC, Atissue, Aloss, Atotal, AIV
