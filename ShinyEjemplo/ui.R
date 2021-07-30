#Gracias Carlos Zelda
library(shiny)
library(lubridate) #maneja las fechas en R

shinyUI(fluidPage(
    
    #Titulo de la app
    titlePanel("CATALAGO DE INPUTS DE SHINY"),


    sidebarLayout(
        sidebarPanel(
            sliderInput(inputId = "slider_input", #nombre del slider
                        label = "Seleccione un Valor:", #etiqueta para el usuario
                        min = 0, #valor minimo del slider
                        max = 100, #valor maximo del slider
                        value = 25, #valor inicial del slider
                        step = 1, #intervalos (como cambia el comportamiento)
                        animate = TRUE, #hace una caminata de los steps 
                        pre = "$", #caracter antes del valor del slider
                        post = "%"),
            
            sliderInput(inputId = "rangre_slider",
                        label = "Seleccione un rango:",
                        min = 0, 
                        max = 100, 
                        value = c(0,100)),
            
            numericInput(inputId = "numeric_input",
                         label = "Seleccione la edad:",
                         value = 10,
                         min = 0,
                         max = 150),
            
            dateInput(inputId = "single_date_input",
                      label = "Ingrese la fecha:",
                      value = today(), #iniciamos con el dia de hoy con la funcion today()
                      min = today()-365, #lo minimo es hoy menos 365 dias atras
                      max = today(), #numero maximo de dias que puede ir hacia adelante
                      language = "es"),
            
            dateRangeInput(inputId = "range_date_input",
                           label = "Seleccione el rango de fechas:",
                           start = today()-29, #inicia en hoy meos 29 dias el rango
                           end = today(), #finaliza el rango de las fechas
                           format = "dd/mm/yyy", #el formato de las fechas
                           language = "es", #el idioma del calendario
                           separator = "hasta")
        ),
       
        mainPanel(
            h1("Salidas de los inputs de Shiny"),
            h2("Slider IO"), #queremos ver cual sera el output del slider IO
            verbatimTextOutput("single_slider_IO"), #imprime en el app lo que esta en el input (impresion del texto de la consola)
            h2("Slider con Rango"),
            verbatimTextOutput("range_slider_IO"),
            h2("Salida Numeric Input"),
            verbatimTextOutput("numeric_IO"),
            h2("Salida Date Input"),
            verbatimTextOutput("date_IO"),
            h2("Salida Range Date Input"),
            verbatimTextOutput("range_date_IO")
        )
    )
)
)
