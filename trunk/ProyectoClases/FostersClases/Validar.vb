
''' <summary>
''' 
''' </summary>
''' <author></author>
Module Validacion

  ''' <summary>
  ''' 
  ''' </summary>
  ''' <param name="cadena"></param>
  ''' <returns></returns>
  ''' <author></author>
  Public Function ValidarTexto(ByVal cadena As String) As Boolean
    If cadena.Length = 0 Then

      Return False

    Else
      'Quito los espacios de principio y fin
      If cadena(0) = " " Or cadena(cadena.Length - 1) = " " Then
        cadena = cadena.Trim()
      End If
      'Quito los espacios repetidos (mas de un espacio seguido)
      Do
        cadena = cadena.Replace("  ", " ")
      Loop While cadena.IndexOf("  ") >= 0
      'Compruebo que el contenido de la cadena sea número o letra
      For i As Integer = 0 To cadena.Length - 1
        If cadena(i) < "a" Or cadena(i) > "z" Then
          If cadena(i) < "A" Or cadena(i) > "Z" Then
            If cadena(i) < "0" Or cadena(i) > "9" Then
              Return False
            End If
          End If
        End If
      Next

      Return True

    End If
  End Function

  ''' <summary>
  ''' 
  ''' </summary>
  ''' <param name="cadena"></param>
  ''' <returns></returns>
  ''' <author></author>
  Public Function ValidarNumero(ByVal cadena As String) As Boolean
    If cadena.Length = 0 Then

      Return False

    Else
      'Quito los espacios de principio y fin
      If cadena(0) = " " Or cadena(cadena.Length - 1) = " " Then
        cadena = cadena.Trim()
      End If
      'Quito los espacios repetidos (mas de un espacio seguido)
      Do
        cadena = cadena.Replace("  ", " ")
      Loop While cadena.IndexOf("  ") >= 0
      'Compruebo que el contenido de la cadena sea número.

      For i As Integer = 0 To cadena.Length - 1
        If cadena(i) < "0" Or cadena(i) > "9" Then
          Return False
        End If
      Next
    End If
    Return True
  End Function

  ''' <summary>
  ''' 
  ''' </summary>
  ''' <param name="cadena"></param>
  ''' <returns></returns>
  ''' <author></author>
  Public Function ValidarTelefono(ByVal cadena As String) As Boolean
    If cadena.Length = 0 Or cadena.Length > 9 Then
      Return False
    Else
      'Quito los espacios de principio y fin
      If cadena(0) = " " Or cadena(cadena.Length - 1) = " " Then
        cadena = cadena.Trim()
      End If
      'Quito los espacios repetidos (mas de un espacio seguido)
      Do
        cadena = cadena.Replace("  ", " ")
      Loop While cadena.IndexOf("  ") >= 0
      'Compruebo que el contenido de la cadena sea número.

      For i As Integer = 0 To cadena.Length - 1
        If cadena(i) < "0" Or cadena(i) > "9" Then
          Return False
        End If
      Next
    End If
    Return True
  End Function
End Module
