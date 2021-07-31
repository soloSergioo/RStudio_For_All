
library(shiny)
library(dplyr)
library(ggplot2)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
    
    output$tabla_1 <- DT::renderDataTable({
        mtcars %>% DT::datatable(rownames = TRUE, #aparece el id de la tabla
                                 filter = "top", #permite que aparezca el filtro como en el .View()
                                 extensions = "Buttons", #extension de un boton para hacerlo funcionar *cuando se agregan los botones se desaparece el show
                                 options = list( #se define la forma en la que se generan los filtros
                                     pageLength = 5, #controla cuantos datos se muestran en la tabla inicialmente
                                     lengthMenu = c(5,10,15,55,-1), #controla el menu desplegable de cuantos datos se muestran *el -1 muestra todas las filas de valores que contiene la tabla
                                     dom = "Bfrtip", #es el tipo de boton que permite descargar la data mostrada
                                     buttons = c("csv") #tipo de descarga csv
                                 ))
    })
    output$tabla_2 <- DT::renderDataTable({
        diamonds %>% DT::datatable(filter = "top")
    })



})
