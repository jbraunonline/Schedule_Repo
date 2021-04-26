Imports System.Net
Imports System.Xml
Imports System.Configuration
Imports System.Data
Imports System.Data.SqlClient
Imports System.IO
Imports System.Drawing

Public Class EditInstructor
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Label1.Text = getcourse
    End Sub


    Protected Function getCourse() As String
        Dim myConnection As New SqlConnection(ConfigurationManager.ConnectionStrings("VC_VCDataConnectionString").ConnectionString)
        Dim myreturn As String = "Fail"
        Dim strsql As String = ""
        If Request("ID") <> "" Then
            strsql = "select Term, ClassNbr, Subject, Catalog from Schedule7 where ClassNbr=" & CInt(Request("ID"))
            'Response.Write(strsql & "<br>")

            Dim myCommand As New SqlCommand(strsql, myConnection)

            ' Open the connection and execute the Command
            myConnection.Open()
            Dim dr As SqlDataReader = myCommand.ExecuteReader(CommandBehavior.CloseConnection)
            If dr.HasRows Then
                While dr.Read()

                    myreturn = "Instructor for " & dr("Term") & "-" & dr("Subject") & dr("Catalog") & "-" & dr("ClassNbr")


                End While
            End If
            dr.Close()
            dr = Nothing
            myConnection.Close()
        Else
        End If
        Return myreturn
    End Function

    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        Response.Redirect("InstructorDetails.aspx?ID=" & CInt(Request("ID")))
    End Sub
End Class