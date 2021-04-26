Imports System.Net
Imports System.Xml
Imports System.Configuration
Imports System.Data
Imports System.Data.SqlClient
Imports System.IO
Imports System.Drawing
Public Class InstructorDetails
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Label1.Text = getcourse
    End Sub

    Protected Function getCourse() As String
        Dim myConnection As New SqlConnection(ConfigurationManager.ConnectionStrings("VC_VCDataConnectionString").ConnectionString)
        Dim myreturn As String = "Fail"
        Dim strsql As String = ""
        ' If Request("ID") <> "" Then
        strsql = "Select first,last from [VC_VCData].[dbo].[2213FacultyInfo]  where emplid = 1000033286 "
            'Response.Write(strsql & "<br>")

            Dim myCommand As New SqlCommand(strsql, myConnection)

            ' Open the connection and execute the Command
            myConnection.Open()
            Dim dr As SqlDataReader = myCommand.ExecuteReader(CommandBehavior.CloseConnection)
            If dr.HasRows Then
                While dr.Read()

                myreturn = dr("First") & "-" & dr("Last")


            End While
            End If
            dr.Close()
            dr = Nothing
            myConnection.Close()
        '
        Return myreturn
    End Function


End Class