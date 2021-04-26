Imports System.Net
Imports System.Xml
Imports System.Configuration
Imports System.Data
Imports System.Data.SqlClient
Imports System.IO
Imports System.Drawing

Public Class NewSection
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub ddlCourse_SelectedIndexChanged(sender As Object, e As EventArgs) Handles ddlCourse.SelectedIndexChanged
        lblCourse.Text = ddlCourse.SelectedValue.ToString
        lblTerm.Text = ddlTerm.SelectedValue.ToString
        lblStatus.Text = ddlStatus.SelectedValue.ToString
        lblSession.Text = ddlSession.SelectedValue.ToString
        lblSubject.Text = Left(ddlCourse.SelectedValue, 3)
        lblCatalogNbr.Text = Replace(ddlCourse.SelectedValue, lblSubject.Text, "")
        getdetails(lblSubject.Text, lblCatalogNbr.Text)

    End Sub

    Sub getdetails(ByVal mysubject As String, ByVal myCatalogNbr As String)


        'Response.Write(mymdcid & "<br>")
        Dim strSQL As String = "SELECT Top(1)  * FROM [VC_VCData].[dbo].[Schdule_AcadOrg$] "
        strSQL += " where subject='" & mysubject & "' and CatalogNbr='" & myCatalogNbr & "'"
        'Response.Write(strSQL)
        'Response.End()

        Dim myConnection As New SqlConnection(ConfigurationManager.ConnectionStrings("VC_VCDataConnectionString").ConnectionString)
        ' Response.Write(strSQL & "<br>")
        Dim myCommand As New SqlCommand(strSQL, myConnection)

        ' Open the connection and execute the Command
        myConnection.Open()
        Dim dr As SqlDataReader = myCommand.ExecuteReader(CommandBehavior.CloseConnection)
        If dr.HasRows Then
            While dr.Read()
                'Response.Write(dr("ClassDescr") & "--Descruotion<br>")
                lblAcadGroup.Text = dr("AcadGroup")
                lblAcadOrg.Text = dr("AcadOrg")
                lblAcadOrgName.Text = dr("AcadOrgName")
                lblCampus.Text = dr("Campus")
                lblClassDescr.Text = dr("ClassDescr")
                lblComp.Text = dr("Comp")
                lblCapEnrl.Text = dr("CapEnrl")
                lblClassType.Text = dr("ClassType")
                lblAddConsent.Text = dr("AddConsent")
                lblDropConsent.Text = dr("DropConsent")

            End While
        End If
        dr.Close()
        dr = Nothing
        myConnection.Close()


    End Sub

    Protected Sub btnAdd_Click(sender As Object, e As EventArgs) Handles btnAdd.Click
        Dim mynotify As String = "Course Created  ready for Connect Entry"
        Dim strsql As String = ""
        strsql += " Insert into dbo.Schedule7_Mod "
        strsql += "(Course, term, Session, Status, Subject, CatalogNbr,AcadGroup, AcadOrg, AcadName,Campus,ClassDescr, Comp,CapEnrl,ClassType, AddConsent,DropConsent,RequestDate) "
        strsql += " Values ('" & lblCourse.Text & "','" & lblTerm.Text & "','" & lblSession.Text & "','" & lblStatus.Text & "','" & lblSubject.Text & "','" & lblCatalogNbr.Text & "','" & lblAcadGroup.Text & "','" & lblAcadOrg.Text & "','" & lblAcadOrgName.Text & "','"
        strsql += lblCampus.Text & "','" & lblClassDescr.Text & "','" & lblComp.Text & "'," & lblCapEnrl.Text & ",'" & lblClassType.Text & "','" & lblAddConsent.Text & "','" & lblDropConsent.Text & "','" & Now.ToShortDateString & "')"

        Response.Write(strsql & "<br>")


        Dim myConnection As New SqlConnection(ConfigurationManager.ConnectionStrings("VC_VCDataConnectionString").ConnectionString)

        Dim myCommand As New SqlCommand(strsql, myConnection) '

        ' Execute the command in a try/catch to catch duplicate username errors'



        Try
            ' Open the connection and execute the Command
            myConnection.Open()
            ' mycounter = mycounter + 1
            'HOLD SQL HOLD..[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[.

            myCommand.ExecuteNonQuery()
        Catch
            ' failed to create a new record 
            Response.Write("Fail")
            'mynotify = "Fail to Create Course"
        Finally
            'Close the Connection
            If myConnection.State = ConnectionState.Open Then
                myConnection.Close()
            End If
        End Try
        lblNotify.Text = mynotify
        btnGoWork.Visible = True


    End Sub

    Protected Sub btnGoWork_Click(sender As Object, e As EventArgs) Handles btnGoWork.Click
        Response.Redirect("Scheduleworkflow.aspx")
    End Sub
End Class