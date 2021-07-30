
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
    output$checkbox_IO <- renderPrint({
        input$single_checkbox
    })
    output$checkbox_Group_IO <- renderPrint({
        input$checkbox_group #devuelve un vector con las selecciones marcadas
    })
    output$radiobutton_IO <- renderPrint({
        input$radio_input #devuelve un solo valor seleccionado
    })
    output$ejecutar_IO <- renderPrint({
        input$boton_ejecutar #boton que funge como un contador para la salida de un valor entero
    })
    output$salir_IO <- renderPrint({
        input$boton_salir #boton que funge como un contador para la salida de un valor entero
    })
    output$link_IO <- renderPrint({
        input$link_seguir
    })

    
}
)
