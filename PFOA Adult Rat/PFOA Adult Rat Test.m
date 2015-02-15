%This .m file runs the .csl file 

output @clear
prepare @clear @all
WESTIG=0;WEDITG=0;CJVITG=0;

!! s Vmax_baso_invitro = 393.45
!! s Vmax_apical = 18861.8
!! s Km_baso = 37.7
!! s Km_apical = 141
RAFbaso = 0.01356
RAFapi = 0.01356

!! s TSTOP = 530.0

!! s OdoseC = 2000 !mg/kg BW
!! s IVdoseC = 0.0

!! st/nc

!! display CA, Adif, ACl, A_baso, A_apical, Aefflux, Aurine
