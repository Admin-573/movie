
Imports System.Data.SqlClient
Imports System.Data

Partial Class update
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

    Protected Sub ButtonUpdate_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles ButtonUpdate.Click

        Dim getID As String = Request.QueryString("mid")
        connection()
        cmd = New SqlCommand("update movie set mname=@mname , mtype=@mtype where mid='" & getID & "'", con)
        cmd.Parameters.AddWithValue("@mname", DropDownListMname.SelectedValue.ToString)
        cmd.Parameters.AddWithValue("@mtype", DropDownListThtype.SelectedValue.ToString)

        Try
            cmd.ExecuteNonQuery()
            MsgBox("Movie Details Updated")
            Response.Redirect("Default.aspx")
        Catch ex As Exception
        End Try
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim getID As String = Request.QueryString("mid")

        connection()
        da = New SqlDataAdapter("select * from movie where mid=" & getID & "", con)
        ds = New DataSet
        da.Fill(ds)

        Try
            If IsPostBack = False Then
                TextBoxID.Text = getID
                DropDownListMname.SelectedValue = ds.Tables(0).Rows(0).Item(1).ToString
                DropDownListThtype.SelectedValue = ds.Tables(0).Rows(0).Item(2).ToString
            End If
        Catch ex As Exception

        End Try

    End Sub

End Class
