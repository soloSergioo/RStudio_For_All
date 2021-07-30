
library(shiny)

shinyServer(function(input, output) {
    output$single_slider_IO <- renderPrint({ #imprimira todo lo que este dentro de la funcion
        input$slider_input 
        str(input$slider_input)
    })
    output$range_slider_IO <- renderPrint({
        input$rangre_slider 
    })
    output$numeric_IO <- renderPrint({
        input$numeric_input
    })
    output$date_IO <- renderPrint({
        input$single_date_input
    })
    output$range_date_IO <- renderPrint({
        input$range_date_input
    })

    
}
)
