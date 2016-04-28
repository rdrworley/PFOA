
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
double avd;
double z99999;
double z99998;
double tstart;
double rintakec;
double ke;
double bw;
double vdc;
double vd;
double rintake;
double rvd;
double rexcretion;
double cvd;
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
0.0,
0.525,
0.1,
80.0,
170,
5.5555E+33,
5.5555E+33,
5.5555E+33,
5.5555E+33,
5.5555E+33,
8760.0,
1.0,
5,
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

	AcslSimSetSystemInfo(62,// numSymbols
	1, // numOdeStates
	0, // numDaeStates
	0, // numDelayStates
	11,// numAlgebraicVars
	1, // numDerivativeSections
	0, // numDiscreteSections
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

AcslSimSetVariableDescriptor(2,"avd",ACSL_DATATYPE_DOUBLE,ACSL_SYMBOLTYPE_STATE,0,0,0,0,0,0,-1,-1);
AcslSimSetVariableExtendedInfo(2,FALSE,FALSE,FALSE,TRUE,TRUE,FALSE,FALSE,FALSE,FALSE,FALSE, FALSE, 0, 0);

AcslSimSetVariableDescriptor(3,"z99999",ACSL_DATATYPE_DOUBLE,ACSL_SYMBOLTYPE_DERIV,0,0,0,0,0,0,-1,-1);
AcslSimSetVariableExtendedInfo(3,FALSE,FALSE,FALSE,TRUE,TRUE,FALSE,FALSE,FALSE,FALSE,FALSE, FALSE, 0, 0);

AcslSimSetVariableDescriptor(4,"z99998",ACSL_DATATYPE_DOUBLE,ACSL_SYMBOLTYPE_INITCOND,0,0,0,0,0,0,-1,-1);
AcslSimSetVariableExtendedInfo(4,FALSE,FALSE,FALSE,FALSE,TRUE,FALSE,FALSE,FALSE,FALSE,FALSE, FALSE, 0, 0);

AcslSimSetVariableDescriptor(5,"tstart",ACSL_DATATYPE_DOUBLE,ACSL_SYMBOLTYPE_ALGEBRAIC,0,0,0,0,0,0,-1,-1);
AcslSimSetVariableExtendedInfo(5,FALSE,TRUE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE, FALSE, 0, 0);

AcslSimSetVariableDescriptor(6,"rintakec",ACSL_DATATYPE_DOUBLE,ACSL_SYMBOLTYPE_ALGEBRAIC,0,0,0,0,0,0,-1,-1);
AcslSimSetVariableExtendedInfo(6,FALSE,TRUE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE, FALSE, 0, 0);

AcslSimSetVariableDescriptor(7,"ke",ACSL_DATATYPE_DOUBLE,ACSL_SYMBOLTYPE_ALGEBRAIC,0,0,0,0,0,0,-1,-1);
AcslSimSetVariableExtendedInfo(7,FALSE,TRUE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE, FALSE, 0, 0);

AcslSimSetVariableDescriptor(8,"bw",ACSL_DATATYPE_DOUBLE,ACSL_SYMBOLTYPE_ALGEBRAIC,0,0,0,0,0,0,-1,-1);
AcslSimSetVariableExtendedInfo(8,FALSE,TRUE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE, FALSE, 0, 0);

AcslSimSetVariableDescriptor(9,"vdc",ACSL_DATATYPE_DOUBLE,ACSL_SYMBOLTYPE_ALGEBRAIC,0,0,0,0,0,0,-1,-1);
AcslSimSetVariableExtendedInfo(9,FALSE,TRUE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE, FALSE, 0, 0);

AcslSimSetVariableDescriptor(10,"vd",ACSL_DATATYPE_DOUBLE,ACSL_SYMBOLTYPE_ALGEBRAIC,0,0,0,0,0,0,-1,-1);
AcslSimSetVariableExtendedInfo(10,FALSE,FALSE,FALSE,TRUE,TRUE,FALSE,FALSE,FALSE,FALSE,FALSE, FALSE, 0, 0);

AcslSimSetVariableDescriptor(11,"rintake",ACSL_DATATYPE_DOUBLE,ACSL_SYMBOLTYPE_ALGEBRAIC,0,0,0,0,0,0,-1,-1);
AcslSimSetVariableExtendedInfo(11,FALSE,FALSE,FALSE,TRUE,TRUE,FALSE,FALSE,FALSE,FALSE,FALSE, FALSE, 0, 0);

AcslSimSetVariableDescriptor(12,"rvd",ACSL_DATATYPE_DOUBLE,ACSL_SYMBOLTYPE_ALGEBRAIC,0,0,0,0,0,0,-1,-1);
AcslSimSetVariableExtendedInfo(12,FALSE,FALSE,FALSE,TRUE,TRUE,FALSE,FALSE,FALSE,FALSE,FALSE, FALSE, 0, 0);

AcslSimSetVariableDescriptor(13,"rexcretion",ACSL_DATATYPE_DOUBLE,ACSL_SYMBOLTYPE_ALGEBRAIC,0,0,0,0,0,0,-1,-1);
AcslSimSetVariableExtendedInfo(13,FALSE,FALSE,FALSE,TRUE,TRUE,FALSE,FALSE,FALSE,FALSE,FALSE, FALSE, 0, 0);

AcslSimSetVariableDescriptor(14,"cvd",ACSL_DATATYPE_DOUBLE,ACSL_SYMBOLTYPE_ALGEBRAIC,0,0,0,0,0,0,-1,-1);
AcslSimSetVariableExtendedInfo(14,FALSE,FALSE,FALSE,FALSE,TRUE,FALSE,FALSE,FALSE,FALSE,FALSE, FALSE, 0, 0);

AcslSimSetVariableDescriptor(15,"tstop",ACSL_DATATYPE_DOUBLE,ACSL_SYMBOLTYPE_ALGEBRAIC,0,0,0,0,0,0,-1,-1);
AcslSimSetVariableExtendedInfo(15,FALSE,TRUE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE, FALSE, 0, 0);

AcslSimSetVariableDescriptor(16,"cint",ACSL_DATATYPE_DOUBLE,ACSL_SYMBOLTYPE_CINTERVAL,0,0,0,0,0,0,-1,-1);
AcslSimSetVariableExtendedInfo(16,TRUE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE, FALSE, 0, 0);

AcslSimSetVariableDescriptor(17,"ialg",ACSL_DATATYPE_LONG,ACSL_SYMBOLTYPE_ALGORITHM,0,0,0,0,0,0,-1,-1);
AcslSimSetVariableExtendedInfo(17,TRUE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE, FALSE, 0, 0);

AcslSimSetVariableDescriptor(18,"nstp",ACSL_DATATYPE_LONG,ACSL_SYMBOLTYPE_NSTEPS,0,0,0,0,0,0,-1,-1);
AcslSimSetVariableExtendedInfo(18,TRUE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE, FALSE, 0, 0);

AcslSimSetVariableDescriptor(19,"maxt",ACSL_DATATYPE_DOUBLE,ACSL_SYMBOLTYPE_MAXTERVAL,0,0,0,0,0,0,-1,-1);
AcslSimSetVariableExtendedInfo(19,TRUE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE, FALSE, 0, 0);

AcslSimSetVariableDescriptor(20,"mint",ACSL_DATATYPE_DOUBLE,ACSL_SYMBOLTYPE_MINTERVAL,0,0,0,0,0,0,-1,-1);
AcslSimSetVariableExtendedInfo(20,TRUE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE, FALSE, 0, 0);

AcslSimSetVariableDescriptor(21,"zzierr",ACSL_DATATYPE_BOOLEAN,ACSL_SYMBOLTYPE_ERRTAG,0,0,0,0,0,0,-1,-1);
AcslSimSetVariableExtendedInfo(21,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE, FALSE, 0, 0);

AcslSimSetVariableDescriptor(22,"zzstopflag",ACSL_DATATYPE_BOOLEAN,ACSL_SYMBOLTYPE_SYSTEMVAR,0,0,0,0,0,0,-1,-1);
AcslSimSetVariableExtendedInfo(22,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE, FALSE, 0, 0);

AcslSimSetVariableDescriptor(23,"zzrnfl",ACSL_DATATYPE_BOOLEAN,ACSL_SYMBOLTYPE_SYSTEMVAR,0,0,0,0,0,0,-1,-1);
AcslSimSetVariableExtendedInfo(23,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE, FALSE, 0, 0);

AcslSimSetVariableDescriptor(24,"zznist",ACSL_DATATYPE_LONG,ACSL_SYMBOLTYPE_SYSTEMVAR,0,0,0,0,0,0,-1,-1);
AcslSimSetVariableExtendedInfo(24,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE, FALSE, 0, 0);

AcslSimSetVariableDescriptor(25,"zznblk",ACSL_DATATYPE_LONG,ACSL_SYMBOLTYPE_SYSTEMVAR,0,0,0,0,0,0,-1,-1);
AcslSimSetVariableExtendedInfo(25,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE, FALSE, 0, 0);

AcslSimSetVariableDescriptor(26,"zzfrfl",ACSL_DATATYPE_BOOLEAN,ACSL_SYMBOLTYPE_SYSTEMVAR,0,0,0,0,0,0,-1,-1);
AcslSimSetVariableExtendedInfo(26,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE, FALSE, 0, 0);

AcslSimSetVariableDescriptor(27,"zzjefl",ACSL_DATATYPE_BOOLEAN,ACSL_SYMBOLTYPE_SYSTEMVAR,0,0,0,0,0,0,-1,-1);
AcslSimSetVariableExtendedInfo(27,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE, FALSE, 0, 0);

AcslSimSetVariableDescriptor(28,"zzndst",ACSL_DATATYPE_LONG,ACSL_SYMBOLTYPE_SYSTEMVAR,0,0,0,0,0,0,-1,-1);
AcslSimSetVariableExtendedInfo(28,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE, FALSE, 0, 0);

AcslSimSetVariableDescriptor(29,"zzicon",ACSL_DATATYPE_LONG,ACSL_SYMBOLTYPE_SYSTEMVAR,0,0,0,0,0,0,-1,-1);
AcslSimSetVariableExtendedInfo(29,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE, FALSE, 0, 0);

AcslSimSetVariableDescriptor(30,"zzicfl",ACSL_DATATYPE_BOOLEAN,ACSL_SYMBOLTYPE_SYSTEMVAR,0,0,0,0,0,0,-1,-1);
AcslSimSetVariableExtendedInfo(30,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE, FALSE, 0, 0);

AcslSimSetVariableDescriptor(31,"zznavr",ACSL_DATATYPE_LONG,ACSL_SYMBOLTYPE_SYSTEMVAR,0,0,0,0,0,0,-1,-1);
AcslSimSetVariableExtendedInfo(31,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE, FALSE, 0, 0);

AcslSimSetVariableDescriptor(32,"zzinstidx",ACSL_DATATYPE_LONG,ACSL_SYMBOLTYPE_SYSTEMVAR,0,0,0,0,0,0,-1,-1);
AcslSimSetVariableExtendedInfo(32,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE, FALSE, 0, 0);

AcslSimSetVariableDescriptor(33,"zzstepstop",ACSL_DATATYPE_BOOLEAN,ACSL_SYMBOLTYPE_SYSTEMVAR,0,0,0,0,0,0,-1,-1);
AcslSimSetVariableExtendedInfo(33,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE, FALSE, 0, 0);

AcslSimSetVariableDescriptor(34,"nciout",ACSL_DATATYPE_LONG,ACSL_SYMBOLTYPE_ACSLSYSTEMVAR,0,0,0,0,0,0,-1,-1);
AcslSimSetVariableExtendedInfo(34,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE, FALSE, 0, 0);

AcslSimSetVariableDescriptor(35,"cioitg",ACSL_DATATYPE_LONG,ACSL_SYMBOLTYPE_ACSLSYSTEMVAR,0,0,0,0,0,0,-1,-1);
AcslSimSetVariableExtendedInfo(35,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE, FALSE, 0, 0);

AcslSimSetVariableDescriptor(36,"cjvitg",ACSL_DATATYPE_BOOLEAN,ACSL_SYMBOLTYPE_ACSLSYSTEMVAR,0,0,0,0,0,0,-1,-1);
AcslSimSetVariableExtendedInfo(36,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE, FALSE, 0, 0);

AcslSimSetVariableDescriptor(37,"cssitg",ACSL_DATATYPE_DOUBLE,ACSL_SYMBOLTYPE_ACSLSYSTEMVAR,0,0,0,0,0,0,-1,-1);
AcslSimSetVariableExtendedInfo(37,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE, FALSE, 0, 0);

AcslSimSetVariableDescriptor(38,"dpsitg",ACSL_DATATYPE_BOOLEAN,ACSL_SYMBOLTYPE_ACSLSYSTEMVAR,0,0,0,0,0,0,-1,-1);
AcslSimSetVariableExtendedInfo(38,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE, FALSE, 0, 0);

AcslSimSetVariableDescriptor(39,"ecsitg",ACSL_DATATYPE_BOOLEAN,ACSL_SYMBOLTYPE_ACSLSYSTEMVAR,0,0,0,0,0,0,-1,-1);
AcslSimSetVariableExtendedInfo(39,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE, FALSE, 0, 0);

AcslSimSetVariableDescriptor(40,"fdeitg",ACSL_DATATYPE_BOOLEAN,ACSL_SYMBOLTYPE_ACSLSYSTEMVAR,0,0,0,0,0,0,-1,-1);
AcslSimSetVariableExtendedInfo(40,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE, FALSE, 0, 0);

AcslSimSetVariableDescriptor(41,"mxoitg",ACSL_DATATYPE_LONG,ACSL_SYMBOLTYPE_ACSLSYSTEMVAR,0,0,0,0,0,0,-1,-1);
AcslSimSetVariableExtendedInfo(41,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE, FALSE, 0, 0);

AcslSimSetVariableDescriptor(42,"nrwitg",ACSL_DATATYPE_BOOLEAN,ACSL_SYMBOLTYPE_ACSLSYSTEMVAR,0,0,0,0,0,0,-1,-1);
AcslSimSetVariableExtendedInfo(42,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE, FALSE, 0, 0);

AcslSimSetVariableDescriptor(43,"nxeitg",ACSL_DATATYPE_BOOLEAN,ACSL_SYMBOLTYPE_ACSLSYSTEMVAR,0,0,0,0,0,0,-1,-1);
AcslSimSetVariableExtendedInfo(43,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE, FALSE, 0, 0);

AcslSimSetVariableDescriptor(44,"tjnitg",ACSL_DATATYPE_DOUBLE,ACSL_SYMBOLTYPE_ACSLSYSTEMVAR,0,0,0,0,0,0,-1,-1);
AcslSimSetVariableExtendedInfo(44,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE, FALSE, 0, 0);

AcslSimSetVariableDescriptor(45,"tsmitg",ACSL_DATATYPE_BOOLEAN,ACSL_SYMBOLTYPE_ACSLSYSTEMVAR,0,0,0,0,0,0,-1,-1);
AcslSimSetVariableExtendedInfo(45,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE, FALSE, 0, 0);

AcslSimSetVariableDescriptor(46,"weditg",ACSL_DATATYPE_BOOLEAN,ACSL_SYMBOLTYPE_ACSLSYSTEMVAR,0,0,0,0,0,0,-1,-1);
AcslSimSetVariableExtendedInfo(46,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE, FALSE, 0, 0);

AcslSimSetVariableDescriptor(47,"wesitg",ACSL_DATATYPE_BOOLEAN,ACSL_SYMBOLTYPE_ACSLSYSTEMVAR,0,0,0,0,0,0,-1,-1);
AcslSimSetVariableExtendedInfo(47,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE, FALSE, 0, 0);

AcslSimSetVariableDescriptor(48,"wnditg",ACSL_DATATYPE_BOOLEAN,ACSL_SYMBOLTYPE_ACSLSYSTEMVAR,0,0,0,0,0,0,-1,-1);
AcslSimSetVariableExtendedInfo(48,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE, FALSE, 0, 0);

AcslSimSetVariableDescriptor(49,"wxditg",ACSL_DATATYPE_BOOLEAN,ACSL_SYMBOLTYPE_ACSLSYSTEMVAR,0,0,0,0,0,0,-1,-1);
AcslSimSetVariableExtendedInfo(49,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE, FALSE, 0, 0);

AcslSimSetVariableDescriptor(50,"cieitg",ACSL_DATATYPE_BOOLEAN,ACSL_SYMBOLTYPE_ACSLSYSTEMVAR,0,0,0,0,0,0,-1,-1);
AcslSimSetVariableExtendedInfo(50,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE, FALSE, 0, 0);

AcslSimSetVariableDescriptor(51,"ubwitg",ACSL_DATATYPE_LONG,ACSL_SYMBOLTYPE_ACSLSYSTEMVAR,0,0,0,0,0,0,-1,-1);
AcslSimSetVariableExtendedInfo(51,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE, FALSE, 0, 0);

AcslSimSetVariableDescriptor(52,"lbwitg",ACSL_DATATYPE_LONG,ACSL_SYMBOLTYPE_ACSLSYSTEMVAR,0,0,0,0,0,0,-1,-1);
AcslSimSetVariableExtendedInfo(52,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE, FALSE, 0, 0);

AcslSimSetVariableDescriptor(53,"omfitg",ACSL_DATATYPE_LONG,ACSL_SYMBOLTYPE_ACSLSYSTEMVAR,0,0,0,0,0,0,-1,-1);
AcslSimSetVariableExtendedInfo(53,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE, FALSE, 0, 0);

AcslSimSetVariableDescriptor(54,"cmd",ACSL_DATATYPE_LONG,ACSL_SYMBOLTYPE_ACSLSYSTEMVAR,0,0,0,0,0,0,-1,-1);
AcslSimSetVariableExtendedInfo(54,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE, FALSE, 0, 0);

AcslSimSetVariableDescriptor(55,"dis",ACSL_DATATYPE_LONG,ACSL_SYMBOLTYPE_ACSLSYSTEMVAR,0,0,0,0,0,0,-1,-1);
AcslSimSetVariableExtendedInfo(55,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE, FALSE, 0, 0);

AcslSimSetVariableDescriptor(56,"ndbug",ACSL_DATATYPE_LONG,ACSL_SYMBOLTYPE_ACSLSYSTEMVAR,0,0,0,0,0,0,-1,-1);
AcslSimSetVariableExtendedInfo(56,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE, FALSE, 0, 0);

AcslSimSetVariableDescriptor(57,"plt",ACSL_DATATYPE_LONG,ACSL_SYMBOLTYPE_ACSLSYSTEMVAR,0,0,0,0,0,0,-1,-1);
AcslSimSetVariableExtendedInfo(57,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE, FALSE, 0, 0);

AcslSimSetVariableDescriptor(58,"prn",ACSL_DATATYPE_LONG,ACSL_SYMBOLTYPE_ACSLSYSTEMVAR,0,0,0,0,0,0,-1,-1);
AcslSimSetVariableExtendedInfo(58,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE, FALSE, 0, 0);

AcslSimSetVariableDescriptor(59,"malprn",ACSL_DATATYPE_LONG,ACSL_SYMBOLTYPE_ACSLSYSTEMVAR,0,0,0,0,0,0,-1,-1);
AcslSimSetVariableExtendedInfo(59,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE, FALSE, 0, 0);

AcslSimSetVariableDescriptor(60,"rrr",ACSL_DATATYPE_LONG,ACSL_SYMBOLTYPE_ACSLSYSTEMVAR,0,0,0,0,0,0,-1,-1);
AcslSimSetVariableExtendedInfo(60,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE, FALSE, 0, 0);

AcslSimSetVariableDescriptor(61,"save",ACSL_DATATYPE_LONG,ACSL_SYMBOLTYPE_ACSLSYSTEMVAR,0,0,0,0,0,0,-1,-1);
AcslSimSetVariableExtendedInfo(61,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE, FALSE, 0, 0);

AcslSimSetVariableDescriptor(62,"zzticg",ACSL_DATATYPE_DOUBLE,ACSL_SYMBOLTYPE_VARIABLE_INIT,0,0,0,0,0,0,-1,-1);
AcslSimSetVariableExtendedInfo(62,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE, FALSE, 0, 0);

}

//******************************************************************************
void zzinitialize(unsigned long handle)
//******************************************************************************

{
AcslSimSetVariablePointer(handle,1,&zzsim.t);
AcslSimSetVariablePointer(handle,2,&zzsim.avd);
AcslSimSetVariablePointer(handle,3,&zzsim.z99999);
AcslSimSetVariablePointer(handle,4,&zzsim.z99998);
AcslSimSetVariablePointer(handle,5,&zzsim.tstart);
AcslSimSetVariablePointer(handle,6,&zzsim.rintakec);
AcslSimSetVariablePointer(handle,7,&zzsim.ke);
AcslSimSetVariablePointer(handle,8,&zzsim.bw);
AcslSimSetVariablePointer(handle,9,&zzsim.vdc);
AcslSimSetVariablePointer(handle,10,&zzsim.vd);
AcslSimSetVariablePointer(handle,11,&zzsim.rintake);
AcslSimSetVariablePointer(handle,12,&zzsim.rvd);
AcslSimSetVariablePointer(handle,13,&zzsim.rexcretion);
AcslSimSetVariablePointer(handle,14,&zzsim.cvd);
AcslSimSetVariablePointer(handle,15,&zzsim.tstop);
AcslSimSetVariablePointer(handle,16,&zzsim.cint);
AcslSimSetVariablePointer(handle,17,&zzsim.ialg);
AcslSimSetVariablePointer(handle,18,&zzsim.nstp);
AcslSimSetVariablePointer(handle,19,&zzsim.maxt);
AcslSimSetVariablePointer(handle,20,&zzsim.mint);
AcslSimSetVariablePointer(handle,21,&zzsim.zzierr);
AcslSimSetVariablePointer(handle,22,&zzsim.zzstopflag);
AcslSimSetVariablePointer(handle,23,&zzsim.zzrnfl);
AcslSimSetVariablePointer(handle,24,&zzsim.zznist);
AcslSimSetVariablePointer(handle,25,&zzsim.zznblk);
AcslSimSetVariablePointer(handle,26,&zzsim.zzfrfl);
AcslSimSetVariablePointer(handle,27,&zzsim.zzjefl);
AcslSimSetVariablePointer(handle,28,&zzsim.zzndst);
AcslSimSetVariablePointer(handle,29,&zzsim.zzicon);
AcslSimSetVariablePointer(handle,30,&zzsim.zzicfl);
AcslSimSetVariablePointer(handle,31,&zzsim.zznavr);
AcslSimSetVariablePointer(handle,32,&zzsim.zzinstidx);
AcslSimSetVariablePointer(handle,33,&zzsim.zzstepstop);
AcslSimSetVariablePointer(handle,34,&zzsim.nciout);
AcslSimSetVariablePointer(handle,35,&zzsim.cioitg);
AcslSimSetVariablePointer(handle,36,&zzsim.cjvitg);
AcslSimSetVariablePointer(handle,37,&zzsim.cssitg);
AcslSimSetVariablePointer(handle,38,&zzsim.dpsitg);
AcslSimSetVariablePointer(handle,39,&zzsim.ecsitg);
AcslSimSetVariablePointer(handle,40,&zzsim.fdeitg);
AcslSimSetVariablePointer(handle,41,&zzsim.mxoitg);
AcslSimSetVariablePointer(handle,42,&zzsim.nrwitg);
AcslSimSetVariablePointer(handle,43,&zzsim.nxeitg);
AcslSimSetVariablePointer(handle,44,&zzsim.tjnitg);
AcslSimSetVariablePointer(handle,45,&zzsim.tsmitg);
AcslSimSetVariablePointer(handle,46,&zzsim.weditg);
AcslSimSetVariablePointer(handle,47,&zzsim.wesitg);
AcslSimSetVariablePointer(handle,48,&zzsim.wnditg);
AcslSimSetVariablePointer(handle,49,&zzsim.wxditg);
AcslSimSetVariablePointer(handle,50,&zzsim.cieitg);
AcslSimSetVariablePointer(handle,51,&zzsim.ubwitg);
AcslSimSetVariablePointer(handle,52,&zzsim.lbwitg);
AcslSimSetVariablePointer(handle,53,&zzsim.omfitg);
AcslSimSetVariablePointer(handle,54,&zzsim.cmd);
AcslSimSetVariablePointer(handle,55,&zzsim.dis);
AcslSimSetVariablePointer(handle,56,&zzsim.ndbug);
AcslSimSetVariablePointer(handle,57,&zzsim.plt);
AcslSimSetVariablePointer(handle,58,&zzsim.prn);
AcslSimSetVariablePointer(handle,59,&zzsim.malprn);
AcslSimSetVariablePointer(handle,60,&zzsim.rrr);
AcslSimSetVariablePointer(handle,61,&zzsim.save);
AcslSimSetVariablePointer(handle,62,&zzsim.zzticg);

zzsim.zzinstidx = handle;
}

//******************************************************************************
void zzsimulation(unsigned long handle)
//******************************************************************************

{
   if(zzsim.zzicon == false)
   {
      zznits(handle, "");




 
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


zzsim.rintake = (zzsim.rintakec * zzsim.bw);


zzsim.rexcretion = (zzsim.avd * zzsim.ke);


zzsim.rvd = (zzsim.rintake - zzsim.rexcretion);


zzsim.z99999 = zzsim.rvd;


zzsim.z99998 = 0.0;


zzsim.vd = (zzsim.vdc * zzsim.bw);


zzsim.cvd = (zzsim.avd / zzsim.vd);


break;


}

}
