library(shiny)

# Define UI for application
shinyUI(fluidPage(
  titlePanel("島根県健康情報データ見える化プロジェクト"),
  
  sidebarPanel( 
    fluidRow(
      column(10,
             helpText("島根県の年齢調整慢性疾患割合のマップを作成"))
    ),
    fluidRow(
      column(10,
             selectInput("var", label = h5("変数を選択"), 
                         choices = c("高血圧割合", "糖尿病割合",
                                     "肥満割合")))
    ),
    fluidRow(
      column(10,
             sliderInput("range", label = h5("範囲指定"),
                         min = 0, max = 100, value = 50)
      )
    )
    )
    )
)
