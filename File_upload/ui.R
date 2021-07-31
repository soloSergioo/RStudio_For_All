
library(shiny)

shinyUI(fluidPage(
    titlePanel("Ejemplo de Carga de archivo"),

    sidebarLayout(
        sidebarPanel(
            #BOTON PARA CARGAR ARCHIVOS
            fileInput(inputId = "file_upload", 
                      label = "Cargar archivo")
        ),

        
        
        mainPanel(
            DT::dataTableOutput(outputId = "contenido_archivo")
        )
    )
))
