library(shiny)

# Define UI for application
shinyUI(fluidPage(
  titlePanel("census VIS"),
  
  sidebarPanel( 
    fluidRow(
      column(10,
             helpText("Create demographic map from US Census data"))
    ),
    fluidRow(
      column(10,
             selectInput("select", label = h5("Choose a variable to display"), 
                         choices = c("percent white", "percent black",
                                     "percent asian")))
    ),
    fluidRow(
      column(10,
             sliderInput("slider1", label = h5("Range of interest"),
                         min = 0, max = 100, value = 50)
      )
    )
    )
    )
)