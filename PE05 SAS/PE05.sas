* Data Warehousing PE05 Ellie Parobek;

* Read in data;
libname MyLib 'folders/myfolders';
data patients;
	infile '/folders/myfolders/cleaning/patients.txt' dsd delimiter=';' firstobs=1;
	input patientNo $ gender $ visit $ HR $ SBP $ DPB $ DX $ AE;	
run;

data patients;
	modify patients;
	retain counter 0;
	
	* Fix patientNo;
	patientNo=counter;
	counter+1;
	
	* Fix visit;
	if missing(visit) then visit="01011900";
	if substr(visit, 1, 2)>12 then substr(visit, 1, 2)="12";
	if substr(visit, 3, 2)>31 then substr(visit, 3, 2)="31";
	if substr(visit, 5, 4)>1999 then substr(visit, 5, 4)="1999";
	if anyalpha(visit) then visit="01011900";
	
	* Fix HR;
	if missing(HR) then HR=40;
	if HR<40 then HR=40;
	if HR>100 then HR=100;
	
	* Fix SBP;
	if missing(SBP) then SBP=80;
	if SBP<80 then SBP=80;
	if SBP>200 then SBP=200;
	
	* Fix DPB;
	if missing(DPB) then DPB=60;
	if DPB<60 then DPB=60;
	if DPB>120 then DPB=120;
	
	* Fix DX;
	if missing(DX) then DX=999;
	if anyalpha(DX) then DX=999;
	
	* Fix AE;
	if missing(AE) then AE=0;
	if (AE ne 1 & AE ne 0) then AE=0;
run;

* Export data;
proc export data=patients outfile='/folders/myfolders/cleaning/patients_clean.txt' dbms=dlm replace;
	delimiter=';'; 
run;
