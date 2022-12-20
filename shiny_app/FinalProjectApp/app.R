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


ui <- fluidPage(
  titlePanel("Under 5 Mortality Rates over time"),
  selectInput(inputId = "Continent", label = "Pick a World Region", choices = income_mortality$Continent, multiple = TRUE, selected = c("Africa", "Asia", "North America", "Europe", "South America", "Oceania")),
  sliderInput(inputId = "Year", label = "Pick a Year (static plot only)", min = 1950, max = 2020, value = c(1950, 2020)),
  plotlyOutput("interactive"),
  plotOutput("plot")
)
server <- function(input, output) {

  output$interactive <- renderPlotly({
    print(input$Country)
    interactive <- income_mortality %>%
      filter(Continent %in% input$Continent) %>%
      #filter(Country == input$Country) %>% 
      #head(10) %>% 
      ggplot(aes(x = Income, y = Mortality)) +
      # geom_point(alpha = 0.1) +
      geom_point(aes(frame = Year, size = Pop_size, color = Continent)) +
      scale_x_log10()
    plotly::ggplotly(interactive)
  }) 
  output$plot <- renderPlot({
    plot <- income_mortality %>% filter(Continent %in% input$Continent, Year >= input$Year [1], Year <= input$Year [2]) %>% 
      ggplot(aes(x = Income, y = Mortality, color = Continent)) + geom_point(alpha = 0.1) + geom_smooth() +
      scale_x_log10()
    plot(plot)
    })  
  }
shinyApp(ui = ui, server = server)

