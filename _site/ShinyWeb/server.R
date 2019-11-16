#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

# Define server logic required to draw a histogram
server <- function(input, output, session) {
  
  data1 <- reactive({
    input$Ind
  })
  data2 <- reactive({
    input$Dep
  })
  
  output$BoxPlot <- renderPlot({
    boxplot(get(data2()) ~ get(data1()) , data=Beer_Data)
  })
  
  output$Hist <- renderPlot({
    req(data1())
    hist(Beer_Data[[data1()]])
  }) 
  
}
