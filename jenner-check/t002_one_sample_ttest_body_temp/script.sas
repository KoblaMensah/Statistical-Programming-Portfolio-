/* Upstream reads stat1.normtemp from an external SAS OnDemand library that
   is not part of the repo. A small shape-compatible normtemp dataset (a
   bodytemp column of temperature readings in degrees F) is defined inline
   here so this file runs self-contained; the PROC steps below are the
   author's, unchanged. */
data normtemp;
    input bodytemp;
    datalines;
98.4
98.0
97.8
98.6
98.2
99.0
98.8
97.6
98.2
98.4
97.9
98.1
98.7
98.3
97.5
98.9
98.0
98.5
98.2
97.7
98.6
98.1
98.3
98.0
97.8
98.4
98.2
98.5
97.9
98.3
;
run;

* inspect dataset structure;
proc contents data=normtemp;
run;

* One-sample t-test comparing mean body temperature to 98.6°F;
proc ttest data=normtemp H0=98.6 plots(shownull)=interval;
	var bodytemp;
	title "Testing Whether the Mean Body Temperature=98.6";
run;
