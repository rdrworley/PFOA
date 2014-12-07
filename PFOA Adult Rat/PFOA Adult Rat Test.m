%This .m file runs the .csl file 

output @clear
prepare @clear @all
WESTIG=0;WEDITG=0;CJVITG=0;

%liver binding parameters (Values from Loccisano PFOS model, Bmax is female values)
!! s Bmax = 0
!! s koff = 0

%kidney parameters
!! s RAFapi = 0.0135600
!! s keffluxc = 100
!! s Vmax_apical_invitro = 0.438351   
!! s Km_apical = 141

!! s TSTOP = 24.0

!! s OdoseC = 10	!mg/kg BW
!! s IVdoseC = 0

!! st/nc

!! display CA, APTC, AKb, Aefflux