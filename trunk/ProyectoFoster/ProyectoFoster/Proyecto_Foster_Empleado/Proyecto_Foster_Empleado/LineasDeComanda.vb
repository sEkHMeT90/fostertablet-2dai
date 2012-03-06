Option Explicit On
Option Strict On

''' <summary>
''' Formulario principal de la interfaz del empleado
''' </summary>
''' <author> Raquel Lloréns Gambín, Alejandro Guijarro Terol</author>
''' 
Public Class LineasDeComanda

#Region "Variables"

#End Region

#Region "Eventos"

    ''' <summary>
    ''' Evento load.
    ''' </summary>
    ''' <author> Raquel Lloréns Gambín, Alejandro Guijarro Terol</author>
    Private Sub LineasDeComanda_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load

    End Sub

    ''' <summary>
    ''' Botón que cierra el formulario LineasDeComanda
    ''' </summary>
    ''' <author> Raquel Lloréns Gambín, Alejandro Guijarro Terol</author>
    Private Sub bt_atras_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles bt_atras.Click
        Me.Close()
    End Sub
#End Region

#Region "Funciones"

#End Region
End Class