
library(shiny)
library(readr)
library(readxl)
library(DT)

shinyServer(function(input, output) {
    #Hacemos una funcion para poder cargar el archivo que contiene (out)
    archivo_cargado <- reactive({ #lo que hace reactive() es devolver una funcion
        #Como obtenemos la informacion del archivo
        contenido_archivo <- input$file_upload #= es una lista que tiene el nombre del archivo, el servidor al que se cargo el archivo
        #El paso siguiente es cargar esa data
        #Como vamos a mostrar la tabla tenemos que saber lo siguiente
        #Si no hay un archivo cargado, mostrar una tabla vacia
        if (is.null(contenido_archivo)) {
            return(NULL)
        }
        #Si pasa el chequeo de que no esta vacio
        #tomamos como salida la variable "out"
        out <- read_csv(file = contenido_archivo$datapath) #$datapath, nos da la direccion del servidor en donde esta el archivo
        return(out)
    })
    
    #Si ya cargamos el archivo lo tenemos que mostrar
    #Lo vamos a mostrar en ese marcador de posicion (placeholder) que formamos que se llama "contenido archivo
    output$contenido_archivo <- DT::renderDataTable({
        DT::datatable(archivo_cargado())
    })



})
