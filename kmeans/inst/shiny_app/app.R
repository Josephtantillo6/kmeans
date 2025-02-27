library(shiny)
library(kmeans)

# Define UI
ui <- fluidPage(
  titlePanel("k-means clustering New"),
  sidebarLayout(
    sidebarPanel(
      selectInput('xcol', 'X Variable', names(iris)),
      selectInput('ycol', 'Y Variable', names(iris), selected=names(iris)[[2]]),
      numericInput('clusters', 'Cluster count', 3, min = 1, max = 9)
    ),
    mainPanel(plotOutput('plot1'))
  )
)

# Define server logic
server <- function(input, output, session) {

  # Compute clusters reactively using perform_kmeans() from clustering.R
  clusters <- reactive({
    perform_kmeans(iris, input$xcol, input$ycol, input$clusters)
  })

  # Render the plot using plot_kmeans() from plotting.R
  output$plot1 <- renderPlot({
    plot_kmeans(iris, clusters(), input$xcol, input$ycol)
  })
}

# Run the application
shinyApp(ui = ui, server = server)
