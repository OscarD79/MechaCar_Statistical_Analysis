# MechaCar_Statistical_Analysis

## Background
A few weeks after starting his new role, Jeremy is approached by upper management about a special project. AutosRUs’ newest prototype, the MechaCar, is suffering from production troubles that are blocking the manufacturing team’s progress. AutosRUs’ upper management has called on Jeremy and the data analytics team to review the production data for insights that may help the manufacturing team.

1. Linear Regression to Predict MPG
	* Perform multiple linear regression analysis to identify which variables in the dataset predict the 	mpg of MechaCar prototypes

	![MechaCar Lienar Model Summary](./Resources/MultilinearRegression1.png)

	* Question 1: Which variables/coefficients provide a non-random amount of variance to the mpg values 	in the dataset?

	- Methodology: Review the Pr(>|t|) value in the summary above represents the probability that each 	coefficient contributes a random amount of variance to the linear model

	- Answer: **The car's length and ground clearance have a significant impact on mpg.**

	* Question 2: Is the slope of the linear model considered to be zero? Why or why not?
	
	- Methodology: Examine the P-value in the summary above to see if the intercept is statistically 	significant.

	- Answer: **As the intercept is statistically significant and not zero, it indicates that the 	intercept explains a significant amount of variability in the dependent variable when all independent 	varaiables are set to zero.** This could mean two possible things, either significant features may 	need scaling or transforming to help improve the predictive power of the model or that there are other 	variables that can help explain the variability of the independent variable that are missing from the 	data.

	 * Question 3: Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?

	- Methodology: Review the muliple R-squared value to indicate how well the regression model 	approximates the data points.The value should be between 0 and 1 and should be able to predict future 	data points well.

	- Answer: **As the mulitple R-squared value is 0.71 and the p-value is significant this model does a 	good job of predicting mpg.**

2. Deliverable 2: Summary Statistics on Suspension Coils
	* Collect summary statistics on the pounds per square inch (PSI) of the suspension coils from the 	manufacturing lots

	![Suspension Coil Summary](./Resources/Summary_PSI1.png)


3. Deliverable 3: T-Test on Suspension Coils
	* Run t-tests to determine if the manufacturing lots are statistically different from the mean 	population


4. Deliverable 4: Design a Study Comparing the MechaCar to the Competition
	* Design a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles 	from other manufacturers. For each statistical analysis, you’ll write a summary interpretation of the 	findings.
