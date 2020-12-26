#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)
library(markdown)
shinyUI(fluidPage(
  titlePanel("Analysis of Exponential Distribution"),
  sidebarLayout(
    sidebarPanel(
      sliderInput("sliderLambda", "Lambda of the distribution?",
                  0.1, 2, value = 0.2, step = 0.1),
      sliderInput("sliderNsim", "Simulations do you want to conduct?",
                  500, 2000, value = 1000, step = 100),
      sliderInput("sliderNmean", "Exponentials do you want to take average from in each simulation?",
                  5, 100, value = 40, step = 5),
      numericInput("seed", "Input the seed for randomnization", 
                   value = 1234, min = 1, max = 9999, step = 1),
      
      checkboxInput("showSampleMean", "Show/Hide Sample Mean", value = TRUE)
 #     submitButton("Submit")
    ),
    mainPanel(
      tabsetPanel(type = "tabs",
                  tabPanel("Results",

                           (
                             splitLayout(cellWidths = c("50%", "50%"), 
                                plotOutput("plot1"), 
                                plotOutput("plot2"))
                           ),
                           h5("Theoretical Mean:"),
                           textOutput("theoMean"),
                           h5("Sample Mean:"),
                           textOutput("sampleMean"),
                           h5("Theoretical Variance:"),
                           textOutput("theoVar"),
                           h5("Sample Variance:"),
                           textOutput("sampleVar"),
      ),
                  tabPanel("Instructions",
                           mainPanel(
                             includeMarkdown("DataRules.md")
                           ))
      )
    )
  )
))