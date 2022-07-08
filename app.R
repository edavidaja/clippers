library(shiny)

ui <- fluidPage(
    # Application title
    titlePanel("clippers"),

    sidebarLayout(
        sidebarPanel(
            textAreaInput("text_input", "enter text:"),
            # using submit button makes the copy less of a lie (but still a lie) because
            # the clipboard won't be updated until the text output is rendered
            submitButton("copy text:", icon = icon("copy"))
        ),

        mainPanel(
            verbatimTextOutput("clippers")
        )
    ),
    tags$script(src = "clip.js")
)

# Define server logic required to draw a histogram
server <- function(input, output) {

    output$clippers <- renderText({
        input$text_input
    })
}

# Run the application
shinyApp(ui = ui, server = server)
