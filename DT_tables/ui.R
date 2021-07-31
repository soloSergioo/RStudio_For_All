
library(shiny)
library(DT)

shinyUI(fluidPage(

    titlePanel("Todo sobre tablas de Shiny"),
    #La manera en la que se mostraran las opciones es a traves de paneles tabulados
    tabsetPanel(
        tabPanel(title = "Tablas en DT", #el nombre del panel
                 #Vamos a agregar contenido al tabset
                 #agregamos filas con la siguiente funcion
                 h1("Vista Basica"),
                 fluidRow(
                    column(12, #una columna de longuitud 12
                        DT::dataTableOutput(outputId = "tabla_1")) #tabla
                    ),
                 h1("Agregar Filtros"),
                 fluidRow(
                    column(12,
                        DT::dataTableOutput("tabla_2"))
                    )
                ), 
        tabPanel(title = "Clicks en tablas",
                 "2") #el tabset va a contener el numero 2 como caracter
    )
))
