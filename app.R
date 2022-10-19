library(shiny)
library(bslib)
library(taskCard)
library(htmltools)

my_theme <- bs_theme(
    version = 5, 
    bootswatch = "minty"
)

ui <- page_navbar(
    title = "Test page",
    theme = my_theme,
    nav(title = "nav",
        # uiOutput("test")
        mod_progressPage_ui("main"),
        verbatimTextOutput("debug")
    )
    
)

server <- function(input, output) {
    
    # output$test <- renderUI({
    #     mod_progressPage_ui("main")
    # })
    
    output$debug <- renderPrint(input$task_card_to_delete)
    
    mod_progressPage_server("main")
    
}
shinyApp(ui, server)
