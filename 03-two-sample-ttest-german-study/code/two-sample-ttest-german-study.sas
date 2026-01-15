libname stat1 "/home/u64046684/EST142/data";

proc contents data=stat1.german; * checks the metadata and info of the dataset; 
	title "metadeta and data structure";
run;

/*
proc report data=stat1.german(obs=20);
run;
*/

proc means data=stat1.german n mean median
	std stderr Q1 Q3 maxdec=2;
	class group;
	var change;
	title "descriptive statistics for 'change' by group(control vs Treatment)";
run;

/* Two-sample t-test (includes variance test + CI + plots) */
proc ttest data=stat1.german plots(shownull)=interval;
	class group;
	var change;
	title "two sample ttest: mean change (Treatment Vs Control)";
run;

