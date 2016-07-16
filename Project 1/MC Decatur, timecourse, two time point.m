%Monte Carlo on sensitive parameters and plot results
%Exposure parameters calibrated for Decatur exposure scenario 

%!! prepare clear t, bw, gfrc, protein, pl, rafapi, kbile, kurinec, exposeddw, dwtotal 
prepare @clear t ca 
output @clear

CINT =  10000
TSTOP = 525600

%Turn off Jacobian error writing and write out functions (saves computational time)
WEDIGT = 0.0 ;
WESITG = 0.0 ;
CJVITG = 0.0 ;

%clear matrices before each run
%%%%% for now, we only track simulated concentration curves %%%%%
%_t1 = [0,0] ;
%_ca1 = [0,0] ;

%define matrices to collect time-course information for plotting
%%%%% I deleted the others %%%%%

%_t1 = [];
%_ca1 = [];

data1 =[];
data2 = [];

%For loop to iterate run multiple times 

NUMIT = 1000;			%number of iterations

for x = 1:NUMIT

% Physiological parameters       										
BW 	=	normrnd(	89.0	,	26.400	,	51	,	137	);
GFRC	=	normrnd(	24.19	,	7.257	,	9.96628	,	38.41372	);
PROTEIN	=	normrnd(	0.000002	,	0.000001	,	0.0000008	,	0.000003176	);
VLC 	=	normrnd(	0.000002	,	0.007800	,	0.010712	,	0.041288	);
VFILC	=	normrnd(	0.000002	,	0.000120	,	0.0001648	,	0.0006352	);
										
%Chemical-specific parameters for PFOA										
PL	=	lognrnd(	0.010	,	0.198	,	0.62624	,	1.43376	);
VMAX_APICAL_INVITRO	=	lognrnd(	10.476	,	0.325	,	12900	,	61900	);
KM_APICAL	=	lognrnd(	11.245	,	0.161	,	52882.53598	,	102145.272	);
RAFAPI	=	lognrnd(	-7.308	,	0.294	,	0.000288	,	0.0011116	);
KBILEC	=	lognrnd(	-9.253	,	0.294	,	0.0000412	,	0.0001588	);
KURINEC	=	lognrnd(	-2.681	,	0.294	,	0.029458	,	0.113542	);
FREE	=	lognrnd(	-3.955	,	0.294	,	0.00824	,	0.03176	);
										
%Decatur Exposure Parameters										
EXPOSEDDW	=	lognrnd(	-3.262	,	0.294	,	1E-34	,	0.16	);
DWTOTAL	=	lognrnd(	0.182	,	0.502	,	0.148	,	3.78	);
INGEST_PAST	=	lognrnd(	-5.283	,	0.294	,	0.0002	,	0.014	);

start @nocallback

%%%%% Make sure _cv is the same as your model output %%%%% CHANGED TO CA TO CORRESPOND TO .CSL
%_t1 = [_t1,_t];
%_ca1 = [_ca1,_ca];

casim = [_t, _ca];
time1 = 438000
time2 = 488400

aa = find(casim(:,1) == time1);
con1 = casim(aa, 2);
data1 = [data1, con1];

bb = find(casim(:,1) == time2);
con2 = casim(bb, 2);
data2 = [data2, con2];

end

%%%%% we don't need the following; so I crossed them out %%%%%%
%time = [0.05:0.05:24];

%for x=1:length(time)
%aa =find(_t1(:,1)== time(x));
%c=_t1(aa,1);
%totaltime=[totaltime,c];
%ttime=totaltime';
%ttime1=ttime(:, 1);
%cv = _cv1(aa,1);
%cvsimpt = [cvsimpt, cv];
%end

%save @file = 'cv.txt' @format=ascii cvsimpt; 

%%%%% Below is to plot all the simulated curves %%%%%%

%Plot mean +/- 2 standard deviations
%aamean = mean(_ca1')';
%aastddev  = std(_ca1')';
%plot(_t, aamean, _t, aamean + 2*aastddev, _t, aamean - 2*aastddev, 'camean.aps');


%Plot all runs on single plot
%plot(_t1,_ca1, 'catotal.aps');

%%%%%% in order to calculate 5th and 95th, we have to export all the concentration data to excel or matlab %%%%%%
%save @file = 'decatur.txt' @format = ascii _ca1;


data1mean = mean(data1)
data1sd = std(data1)
data2mean = mean(data2)
data2sd = std(data2)
save @file = 'data1.txt' @format=ascii data1; 
save @file = 'data2.txt' @format=ascii data2; 

