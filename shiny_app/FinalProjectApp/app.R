#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
# 
#

# Draft for Mortality interactive

library(tidyverse)
library(shiny)
library(gapminder)
library(plotly)

#need to set up working directory perhaps? --> setwd()
load("income_mortality.RData")

# need to include: color = continent, size = pop


ui <- fluidPage(
  titlePanel("Under 5 Mortality Rates over time"),
  selectInput(inputId = "country", label = "Pick a Country", choices = c("abc", "def")),
  plotlyOutput("gg")
)
server <- function(input, output) {
  output$gg <- renderPlotly({
    print(input$country)
    gg <- income_mortality %>% 
      #head(10) %>% 
      ggplot(aes(x = Income, y = Mortality)) +
      # geom_point(alpha = 0.1) +
      geom_point(aes(frame = Year)) +
      scale_x_log10()
    plotly::ggplotly(gg)
  }) }
shinyApp(ui = ui, server = server)

