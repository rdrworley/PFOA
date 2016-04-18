%This .m file runs PFOA one-compartment.csl file with data from 2016 Decatur EI participant #61.  

output @clear
prepare @clear @all
WESTIG=0;WEDITG=0;CJVITG=0;

%Physiological Parameters
!! s BW = 94.26

%Intake Parameters
!! s RintakeC = 0.525			%intake rate (ng/kg BW/hour); estimated from Fromme et al., 2009 (upper estimate of daily PFOA exposure in Western Pops = 12.6 ng/kg BW/day)
%!! s RintakeC = 0.121			%intake rate (ng/kg BW/hour); estimated from Fromme et al., 2009 (average estimate of daily PFOA exposure in Western Pops = 2.9 ng/kg BW/day)

% Ke (/hour) - Fit to individual data
!! s Ke = 0.000317	%fits upper estimate of exposure
%!! s Ke = 0.000073		%fits average estimate of exposure

!! s TSTOP = 438000

%Data for participant #61
serum = [394200, 9.7]

!! st/nc

plot (_t,_cvd, serum(:,1),serum(:,2), '+')