
Imports System.Data.SqlClient
Imports System.Data

Partial Class delete
    Inherits System.Web.UI.Page

    Dim _constr As String = ConfigurationManager.ConnectionStrings("con").ConnectionString
    Dim con As SqlConnection
    Dim cmd As SqlCommand
    Dim da As SqlDataAdapter
    Dim ds As DataSet

    Protected Sub connection()
        con = New SqlConnection(_constr)
        Try
            con.Open()
        Catch ex As Exception

        End Try
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        connection()
        Dim getID As String = Request.QueryString("mid")
        If getID > 0 Then
            cmd = New SqlCommand("delete from movie where mid=" & getID & "", con)
            Try
                cmd.ExecuteNonQuery()
                MsgBox("You Cancelled A Movie")
                Response.Redirect("Default.aspx")
            Catch ex As Exception

            End Try
        End If
    End Sub
End Class
