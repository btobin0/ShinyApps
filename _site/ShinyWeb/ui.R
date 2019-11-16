#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

Beer_Data <- read.csv(file="../btobin0.github.io.git/NewBeerData.csv", header=TRUE, sep=",")

ui <- fluidPage(
  selectInput("Ind","Plots Variable",choices = names(Beer_Data)),
  selectInput('Dep','  Histogram Variable',choices = names(Beer_Data)),
  plotOutput("BoxPlot"),
  plotOutput('Hist')
)
