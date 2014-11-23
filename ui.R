shinyUI(pageWithSidebar(
  headerPanel("Residue App"),
  sidebarPanel(
    sliderInput("sp", "Linear residue at Speed", value = 10, min = 4, max = 25, step = 1)
  ),
  mainPanel(
    plotOutput("newPlot")
  )
))