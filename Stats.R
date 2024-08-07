
R version 4.3.3 (2024-02-29) -- "Angel Food Cake"
Copyright (C) 2024 The R Foundation for Statistical Computing
Platform: aarch64-apple-darwin20 (64-bit)

R is free software and comes with ABSOLUTELY NO WARRANTY.
You are welcome to redistribute it under certain conditions.
Type 'license()' or 'licence()' for distribution details.

  Natural language support but running in an English locale

R is a collaborative project with many contributors.
Type 'contributors()' for more information and
'citation()' on how to cite R or R packages in publications.

Type 'demo()' for some demos, 'help()' for on-line help, or
'help.start()' for an HTML browser interface to help.
Type 'q()' to quit R.

[R.app GUI 1.80 (8340) aarch64-apple-darwin20]

[History restored from /Users/yaswanthganapathi/.Rapp.history]

> # Import data for MEEM department professors
> meem_data <- data.frame(
+   professor = c("Mahesh Gupta", "Ossama Abdelkhalik", "Fernando Ponta", "Susanta Ghosh",
+                 "Ashok Ambardar",
+                 "Nasser alarje", "Shiyan Hu", "james davis", "Rupak Rajachar", "megan frost",
+                 "Jeremy Goldman", "Bruce Lee", "Paul Nelson", "Dana Johnson", "Latha Poonamallee",
+                 "Jonathan Leinonen", "David poplawski", "Charles Wallace", "kim tracey", "yakov nekrich",
+                 "renfang jiang", "elizabeth reed", "juergen bierbrauer", "iosif pinelis"),
+   gpa = c(2.72, 3.41, 3.82, 3.25, 3.25, 3.19, 2.9, 3.4, 3.3, 3.57,
+           3.06, 2.79, 3.4, 3.4, 3.46, 3.51, 2.91, 3.08, 3.6, 2.98,
+           2.98, 2.92, 2.8, 3.09)
+ )
> 
> # Import data for professors from the unspecified department
> unspecified_data <- data.frame(
+   professor = c("Prof1", "Prof2", "Prof3", "Prof4", "Prof5", "Prof6", "Prof7", "Prof8", "Prof9",
+                 "Prof10"),
+   gpa = c(3.1, 3.3, 3.5, 3.2, 3.4, 3.6, 3.0, 3.8, 3.2, 3.7)
+ )
> 
> # Perform two-sample t-test
> t_test_result <- t.test(meem_data$gpa, unspecified_data$gpa)
> 
> # Print the test result
> print(t_test_result)

	Welch Two Sample t-test

data:  meem_data$gpa and unspecified_data$gpa
t = -1.7482, df = 18.573, p-value = 0.09693
alternative hypothesis: true difference in means is not equal to 0
95 percent confidence interval:
 -0.39675248  0.03591915
sample estimates:
mean of x mean of y 
 3.199583  3.380000 

> 
> 