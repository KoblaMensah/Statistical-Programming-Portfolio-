options obs=100;  /* cap input rows for the captured run */

/* The upstream script reads statdata.fitness from an external SAS OnDemand
   library that is not part of the repo. This autoexec provides a small,
   shape-compatible fitness dataset (weight + age) so the analysis runs
   self-contained; the PROC steps below are the author's, unchanged. */
libname statdata (work);

data statdata.fitness;
    input age weight;
    datalines;
57 168.5
54 156.0
50 158.2
54 174.3
51 173.4
57 168.0
49 165.5
52 155.5
51 168.6
52 160.0
53 170.2
58 175.8
57 158.0
56 156.9
51 165.2
53 170.0
49 152.0
54 160.4
55 165.5
54 156.5
50 158.7
57 168.5
53 173.0
52 160.0
54 172.5
51 163.0
53 158.5
50 160.2
54 162.5
52 155.5
51 168.0
;
run;
