
Imports System.Data.SqlClient
Imports System.Data

Partial Class _Default
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

    Protected Sub createTbl()
        cmd = New SqlCommand("create table movie(mid int primary key,mname varchar(128),mtype varchar(128))", con)
        Try
            cmd.ExecuteNonQuery()
            MsgBox("Table Created")
        Catch ex As Exception

        End Try
    End Sub

    Protected Sub insertData()
        cmd = New SqlCommand("insert into movie values(@mid,@mname,@mtype)", con)

        Try
            cmd.Parameters.AddWithValue("@mid", Convert.ToInt64(TextBoxID.Text.Trim))
            cmd.Parameters.AddWithValue("@mname", DropDownListMname.SelectedValue)
            cmd.Parameters.AddWithValue("@mtype", DropDownListThtype.SelectedValue)
            cmd.ExecuteNonQuery()
            MsgBox("Your Ticket Booked Dear...")
            Response.Redirect("Default.aspx")
        Catch ex As Exception
            'MsgBox(ex.Message)
        End Try
    End Sub

    Protected Sub showData()
        da = New SqlDataAdapter("select * from movie", con)
        ds = New DataSet

        Try
            da.Fill(ds)
            GridView1.DataSource = ds.Tables(0)
            GridView1.DataBind()
        Catch ex As Exception

        End Try
    End Sub

    Protected Sub ButtonBook_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles ButtonBook.Click
        connection()
        createTbl()
        insertData()
        showData()
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        connection()
        showData()
    End Sub
End Class
