Option Explicit On

Public Class Form1

    Private ancho As Double = Me.Width
    Private alto As Double = Me.Height

    Private Sub ToolStripMenuItem7_Click(ByVal sender As System.Object, ByVal e As System.EventArgs)
        Me.Close()
    End Sub

    Private Sub Form1_Resize(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Resize


        Me.DataGridView1.Location = New Point(10, 10)
        Me.DataGridView1.Size = New Size(Me.Width / 2 - 20, Me.Height - 135)

        Me.GroupBox1.Location = New Point(Me.DataGridView1.Width + 20, 10)
        Me.GroupBox1.Size = New Size(Me.Width / 2 - 20, Me.Height - 135)

        'If 
        '    Me.DataGridView1.Size = New Size(Me.DataGridView1.Width + (Me.Width - Me.ancho), Me.DataGridView1.Height + Me.Height - alto)
        '    MessageBox.Show(Me.DataGridView1.Width.ToString & ", " & Me.Width.ToString & ", " & Me.ancho.ToString & ", " & (Me.DataGridView1.Width + (Me.Width - Me.ancho)).ToString)
    End Sub

    Private Sub Form1_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
    End Sub
End Class
