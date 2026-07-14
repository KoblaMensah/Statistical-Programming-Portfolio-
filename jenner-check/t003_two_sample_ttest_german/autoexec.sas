options obs=100;  /* cap input rows for the captured run */

/* The upstream script reads stat1.german from an external SAS OnDemand
   library that is not part of the repo. This autoexec provides a small,
   shape-compatible german dataset (a group classification of Control vs
   Treatment and a numeric change measure) so the two-sample t-test runs
   self-contained; the PROC steps below are the author's, unchanged. */
libname stat1 (work);

data stat1.german;
    input group $ change;
    datalines;
Control 2.1
Control 1.8
Control 2.5
Control 1.6
Control 2.0
Control 2.3
Control 1.9
Control 2.2
Control 1.7
Control 2.4
Control 2.0
Control 1.5
Treatment 3.4
Treatment 3.9
Treatment 3.1
Treatment 4.2
Treatment 3.6
Treatment 3.8
Treatment 3.3
Treatment 4.0
Treatment 3.5
Treatment 3.7
Treatment 3.2
Treatment 4.1
;
run;
