
* Assign Library;

libname stat1 "/home/u64046684/EST142/data";

* inspect dataset structure;
proc contents data=stat1.normtemp;
run;

* One-sample t-test comparing mean body temperature to 98.6°F;
proc ttest data=stat1.normtemp H0=98.6 plots(shownull)=interval;
	var bodytemp;
	title "Testing Whether the Mean Body Temperature=98.6";
run;