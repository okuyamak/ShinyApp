library(shiny)

# Define UI for application
shinyUI(fluidPage(
  titlePanel("島根県健康情報データ見える化プロジェクト"),

  sidebarLayout(
		sidebarPanel(
			     helpText("島根県の年齢調整慢性疾患割合マップ"),

			     selectInput("var",
					 label="変数を選択",
					 choices=c("高血圧","糖尿病","肥満"),
					 selected="高血圧"),

			     sliderInput("range",
					 label="範囲指定",
					 min=0,max=100,value=c(0,100))
			     ),
		
		mainPanel(
			  textOutput("text1"),
			  textOutput("text2")
			  )
		)
  ))




