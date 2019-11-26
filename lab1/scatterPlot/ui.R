ui <- shinyUI(pageWithSidebar(
  headerPanel("Scatter Plot"),
  sidebarPanel(
    textInput("datavalues_x", "Enter your X data (e.g. counts) here:", "1"),
    textInput("datavalues_y", "Enter your Y data (e.g. counts) here:", "1"),
    textInput("labels_x", "Enter the category labels here:", "X"),
    textInput("labels_y", "Enter the category labels here:", "Y"),
    textInput("title", "Enter the plot title here:", "Scatterplot")
  ),
  mainPanel(
    plotOutput(outputId='main_plot')
)
)
)
