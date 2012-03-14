Option Explicit On
Option Strict On

Imports Oracle.DataAccess.Client
Imports Oracle.DataAccess.Types

''' <summary>
''' Clase Mesa
''' </summary>
''' <author>Andrés Marotta, David Guerra Abad, David Martínez Pérez</author>
Public Class Mesa

#Region "Constantes"
  Private Const _INSERT As String = "GestionMesas.Insertar"
  Private Const _DELETE As String = "GestionMesas.Borrar"
  Private Const _UPDATE As String = "GestionMesas.Modificar"
  Private Const _INSERTAR_COMUN As String = "GestionTicket.InsertarComun"
#End Region

#Region "Variables"
  Private _Codigo As Integer
  Private _Estado As EstadoMesa
  Private _Comandas As List(Of Comanda)
#End Region

#Region "Constructores"
  ''' <summary>
  ''' Constructor por defecto
  ''' </summary>
  ''' <author>Andrés Marotta</author>
  Public Sub New()
    Me._Codigo = 0
    Me._Estado = New EstadoMesa
    Me._Comandas = New List(Of Comanda)
  End Sub

  ''' <summary>
  ''' Constructor por parámetros
  ''' </summary>
  ''' <author>Andrés Marotta</author>
  Public Sub New(ByVal codigo As Integer, ByVal estado As EstadoMesa, ByVal comandas As List(Of Comanda))
    Me._Codigo = codigo
    Me._Estado = estado
    Me._Comandas = comandas
  End Sub
#End Region

#Region "Propiedades"
  ''' <summary>
  ''' Propiedad del atributo "_Codigo"
  ''' </summary>
  ''' <value>Un entero con el valor que se le asignará al atributo</value>
  ''' <returns>Un entero con el valor del atributo</returns>
  ''' <author>Andrés Marotta</author>
  Public Property Codigo() As Integer
    Get
      Return Me._Codigo
    End Get
    Set(ByVal value As Integer)
      Me._Codigo = value
    End Set
  End Property

  ''' <summary>
  ''' Propiedad del atributo "_Estado"
  ''' </summary>
  ''' <value>Un estado de mesa con el valor que se le asignará al atributo</value>
  ''' <returns>Un tipo estado de mesa con el valor del atributo</returns>
  ''' <author>Andrés Marotta</author>
  Public Property Estado() As EstadoMesa
    Get
      Return Me._Estado
    End Get
    Set(ByVal value As EstadoMesa)
      Me._Estado = value
    End Set
  End Property

  ''' <summary>
  ''' Propiedad del atributo "_Comandas"
  ''' </summary>
  ''' <value>Una lista de comandas con el valor que se le asignará al atributo</value>
  ''' <returns>Una lista de comandas con el valor del atributo</returns>
  ''' <author>Andrés Marotta</author>
  Public Property Comandas() As List(Of Comanda)
    Get
      Return Me._Comandas
    End Get
    Set(ByVal value As List(Of Comanda))
      Me._Comandas = value
    End Set
  End Property
#End Region

#Region "Funciones"
  ''' <summary>
  ''' Carga todas las mesas almacenadas
  ''' </summary>
  ''' <returns>Un DataSet con todas las mesas</returns>
  ''' <author>Andrés Marotta</author>
  Public Shared Function CargarDatos() As DataSet
    Dim Mesas As New DataSet

    Mesas = BBDD.CargarDatos("Mesas")

    Return Mesas
  End Function

  ''' <summary>
  ''' Actualiza los datos de la tabla Mesas con los cambios de un DataSet dado
  ''' </summary>
  ''' <param name="mesas">DataSet con los cambios de la tabla</param>
  ''' <returns>Un boolean indicando si la operación se realizó con éxito</returns>
  ''' <author>Andrés Marotta, David Martínez Pérez</author>
  Public Shared Function Actualizar(ByVal mesas As DataSet) As Boolean
    Dim Ok As Boolean
    Dim OrigenDatos As New BBDD
    Dim Adaptador As New OracleDataAdapter

    Adaptador.DeleteCommand = New OracleCommand(_DELETE, OrigenDatos.Conexion)
    Adaptador.DeleteCommand.Parameters.Add("Resultado", OracleDbType.Int32, ParameterDirection.ReturnValue)
    Adaptador.DeleteCommand.Parameters.Add("codigo", OracleDbType.Int16, 3, "codigo")
    Adaptador.DeleteCommand.CommandType = CommandType.StoredProcedure

    Adaptador.UpdateCommand = New OracleCommand(_UPDATE, OrigenDatos.Conexion)
    Adaptador.UpdateCommand.Parameters.Add("Resultado", OracleDbType.Int32, ParameterDirection.ReturnValue)
    Adaptador.UpdateCommand.Parameters.Add("codigo_estado", OracleDbType.Int16, 3)
    Adaptador.UpdateCommand.Parameters.Add("codigo", OracleDbType.Int32, 8, "codigo")
    Adaptador.UpdateCommand.CommandType = CommandType.StoredProcedure

    Try
      Adaptador.Update(mesas, "Mesas")

      If CInt(Adaptador.DeleteCommand.Parameters("Resultado").Value.ToString.Replace(CChar("D"), "")) > 0 Or _
         CInt(Adaptador.UpdateCommand.Parameters("Resultado").Value.ToString.Replace(CChar("D"), "")) > 0 Then
        Ok = True
      Else
        Ok = False
      End If
    Catch ex As Exception
      Ok = False
    End Try

    Return Ok
  End Function

  ''' <summary>
  ''' Inserta todas las comandas de la mesa en la base de datos
  ''' </summary>
  ''' <returns>Un boolean indicando si la operación se realizó con éxito</returns>
  ''' <author>Andrés Marotta, David Martínez Pérez</author>
  Public Shared Function Insertar() As Boolean
    Dim Ok As Boolean
    Dim OrigenDatos As New BBDD
    Dim Comando As OracleCommand

    If OrigenDatos.Conectar Then
      Comando = New OracleCommand(_INSERT, OrigenDatos.Conexion)
      Comando.Parameters.Add("Resultado", OracleDbType.Int16, 1)
      Comando.CommandType = CommandType.StoredProcedure

      If CBool(OrigenDatos.Modificar(Comando)) Then
        Ok = True
      Else
        Ok = False
      End If

      OrigenDatos.Desconectar()
    Else
      Ok = False
    End If

    Return Ok
  End Function

  ''' <summary>
  ''' Cobra todas las comandas de la mesa como una sola
  ''' </summary>
  ''' <returns>Un boolean indicando si la operación se realizó con éxito</returns>
  ''' <author>Andrés Marotta, David Martínez Pérez</author>
  Public Function CobrarJunto() As Boolean
    Dim ok As Boolean
    Dim miTicket As Ticket

    ok = True
    miTicket = Ticket.Cargar(Ticket.Insertar())

    If miTicket IsNot Nothing Then
      For Each miComanda As Comanda In Me._Comandas
        If miComanda.Cobrar(miTicket) = False Then
          ok = False
        End If
      Next
    End If

    Return ok
  End Function

  ''' <summary>
  ''' Cobra todas las comandas de la mesa prorrateadas
  ''' </summary>
  ''' <returns>Un boolean indicando si la operación se realizó con éxito</returns>
  ''' <author>Andrés Marotta, David Martínez Pérez</author>
  Public Function CobrarSeparado() As Boolean
    Dim ok As Boolean = True
    Dim Comando As OracleCommand
    Dim OrigenDatos As New BBDD

    If OrigenDatos.Conectar Then
      Comando = New OracleCommand(_INSERTAR_COMUN, OrigenDatos.Conexion)
      Comando.Parameters.Add("Resultado", OracleDbType.Int16, 1)
      Comando.Parameters.Add("Codigo_ticket", OracleDbType.Int32, 8)
      Comando.Parameters.Add("Codigo_comanda", OracleDbType.Int32, 8).Value = Me._Comandas(0).Codigo
      Comando.Parameters.Add("Prorrateo", OracleDbType.Int16, 3).Value = (Me._Comandas.Count - 1)
      Comando.CommandType = CommandType.StoredProcedure

      For i As Integer = 1 To Me._Comandas.Count - 1
        Dim miTicket As Ticket

        miTicket = Ticket.Cargar(Ticket.Insertar)

        If miTicket IsNot Nothing Then

          ' cobramos la comanda correspondiente
          If Me._Comandas(i).Cobrar(miTicket) = False Then
            ok = False
          Else
            ' le añadimos los datos de la comanda común (Me._comandas(0))
            Comando.Parameters("Codigo_ticket").Value = miTicket.Codigo
            If OrigenDatos.Modificar(Comando) = 0 Then
              ok = False
            End If
          End If
        End If
      Next

      OrigenDatos.Desconectar()
    End If

    Return ok
  End Function



  ''' <summary>
  ''' Cobra todas las comandas de la mesa como una sola en diferentes tickets
  ''' </summary>
  ''' <returns>Un boolean indicando si la operación se realizó con éxito</returns>
  ''' <author>Andrés Marotta, David Martínez Pérez</author>
  Public Function CobrarProrrateado() As Boolean
    Dim ok As Boolean = True
    Dim Comando As OracleCommand
    Dim OrigenDatos As New BBDD

    If OrigenDatos.Conectar Then
      Comando = New OracleCommand(_INSERTAR_COMUN, OrigenDatos.Conexion)
      Comando.Parameters.Add("Resultado", OracleDbType.Int16, 1)
      Comando.Parameters.Add("Codigo_ticket", OracleDbType.Int32, 8)
      Comando.Parameters.Add("Codigo_comanda", OracleDbType.Int32, 8)
      Comando.Parameters.Add("Prorrateo", OracleDbType.Int16, 3).Value = (Me._Comandas.Count - 1)
      Comando.CommandType = CommandType.StoredProcedure

      For i As Integer = 1 To Me._Comandas.Count - 1
        Dim miTicket As Ticket

        miTicket = Ticket.Cargar(Ticket.Insertar)

        If miTicket IsNot Nothing Then
          ' le añadimos los datos de las comandas al ticket prorrateandolo
          For Each comandita As Comanda In Me._Comandas
            Comando.Parameters("Codigo_ticket").Value = miTicket.Codigo
            Comando.Parameters("Codigo_comanda").Value = comandita.Codigo

            If OrigenDatos.Modificar(Comando) = 0 Then
              ok = False
            End If
          Next

        End If
      Next

      OrigenDatos.Desconectar()
    End If

    Return ok
  End Function

#End Region

#Region "Destructores"
  ''' <summary>
  ''' Destructor manual
  ''' </summary>
  ''' <author>Andrés Marotta</author>
  Public Sub Dispose()
    Me._Codigo = -1
    Me._Estado.Dispose()
    Me._Comandas.Clear()
  End Sub

  ''' <summary>
  ''' Destructor automático
  ''' </summary>
  ''' <author>Andrés Marotta</author>
  Protected Overrides Sub Finalize()
    Me._Codigo = -1
    Me._Estado.Dispose()
    Me._Comandas.Clear()
  End Sub
#End Region
End Class
