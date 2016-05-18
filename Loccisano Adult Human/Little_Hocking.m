%plots for testing human model; drinking water 
%little hocking study published by Emmett et al., 2006
output @clear
prepare @clear @all

WESITG = 0 ;
WEDITG = 0 ;
CJVITG = 0 ;

%pfoa_human

PDOSE = 0.0 ; %0.1 %0.0 %mg/kg 
IVCONC = 0.0 ;
DRINKCONC = 0.4 ; %ppb (ug/L)

DRINKRATE =  15 ; %24.5 %19.1 %11   %mL/kg BW/day
BW = 80 ; %58 %kg
CINTC = 10.0 ;


TSTOP = 10000.0;
DSTOP = 5000.0 ;

start @NoCallback

%plot o' plasma concentration
%load E6_FAll_plasma @file='E6_FAll_plasma.csv'@format=ascii
%load LH_2006 @file='LH_2006.csv'@format=ascii
%load LH_2006_2 @file='LH_2006_2.csv'@format=ascii
%load LH_2006_3 @file='LH_2006_3.csv'@format=ascii

%plot(_t,_ca2,'r',E6_FAll_plasma(:,1),'*',E6_FAll_plasma(:,2),'*',E6_FAll_plasma(:,3),'*',E6_FAll_plasma(:,4),'*',E6_FAll_plasma(:,5),'*',E6_FAll_plasma(:,6),'*',E6_FAll_plasma(:,7),'*',E6_FAll_plasma(:,8),'*',"pfoa_test_serum_1mg.aps")


%plot(_yr,_ca,'r',LH_2006(:,1),'*',LH_2006(:,2),'*',"LH_2006.aps")
%plot(_yr,_ca,'b',LH_2006_2(:,1),'*',LH_2006_2(:,2),'*',"LH_2006_2.aps")
%plot(_yr,_ca,'b',LH_2006_3(:,1),'*',LH_2006_3(:,2),'*',"LH_2006_3.aps")
%plot(_yr,_cafree,_ca)
plot(_yr,_ca)

%amount of chemical in tissues at end of simulation (for use in gestation model)--ug
APLAS0 = APLAS     %plasma
AG0 = AG           %gut
AL0 = AL           %liver
AF0 = AF           %fat
AK0 = AK           %kidney
AFIL0 = AFIL       %filtrate
ADELAY0 = ADELAY   %storage
ASK0 = ASK         %skin
AURINE0 = AURINE   %urine
AR0 = AR           %rest of body tissues

