# load packages
library(shiny)
library(maps)
library(mapproj)

# load data
counties <- readRDS("data/counties.rds")

# source helper functions
source("helpers.R")

# user interface
ui <- fluidPage(
		titlePanel("島根県健康情報データ見える化プロジェクト"),

		sidebarLayout(
			      sidebarPanel(
					   helpText("島根県年齢調整慢性疾患割合マップ"),

					   selectInput("var",
						       label = "変数を選択",
						       choices = c("高血圧割合","糖尿病割合","脂質異常割合","肥満割合"),
						       selected = "高血圧割合"),

					  sliderInput("range",
						     label="範囲指定",
						     min = 0, max = 100, value = c(0,100))
					  ),

			      mainPanel(plotOutput("map"))
			      )
		)

						     
# server logic
server <- function(input,output) {
	output$map <- renderPlot({
		data <- switch(input$var,
			       "高血圧割合" = counties$white,
			       "糖尿病割合" = counties$black,
			       "脂質異常割合" = counties$hispanic,
			       "肥満割合" = counties$asian)

		color <- switch(input$var,
			       "高血圧割合" = "darkgreen", 
			       "糖尿病割合" = "black",
			       "脂質異常割合" = "darkorange",
			       "肥満割合" = "darkviolet")

		legend <- switch(input$var,
			       "高血圧割合" = "%高血圧", 
			       "糖尿病割合" = "%糖尿病",
			       "脂質異常割合" = "%脂質異常",
			       "肥満割合" = "%肥満")

		percent_map(data, color, legend, input$range[1], input$range[2])
	})
}

# Run app
shinyApp(ui, server)


	









