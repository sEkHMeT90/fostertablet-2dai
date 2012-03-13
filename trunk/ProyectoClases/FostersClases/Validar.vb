
''' <summary>
''' Módulo de validaciones
''' </summary>
''' <author>Alejandro Guijarro Terol</author>
Module Validacion




  ''' <summary>
  ''' Comprueba que el objeto se puede convertir a string
  ''' </summary>
  ''' <author>Alejandro Guijarro Terol</author>
  Public Function EsTexto(ByVal objeto As Object) As Boolean
    Dim Res As Boolean

    Try
      convert.ToString(objeto)
      Res = True
    Catch ex As Exception
      Res = False
    End Try

    Return Res
  End Function

  ''' <summary>
  ''' 
  ''' </summary>
  ''' <param name="objeto"></param>
  ''' <returns>Un booleano que indica si lo introducido es correcto o no</returns>
  ''' <author>Alejandro Guijarro Terol</author>
  Public Function ValidarTexto(ByVal objeto As Object, ByVal minimo As Integer, ByVal maximo As Integer) As Boolean
    Dim resultado As Boolean
    Dim valido As Boolean
    Dim Cadena As String



    Try

      Cadena = CStr(objeto)
      valido = True

      For i = 0 To Cadena.Length - 1
        If (Cadena(i) < "a" Or Cadena(i) > "z") And (Cadena(i) < "A" Or Cadena(i) > "Z") And _
           (Cadena(i) < "0" Or Cadena(i) > "9") And (Cadena(i) <> " ") Then
          valido = False
        End If
      Next

      If valido Then
        If Cadena.Length < minimo Or Cadena.Length > maximo Then
          resultado = False
        Else
          resultado = True
        End If
      Else
        resultado = False
      End If

    Catch ex As Exception
      resultado = False

    End Try

    Return resultado

  End Function

  ''' <summary>
  ''' Comprueba que el valor del olbeto es un entero
  ''' </summary>
  ''' <param name="objeto"></param>
  ''' <returns>Un booleano que indica si lo introducido es correcto o no</returns>
  ''' <author>Alejandro Guijarro Terol</author>
  Public Function ValidarNumeroEntero(ByVal objeto As Object, ByVal minimo As Integer, ByVal maximo As Integer) As Boolean
    Dim Resultado As Boolean
    Dim numero As Integer

    Try
      numero = CInt(objeto)
      If (CStr(numero).Length < minimo Or CStr(numero).Length > maximo) _
        Or (CStr(objeto).IndexOf(".") >= 0 Or CStr(objeto).IndexOf(",") >= 0) Then
        Resultado = False
      Else
        Resultado = True
      End If
    Catch ex As Exception
      Resultado = False
    End Try

    Return Resultado
  End Function

  ''' <summary>
  ''' Comprueba que el valor del olbeto es un número decimal (Acepta entero, claro)
  ''' </summary>
  ''' <param name="objeto"></param>
  ''' <returns>Un booleano que indica si lo introducido es correcto o no</returns>
  ''' <author>Alejandro Guijarro Terol</author>
  Public Function ValidarNumeroDecimal(ByVal objeto As Object, ByVal minimo As Integer, ByVal maximo As Integer) As Boolean
    Dim Resultado As Boolean
    Dim numero As Single

    Try
      numero = CSng(objeto)
      If (CStr(numero).Length < minimo Or CStr(numero).Length > maximo) Or _
        CStr(objeto).IndexOf(".") >= 0 Then
        Resultado = False
      Else
        Resultado = True
      End If
    Catch ex As Exception
      Resultado = False
    End Try

    Return Resultado
  End Function

  ''' <summary>
  ''' Valida números de teléfono
  ''' </summary>
  ''' <param name="objeto"></param>
  ''' <returns>Un booleano que indica si lo introducido es correcto o no</returns>
  ''' <author>Alejandro Guijarro Terol</author>
  Public Function ValidarTelefono(ByVal objeto As Object, ByVal minimo As Integer, ByVal maximo As Integer) As Boolean
    Dim resultado As Boolean
    Dim valido As Boolean
    Dim Cadena As String


    Try

      Cadena = CStr(objeto)
      valido = True

      For i = 0 To Cadena.Length - 1
        If (Cadena(i) < "0" Or Cadena(i) > "9") And _
          (Cadena(i) <> "+") And (Cadena(i) <> "-") And _
          (Cadena(i) <> "(") And (Cadena(i) <> ")") And _
          (Cadena(i) <> ".") And (Cadena(i) <> " ") Then

          valido = False
        End If
      Next

      If valido Then
        If Cadena.Length < minimo Or Cadena.Length > maximo Then
          resultado = False
        Else
          resultado = True
        End If
      Else
        resultado = False
      End If

    Catch ex As Exception
      resultado = False

    End Try

    Return resultado
  End Function

  ''' <summary>
  ''' Comprueba que es una fecha
  ''' </summary>
  ''' <param name="objeto"></param>
  ''' <returns>Un booleano que indica si lo introducido es correcto o no</returns>
  ''' <author>Alejandro Guijarro Terol</author>
  Public Function ValidarFecha(ByVal objeto As Object, ByVal minimo As Integer, ByVal maximo As Integer) As Boolean
    Dim resultado As Boolean
    Dim valido As Boolean
    Dim fecha As Date


    Try
      fecha = CDate(objeto)

      valido = True


      If (CStr(objeto).IndexOf(",") >= 0) Or (CStr(objeto).IndexOf(".") >= 0) Then
        valido = False
      End If


      If valido Then
        resultado = True
      Else
        resultado = False
      End If

    Catch ex As Exception
      resultado = False
    End Try

    Return resultado
  End Function



End Module
