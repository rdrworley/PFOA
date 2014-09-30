%This .m file runs the .csl file and plots CA v. time 

output @clear
prepare @clear @all  % !! prepare t, CA

!! s TSTOP = 438000
!! s exposeddw = 2.2
!! s BW = 70
!! s kurinec = 1.0e-5
!! s PF = 0.47
!! s backgrounddw = 3.55

!! st/nc

nhanes = []

redcross = []


plot(_year, _ca, nhanes(:,1),nhanes(:,2),'+', redcross(:,1),redcross(:,2),'+')
