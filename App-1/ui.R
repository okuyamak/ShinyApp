library(shiny)

# Define UI for application
shinyUI(fluidPage(
  titlePanel("My Shiny App"),
  
  sidebarLayout(
    sidebarPanel( 
      h1("Instllation"),
      br(),
      br(),
      p("Guessing this will be same in the main panel"),
      div("This will make everything in red", "color:red"),
      img(src="ProfilePhoto.png", height = 100, width = 100),
      p("Can this be next to the image?")
      ),
    mainPanel(
      h1("Introducing Shiny"),
      br(),
      p("Shiny is a new package from R studio that makes it",
        em("icredibly"), "easy to make interactive website"),
      br(),
      br(),
      p("For more information, visit",
        span("Shiny App website", style = "color:blue"),
      br(),
      br(), 
      br(),
      h1("Features"),
      p("* what do you want here?"),
      p("* hmm, just test how to make bullet point",
        strong("Let's try some bolded line here"), "and finish this sentence...")
    )
  )
)))
