%Monte Carlo on sensitive parameters and plot results
%Exposure parameters calibrated for Little Hocking exposure scenario 

prepare @clear @all
output @clear

%Turn off Jacobian error writing and write out functions (saves computational time)
WEDIGT = 0.0 ;
WESITG = 0.0 ;
CJVITG = 0.0 ;

%clear matrices before each run
_t1 = [0,0] ;
_cv1 = [0,0] ;
cvsim=[0,0];
cvsimpt = [0];
b=[0];
c=[0];
aa=[0];
totaltime=[0];
Qrapid=[0];
Qrapid1=[0];
Qrapid2=[0];

%define matrices to collect time-course information for plotting

_t1 = [];
_cv1 = [];
cvsim=[];
cvsimpt = [];
b=[];
c=[];
aa=[];
totaltime=[];
Qrapid=[];
Qrapid1=[];
Qrapid2=[];

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
EXPOSEDDW	=	lognrnd(	1.224	,	0.294	,	1.5	,	7.2	);
DRINKTOTAL	=	lognrnd(	0.182	,	0.502	,	0.148	,	3.78	);

start @nocallback
_t1 = [_t1;_t];
_cv1 = [_cv1;_cv];
end

time = [0.05:0.05:24];

for x=1:length(time)
aa =find(_t1(:,1)== time(x));
c=_t1(aa,1);
totaltime=[totaltime,c];
ttime=totaltime';
ttime1=ttime(:, 1);
cv = _cv1(aa,1);
cvsimpt = [cvsimpt, cv];
end

save @file = 'cv.txt' @format=ascii cvsimpt;