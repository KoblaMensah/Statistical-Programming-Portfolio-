libname Statdata "/home/u64046684/ESTAT0/data";

proc contents data=statdata.fitness; * checks the content of the dataset: number and type of variables as well as observations; 
run;

proc print data=statdata.fitness; * prints the entire 31 observation of the dataset;
run;

proc means data=statdata.fitness N min max mean median std Q1 Q3 stderr QRANGE maxdec= 2; * used the proc mean statement to print summary statistic of the wieght varaible;
	var weight;
	title "summary statistic of the weight variable";
run;
/*
From the summary statistics, there are indeed 31 observations, the mean and the median are  almost
the same hence we can could assume that the dataset is symetric but to be more certain, we could use
the Proc Univariate statement to print a boxplot or probability plot to visualize our data even futher.
By substracting the lower quartile (Q1) from the upper quartile(Q3) we get the inter quartile range. 
Also, by substracting the min value from the max value we get the range of the dataset. standard error of the mean(SEM) is calculated by dividing 
the standard deviation by the square root of number of observation.
*/

ods graphics on /width=600 ;
ods select histogram probplot;

proc Univariate data=statdata.fitness;
	var age;
	histogram age / normal (mu=est sigma= est) nmidpoints=8;
	inset skewness kurtosis / position= ne ;
	probplot age / normal(mu=est sigma=est);
	title "used proc univariate to visualize descriptive statistics of the age variable, print a normal distribution and a probability plot";
run;

/*
The histogram appears to fit the normal curve nicely.

for the normal probability plot, the points follow the normality reference line. It is ideal to say that this variable is approximately normal.
*/
