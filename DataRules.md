## Application Overview
This great application is based on the Data Science Specialization at Johns Hopkins University, and more specifically on the **"Statistical Inference"** Course. The basis of the contents, analysis, formulas and others, come from the knowledge acquired in that course.

Our field of action (as in the Statistical Inference course), is to try to do several different simulations.
We analyze the Exponential Distribution of R which is compared with the *DataRules"Central Limit Theorem"DataRules*. On that occasion, we studied the distribution of 1,000 averages from 40 variables, which were exponentially distributed with a lambda value of 0.2.

## Input
In this application, we are able to change the number of simulations (e.g. 1000), the number of exponentials we generate in each simulation (e.g. 40), the rate parameter lambda (e.g. 0.2), and the seed we use for randomnisation.

The variables can be easily changed by the user when interacting directly with the software tool.

## Output
- Two plots that show the distribution of the exponentials and the distribution of the means of the exponentials. The latter should be approximately normal.
- Both the theoretical and sample values of the mean and variance of the average of the exponentials, which should be very close.
- Up to user's choice, a red line indicating the sample mean can be shown on the second plot.

## References
This presentation is created as part of the course project of the *Developing Data Products* course in the data science specialization. The project consists of the following two parts:

- Shiny application demonstrating the investigation of exponential distribution <https://myrba2win.shinyapps.io/shinyapps/>.
- **R presentation that introduces the above application**

- All related files can be found in my GitHub repository
<https://github.com/myrba2win/Developing_Data_Products_Shiny_App>.
