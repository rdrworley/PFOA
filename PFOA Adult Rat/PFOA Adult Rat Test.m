%This .m file runs the .csl file 

output @clear
prepare @clear @all
WESTIG=0;WEDITG=0;CJVITG=0;

!! s Vmax_baso_invitro = 393.45	 %averaged in vitro value of OAT1 and OAT3 from Nakagawa, 2007 (initial)
%!! s Vmax_baso_invitro = 423.3	 %averaged in vitro value of OAT1 and OAT3 from Nakagawa, 2007 (uper bound)
%!! s Vmax_baso_invitro = 363.6	 %averaged in vitro value of OAT1 and OAT3 from Nakagawa, 2007 (lower bound)
%!! s Vmax_baso_invitro = 0.0	 %averaged in vitro value of OAT1 and OAT3 from Nakagawa, 2007 (TURNED OFF)

!! s Vmax_apical_invitro = 9300	%invitro value for Oatp1a1 from Weaver, 2010 (initial)
%!! s Vmax_apical_invitro = 10700	%invitro value for Oatp1a1 from Weaver, 2010 (uper bound)
%!! s Vmax_apical_invitro = 7900	%invitro value for Oatp1a1 from Weaver, 2010 (lower bound)
%!! s Vmax_apical_invitro = 0.0	%invitro value for Oatp1a1 from Weaver, 2010 (TURNED OFF)

!! s Km_baso = 27.2	%average of OAT1 and OAT3 from Nakagawa et. al, 2007 (initial)
%!! s Km_baso = 33.3	%average of OAT1 and OAT3 from Nakagawa et. al, 2007 (uper bound)
%!! s Km_baso = 21.0 	%average of OAT1 and OAT3 from Nakagawa et. al, 2007 (lower bound)

!! s Km_apical = 52.3	%invitro value for Oatp1a1 from Weaver, 2010 (initial)
%!! s Km_apical = 62.2	%invitro value for Oatp1a1 from Weaver, 2010 (uper bound)
%!! s Km_apical = 42.4	%invitro value for Oatp1a1 from Weaver, 2010 (lower bound)

RAFbaso = 0.01356
RAFapi = 0.01356

!! s TSTOP = 530.0

!! s OdoseC = 9 !mg/kg BW
!! s IVdoseC = 0.0

!! st/nc

max(_ca)
%max(_ca)/2

!! display  A_baso, A_apical
%plot (_t, _ca)