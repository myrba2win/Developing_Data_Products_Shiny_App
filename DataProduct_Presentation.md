---
title: "Developing Data Products"
subtitle: JHU - Shiny Application and Reproducible Pitch
author: "Myr Balada"
date: "26/12/2020"
output: 
  ioslides_presentation:
    widescreen: true
    smaller: true
---








## Aim of this presentation

This presentation is created as part of the course project of the *Developing Data Products* course in the data science specialization. The project consists of the following two parts:

- Shiny application demonstrating the investigation of exponential distribution <https://myrba2win.shinyapps.io/shinyapps/>.
- R presentation that introduces the above application

All related files can be found in my GitHub repository
<https://github.com/myrba2win/Developing_Data_Products_Shiny_App>.

## Instructions
This application is based on the course project of statistical inference class of the data science specialisation.

In that project, We investigate the exponential distribution in R and compare it with the Central Limit Theorem. More specificly, we study the distribution of 1000 averages of 40 exponentially distributed variables with lambda equal to 0.2.

### Input & Output
In this application, we are able to change the number of simulations (e.g. 1000), the number of exponentials we generate in each simulation (e.g. 40), the rate parameter lambda (e.g. 0.2), and the seed we use for randomnisation. The user can choose whether or not to show the sample mean on the plot.

Outputs include two plots and comparison of theoretical and sample mean and variance.

## Application Interface
<img src="./AppInterface4_3.png" title="plot of chunk unnamed-chunk-3" alt="plot of chunk unnamed-chunk-3" width="80%" />

## Simplified example code of the sample mean calculation in the server

```
set.seed(input$seed)
lambda <- input$sliderLambda
nosim <- input$sliderNsim
n <- input$sliderNmean
        
mns = NULL
for (i in 1 : nosim) mns = c(mns, mean(rexp(n,lambda)))
sampleMean <- mean(mns)
theoMean <- 1/lambda
rbind(sampleMean, theoMean)
```

```
               [,1]
sampleMean 4.974239
theoMean   5.000000
```
