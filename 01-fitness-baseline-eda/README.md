# Project Overview

This project presents a baseline statistical analysis of fitness and physiological data collected from an exercise physiology study.
The analysis focuses on summarizing key participant characteristics and evaluating distributional assumptions to support appropriate downstream statistical modeling.

Such baseline assessments are common in clinical research, wellness studies, and observational health studies, where understanding data structure and assumptions
is critical before performing inferential or predictive analyses.

# Dataset Description

The Fitness dataset contains measurements from an exercise physiology study in which participants completed a standardized 1.5-mile run. 
During and after the run, several demographic, physiological, and performance-related variables were recorded.

The observations represent a sample drawn from a larger population of individuals capable of completing the exercise protocol.
As such, the dataset is appropriate for descriptive statistics, exploratory data analysis, and assumption checking.

## Key Variable Groups

### Demographics

1. Age (years)

2. Gender

### Anthropometric Measures

1. Weight (kilograms)

### Physiological Measures

1. Rest_Pulse (resting pulse rate)

2. Run_Pulse (pulse rate at the end of the run)

3. Maximum_Pulse (maximum pulse rate during the run)

4. Oxygen_Consumption (measure of oxygen utilization)

### Performance Metrics

1. RunTime (time to complete 1.5 miles, in minutes)

2. Performance (overall fitness score)

All continuous variables are recorded in standard units and analyzed as numeric measurements.

# Business Task

A wellness research team requires a baseline statistical summary and distributional assessment of selected variables prior to conducting further analyses.
The goal is to ensure data quality, understand variability, and determine whether parametric statistical methods are appropriate for later modeling and hypothesis testing.

This project addresses that need by producing reproducible descriptive statistics and graphical diagnostics using SAS.

# Analysis Questions
## Descriptive Statistics: WEIGHT

Using PROC MEANS, the following questions are answered for the WEIGHT variable:

1. How many observations are available?

2. What are the mean and median weights?

3. What is the variability of weight (standard deviation)?

4. What are the minimum and maximum values?

5. What are the first and third quartiles (Q1 and Q3)?

6. What is the range of the weight distribution?

7. What is the interquartile range (IQR)?

8. Is the distribution approximately symmetric or skewed? If skewed, in which direction?

9. What is the standard error of the mean (SEM)?

## Distribution Assessment: AGE

Using PROC UNIVARIATE with graphical output, the following questions are addressed for AGE:

1. Does the age distribution appear approximately normal?

2. Does the histogram with a normal overlay indicate symmetry?

3. Does the normal probability (Q–Q) plot show notable departures from normality?

4. Are there potential outliers or deviations that may affect modeling assumptions?

# Statistical Rationale

Understanding baseline distributions is essential before applying inferential or regression-based methods. Specifically:

1. Descriptive statistics summarize central tendency and variability

2. Distribution diagnostics support decisions regarding:

      a. Use of parametric vs non-parametric methods

      b. Suitability of regression-based analyses

      c. Interpretation of confidence intervals and hypothesis tests

# Tools and Methods

Software: SAS Studio (SAS OnDemand)

SAS Procedures Used:

      a. PROC MEANS – descriptive statistics

      b. PROC UNIVARIATE – distribution diagnostics

ODS Graphics: Histogram and normal probability plot

# Deliverables

1. Reproducible SAS program

2. Formatted statistical output

3. Graphical diagnostics

4. Clear interpretation of results and assumptions

# Key Takeaway

This project demonstrates foundational statistical programming skills in SAS, including descriptive analysis, assumption checking, and professional reporting—skills directly
applicable to associate-level statistical programming roles in clinical and health research environments.
