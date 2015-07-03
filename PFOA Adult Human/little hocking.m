%This .m file runs the .csl file and plots CA v. time 

output @clear
prepare @clear @all  % !! prepare t, CA

!! s TSTOP = 332880 % (38 years)
!! s backgrounddw = 3.55
!! s exposeddw = 2.2
!! s BW = 80
!! s kurinec = 3.3e-05
!! s PF = 0.47 %value measured in human cadavers, from Fabrega et al, 2014
!! s PL = 1.03 %value measured in human cadavers, from Fabrega et al, 2014 (change made 9/13/2014)
!! s PK = 1.17 %value measured in human cadavers, from Fabrega et al, 2014 (change made 9/13/2014)

!! s dwtotal = 1.3 % (change made 9/13/2014)

!! st/nc

bartell = [30	91
30	424
30	757]

steenland = [32	130
32	227
32	318]

emmett = [34	221
34	374
34	448
34	576]
% 373 is median, 447 is mean

lhwa = [36	147
36	343
36	540]

plot(_year, _ca, steenland(:,1),steenland(:,2),'+', bartell(:,1),bartell(:,2),'+', emmett(:,1),emmett(:,2),'+', lhwa(:,1), lhwa(:,2),'+')
