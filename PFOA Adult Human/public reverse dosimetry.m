%This .m file runs the .csl file and plots CA v. time 

output @clear
prepare @clear @all  % !! prepare t, CA

!! s TSTOP = 876000 % (100 years)
!! s backgrounddw = 0.01
%!! s exposeddw = 0.39	%this concentration predicts the AM measured in public water drinkers
!! s exposeddw = 0.285	%this concentration predicts the GM measured in public water drinkers
!! s BW = 80 % EPA Factors Handbook 2011 (change made 9/13/2014)
!! s kurinec = 3.3e-05
!! s PF = 0.47 %value measured in human cadavers, from Fabrega et al, 2014
!! s PL = 1.03 %value measured in human cadavers, from Fabrega et al, 2014 (change made 9/13/2014)
!! s PK = 1.17 %value measured in human cadavers, from Fabrega et al, 2014 (change made 9/13/2014)
!! s dwtotal = 1.3 % (change made 9/13/2014)
!! st/nc

% plot arimetic and geometric mean PFOA concentration for public water drinkers
public = [60	23.93
60	17.59]

plot(_year, _ca, public(:,1),public(:,2),'+')