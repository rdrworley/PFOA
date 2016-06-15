%Monte Carlo on sensitive parameters and plot results
%Exposure parameters calibrated for Little Hocking exposure scenario 

%!! prepare clear t, bw, gfrc, protein, pl, rafapi, kbile, kurinec, exposeddw, dwtotal 
prepare @clear t ca 
output @clear

CINT = 1.0
TSTOP = 1000.0 

%Turn off Jacobian error writing and write out functions (saves computational time)
WEDIGT = 0.0 ;
WESITG = 0.0 ;
CJVITG = 0.0 ;

%clear matrices before each run
%%%%% for now, we only track simulated concentration curves %%%%%
_t1 = [0,0] ;
_ca1 = [0,0] ;

%define matrices to collect time-course information for plotting
%%%%% I deleted the others %%%%%

_t1 = [];
_ca1 = [];

%For loop to iterate run multiple times 

NUMIT =1000;			%number of iterations

for x = 1:NUMIT

% Physiological parameters       										
BW 	=	normrnd(	82.3	,	26.400	,	30.6	,	134	);
GFRC	=	normrnd(	24.19	,	7.257	,	9.96628	,	38.41372	);
PROTEIN	=	normrnd(	2.00E-06	,	0.000001	,	0.000000824	,	0.000003176	);
										
%Chemical-specific parameters for PFOA										
PL	=	lognrnd(	0.010	,	0.198	,	0.62624	,	1.43376	);
RAFAPI	=	lognrnd(	-7.308	,	0.294	,	0.000288	,	0.0011116	);
KBILE	=	lognrnd(	-9.253	,	0.294	,	0.0000412	,	0.0001588	);
KURINEC	=	lognrnd(	-2.681	,	0.294	,	0.029458	,	0.113542	);
										
%Little Hocking Exposure Parameters										
%EXPOSEDDW	=	lognrnd(	1.224	,	0.294	,	1.5	,	7.2	);
%DWTOTAL	=	lognrnd(	0.182	,	0.502	,	0.148	,	3.78	);

start @nocallback

%%%%% Make sure _cv is the same as your model output %%%%% CHANGED TO CA TO CORRESPOND TO .CSL
_t1 = [_t1,_t];
_ca1 = [_ca1,_ca];
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
aamean = mean(_ca1')';
aastddev  = std(_ca1')';
plot(_t, aamean, _t, aamean + 2*aastddev, _t, aamean - 2*aastddev, 'camean.aps');


%Plot all runs on single plot
plot(_t1,_ca1, 'catotal.aps');

%%%%%% in order to calculate 5th and 95th, we have to export all the concentration data to excel or matlab %%%%%%
save @file = 'littlehocking.txt' @format = ascii _ca1;



