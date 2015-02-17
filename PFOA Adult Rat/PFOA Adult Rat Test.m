%This .m file runs the .csl file 

output @clear
prepare @clear @all
WESTIG=0;WEDITG=0;CJVITG=0;

!! s Vmax_baso_invitro = 393.45	 %averaged in vitro value of OAT1 and OAT3 from Nakagawa, 2007
!! s Vmax_baso_invitro = 423.3	 %averaged in vitro value of OAT1 and OAT3 from Nakagawa, 2007 (average PLUS standard error of mean)
!! s Vmax_baso_invitro = 363.6	 %averaged in vitro value of OAT1 and OAT3 from Nakagawa, 2007 (average MINUS standard error of mean)

!! s Vmax_apical_invitro = 18861.8	%averaged in vitro value of OAT4 and URAT1 from Yang, 2010
!! s Vmax_apical_invitro = 25156.7	%averaged in vitro value of OAT4 and URAT1 from Yang, 2010 (average PLUS standard error of mean)
!! s Vmax_apical_invitro = 12566	%averaged in vitro value of OAT4 and URAT1 from Yang, 2010 (average MINUS standard error of mean)

!! s Km_baso = 37.7	%average of OAT1 and OAT3 from Nakagawa et. al, 2007
!! s Km_baso = 37.7	%average of OAT1 and OAT3 from Nakagawa et. al, 2007 (average PLUS standard error of mean)
!! s Km_baso = 37.7	%average of OAT1 and OAT3 from Nakagawa et. al, 2007 (average MINUS standard error of mean)

!! s Km_apical = 141	%average of OAT4 and URAT1 from Nakagawa et. al, 2007

RAFbaso = 0.01356
RAFapi = 0.01356

!! s TSTOP = 530.0

!! s OdoseC = 1000 !mg/kg BW
!! s IVdoseC = 0.0

!! st/nc

!! display CA, Adif, ACl, A_baso, A_apical, Aefflux, Aurine
plot (_t, _ca)