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
                           separator = "hasta"),
            
            checkboxInput(inputId = "single_checkbox",
                          label = "Desea recibir informacion",
                          value = FALSE), #Falso porque la casilla esta deseleccionada
            
         
            checkboxGroupInput(inputId = "checkbox_group",
                               label = "Seleccione el tipo:",
                               choices = c("Carro", "Camioneta", "Moto", "Tractor"), #las diferentes selecciones que se pueden tomar
                               selected = NULL), #Null, quiere decir que no se ha seleccionado nada aun
            
            radioButtons(inputId = "radio_input",
                         label = "Seleccione uno:",
                         choices = c("Primaria", "Secundaria", "Preparatoria", "Universidad"),
                         selected = NULL),
            
            actionButton(inputId = "boton_ejecutar",
                         label = "Refrescar"),
            br(), #instruccion de salto de linea
            actionButton(inputId = "boton_salir",
                         label = "Salir"),
            br(),br(),
            actionLink(inputId = "link_seguir",
                       label = "Siguiente"),
            #DETIENE LA REACTIVIDAD DEL SHINY APP
            submitButton(text = "Ejecutar") #boton que ejecuta todos los inputs
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
            verbatimTextOutput("range_date_IO"),
            h2("Salida del CheckBox"),
            verbatimTextOutput("checkbox_IO"),
            h2("Salida del CheckBox Group"),
            verbatimTextOutput("checkbox_Group_IO"),
            h2("Salida del RadioButton"),
            verbatimTextOutput("radiobutton_IO"),
            h2("Salida del Boton Ejecutar"),
            verbatimTextOutput("ejecutar_IO"),
            h2("Salida del Boton Salir"),
            verbatimTextOutput("salir_IO"),
            h2("Salida del Boton Link"),
            verbatimTextOutput("link_IO")
        )
        )
    )
)
