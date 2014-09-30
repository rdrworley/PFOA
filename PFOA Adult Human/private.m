%This .m file runs the .csl file and plots CA v. time 

output @clear
prepare @clear @all  % !! prepare t, CA

!! s TSTOP = 876000
!! s exposeddw = 2.2
!! s BW = 70
!! s kurinec = 3.3e-5
!! s PF = 0.47

!! st/nc

private = [42	144
43	63.4
44	74.1
45	15.3
46	9.0
47	7.6
48	36.8
49	30.8]


plot(_year, _ca, private(:,1),private(:,2),'+')