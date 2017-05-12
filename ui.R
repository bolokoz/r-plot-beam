
# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)
library(plotly)

shinyUI(fluidPage(

  # Application title
  titlePanel("Simple 2-d frame analysis"),

  # Sidebar with a slider input for number of bins
  sidebarLayout(
    sidebarPanel(
      tabsetPanel(
        tabPanel(
          "Beam",
          numericInput("l","Size", value = 5),
          numericInput("n","Number of nodes", value = 3)
        ),
        tabPanel(
          "Nodes",
          numericInput("l","Size", value = 5),
          numericInput("n","Number of nodes", value = input$l)
        )
      )
    ),
    # Show a plot of the generated distribution
    mainPanel(
      plotOutput("distPlot")
    )
  )
))
