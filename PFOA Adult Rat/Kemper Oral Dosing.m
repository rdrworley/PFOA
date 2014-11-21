%This .m file runs the .csl file and overlays data from the Kemper, 2003 oral gavage experiments.

output @clear
prepare @clear @all

!! s TSTOP = 24

%liver binding parameters
!! s Bmax = 1
!! s Kb = 1
!! s koff = 1

%kidney parameters
!! s keffluxc = 0.1

!! st/nc

%Experiment 1: 1 mg/kg administered via single oral dose. Whole blood and tisuses collected at sacrifice (672 hours - male, 168 hours - female)
!! s BW = 0.233	%MALE
%!! s BW = 0.175	%FEMALE
!! s OdoseC = 1
!! s IVdoseC = 0

one_male_blood = [672	
one_female_blood = [168
plot(_year, _ca, one_male_blood(:,1), one_male_blood(:,2),'+')
plot(_year, _ca, one_female_blood(:,1), one_female_blood(:,2),'+')

%Experiment 2: 5 mg/kg administered via single oral dose. Whole blood and tisuses collected at sacrifice (672 hours - male, 168 hours - female)
%!! s BW = 0.198	%MALE
%!! s BW = 0.200	%FEMALE
%!! s OdoseC = 5
%!! s IVdoseC = 0

%two_male_blood = [672	
%two_female_blood = [168
%plot(_year, _ca, two_male_blood(:,1), two_male_blood(:,2),'+')
%plot(_year, _ca, two_female_blood(:,1), two_female_blood(:,2),'+')

%Experiment 3: 25 mg/kg administered via single oral dose. Whole blood and tisuses collected at sacrifice (672 hours - male, 168 hours - female)
%!! s BW = 0.198	%MALE
%!! s BW = 0.200	%FEMALE
%!! s OdoseC = 25
%!! s IVdoseC = 0

%three_male_blood = [672	
%three_female_blood = [168
%plot(_year, _ca, three_male_blood(:,1), three_male_blood(:,2),'+')
%plot(_year, _ca, three_female_blood(:,1), three_female_blood(:,2),'+')


%Experiment 5: 0.1 mg/kg administered via single oral dose. Whole blood collected from males at pre-dose, and 0.25, 0.5, 1,2,4,8, 12,16, 24 hours post-dose, 
%and at 24-hour intervals through 192 hours. Whole blood collected from females at pre-dose, and at 0.25, 0.5, 1, 2, 4, 8, 16, 24, 36, 48, 72, and 96 hours 
%post dose.

%Experiment 6: 1 mg/kg administered via single oral dose. Whole blood collected from males at pre-dose, and 0.25, 0.5, 1,2,4,8, 12,16, 24 hours post-dose, 
%and at 24-hour intervals through 192 hours. Whole blood collected from females at pre-dose, and at 0.25, 0.5, 1, 2, 4, 8, 16, 24, 36, 48, 72, and 96 hours 
%post dose.   

%Experiment 7: 5 mg/kg administered via single oral dose. Whole blood collected from males at pre-dose, and 0.25, 0.5, 1,2,4,8, 12,16, 24 hours post-dose, 
%and at 24-hour intervals through 192 hours. Whole blood collected from females at pre-dose, and at 0.25, 0.5, 1, 2, 4, 8, 16, 24, 36, 48, 72, and 96 hours 
%post dose.

% Experiment 8: 25 mg/kg administered via single oral dose. Whole blood collected from males at pre-dose, and 0.25, 0.5, 1,2,4,8, 12,16, 24 hours post-dose, 
%and at 24-hour intervals through 192 hours. Whole blood collected from females at pre-dose, and at 0.25, 0.5, 1, 2, 4, 8, 16, 24, 36, 48, 72, and 96 hours 
%post dose.

%Experiment 10: 1 mg/kg administered via single oral dose. Whole blood and tissues collected from males at Tmax (10.5 hours) and Tmax/2 (171 hours). Whole 
%blood and tissues collected from females at Tmax (1.25 hours) and Tmax/2 (4 hours).  

%Experiment 11: 5 mg/kg administered via single oral dose. Whole blood and tissues collected from males at Tmax (10.5 hours) and Tmax/2 (171 hours). Whole 
%blood and tissues collected from females at Tmax (1.25 hours) and Tmax/2 (4 hours).  

%Experiment 12: 5 mg/kg administered via single oral dose. Whole blood and tissues collected from males at Tmax (10.5 hours) and Tmax/2 (171 hours). Whole 
%blood and tissues collected from females at Tmax (1.25 hours) and Tmax/2 (4 hours).  