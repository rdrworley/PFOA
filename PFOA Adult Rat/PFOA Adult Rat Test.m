%This .m file runs the .csl file 

output @clear
prepare @clear @all
WESTIG=0;WEDITG=0;CJVITG=0;

%liver binding parameters (Values from Loccisano PFOS model, Bmax is female values)
!! s Bmax = 0
!! s koff = 0
!! s kbilec = 0.004
!! s kabs = 35.0
!! s kunabs = 0.0001
!! s k0c = 1.0e-33
!! s GEC = 0.54

%kidney parameters
!! s keffluxc = 10
!! s kurinec = 1.3

%GI Tract Parameters
!! s GEC = 0.54

!! s TSTOP = 0.25

!! s OdoseC = 10	!mg/kg BW
!! s IVdoseC = 0

!! st/nc

!! display total_oral_uptake, AabsSI, AabsST