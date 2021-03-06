
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>
#include <string>
#include "AcslSimRuntimeAPI.h"

void zzinitialize(unsigned long);
void zzsimulation(unsigned long);
void zzderivative(unsigned long, unsigned long);

typedef struct 
{
double t;
double adrinkdose;
double adrinkdose2;
double al;
double af;
double ar;
double as;
double ak;
double aurine;
double aplas;
double z99999;
double z99997;
double z99995;
double z99993;
double z99991;
double z99989;
double z99987;
double z99985;
double z99983;
double z99998;
double z99996;
double z99994;
double z99992;
double z99990;
double z99988;
double z99986;
double z99984;
double z99982;
double qcc;
double qlc;
double qfc;
double qkc;
double bw;
double vlc;
double vfc;
double vkc;
double vplasc;
double htc;
double tmc;
double kt;
double free;
double pl;
double pf;
double pk;
double pr;
double ps;
double tstart;
double countdw;
double hourofday;
double dayofweek;
double backgrounddw;
double exposeddw;
double dwtotal;
double drinks;
double tlendw;
double kurinec;
double qc;
double qcp;
double ql;
double qf;
double qk;
double qr;
double qs;
double qbal;
double vl;
double vf;
double vk;
double vplas;
double vr;
double vs;
double vbal;
double vd;
double tm;
double kurine;
double day;
double year;
double c2;
double drinkdose;
double rl;
double ca;
double cvl;
double cl;
double rf;
double cvf;
double cf;
double rr;
double cvr;
double cr;
double rs;
double cvs;
double cs;
double rk;
double cvk;
double rurine;
double ck;
double rplas;
double tstop;
double cint;
long ialg;
long nstp;
double maxt;
double mint;
bool zzierr;
bool zzstopflag;
bool zzrnfl;
long zznist;
long zznblk;
bool zzfrfl;
bool zzjefl;
long zzndst;
long zzicon;
bool zzicfl;
long zznavr;
long zzinstidx;
bool zzstepstop;
long nciout;
long cioitg;
bool cjvitg;
double cssitg;
bool dpsitg;
bool ecsitg;
bool fdeitg;
long mxoitg;
bool nrwitg;
bool nxeitg;
double tjnitg;
bool tsmitg;
bool weditg;
bool wesitg;
bool wnditg;
bool wxditg;
bool cieitg;
long ubwitg;
long lbwitg;
long omfitg;
long cmd;
long dis;
long ndbug;
long plt;
long prn;
long malprn;
long rrr;
long save;
double zzticg;

} SimImpl;
SimImpl zzsim = 
{
0.0,
5.5555E+33,
5.5555E+33,
5.5555E+33,
5.5555E+33,
5.5555E+33,
5.5555E+33,
5.5555E+33,
5.5555E+33,
5.5555E+33,
5.5555E+33,
5.5555E+33,
5.5555E+33,
5.5555E+33,
5.5555E+33,
5.5555E+33,
5.5555E+33,
5.5555E+33,
5.5555E+33,
5.5555E+33,
5.5555E+33,
5.5555E+33,
5.5555E+33,
5.5555E+33,
5.5555E+33,
5.5555E+33,
5.5555E+33,
5.5555E+33,
15,
0.227,
0.052,
0.175,
80,
0.0257,
0.2142,
0.0044,
0.0428,
0.44,
10,
0.055,
0.02,
2.2,
0.04,
1.05,
0.04,
0.04,
0.0,
5.5555E+33,
5.5555E+33,
5.5555E+33,
0.01,
2.2,
1.2,
4,
0.25,
1.0e-5,
5.5555E+33,
5.5555E+33,
5.5555E+33,
5.5555E+33,
5.5555E+33,
5.5555E+33,
5.5555E+33,
5.5555E+33,
5.5555E+33,
5.5555E+33,
5.5555E+33,
5.5555E+33,
5.5555E+33,
5.5555E+33,
5.5555E+33,
5.5555E+33,
5.5555E+33,
5.5555E+33,
5.5555E+33,
5.5555E+33,
4.0,
5.5555E+33,
5.5555E+33,
5.5555E+33,
5.5555E+33,
5.5555E+33,
5.5555E+33,
5.5555E+33,
5.5555E+33,
5.5555E+33,
5.5555E+33,
5.5555E+33,
5.5555E+33,
5.5555E+33,
5.5555E+33,
5.5555E+33,
5.5555E+33,
5.5555E+33,
5.5555E+33,
5.5555E+33,
481800,
1,
2,
10,
1.0e9,
1.0e-9,
false,
false,
false,
2,
1,
false,
false,
0,
0,
false,
0,
0,
false,
1,
55555555,
true,
5.5555E+33,
true,
false,
false,
6,
false,
false,
0.2,
false,
true,
true,
false,
false,
true,
-1,
-1,
222,
4,
6,
0,
6,
9,
10,
8,
3,
0.0,

};

void AcslSimMain()
{

	AcslSimSetSystemInfo(144,// numSymbols
	9, // numOdeStates
	0, // numDaeStates
	0, // numDelayStates
	69,// numAlgebraicVars
	1, // numDerivativeSections
	4, // numDiscreteSections
	zzinitialize,
	zzsimulation,
	zzderivative,
	0);



#ifndef TRUE
  #define TRUE true
#endif
#ifndef FALSE
  #define FALSE false
#endif

AcslSimSetVariableDescriptor(1,"t",ACSL_DATATYPE_DOUBLE,ACSL_SYMBOLTYPE_VARIABLE,0,0,0,0,0,0,-1,-1);
AcslSimSetVariableExtendedInfo(1,FALSE,FALSE,FALSE,TRUE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE, FALSE, 0, 0);

AcslSimSetVariableDescriptor(2,"adrinkdose",ACSL_DATATYPE_DOUBLE,ACSL_SYMBOLTYPE_STATE,0,0,0,0,0,0,-1,-1);
AcslSimSetVariableExtendedInfo(2,FALSE,FALSE,FALSE,FALSE,TRUE,FALSE,FALSE,FALSE,FALSE,FALSE, FALSE, 0, 0);

AcslSimSetVariableDescriptor(3,"adrinkdose2",ACSL_DATATYPE_DOUBLE,ACSL_SYMBOLTYPE_STATE,0,0,0,0,0,0,-1,-1);
AcslSimSetVariableExtendedInfo(3,FALSE,FALSE,FALSE,FALSE,TRUE,FALSE,FALSE,FALSE,FALSE,FALSE, FALSE, 0, 0);

AcslSimSetVariableDescriptor(4,"al",ACSL_DATATYPE_DOUBLE,ACSL_SYMBOLTYPE_STATE,0,0,0,0,0,0,-1,-1);
AcslSimSetVariableExtendedInfo(4,FALSE,FALSE,FALSE,TRUE,TRUE,FALSE,FALSE,FALSE,FALSE,FALSE, FALSE, 0, 0);

AcslSimSetVariableDescriptor(5,"af",ACSL_DATATYPE_DOUBLE,ACSL_SYMBOLTYPE_STATE,0,0,0,0,0,0,-1,-1);
AcslSimSetVariableExtendedInfo(5,FALSE,FALSE,FALSE,TRUE,TRUE,FALSE,FALSE,FALSE,FALSE,FALSE, FALSE, 0, 0);

AcslSimSetVariableDescriptor(6,"ar",ACSL_DATATYPE_DOUBLE,ACSL_SYMBOLTYPE_STATE,0,0,0,0,0,0,-1,-1);
AcslSimSetVariableExtendedInfo(6,FALSE,FALSE,FALSE,TRUE,TRUE,FALSE,FALSE,FALSE,FALSE,FALSE, FALSE, 0, 0);

AcslSimSetVariableDescriptor(7,"as",ACSL_DATATYPE_DOUBLE,ACSL_SYMBOLTYPE_STATE,0,0,0,0,0,0,-1,-1);
AcslSimSetVariableExtendedInfo(7,FALSE,FALSE,FALSE,TRUE,TRUE,FALSE,FALSE,FALSE,FALSE,FALSE, FALSE, 0, 0);

AcslSimSetVariableDescriptor(8,"ak",ACSL_DATATYPE_DOUBLE,ACSL_SYMBOLTYPE_STATE,0,0,0,0,0,0,-1,-1);
AcslSimSetVariableExtendedInfo(8,FALSE,FALSE,FALSE,TRUE,TRUE,FALSE,FALSE,FALSE,FALSE,FALSE, FALSE, 0, 0);

AcslSimSetVariableDescriptor(9,"aurine",ACSL_DATATYPE_DOUBLE,ACSL_SYMBOLTYPE_STATE,0,0,0,0,0,0,-1,-1);
AcslSimSetVariableExtendedInfo(9,FALSE,FALSE,FALSE,FALSE,TRUE,FALSE,FALSE,FALSE,FALSE,FALSE, FALSE, 0, 0);

AcslSimSetVariableDescriptor(10,"aplas",ACSL_DATATYPE_DOUBLE,ACSL_SYMBOLTYPE_STATE,0,0,0,0,0,0,-1,-1);
AcslSimSetVariableExtendedInfo(10,FALSE,FALSE,FALSE,TRUE,TRUE,FALSE,FALSE,FALSE,FALSE,FALSE, FALSE, 0, 0);

AcslSimSetVariableDescriptor(11,"z99999",ACSL_DATATYPE_DOUBLE,ACSL_SYMBOLTYPE_DERIV,0,0,0,0,0,0,-1,-1);
AcslSimSetVariableExtendedInfo(11,FALSE,FALSE,FALSE,TRUE,TRUE,FALSE,FALSE,FALSE,FALSE,FALSE, FALSE, 0, 0);

AcslSimSetVariableDescriptor(12,"z99997",ACSL_DATATYPE_DOUBLE,ACSL_SYMBOLTYPE_DERIV,0,0,0,0,0,0,-1,-1);
AcslSimSetVariableExtendedInfo(12,FALSE,FALSE,FALSE,TRUE,TRUE,FALSE,FALSE,FALSE,FALSE,FALSE, FALSE, 0, 0);

AcslSimSetVariableDescriptor(13,"z99995",ACSL_DATATYPE_DOUBLE,ACSL_SYMBOLTYPE_DERIV,0,0,0,0,0,0,-1,-1);
AcslSimSetVariableExtendedInfo(13,FALSE,FALSE,FALSE,TRUE,TRUE,FALSE,FALSE,FALSE,FALSE,FALSE, FALSE, 0, 0);

AcslSimSetVariableDescriptor(14,"z99993",ACSL_DATATYPE_DOUBLE,ACSL_SYMBOLTYPE_DERIV,0,0,0,0,0,0,-1,-1);
AcslSimSetVariableExtendedInfo(14,FALSE,FALSE,FALSE,TRUE,TRUE,FALSE,FALSE,FALSE,FALSE,FALSE, FALSE, 0, 0);

AcslSimSetVariableDescriptor(15,"z99991",ACSL_DATATYPE_DOUBLE,ACSL_SYMBOLTYPE_DERIV,0,0,0,0,0,0,-1,-1);
AcslSimSetVariableExtendedInfo(15,FALSE,FALSE,FALSE,TRUE,TRUE,FALSE,FALSE,FALSE,FALSE,FALSE, FALSE, 0, 0);

AcslSimSetVariableDescriptor(16,"z99989",ACSL_DATATYPE_DOUBLE,ACSL_SYMBOLTYPE_DERIV,0,0,0,0,0,0,-1,-1);
AcslSimSetVariableExtendedInfo(16,FALSE,FALSE,FALSE,TRUE,TRUE,FALSE,FALSE,FALSE,FALSE,FALSE, FALSE, 0, 0);

AcslSimSetVariableDescriptor(17,"z99987",ACSL_DATATYPE_DOUBLE,ACSL_SYMBOLTYPE_DERIV,0,0,0,0,0,0,-1,-1);
AcslSimSetVariableExtendedInfo(17,FALSE,FALSE,FALSE,TRUE,TRUE,FALSE,FALSE,FALSE,FALSE,FALSE, FALSE, 0, 0);

AcslSimSetVariableDescriptor(18,"z99985",ACSL_DATATYPE_DOUBLE,ACSL_SYMBOLTYPE_DERIV,0,0,0,0,0,0,-1,-1);
AcslSimSetVariableExtendedInfo(18,FALSE,FALSE,FALSE,TRUE,TRUE,FALSE,FALSE,FALSE,FALSE,FALSE, FALSE, 0, 0);

AcslSimSetVariableDescriptor(19,"z99983",ACSL_DATATYPE_DOUBLE,ACSL_SYMBOLTYPE_DERIV,0,0,0,0,0,0,-1,-1);
AcslSimSetVariableExtendedInfo(19,FALSE,FALSE,FALSE,TRUE,TRUE,FALSE,FALSE,FALSE,FALSE,FALSE, FALSE, 0, 0);

AcslSimSetVariableDescriptor(20,"z99998",ACSL_DATATYPE_DOUBLE,ACSL_SYMBOLTYPE_INITCOND,0,0,0,0,0,0,-1,-1);
AcslSimSetVariableExtendedInfo(20,FALSE,FALSE,FALSE,FALSE,TRUE,FALSE,FALSE,FALSE,FALSE,FALSE, FALSE, 0, 0);

AcslSimSetVariableDescriptor(21,"z99996",ACSL_DATATYPE_DOUBLE,ACSL_SYMBOLTYPE_INITCOND,0,0,0,0,0,0,-1,-1);
AcslSimSetVariableExtendedInfo(21,FALSE,FALSE,FALSE,FALSE,TRUE,FALSE,FALSE,FALSE,FALSE,FALSE, FALSE, 0, 0);

AcslSimSetVariableDescriptor(22,"z99994",ACSL_DATATYPE_DOUBLE,ACSL_SYMBOLTYPE_INITCOND,0,0,0,0,0,0,-1,-1);
AcslSimSetVariableExtendedInfo(22,FALSE,FALSE,FALSE,FALSE,TRUE,FALSE,FALSE,FALSE,FALSE,FALSE, FALSE, 0, 0);

AcslSimSetVariableDescriptor(23,"z99992",ACSL_DATATYPE_DOUBLE,ACSL_SYMBOLTYPE_INITCOND,0,0,0,0,0,0,-1,-1);
AcslSimSetVariableExtendedInfo(23,FALSE,FALSE,FALSE,FALSE,TRUE,FALSE,FALSE,FALSE,FALSE,FALSE, FALSE, 0, 0);

AcslSimSetVariableDescriptor(24,"z99990",ACSL_DATATYPE_DOUBLE,ACSL_SYMBOLTYPE_INITCOND,0,0,0,0,0,0,-1,-1);
AcslSimSetVariableExtendedInfo(24,FALSE,FALSE,FALSE,FALSE,TRUE,FALSE,FALSE,FALSE,FALSE,FALSE, FALSE, 0, 0);

AcslSimSetVariableDescriptor(25,"z99988",ACSL_DATATYPE_DOUBLE,ACSL_SYMBOLTYPE_INITCOND,0,0,0,0,0,0,-1,-1);
AcslSimSetVariableExtendedInfo(25,FALSE,FALSE,FALSE,FALSE,TRUE,FALSE,FALSE,FALSE,FALSE,FALSE, FALSE, 0, 0);

AcslSimSetVariableDescriptor(26,"z99986",ACSL_DATATYPE_DOUBLE,ACSL_SYMBOLTYPE_INITCOND,0,0,0,0,0,0,-1,-1);
AcslSimSetVariableExtendedInfo(26,FALSE,FALSE,FALSE,FALSE,TRUE,FALSE,FALSE,FALSE,FALSE,FALSE, FALSE, 0, 0);

AcslSimSetVariableDescriptor(27,"z99984",ACSL_DATATYPE_DOUBLE,ACSL_SYMBOLTYPE_INITCOND,0,0,0,0,0,0,-1,-1);
AcslSimSetVariableExtendedInfo(27,FALSE,FALSE,FALSE,FALSE,TRUE,FALSE,FALSE,FALSE,FALSE,FALSE, FALSE, 0, 0);

AcslSimSetVariableDescriptor(28,"z99982",ACSL_DATATYPE_DOUBLE,ACSL_SYMBOLTYPE_INITCOND,0,0,0,0,0,0,-1,-1);
AcslSimSetVariableExtendedInfo(28,FALSE,FALSE,FALSE,FALSE,TRUE,FALSE,FALSE,FALSE,FALSE,FALSE, FALSE, 0, 0);

AcslSimSetVariableDescriptor(29,"qcc",ACSL_DATATYPE_DOUBLE,ACSL_SYMBOLTYPE_ALGEBRAIC,0,0,0,0,0,0,-1,-1);
AcslSimSetVariableExtendedInfo(29,FALSE,TRUE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE, FALSE, 0, 0);

AcslSimSetVariableDescriptor(30,"qlc",ACSL_DATATYPE_DOUBLE,ACSL_SYMBOLTYPE_ALGEBRAIC,0,0,0,0,0,0,-1,-1);
AcslSimSetVariableExtendedInfo(30,FALSE,TRUE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE, FALSE, 0, 0);

AcslSimSetVariableDescriptor(31,"qfc",ACSL_DATATYPE_DOUBLE,ACSL_SYMBOLTYPE_ALGEBRAIC,0,0,0,0,0,0,-1,-1);
AcslSimSetVariableExtendedInfo(31,FALSE,TRUE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE, FALSE, 0, 0);

AcslSimSetVariableDescriptor(32,"qkc",ACSL_DATATYPE_DOUBLE,ACSL_SYMBOLTYPE_ALGEBRAIC,0,0,0,0,0,0,-1,-1);
AcslSimSetVariableExtendedInfo(32,FALSE,TRUE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE, FALSE, 0, 0);

AcslSimSetVariableDescriptor(33,"bw",ACSL_DATATYPE_DOUBLE,ACSL_SYMBOLTYPE_ALGEBRAIC,0,0,0,0,0,0,-1,-1);
AcslSimSetVariableExtendedInfo(33,FALSE,TRUE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE, FALSE, 0, 0);

AcslSimSetVariableDescriptor(34,"vlc",ACSL_DATATYPE_DOUBLE,ACSL_SYMBOLTYPE_ALGEBRAIC,0,0,0,0,0,0,-1,-1);
AcslSimSetVariableExtendedInfo(34,FALSE,TRUE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE, FALSE, 0, 0);

AcslSimSetVariableDescriptor(35,"vfc",ACSL_DATATYPE_DOUBLE,ACSL_SYMBOLTYPE_ALGEBRAIC,0,0,0,0,0,0,-1,-1);
AcslSimSetVariableExtendedInfo(35,FALSE,TRUE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE, FALSE, 0, 0);

AcslSimSetVariableDescriptor(36,"vkc",ACSL_DATATYPE_DOUBLE,ACSL_SYMBOLTYPE_ALGEBRAIC,0,0,0,0,0,0,-1,-1);
AcslSimSetVariableExtendedInfo(36,FALSE,TRUE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE, FALSE, 0, 0);

AcslSimSetVariableDescriptor(37,"vplasc",ACSL_DATATYPE_DOUBLE,ACSL_SYMBOLTYPE_ALGEBRAIC,0,0,0,0,0,0,-1,-1);
AcslSimSetVariableExtendedInfo(37,FALSE,TRUE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE, FALSE, 0, 0);

AcslSimSetVariableDescriptor(38,"htc",ACSL_DATATYPE_DOUBLE,ACSL_SYMBOLTYPE_ALGEBRAIC,0,0,0,0,0,0,-1,-1);
AcslSimSetVariableExtendedInfo(38,FALSE,TRUE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE, FALSE, 0, 0);

AcslSimSetVariableDescriptor(39,"tmc",ACSL_DATATYPE_DOUBLE,ACSL_SYMBOLTYPE_ALGEBRAIC,0,0,0,0,0,0,-1,-1);
AcslSimSetVariableExtendedInfo(39,FALSE,TRUE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE, FALSE, 0, 0);

AcslSimSetVariableDescriptor(40,"kt",ACSL_DATATYPE_DOUBLE,ACSL_SYMBOLTYPE_ALGEBRAIC,0,0,0,0,0,0,-1,-1);
AcslSimSetVariableExtendedInfo(40,FALSE,TRUE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE, FALSE, 0, 0);

AcslSimSetVariableDescriptor(41,"free",ACSL_DATATYPE_DOUBLE,ACSL_SYMBOLTYPE_ALGEBRAIC,0,0,0,0,0,0,-1,-1);
AcslSimSetVariableExtendedInfo(41,FALSE,TRUE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE, FALSE, 0, 0);

AcslSimSetVariableDescriptor(42,"pl",ACSL_DATATYPE_DOUBLE,ACSL_SYMBOLTYPE_ALGEBRAIC,0,0,0,0,0,0,-1,-1);
AcslSimSetVariableExtendedInfo(42,FALSE,TRUE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE, FALSE, 0, 0);

AcslSimSetVariableDescriptor(43,"pf",ACSL_DATATYPE_DOUBLE,ACSL_SYMBOLTYPE_ALGEBRAIC,0,0,0,0,0,0,-1,-1);
AcslSimSetVariableExtendedInfo(43,FALSE,TRUE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE, FALSE, 0, 0);

AcslSimSetVariableDescriptor(44,"pk",ACSL_DATATYPE_DOUBLE,ACSL_SYMBOLTYPE_ALGEBRAIC,0,0,0,0,0,0,-1,-1);
AcslSimSetVariableExtendedInfo(44,FALSE,TRUE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE, FALSE, 0, 0);

AcslSimSetVariableDescriptor(45,"pr",ACSL_DATATYPE_DOUBLE,ACSL_SYMBOLTYPE_ALGEBRAIC,0,0,0,0,0,0,-1,-1);
AcslSimSetVariableExtendedInfo(45,FALSE,TRUE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE, FALSE, 0, 0);

AcslSimSetVariableDescriptor(46,"ps",ACSL_DATATYPE_DOUBLE,ACSL_SYMBOLTYPE_ALGEBRAIC,0,0,0,0,0,0,-1,-1);
AcslSimSetVariableExtendedInfo(46,FALSE,TRUE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE, FALSE, 0, 0);

AcslSimSetVariableDescriptor(47,"tstart",ACSL_DATATYPE_DOUBLE,ACSL_SYMBOLTYPE_ALGEBRAIC,0,0,0,0,0,0,-1,-1);
AcslSimSetVariableExtendedInfo(47,FALSE,TRUE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE, FALSE, 0, 0);

AcslSimSetVariableDescriptor(48,"countdw",ACSL_DATATYPE_DOUBLE,ACSL_SYMBOLTYPE_ALGEBRAIC,0,0,0,0,0,0,-1,-1);
AcslSimSetVariableExtendedInfo(48,FALSE,FALSE,FALSE,TRUE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE, FALSE, 0, 0);

AcslSimSetVariableDescriptor(49,"hourofday",ACSL_DATATYPE_DOUBLE,ACSL_SYMBOLTYPE_ALGEBRAIC,0,0,0,0,0,0,-1,-1);
AcslSimSetVariableExtendedInfo(49,FALSE,FALSE,FALSE,TRUE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE, FALSE, 0, 0);

AcslSimSetVariableDescriptor(50,"dayofweek",ACSL_DATATYPE_DOUBLE,ACSL_SYMBOLTYPE_ALGEBRAIC,0,0,0,0,0,0,-1,-1);
AcslSimSetVariableExtendedInfo(50,FALSE,FALSE,FALSE,TRUE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE, FALSE, 0, 0);

AcslSimSetVariableDescriptor(51,"backgrounddw",ACSL_DATATYPE_DOUBLE,ACSL_SYMBOLTYPE_ALGEBRAIC,0,0,0,0,0,0,-1,-1);
AcslSimSetVariableExtendedInfo(51,FALSE,TRUE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE, FALSE, 0, 0);

AcslSimSetVariableDescriptor(52,"exposeddw",ACSL_DATATYPE_DOUBLE,ACSL_SYMBOLTYPE_ALGEBRAIC,0,0,0,0,0,0,-1,-1);
AcslSimSetVariableExtendedInfo(52,FALSE,TRUE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE, FALSE, 0, 0);

AcslSimSetVariableDescriptor(53,"dwtotal",ACSL_DATATYPE_DOUBLE,ACSL_SYMBOLTYPE_ALGEBRAIC,0,0,0,0,0,0,-1,-1);
AcslSimSetVariableExtendedInfo(53,FALSE,TRUE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE, FALSE, 0, 0);

AcslSimSetVariableDescriptor(54,"drinks",ACSL_DATATYPE_DOUBLE,ACSL_SYMBOLTYPE_ALGEBRAIC,0,0,0,0,0,0,-1,-1);
AcslSimSetVariableExtendedInfo(54,FALSE,TRUE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE, FALSE, 0, 0);

AcslSimSetVariableDescriptor(55,"tlendw",ACSL_DATATYPE_DOUBLE,ACSL_SYMBOLTYPE_ALGEBRAIC,0,0,0,0,0,0,-1,-1);
AcslSimSetVariableExtendedInfo(55,FALSE,TRUE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE, FALSE, 0, 0);

AcslSimSetVariableDescriptor(56,"kurinec",ACSL_DATATYPE_DOUBLE,ACSL_SYMBOLTYPE_ALGEBRAIC,0,0,0,0,0,0,-1,-1);
AcslSimSetVariableExtendedInfo(56,FALSE,TRUE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE, FALSE, 0, 0);

AcslSimSetVariableDescriptor(57,"qc",ACSL_DATATYPE_DOUBLE,ACSL_SYMBOLTYPE_ALGEBRAIC,0,0,0,0,0,0,-1,-1);
AcslSimSetVariableExtendedInfo(57,FALSE,FALSE,FALSE,TRUE,TRUE,FALSE,FALSE,FALSE,FALSE,FALSE, FALSE, 0, 0);

AcslSimSetVariableDescriptor(58,"qcp",ACSL_DATATYPE_DOUBLE,ACSL_SYMBOLTYPE_ALGEBRAIC,0,0,0,0,0,0,-1,-1);
AcslSimSetVariableExtendedInfo(58,FALSE,FALSE,FALSE,TRUE,TRUE,FALSE,FALSE,FALSE,FALSE,FALSE, FALSE, 0, 0);

AcslSimSetVariableDescriptor(59,"ql",ACSL_DATATYPE_DOUBLE,ACSL_SYMBOLTYPE_ALGEBRAIC,0,0,0,0,0,0,-1,-1);
AcslSimSetVariableExtendedInfo(59,FALSE,FALSE,FALSE,TRUE,TRUE,FALSE,FALSE,FALSE,FALSE,FALSE, FALSE, 0, 0);

AcslSimSetVariableDescriptor(60,"qf",ACSL_DATATYPE_DOUBLE,ACSL_SYMBOLTYPE_ALGEBRAIC,0,0,0,0,0,0,-1,-1);
AcslSimSetVariableExtendedInfo(60,FALSE,FALSE,FALSE,TRUE,TRUE,FALSE,FALSE,FALSE,FALSE,FALSE, FALSE, 0, 0);

AcslSimSetVariableDescriptor(61,"qk",ACSL_DATATYPE_DOUBLE,ACSL_SYMBOLTYPE_ALGEBRAIC,0,0,0,0,0,0,-1,-1);
AcslSimSetVariableExtendedInfo(61,FALSE,FALSE,FALSE,TRUE,TRUE,FALSE,FALSE,FALSE,FALSE,FALSE, FALSE, 0, 0);

AcslSimSetVariableDescriptor(62,"qr",ACSL_DATATYPE_DOUBLE,ACSL_SYMBOLTYPE_ALGEBRAIC,0,0,0,0,0,0,-1,-1);
AcslSimSetVariableExtendedInfo(62,FALSE,FALSE,FALSE,TRUE,TRUE,FALSE,FALSE,FALSE,FALSE,FALSE, FALSE, 0, 0);

AcslSimSetVariableDescriptor(63,"qs",ACSL_DATATYPE_DOUBLE,ACSL_SYMBOLTYPE_ALGEBRAIC,0,0,0,0,0,0,-1,-1);
AcslSimSetVariableExtendedInfo(63,FALSE,FALSE,FALSE,TRUE,TRUE,FALSE,FALSE,FALSE,FALSE,FALSE, FALSE, 0, 0);

AcslSimSetVariableDescriptor(64,"qbal",ACSL_DATATYPE_DOUBLE,ACSL_SYMBOLTYPE_ALGEBRAIC,0,0,0,0,0,0,-1,-1);
AcslSimSetVariableExtendedInfo(64,FALSE,FALSE,FALSE,FALSE,TRUE,FALSE,FALSE,FALSE,FALSE,FALSE, FALSE, 0, 0);

AcslSimSetVariableDescriptor(65,"vl",ACSL_DATATYPE_DOUBLE,ACSL_SYMBOLTYPE_ALGEBRAIC,0,0,0,0,0,0,-1,-1);
AcslSimSetVariableExtendedInfo(65,FALSE,FALSE,FALSE,TRUE,TRUE,FALSE,FALSE,FALSE,FALSE,FALSE, FALSE, 0, 0);

AcslSimSetVariableDescriptor(66,"vf",ACSL_DATATYPE_DOUBLE,ACSL_SYMBOLTYPE_ALGEBRAIC,0,0,0,0,0,0,-1,-1);
AcslSimSetVariableExtendedInfo(66,FALSE,FALSE,FALSE,TRUE,TRUE,FALSE,FALSE,FALSE,FALSE,FALSE, FALSE, 0, 0);

AcslSimSetVariableDescriptor(67,"vk",ACSL_DATATYPE_DOUBLE,ACSL_SYMBOLTYPE_ALGEBRAIC,0,0,0,0,0,0,-1,-1);
AcslSimSetVariableExtendedInfo(67,FALSE,FALSE,FALSE,TRUE,TRUE,FALSE,FALSE,FALSE,FALSE,FALSE, FALSE, 0, 0);

AcslSimSetVariableDescriptor(68,"vplas",ACSL_DATATYPE_DOUBLE,ACSL_SYMBOLTYPE_ALGEBRAIC,0,0,0,0,0,0,-1,-1);
AcslSimSetVariableExtendedInfo(68,FALSE,FALSE,FALSE,TRUE,TRUE,FALSE,FALSE,FALSE,FALSE,FALSE, FALSE, 0, 0);

AcslSimSetVariableDescriptor(69,"vr",ACSL_DATATYPE_DOUBLE,ACSL_SYMBOLTYPE_ALGEBRAIC,0,0,0,0,0,0,-1,-1);
AcslSimSetVariableExtendedInfo(69,FALSE,FALSE,FALSE,TRUE,TRUE,FALSE,FALSE,FALSE,FALSE,FALSE, FALSE, 0, 0);

AcslSimSetVariableDescriptor(70,"vs",ACSL_DATATYPE_DOUBLE,ACSL_SYMBOLTYPE_ALGEBRAIC,0,0,0,0,0,0,-1,-1);
AcslSimSetVariableExtendedInfo(70,FALSE,FALSE,FALSE,TRUE,TRUE,FALSE,FALSE,FALSE,FALSE,FALSE, FALSE, 0, 0);

AcslSimSetVariableDescriptor(71,"vbal",ACSL_DATATYPE_DOUBLE,ACSL_SYMBOLTYPE_ALGEBRAIC,0,0,0,0,0,0,-1,-1);
AcslSimSetVariableExtendedInfo(71,FALSE,FALSE,FALSE,FALSE,TRUE,FALSE,FALSE,FALSE,FALSE,FALSE, FALSE, 0, 0);

AcslSimSetVariableDescriptor(72,"vd",ACSL_DATATYPE_DOUBLE,ACSL_SYMBOLTYPE_ALGEBRAIC,0,0,0,0,0,0,-1,-1);
AcslSimSetVariableExtendedInfo(72,FALSE,FALSE,FALSE,FALSE,TRUE,FALSE,FALSE,FALSE,FALSE,FALSE, FALSE, 0, 0);

AcslSimSetVariableDescriptor(73,"tm",ACSL_DATATYPE_DOUBLE,ACSL_SYMBOLTYPE_ALGEBRAIC,0,0,0,0,0,0,-1,-1);
AcslSimSetVariableExtendedInfo(73,FALSE,FALSE,FALSE,FALSE,TRUE,FALSE,FALSE,FALSE,FALSE,FALSE, FALSE, 0, 0);

AcslSimSetVariableDescriptor(74,"kurine",ACSL_DATATYPE_DOUBLE,ACSL_SYMBOLTYPE_ALGEBRAIC,0,0,0,0,0,0,-1,-1);
AcslSimSetVariableExtendedInfo(74,FALSE,FALSE,FALSE,TRUE,TRUE,FALSE,FALSE,FALSE,FALSE,FALSE, FALSE, 0, 0);

AcslSimSetVariableDescriptor(75,"day",ACSL_DATATYPE_DOUBLE,ACSL_SYMBOLTYPE_ALGEBRAIC,0,0,0,0,0,0,-1,-1);
AcslSimSetVariableExtendedInfo(75,FALSE,FALSE,FALSE,TRUE,TRUE,FALSE,FALSE,FALSE,FALSE,FALSE, FALSE, 0, 0);

AcslSimSetVariableDescriptor(76,"year",ACSL_DATATYPE_DOUBLE,ACSL_SYMBOLTYPE_ALGEBRAIC,0,0,0,0,0,0,-1,-1);
AcslSimSetVariableExtendedInfo(76,FALSE,FALSE,FALSE,FALSE,TRUE,FALSE,FALSE,FALSE,FALSE,FALSE, FALSE, 0, 0);

AcslSimSetVariableDescriptor(77,"c2",ACSL_DATATYPE_DOUBLE,ACSL_SYMBOLTYPE_ALGEBRAIC,0,0,0,0,0,0,-1,-1);
AcslSimSetVariableExtendedInfo(77,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE, FALSE, 0, 0);

AcslSimSetVariableDescriptor(78,"drinkdose",ACSL_DATATYPE_DOUBLE,ACSL_SYMBOLTYPE_ALGEBRAIC,0,0,0,0,0,0,-1,-1);
AcslSimSetVariableExtendedInfo(78,FALSE,FALSE,FALSE,TRUE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE, FALSE, 0, 0);

AcslSimSetVariableDescriptor(79,"rl",ACSL_DATATYPE_DOUBLE,ACSL_SYMBOLTYPE_ALGEBRAIC,0,0,0,0,0,0,-1,-1);
AcslSimSetVariableExtendedInfo(79,FALSE,FALSE,FALSE,TRUE,TRUE,FALSE,FALSE,FALSE,FALSE,FALSE, FALSE, 0, 0);

AcslSimSetVariableDescriptor(80,"ca",ACSL_DATATYPE_DOUBLE,ACSL_SYMBOLTYPE_ALGEBRAIC,0,0,0,0,0,0,-1,-1);
AcslSimSetVariableExtendedInfo(80,FALSE,FALSE,FALSE,TRUE,TRUE,FALSE,FALSE,FALSE,FALSE,FALSE, FALSE, 0, 0);

AcslSimSetVariableDescriptor(81,"cvl",ACSL_DATATYPE_DOUBLE,ACSL_SYMBOLTYPE_ALGEBRAIC,0,0,0,0,0,0,-1,-1);
AcslSimSetVariableExtendedInfo(81,FALSE,FALSE,FALSE,TRUE,TRUE,FALSE,FALSE,FALSE,FALSE,FALSE, FALSE, 0, 0);

AcslSimSetVariableDescriptor(82,"cl",ACSL_DATATYPE_DOUBLE,ACSL_SYMBOLTYPE_ALGEBRAIC,0,0,0,0,0,0,-1,-1);
AcslSimSetVariableExtendedInfo(82,FALSE,FALSE,FALSE,TRUE,TRUE,FALSE,FALSE,FALSE,FALSE,FALSE, FALSE, 0, 0);

AcslSimSetVariableDescriptor(83,"rf",ACSL_DATATYPE_DOUBLE,ACSL_SYMBOLTYPE_ALGEBRAIC,0,0,0,0,0,0,-1,-1);
AcslSimSetVariableExtendedInfo(83,FALSE,FALSE,FALSE,TRUE,TRUE,FALSE,FALSE,FALSE,FALSE,FALSE, FALSE, 0, 0);

AcslSimSetVariableDescriptor(84,"cvf",ACSL_DATATYPE_DOUBLE,ACSL_SYMBOLTYPE_ALGEBRAIC,0,0,0,0,0,0,-1,-1);
AcslSimSetVariableExtendedInfo(84,FALSE,FALSE,FALSE,TRUE,TRUE,FALSE,FALSE,FALSE,FALSE,FALSE, FALSE, 0, 0);

AcslSimSetVariableDescriptor(85,"cf",ACSL_DATATYPE_DOUBLE,ACSL_SYMBOLTYPE_ALGEBRAIC,0,0,0,0,0,0,-1,-1);
AcslSimSetVariableExtendedInfo(85,FALSE,FALSE,FALSE,TRUE,TRUE,FALSE,FALSE,FALSE,FALSE,FALSE, FALSE, 0, 0);

AcslSimSetVariableDescriptor(86,"rr",ACSL_DATATYPE_DOUBLE,ACSL_SYMBOLTYPE_ALGEBRAIC,0,0,0,0,0,0,-1,-1);
AcslSimSetVariableExtendedInfo(86,FALSE,FALSE,FALSE,TRUE,TRUE,FALSE,FALSE,FALSE,FALSE,FALSE, FALSE, 0, 0);

AcslSimSetVariableDescriptor(87,"cvr",ACSL_DATATYPE_DOUBLE,ACSL_SYMBOLTYPE_ALGEBRAIC,0,0,0,0,0,0,-1,-1);
AcslSimSetVariableExtendedInfo(87,FALSE,FALSE,FALSE,TRUE,TRUE,FALSE,FALSE,FALSE,FALSE,FALSE, FALSE, 0, 0);

AcslSimSetVariableDescriptor(88,"cr",ACSL_DATATYPE_DOUBLE,ACSL_SYMBOLTYPE_ALGEBRAIC,0,0,0,0,0,0,-1,-1);
AcslSimSetVariableExtendedInfo(88,FALSE,FALSE,FALSE,TRUE,TRUE,FALSE,FALSE,FALSE,FALSE,FALSE, FALSE, 0, 0);

AcslSimSetVariableDescriptor(89,"rs",ACSL_DATATYPE_DOUBLE,ACSL_SYMBOLTYPE_ALGEBRAIC,0,0,0,0,0,0,-1,-1);
AcslSimSetVariableExtendedInfo(89,FALSE,FALSE,FALSE,TRUE,TRUE,FALSE,FALSE,FALSE,FALSE,FALSE, FALSE, 0, 0);

AcslSimSetVariableDescriptor(90,"cvs",ACSL_DATATYPE_DOUBLE,ACSL_SYMBOLTYPE_ALGEBRAIC,0,0,0,0,0,0,-1,-1);
AcslSimSetVariableExtendedInfo(90,FALSE,FALSE,FALSE,TRUE,TRUE,FALSE,FALSE,FALSE,FALSE,FALSE, FALSE, 0, 0);

AcslSimSetVariableDescriptor(91,"cs",ACSL_DATATYPE_DOUBLE,ACSL_SYMBOLTYPE_ALGEBRAIC,0,0,0,0,0,0,-1,-1);
AcslSimSetVariableExtendedInfo(91,FALSE,FALSE,FALSE,TRUE,TRUE,FALSE,FALSE,FALSE,FALSE,FALSE, FALSE, 0, 0);

AcslSimSetVariableDescriptor(92,"rk",ACSL_DATATYPE_DOUBLE,ACSL_SYMBOLTYPE_ALGEBRAIC,0,0,0,0,0,0,-1,-1);
AcslSimSetVariableExtendedInfo(92,FALSE,FALSE,FALSE,TRUE,TRUE,FALSE,FALSE,FALSE,FALSE,FALSE, FALSE, 0, 0);

AcslSimSetVariableDescriptor(93,"cvk",ACSL_DATATYPE_DOUBLE,ACSL_SYMBOLTYPE_ALGEBRAIC,0,0,0,0,0,0,-1,-1);
AcslSimSetVariableExtendedInfo(93,FALSE,FALSE,FALSE,TRUE,TRUE,FALSE,FALSE,FALSE,FALSE,FALSE, FALSE, 0, 0);

AcslSimSetVariableDescriptor(94,"rurine",ACSL_DATATYPE_DOUBLE,ACSL_SYMBOLTYPE_ALGEBRAIC,0,0,0,0,0,0,-1,-1);
AcslSimSetVariableExtendedInfo(94,FALSE,FALSE,FALSE,TRUE,TRUE,FALSE,FALSE,FALSE,FALSE,FALSE, FALSE, 0, 0);

AcslSimSetVariableDescriptor(95,"ck",ACSL_DATATYPE_DOUBLE,ACSL_SYMBOLTYPE_ALGEBRAIC,0,0,0,0,0,0,-1,-1);
AcslSimSetVariableExtendedInfo(95,FALSE,FALSE,FALSE,TRUE,TRUE,FALSE,FALSE,FALSE,FALSE,FALSE, FALSE, 0, 0);

AcslSimSetVariableDescriptor(96,"rplas",ACSL_DATATYPE_DOUBLE,ACSL_SYMBOLTYPE_ALGEBRAIC,0,0,0,0,0,0,-1,-1);
AcslSimSetVariableExtendedInfo(96,FALSE,FALSE,FALSE,TRUE,TRUE,FALSE,FALSE,FALSE,FALSE,FALSE, FALSE, 0, 0);

AcslSimSetVariableDescriptor(97,"tstop",ACSL_DATATYPE_DOUBLE,ACSL_SYMBOLTYPE_ALGEBRAIC,0,0,0,0,0,0,-1,-1);
AcslSimSetVariableExtendedInfo(97,FALSE,TRUE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE, FALSE, 0, 0);

AcslSimSetVariableDescriptor(98,"cint",ACSL_DATATYPE_DOUBLE,ACSL_SYMBOLTYPE_CINTERVAL,0,0,0,0,0,0,-1,-1);
AcslSimSetVariableExtendedInfo(98,TRUE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE, FALSE, 0, 0);

AcslSimSetVariableDescriptor(99,"ialg",ACSL_DATATYPE_LONG,ACSL_SYMBOLTYPE_ALGORITHM,0,0,0,0,0,0,-1,-1);
AcslSimSetVariableExtendedInfo(99,TRUE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE, FALSE, 0, 0);

AcslSimSetVariableDescriptor(100,"nstp",ACSL_DATATYPE_LONG,ACSL_SYMBOLTYPE_NSTEPS,0,0,0,0,0,0,-1,-1);
AcslSimSetVariableExtendedInfo(100,TRUE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE, FALSE, 0, 0);

AcslSimSetVariableDescriptor(101,"maxt",ACSL_DATATYPE_DOUBLE,ACSL_SYMBOLTYPE_MAXTERVAL,0,0,0,0,0,0,-1,-1);
AcslSimSetVariableExtendedInfo(101,TRUE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE, FALSE, 0, 0);

AcslSimSetVariableDescriptor(102,"mint",ACSL_DATATYPE_DOUBLE,ACSL_SYMBOLTYPE_MINTERVAL,0,0,0,0,0,0,-1,-1);
AcslSimSetVariableExtendedInfo(102,TRUE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE, FALSE, 0, 0);

AcslSimSetVariableDescriptor(103,"zzierr",ACSL_DATATYPE_BOOLEAN,ACSL_SYMBOLTYPE_ERRTAG,0,0,0,0,0,0,-1,-1);
AcslSimSetVariableExtendedInfo(103,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE, FALSE, 0, 0);

AcslSimSetVariableDescriptor(104,"zzstopflag",ACSL_DATATYPE_BOOLEAN,ACSL_SYMBOLTYPE_SYSTEMVAR,0,0,0,0,0,0,-1,-1);
AcslSimSetVariableExtendedInfo(104,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE, FALSE, 0, 0);

AcslSimSetVariableDescriptor(105,"zzrnfl",ACSL_DATATYPE_BOOLEAN,ACSL_SYMBOLTYPE_SYSTEMVAR,0,0,0,0,0,0,-1,-1);
AcslSimSetVariableExtendedInfo(105,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE, FALSE, 0, 0);

AcslSimSetVariableDescriptor(106,"zznist",ACSL_DATATYPE_LONG,ACSL_SYMBOLTYPE_SYSTEMVAR,0,0,0,0,0,0,-1,-1);
AcslSimSetVariableExtendedInfo(106,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE, FALSE, 0, 0);

AcslSimSetVariableDescriptor(107,"zznblk",ACSL_DATATYPE_LONG,ACSL_SYMBOLTYPE_SYSTEMVAR,0,0,0,0,0,0,-1,-1);
AcslSimSetVariableExtendedInfo(107,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE, FALSE, 0, 0);

AcslSimSetVariableDescriptor(108,"zzfrfl",ACSL_DATATYPE_BOOLEAN,ACSL_SYMBOLTYPE_SYSTEMVAR,0,0,0,0,0,0,-1,-1);
AcslSimSetVariableExtendedInfo(108,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE, FALSE, 0, 0);

AcslSimSetVariableDescriptor(109,"zzjefl",ACSL_DATATYPE_BOOLEAN,ACSL_SYMBOLTYPE_SYSTEMVAR,0,0,0,0,0,0,-1,-1);
AcslSimSetVariableExtendedInfo(109,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE, FALSE, 0, 0);

AcslSimSetVariableDescriptor(110,"zzndst",ACSL_DATATYPE_LONG,ACSL_SYMBOLTYPE_SYSTEMVAR,0,0,0,0,0,0,-1,-1);
AcslSimSetVariableExtendedInfo(110,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE, FALSE, 0, 0);

AcslSimSetVariableDescriptor(111,"zzicon",ACSL_DATATYPE_LONG,ACSL_SYMBOLTYPE_SYSTEMVAR,0,0,0,0,0,0,-1,-1);
AcslSimSetVariableExtendedInfo(111,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE, FALSE, 0, 0);

AcslSimSetVariableDescriptor(112,"zzicfl",ACSL_DATATYPE_BOOLEAN,ACSL_SYMBOLTYPE_SYSTEMVAR,0,0,0,0,0,0,-1,-1);
AcslSimSetVariableExtendedInfo(112,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE, FALSE, 0, 0);

AcslSimSetVariableDescriptor(113,"zznavr",ACSL_DATATYPE_LONG,ACSL_SYMBOLTYPE_SYSTEMVAR,0,0,0,0,0,0,-1,-1);
AcslSimSetVariableExtendedInfo(113,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE, FALSE, 0, 0);

AcslSimSetVariableDescriptor(114,"zzinstidx",ACSL_DATATYPE_LONG,ACSL_SYMBOLTYPE_SYSTEMVAR,0,0,0,0,0,0,-1,-1);
AcslSimSetVariableExtendedInfo(114,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE, FALSE, 0, 0);

AcslSimSetVariableDescriptor(115,"zzstepstop",ACSL_DATATYPE_BOOLEAN,ACSL_SYMBOLTYPE_SYSTEMVAR,0,0,0,0,0,0,-1,-1);
AcslSimSetVariableExtendedInfo(115,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE, FALSE, 0, 0);

AcslSimSetVariableDescriptor(116,"nciout",ACSL_DATATYPE_LONG,ACSL_SYMBOLTYPE_ACSLSYSTEMVAR,0,0,0,0,0,0,-1,-1);
AcslSimSetVariableExtendedInfo(116,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE, FALSE, 0, 0);

AcslSimSetVariableDescriptor(117,"cioitg",ACSL_DATATYPE_LONG,ACSL_SYMBOLTYPE_ACSLSYSTEMVAR,0,0,0,0,0,0,-1,-1);
AcslSimSetVariableExtendedInfo(117,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE, FALSE, 0, 0);

AcslSimSetVariableDescriptor(118,"cjvitg",ACSL_DATATYPE_BOOLEAN,ACSL_SYMBOLTYPE_ACSLSYSTEMVAR,0,0,0,0,0,0,-1,-1);
AcslSimSetVariableExtendedInfo(118,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE, FALSE, 0, 0);

AcslSimSetVariableDescriptor(119,"cssitg",ACSL_DATATYPE_DOUBLE,ACSL_SYMBOLTYPE_ACSLSYSTEMVAR,0,0,0,0,0,0,-1,-1);
AcslSimSetVariableExtendedInfo(119,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE, FALSE, 0, 0);

AcslSimSetVariableDescriptor(120,"dpsitg",ACSL_DATATYPE_BOOLEAN,ACSL_SYMBOLTYPE_ACSLSYSTEMVAR,0,0,0,0,0,0,-1,-1);
AcslSimSetVariableExtendedInfo(120,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE, FALSE, 0, 0);

AcslSimSetVariableDescriptor(121,"ecsitg",ACSL_DATATYPE_BOOLEAN,ACSL_SYMBOLTYPE_ACSLSYSTEMVAR,0,0,0,0,0,0,-1,-1);
AcslSimSetVariableExtendedInfo(121,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE, FALSE, 0, 0);

AcslSimSetVariableDescriptor(122,"fdeitg",ACSL_DATATYPE_BOOLEAN,ACSL_SYMBOLTYPE_ACSLSYSTEMVAR,0,0,0,0,0,0,-1,-1);
AcslSimSetVariableExtendedInfo(122,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE, FALSE, 0, 0);

AcslSimSetVariableDescriptor(123,"mxoitg",ACSL_DATATYPE_LONG,ACSL_SYMBOLTYPE_ACSLSYSTEMVAR,0,0,0,0,0,0,-1,-1);
AcslSimSetVariableExtendedInfo(123,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE, FALSE, 0, 0);

AcslSimSetVariableDescriptor(124,"nrwitg",ACSL_DATATYPE_BOOLEAN,ACSL_SYMBOLTYPE_ACSLSYSTEMVAR,0,0,0,0,0,0,-1,-1);
AcslSimSetVariableExtendedInfo(124,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE, FALSE, 0, 0);

AcslSimSetVariableDescriptor(125,"nxeitg",ACSL_DATATYPE_BOOLEAN,ACSL_SYMBOLTYPE_ACSLSYSTEMVAR,0,0,0,0,0,0,-1,-1);
AcslSimSetVariableExtendedInfo(125,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE, FALSE, 0, 0);

AcslSimSetVariableDescriptor(126,"tjnitg",ACSL_DATATYPE_DOUBLE,ACSL_SYMBOLTYPE_ACSLSYSTEMVAR,0,0,0,0,0,0,-1,-1);
AcslSimSetVariableExtendedInfo(126,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE, FALSE, 0, 0);

AcslSimSetVariableDescriptor(127,"tsmitg",ACSL_DATATYPE_BOOLEAN,ACSL_SYMBOLTYPE_ACSLSYSTEMVAR,0,0,0,0,0,0,-1,-1);
AcslSimSetVariableExtendedInfo(127,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE, FALSE, 0, 0);

AcslSimSetVariableDescriptor(128,"weditg",ACSL_DATATYPE_BOOLEAN,ACSL_SYMBOLTYPE_ACSLSYSTEMVAR,0,0,0,0,0,0,-1,-1);
AcslSimSetVariableExtendedInfo(128,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE, FALSE, 0, 0);

AcslSimSetVariableDescriptor(129,"wesitg",ACSL_DATATYPE_BOOLEAN,ACSL_SYMBOLTYPE_ACSLSYSTEMVAR,0,0,0,0,0,0,-1,-1);
AcslSimSetVariableExtendedInfo(129,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE, FALSE, 0, 0);

AcslSimSetVariableDescriptor(130,"wnditg",ACSL_DATATYPE_BOOLEAN,ACSL_SYMBOLTYPE_ACSLSYSTEMVAR,0,0,0,0,0,0,-1,-1);
AcslSimSetVariableExtendedInfo(130,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE, FALSE, 0, 0);

AcslSimSetVariableDescriptor(131,"wxditg",ACSL_DATATYPE_BOOLEAN,ACSL_SYMBOLTYPE_ACSLSYSTEMVAR,0,0,0,0,0,0,-1,-1);
AcslSimSetVariableExtendedInfo(131,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE, FALSE, 0, 0);

AcslSimSetVariableDescriptor(132,"cieitg",ACSL_DATATYPE_BOOLEAN,ACSL_SYMBOLTYPE_ACSLSYSTEMVAR,0,0,0,0,0,0,-1,-1);
AcslSimSetVariableExtendedInfo(132,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE, FALSE, 0, 0);

AcslSimSetVariableDescriptor(133,"ubwitg",ACSL_DATATYPE_LONG,ACSL_SYMBOLTYPE_ACSLSYSTEMVAR,0,0,0,0,0,0,-1,-1);
AcslSimSetVariableExtendedInfo(133,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE, FALSE, 0, 0);

AcslSimSetVariableDescriptor(134,"lbwitg",ACSL_DATATYPE_LONG,ACSL_SYMBOLTYPE_ACSLSYSTEMVAR,0,0,0,0,0,0,-1,-1);
AcslSimSetVariableExtendedInfo(134,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE, FALSE, 0, 0);

AcslSimSetVariableDescriptor(135,"omfitg",ACSL_DATATYPE_LONG,ACSL_SYMBOLTYPE_ACSLSYSTEMVAR,0,0,0,0,0,0,-1,-1);
AcslSimSetVariableExtendedInfo(135,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE, FALSE, 0, 0);

AcslSimSetVariableDescriptor(136,"cmd",ACSL_DATATYPE_LONG,ACSL_SYMBOLTYPE_ACSLSYSTEMVAR,0,0,0,0,0,0,-1,-1);
AcslSimSetVariableExtendedInfo(136,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE, FALSE, 0, 0);

AcslSimSetVariableDescriptor(137,"dis",ACSL_DATATYPE_LONG,ACSL_SYMBOLTYPE_ACSLSYSTEMVAR,0,0,0,0,0,0,-1,-1);
AcslSimSetVariableExtendedInfo(137,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE, FALSE, 0, 0);

AcslSimSetVariableDescriptor(138,"ndbug",ACSL_DATATYPE_LONG,ACSL_SYMBOLTYPE_ACSLSYSTEMVAR,0,0,0,0,0,0,-1,-1);
AcslSimSetVariableExtendedInfo(138,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE, FALSE, 0, 0);

AcslSimSetVariableDescriptor(139,"plt",ACSL_DATATYPE_LONG,ACSL_SYMBOLTYPE_ACSLSYSTEMVAR,0,0,0,0,0,0,-1,-1);
AcslSimSetVariableExtendedInfo(139,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE, FALSE, 0, 0);

AcslSimSetVariableDescriptor(140,"prn",ACSL_DATATYPE_LONG,ACSL_SYMBOLTYPE_ACSLSYSTEMVAR,0,0,0,0,0,0,-1,-1);
AcslSimSetVariableExtendedInfo(140,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE, FALSE, 0, 0);

AcslSimSetVariableDescriptor(141,"malprn",ACSL_DATATYPE_LONG,ACSL_SYMBOLTYPE_ACSLSYSTEMVAR,0,0,0,0,0,0,-1,-1);
AcslSimSetVariableExtendedInfo(141,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE, FALSE, 0, 0);

AcslSimSetVariableDescriptor(142,"rrr",ACSL_DATATYPE_LONG,ACSL_SYMBOLTYPE_ACSLSYSTEMVAR,0,0,0,0,0,0,-1,-1);
AcslSimSetVariableExtendedInfo(142,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE, FALSE, 0, 0);

AcslSimSetVariableDescriptor(143,"save",ACSL_DATATYPE_LONG,ACSL_SYMBOLTYPE_ACSLSYSTEMVAR,0,0,0,0,0,0,-1,-1);
AcslSimSetVariableExtendedInfo(143,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE, FALSE, 0, 0);

AcslSimSetVariableDescriptor(144,"zzticg",ACSL_DATATYPE_DOUBLE,ACSL_SYMBOLTYPE_VARIABLE_INIT,0,0,0,0,0,0,-1,-1);
AcslSimSetVariableExtendedInfo(144,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE, FALSE, 0, 0);

}

//******************************************************************************
void zzinitialize(unsigned long handle)
//******************************************************************************

{
AcslSimSetVariablePointer(handle,1,&zzsim.t);
AcslSimSetVariablePointer(handle,2,&zzsim.adrinkdose);
AcslSimSetVariablePointer(handle,3,&zzsim.adrinkdose2);
AcslSimSetVariablePointer(handle,4,&zzsim.al);
AcslSimSetVariablePointer(handle,5,&zzsim.af);
AcslSimSetVariablePointer(handle,6,&zzsim.ar);
AcslSimSetVariablePointer(handle,7,&zzsim.as);
AcslSimSetVariablePointer(handle,8,&zzsim.ak);
AcslSimSetVariablePointer(handle,9,&zzsim.aurine);
AcslSimSetVariablePointer(handle,10,&zzsim.aplas);
AcslSimSetVariablePointer(handle,11,&zzsim.z99999);
AcslSimSetVariablePointer(handle,12,&zzsim.z99997);
AcslSimSetVariablePointer(handle,13,&zzsim.z99995);
AcslSimSetVariablePointer(handle,14,&zzsim.z99993);
AcslSimSetVariablePointer(handle,15,&zzsim.z99991);
AcslSimSetVariablePointer(handle,16,&zzsim.z99989);
AcslSimSetVariablePointer(handle,17,&zzsim.z99987);
AcslSimSetVariablePointer(handle,18,&zzsim.z99985);
AcslSimSetVariablePointer(handle,19,&zzsim.z99983);
AcslSimSetVariablePointer(handle,20,&zzsim.z99998);
AcslSimSetVariablePointer(handle,21,&zzsim.z99996);
AcslSimSetVariablePointer(handle,22,&zzsim.z99994);
AcslSimSetVariablePointer(handle,23,&zzsim.z99992);
AcslSimSetVariablePointer(handle,24,&zzsim.z99990);
AcslSimSetVariablePointer(handle,25,&zzsim.z99988);
AcslSimSetVariablePointer(handle,26,&zzsim.z99986);
AcslSimSetVariablePointer(handle,27,&zzsim.z99984);
AcslSimSetVariablePointer(handle,28,&zzsim.z99982);
AcslSimSetVariablePointer(handle,29,&zzsim.qcc);
AcslSimSetVariablePointer(handle,30,&zzsim.qlc);
AcslSimSetVariablePointer(handle,31,&zzsim.qfc);
AcslSimSetVariablePointer(handle,32,&zzsim.qkc);
AcslSimSetVariablePointer(handle,33,&zzsim.bw);
AcslSimSetVariablePointer(handle,34,&zzsim.vlc);
AcslSimSetVariablePointer(handle,35,&zzsim.vfc);
AcslSimSetVariablePointer(handle,36,&zzsim.vkc);
AcslSimSetVariablePointer(handle,37,&zzsim.vplasc);
AcslSimSetVariablePointer(handle,38,&zzsim.htc);
AcslSimSetVariablePointer(handle,39,&zzsim.tmc);
AcslSimSetVariablePointer(handle,40,&zzsim.kt);
AcslSimSetVariablePointer(handle,41,&zzsim.free);
AcslSimSetVariablePointer(handle,42,&zzsim.pl);
AcslSimSetVariablePointer(handle,43,&zzsim.pf);
AcslSimSetVariablePointer(handle,44,&zzsim.pk);
AcslSimSetVariablePointer(handle,45,&zzsim.pr);
AcslSimSetVariablePointer(handle,46,&zzsim.ps);
AcslSimSetVariablePointer(handle,47,&zzsim.tstart);
AcslSimSetVariablePointer(handle,48,&zzsim.countdw);
AcslSimSetVariablePointer(handle,49,&zzsim.hourofday);
AcslSimSetVariablePointer(handle,50,&zzsim.dayofweek);
AcslSimSetVariablePointer(handle,51,&zzsim.backgrounddw);
AcslSimSetVariablePointer(handle,52,&zzsim.exposeddw);
AcslSimSetVariablePointer(handle,53,&zzsim.dwtotal);
AcslSimSetVariablePointer(handle,54,&zzsim.drinks);
AcslSimSetVariablePointer(handle,55,&zzsim.tlendw);
AcslSimSetVariablePointer(handle,56,&zzsim.kurinec);
AcslSimSetVariablePointer(handle,57,&zzsim.qc);
AcslSimSetVariablePointer(handle,58,&zzsim.qcp);
AcslSimSetVariablePointer(handle,59,&zzsim.ql);
AcslSimSetVariablePointer(handle,60,&zzsim.qf);
AcslSimSetVariablePointer(handle,61,&zzsim.qk);
AcslSimSetVariablePointer(handle,62,&zzsim.qr);
AcslSimSetVariablePointer(handle,63,&zzsim.qs);
AcslSimSetVariablePointer(handle,64,&zzsim.qbal);
AcslSimSetVariablePointer(handle,65,&zzsim.vl);
AcslSimSetVariablePointer(handle,66,&zzsim.vf);
AcslSimSetVariablePointer(handle,67,&zzsim.vk);
AcslSimSetVariablePointer(handle,68,&zzsim.vplas);
AcslSimSetVariablePointer(handle,69,&zzsim.vr);
AcslSimSetVariablePointer(handle,70,&zzsim.vs);
AcslSimSetVariablePointer(handle,71,&zzsim.vbal);
AcslSimSetVariablePointer(handle,72,&zzsim.vd);
AcslSimSetVariablePointer(handle,73,&zzsim.tm);
AcslSimSetVariablePointer(handle,74,&zzsim.kurine);
AcslSimSetVariablePointer(handle,75,&zzsim.day);
AcslSimSetVariablePointer(handle,76,&zzsim.year);
AcslSimSetVariablePointer(handle,77,&zzsim.c2);
AcslSimSetVariablePointer(handle,78,&zzsim.drinkdose);
AcslSimSetVariablePointer(handle,79,&zzsim.rl);
AcslSimSetVariablePointer(handle,80,&zzsim.ca);
AcslSimSetVariablePointer(handle,81,&zzsim.cvl);
AcslSimSetVariablePointer(handle,82,&zzsim.cl);
AcslSimSetVariablePointer(handle,83,&zzsim.rf);
AcslSimSetVariablePointer(handle,84,&zzsim.cvf);
AcslSimSetVariablePointer(handle,85,&zzsim.cf);
AcslSimSetVariablePointer(handle,86,&zzsim.rr);
AcslSimSetVariablePointer(handle,87,&zzsim.cvr);
AcslSimSetVariablePointer(handle,88,&zzsim.cr);
AcslSimSetVariablePointer(handle,89,&zzsim.rs);
AcslSimSetVariablePointer(handle,90,&zzsim.cvs);
AcslSimSetVariablePointer(handle,91,&zzsim.cs);
AcslSimSetVariablePointer(handle,92,&zzsim.rk);
AcslSimSetVariablePointer(handle,93,&zzsim.cvk);
AcslSimSetVariablePointer(handle,94,&zzsim.rurine);
AcslSimSetVariablePointer(handle,95,&zzsim.ck);
AcslSimSetVariablePointer(handle,96,&zzsim.rplas);
AcslSimSetVariablePointer(handle,97,&zzsim.tstop);
AcslSimSetVariablePointer(handle,98,&zzsim.cint);
AcslSimSetVariablePointer(handle,99,&zzsim.ialg);
AcslSimSetVariablePointer(handle,100,&zzsim.nstp);
AcslSimSetVariablePointer(handle,101,&zzsim.maxt);
AcslSimSetVariablePointer(handle,102,&zzsim.mint);
AcslSimSetVariablePointer(handle,103,&zzsim.zzierr);
AcslSimSetVariablePointer(handle,104,&zzsim.zzstopflag);
AcslSimSetVariablePointer(handle,105,&zzsim.zzrnfl);
AcslSimSetVariablePointer(handle,106,&zzsim.zznist);
AcslSimSetVariablePointer(handle,107,&zzsim.zznblk);
AcslSimSetVariablePointer(handle,108,&zzsim.zzfrfl);
AcslSimSetVariablePointer(handle,109,&zzsim.zzjefl);
AcslSimSetVariablePointer(handle,110,&zzsim.zzndst);
AcslSimSetVariablePointer(handle,111,&zzsim.zzicon);
AcslSimSetVariablePointer(handle,112,&zzsim.zzicfl);
AcslSimSetVariablePointer(handle,113,&zzsim.zznavr);
AcslSimSetVariablePointer(handle,114,&zzsim.zzinstidx);
AcslSimSetVariablePointer(handle,115,&zzsim.zzstepstop);
AcslSimSetVariablePointer(handle,116,&zzsim.nciout);
AcslSimSetVariablePointer(handle,117,&zzsim.cioitg);
AcslSimSetVariablePointer(handle,118,&zzsim.cjvitg);
AcslSimSetVariablePointer(handle,119,&zzsim.cssitg);
AcslSimSetVariablePointer(handle,120,&zzsim.dpsitg);
AcslSimSetVariablePointer(handle,121,&zzsim.ecsitg);
AcslSimSetVariablePointer(handle,122,&zzsim.fdeitg);
AcslSimSetVariablePointer(handle,123,&zzsim.mxoitg);
AcslSimSetVariablePointer(handle,124,&zzsim.nrwitg);
AcslSimSetVariablePointer(handle,125,&zzsim.nxeitg);
AcslSimSetVariablePointer(handle,126,&zzsim.tjnitg);
AcslSimSetVariablePointer(handle,127,&zzsim.tsmitg);
AcslSimSetVariablePointer(handle,128,&zzsim.weditg);
AcslSimSetVariablePointer(handle,129,&zzsim.wesitg);
AcslSimSetVariablePointer(handle,130,&zzsim.wnditg);
AcslSimSetVariablePointer(handle,131,&zzsim.wxditg);
AcslSimSetVariablePointer(handle,132,&zzsim.cieitg);
AcslSimSetVariablePointer(handle,133,&zzsim.ubwitg);
AcslSimSetVariablePointer(handle,134,&zzsim.lbwitg);
AcslSimSetVariablePointer(handle,135,&zzsim.omfitg);
AcslSimSetVariablePointer(handle,136,&zzsim.cmd);
AcslSimSetVariablePointer(handle,137,&zzsim.dis);
AcslSimSetVariablePointer(handle,138,&zzsim.ndbug);
AcslSimSetVariablePointer(handle,139,&zzsim.plt);
AcslSimSetVariablePointer(handle,140,&zzsim.prn);
AcslSimSetVariablePointer(handle,141,&zzsim.malprn);
AcslSimSetVariablePointer(handle,142,&zzsim.rrr);
AcslSimSetVariablePointer(handle,143,&zzsim.save);
AcslSimSetVariablePointer(handle,144,&zzsim.zzticg);

zzsim.zzinstidx = handle;
}

//******************************************************************************
void zzsimulation(unsigned long handle)
//******************************************************************************

{
   if(zzsim.zzicon == false)
   {
      zznits(handle, "");




zzsim.countdw = 0.0;


zzsim.hourofday = 0.0;


zzsim.dayofweek = 0.0;


      AcslSimSetIntervalEvent(handle, 0, 1001, &zzsim.c2); 

      AcslSimSetIntervalEvent(handle, 0, 1002, &zzsim.c2); 

 
      zzrset(handle);
   }

   while(zzsim.zzstopflag == false && zzsim.zzstepstop == false)
   {



if((zzsim.t >= zzsim.tstop))
{

zztrmt(zzsim.zzinstidx,"checked on communication interval: REACHED TSTOP")
;

}

   

      AcslSimIntegrate(handle);
   }

   if(zzsim.zzstepstop == false)
   {
   


   

   }
}

//******************************************************************************
void zzderivative(unsigned long handle, unsigned long section)
//******************************************************************************

{

switch(section) 
{
   case 0: /* Initial */


			
		      
   break;
   case 1: /* Terminal */


			
		   
   break;
case 2: /* Dynamic */


			
		   
   break;
case 3: /* Left over code, executed once */


  
   
   break;


   /* Derivative */
			

case 500:


zzsim.z99999 = zzsim.drinkdose;


zzsim.z99997 = zzsim.drinkdose;


zzsim.qc = (zzsim.qcc * ( pow ( zzsim.bw , 0.75 ) ));


zzsim.qcp = (zzsim.qc * (1 - zzsim.htc));


zzsim.ql = (zzsim.qlc * zzsim.qcp);


zzsim.vplas = (zzsim.vplasc * zzsim.bw);


zzsim.ca = (zzsim.aplas / zzsim.vplas);


zzsim.vl = (zzsim.vlc * zzsim.bw);


zzsim.cl = (zzsim.al / zzsim.vl);


zzsim.cvl = (zzsim.cl / zzsim.pl);


zzsim.rl = (((zzsim.ql * (zzsim.ca - zzsim.cvl)) * zzsim.free) + zzsim.drinkdose);


zzsim.z99995 = zzsim.rl;


zzsim.qf = (zzsim.qfc * zzsim.qcp);


zzsim.vf = (zzsim.vfc * zzsim.bw);


zzsim.cf = (zzsim.af / zzsim.vf);


zzsim.cvf = (zzsim.cf / zzsim.pf);


zzsim.rf = ((zzsim.qf * (zzsim.ca - zzsim.cvf)) * zzsim.free);


zzsim.z99993 = zzsim.rf;


zzsim.qk = (zzsim.qkc * zzsim.qcp);


zzsim.qr = (((0.76 * zzsim.qcp) - zzsim.ql) - zzsim.qk);


zzsim.vk = (zzsim.vkc * zzsim.bw);


zzsim.vr = (((0.33 * zzsim.bw) - zzsim.vl) - zzsim.vk);


zzsim.cr = (zzsim.ar / zzsim.vr);


zzsim.cvr = (zzsim.cr / zzsim.pr);


zzsim.rr = ((zzsim.qr * (zzsim.ca - zzsim.cvr)) * zzsim.free);


zzsim.z99991 = zzsim.rr;


zzsim.qs = ((0.24 * zzsim.qcp) - zzsim.qf);


zzsim.vs = ((0.60 * zzsim.bw) - zzsim.vf);


zzsim.cs = (zzsim.as / zzsim.vs);


zzsim.cvs = (zzsim.cs / zzsim.ps);


zzsim.rs = ((zzsim.qs * (zzsim.ca - zzsim.cvs)) * zzsim.free);


zzsim.z99989 = zzsim.rs;


zzsim.ck = (zzsim.ak / zzsim.vk);


zzsim.cvk = (zzsim.ck / zzsim.pk);


zzsim.kurine = (zzsim.kurinec * ( pow ( zzsim.bw , 0.75 ) ));


zzsim.rurine = (zzsim.kurine * zzsim.cvk);


zzsim.rk = (((zzsim.qk * (zzsim.ca - zzsim.cvk)) * zzsim.free) - zzsim.rurine);


zzsim.z99987 = zzsim.rk;


zzsim.z99985 = zzsim.rurine;


zzsim.rplas = (((((((zzsim.qf * zzsim.cvf) * zzsim.free) + ((zzsim.ql * zzsim.cvl) * zzsim.free)) + ((zzsim.qk * zzsim.cvk) * zzsim.free)) + ((zzsim.qr * zzsim.cvr) * zzsim.free)) + ((zzsim.qs * zzsim.cvs) * zzsim.free)) - ((zzsim.qcp * zzsim.ca) * zzsim.free));


zzsim.z99983 = zzsim.rplas;


zzsim.z99998 = 0.;


zzsim.z99996 = 0.;


zzsim.z99994 = 0.;


zzsim.z99992 = 0.;


zzsim.z99990 = 0.;


zzsim.z99988 = 0.;


zzsim.z99986 = 0.;


zzsim.z99984 = 0.;


zzsim.z99982 = 0.;


zzsim.qbal = (zzsim.qcp - ((((zzsim.ql + zzsim.qf) + zzsim.qk) + zzsim.qr) + zzsim.qs));


zzsim.vbal = ((0.93 * zzsim.bw) - (((((zzsim.vl + zzsim.vf) + zzsim.vk) + zzsim.vplas) + zzsim.vr) + zzsim.vs));


zzsim.vd = (((zzsim.vl * zzsim.pl) + (zzsim.vf * zzsim.pf)) + (zzsim.vk * zzsim.pk));


zzsim.tm = (zzsim.tmc * ( pow ( zzsim.bw , 0.75 ) ));


zzsim.day = (zzsim.t / 24);


zzsim.year = (zzsim.day / 365);


break;


   /* Discrete */
	

case 1000:


AcslSimScheduleEvent(handle,1,1001,(AcslScheduleType)0,zzsim.tstart,0);


AcslSimDiscreteEventOccurred(handle,1000);


break;


   /* Discrete */
	

case 1001:



if((zzsim.t < 332880))
{


if((zzsim.hourofday < 16.0))
{

zzsim.drinkdose = ((zzsim.backgrounddw / zzsim.tlendw) * (zzsim.dwtotal / zzsim.drinks));


zzsim.countdw = (zzsim.countdw + 1);


AcslSimScheduleEvent(handle,2,1003,(AcslScheduleType)0,(zzsim.t + zzsim.tlendw),0);

}


zzsim.hourofday = (zzsim.hourofday + 4);



if((zzsim.hourofday == 24.0)) {
   
zzsim.dayofweek = (zzsim.dayofweek + 1.0);

}



if((zzsim.hourofday == 24.0)) {
   
zzsim.hourofday = 0.0;

}



if((zzsim.dayofweek == 7.0)) {
   
zzsim.dayofweek = 0.0;

}

}


AcslSimDiscreteEventOccurred(handle,1001);


break;


   /* Discrete */
	

case 1002:



if((zzsim.t > 332880))
{


if((zzsim.hourofday < 16.0))
{

zzsim.drinkdose = ((zzsim.exposeddw / zzsim.tlendw) * (zzsim.dwtotal / zzsim.drinks));


zzsim.countdw = (zzsim.countdw + 1);


AcslSimScheduleEvent(handle,3,1003,(AcslScheduleType)0,(zzsim.t + zzsim.tlendw),0);

}


zzsim.hourofday = (zzsim.hourofday + 4);



if((zzsim.hourofday == 24.0)) {
   
zzsim.dayofweek = (zzsim.dayofweek + 1.0);

}



if((zzsim.hourofday == 24.0)) {
   
zzsim.hourofday = 0.0;

}



if((zzsim.dayofweek == 7.0)) {
   
zzsim.dayofweek = 0.0;

}

}


AcslSimDiscreteEventOccurred(handle,1002);


break;


   /* Discrete */
	

case 1003:


zzsim.drinkdose = 0.0;


AcslSimDiscreteEventOccurred(handle,1003);


break;


}

}
