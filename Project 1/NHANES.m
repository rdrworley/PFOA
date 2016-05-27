%This .m file runs the .csl file and overlays data from NHANES 2007-2008
%NHANES 07-08: Total = 4.12 ug/L
%NHANES 09-10: Total = 3.07 ug/L
%NHANES 11-12" Total = 2.1 ug/L

output @clear
prepare @clear @all
WESTIG=0;WEDITG=0;CJVITG=0;

%Exposure Parameters
%!! s ingest = 0.0096	%background ingestion to acheive serum from 07-08
%!! s ingest = 0.0056	%background ingestion to acheive serum from 09-10 (has not been adjusted based on new parameter values 5/27/2016)
!! s ingest = 0.00151	%background ingestion to acheive serum from 11-12
!! s exposeddw = 0.0
!! s tstop = 262800.0

%Parameters that can be fit to data
!! s K0C = 1.0
!! s KABSC = 2.12
!! s KUNABSC = 7.06e-5

!! s KBILEC = 0.0001
!! s KEFFLUXC = 0.1
!! s KURINEC = 0.077

!! s RAFapi = .0007
!! s RAFbaso = 1.0

!! s Free = 0.005

%Data (paired blood and urine data from Zhang, 2013; all units in ug/L)
NHANES_0708_blood = [28	4.12]
NHANES_0910_blood = [28	3.07]
NHANES_1112_blood = [28	2.1]

!! st/nc

plot(_year, _ca, NHANES_0708_blood(:,1), NHANES_0708_blood(:, 2), '+')
%plot(_year, _ca, NHANES_0910_blood(:,1), NHANES_0910_blood(:, 2), '+')
%plot(_year, _ca, NHANES_1112_blood(:,1), NHANES_1112_blood(:, 2), '+')
