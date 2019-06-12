library(shiny)

# Define server logic 
shinyServer(function(input, output) {

		    output$text1 <- renderText({
			    paste("あなたをこれを選びました", input$var)
                    })

		    output$text2 <- renderText({
			    paste("範囲は", input$range[1], "から", input$range[2])
		    })

})
