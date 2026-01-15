# Two-Sample t-Test: Teaching Method Effect on Grammar Score Improvement

## Background
An educational study was conducted to evaluate the effectiveness of a new teaching method compared with a standard instructional approach.
Students were assigned to either a control group (standard teaching) or a treatment group (new teaching method).
Grammar test scores were recorded before and after a 12-week instructional period.

## Objective
The objective of this analysis is to determine whether the mean improvement in grammar test scores differs between students receiving
the new teaching method and those receiving the standard method.

## Data Description
The analysis uses the `german` dataset, which contains pre-test and post-test grammar scores for students in two independent groups:
Control and Treatment. The primary variable of interest is the change in grammar score, calculated as the post-test score minus the pre-test score.
The dataset is treated as a sample from a larger student population.

## Statistical Approach
A two-sample t-test is used to compare the mean change in grammar test scores between the Control and Treatment groups. 
Prior to hypothesis testing, assumptions of approximate normality and equality of variances are assessed. Based on the variance assessment,
either the pooled t-test or the Satterthwaite (Welch) t-test is applied. All tests are conducted at a 5% significance level (α = 0.05).

## Outcome
The analysis evaluates whether there is sufficient statistical evidence to conclude that the average improvement in grammar scores differs 
between the two teaching methods. Results are interpreted using p-values and 95% confidence intervals for the mean difference.

## Deliverables
1. SAS programs implementing exploratory analysis, assumption checks, and a two-sample t-test
2. A publication-ready PDF report containing tables, figures, and statistical conclusions
3. Project documentation describing the analytical objective, methodology, and findings
