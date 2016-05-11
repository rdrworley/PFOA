%This .m file runs PFOA one-compartment.csl file with data from 2016 Decatur EI participant #7.  

output @clear
prepare @clear @all
WESTIG=0;WEDITG=0;CJVITG=0;

%Physiological Parameters
!! s BW = 50.4

%Intake Parameters
%!! s RintakeC = 0.525			%PFOA intake rate (ng/kg BW/hour); estimated from Fromme et al., 2009 (upper estimate of daily PFOA exposure in Western Pops = 12.6 ng/kg BW/day)
%!! s RintakeC = 0.121			%PFOA intake rate (ng/kg BW/hour); estimated from Fromme et al., 2009 (average estimate of daily PFOA exposure in Western Pops = 2.9 ng/kg BW/day)

%!! s RintakeC = 0.367			%PFOS intake rate (ng/kg BW/hour); estimated from Fromme et al., 2009 (upper estimate of daily PFOS exposure in Western Pops = 8.8 ng/kg BW/day)
!! s RintakeC = 0.067			%PFOS intake rate (ng/kg BW/hour); estimated from Fromme et al., 2009 (average estimate of daily PFOS exposure in Western Pops = 1.6 ng/kg BW/day)

% Ke (/hour) - Fit to individual data
%!! s Ke = 0.000283		%fits upper estimate of PFOA exposure
%!! s Ke = 0.000065		%fits average estimate of PFOA exposure

%!! s Ke = 0.0000595		%fits upper estimate of PFOS exposure
!! s Ke = 0.0000108		%fits average estimate of PFOS exposure

%Volume of Distribution
%!! s VdC = 170 	%PFOA, ml/kg, Thomspon, 2009
!! s VdC = 230		%PFOS, ml/kg, Thompson, 2009

!! s TSTOP = 505000

%PFOA Data for participant #7
%serum = [500000, 10.9]

%PFOS Data for participant #7
serum = [500000, 26.8]

!! st/nc

plot (_t,_cvd, serum(:,1),serum(:,2), '+')