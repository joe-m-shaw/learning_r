# 1 - call Shiny
library(shiny)

# 2 - Define UI
ui <- fluidPage(
  
  textInput("name", "What's your name?"),
  textOutput("greeting")
  
)

# 3 - Define server logic
server <- function(input, output) {

  output$greeting <- renderText({
    paste0("Hello ", input$name)
  })
}

# 4 - Run the application 
shinyApp(ui = ui, server = server)
