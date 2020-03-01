﻿Namespace My
    ' Los siguientes eventos están disponibles para MyApplication:
    ' 
    ' Inicio: se desencadena cuando se inicia la aplicación, antes de que se cree el formulario de inicio.
    ' Apagado: generado después de cerrar todos los formularios de la aplicación. Este evento no se genera si la aplicación termina de forma anómala.
    ' UnhandledException: generado si la aplicación detecta una excepción no controlada.
    ' StartupNextInstance: se desencadena cuando se inicia una aplicación de instancia única y la aplicación ya está activa. 
    ' NetworkAvailabilityChanged: se desencadena cuando la conexión de red está conectada o desconectada.
    Partial Friend Class MyApplication
        Protected Overrides Function OnInitialize(ByVal commandLineArgs As System.Collections.ObjectModel.ReadOnlyCollection(Of String)) As Boolean

            'Establece el tiempo en 3000 milisegundos (3 segundos).
            Me.MinimumSplashScreenDisplayTime = 15000
            Return MyBase.OnInitialize(commandLineArgs)


        End Function
    End Class


End Namespace

