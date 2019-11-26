server <-
function(input,output){
    output$main_plot <- renderPlot({
        x <- input$datavalues_x
        x <- as.numeric(strsplit(x, " ")[[1]])
        y <- input$datavalues_y
        y <- as.numeric(strsplit(y, " ")[[1]])
        labels_x <- strsplit(input$labels_x, " ")[[1]]
        labels_y <- strsplit(input$labels_y, ",")[[1]]
        plotTitle <- input$title
        plot(y ~ x, las = 1, ylab=labels_y, xlab = labels_x)
        title(plotTitle)
        lines(y ~ x)
    })
}