%This .m file runs PFOA one-compartment.csl file with data from 2016 Decatur EI participant #6.  
% PFOS NOT INCLUDED BECAUSE URINE CONC = ND

output @clear
prepare @clear @all
WESTIG=0;WEDITG=0;CJVITG=0;

%Physiological Parameters
!! s BW = 99.4

%Intake Parameters
!! s RintakeC = 0.525			%PFOA intake rate (ng/kg BW/hour); estimated from Fromme et al., 2009 (upper estimate of daily PFOA exposure in Western Pops = 12.6 ng/kg BW/day)
%!! s RintakeC = 0.121			%PFOA intake rate (ng/kg BW/hour); estimated from Fromme et al., 2009 (average estimate of daily PFOA exposure in Western Pops = 2.9 ng/kg BW/day)

% Ke (/hour) - Fit to individual data
!! s Ke = 0.0007		%fits upper estimate of PFOA exposure
%!! s Ke = 0.000161		%fits average estimate of PFOA exposure

%Volume of Distribution
!! s VdC = 170 	%PFOA, ml/kg, Thomspon, 2009

!! s TSTOP = 175200

%PFOA Data for participant #6
serum = [87600, 4.4]

!! st/nc

plot (_t,_cvd, serum(:,1),serum(:,2), '+')