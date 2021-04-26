<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="NewSection.aspx.vb" Inherits="Schedule.NewSection" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server" visible="True">
        <div>
            <strong>Add New Section
        </strong>
        </div>
    &nbsp;<asp:DropDownList ID="ddlTerm" runat="server">
            <asp:ListItem>2215</asp:ListItem>
            <asp:ListItem>2217</asp:ListItem>
        </asp:DropDownList>
        Term<br />
        <asp:DropDownList ID="ddlSession" runat="server">
            <asp:ListItem Selected="True">1</asp:ListItem>
            <asp:ListItem>6W1</asp:ListItem>
            <asp:ListItem>8W1</asp:ListItem>
            <asp:ListItem>6W2</asp:ListItem>
            <asp:ListItem>8W2</asp:ListItem>
            <asp:ListItem>12</asp:ListItem>
        </asp:DropDownList>
&nbsp;Session<br />
        <asp:DropDownList ID="ddlStatus" runat="server">
            <asp:ListItem>T</asp:ListItem>
            <asp:ListItem>A</asp:ListItem>
            <asp:ListItem>X</asp:ListItem>
        </asp:DropDownList>
        &nbsp; Status<br />
        <asp:DropDownList ID="ddlCourse" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Course" DataValueField="Course">
        </asp:DropDownList>
&nbsp;Course<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:VC_VCDataConnectionString %>" SelectCommand="SELECT Distinct Subject + CatalogNbr as Course
  FROM [VC_VCData].[dbo].[Schdule_AcadOrg$] Order by Course"></asp:SqlDataSource>
        <br />
        <asp:Label ID="lblCourse" runat="server"></asp:Label>
        <br />
        <asp:Label ID="lblTerm" runat="server"></asp:Label>
        <br />
        <asp:Label ID="lblSession" runat="server"></asp:Label>
        <br />
        <asp:Label ID="lblStatus" runat="server"></asp:Label>
        <br />
        <asp:Label ID="lblSubject" runat="server"></asp:Label>
        <br />
        <asp:Label ID="lblCatalogNbr" runat="server"></asp:Label>
        <br />
        <asp:Label ID="lblAcadGroup" runat="server"></asp:Label>
        <br />
        <asp:Label ID="lblAcadOrg" runat="server"></asp:Label>
        <br />
        <asp:Label ID="lblAcadOrgName" runat="server"></asp:Label>
        <br />
        <asp:Label ID="lblCampus" runat="server"></asp:Label>
        <br />
        <asp:Label ID="lblClassDescr" runat="server"></asp:Label>
        <br />
        <asp:Label ID="lblComp" runat="server"></asp:Label>
        <br />
        <asp:Label ID="lblCapEnrl" runat="server"></asp:Label>
        <br />
        <asp:Label ID="lblClassType" runat="server"></asp:Label>
        <br />
        <asp:Label ID="lblAddConsent" runat="server"></asp:Label>
        <br />
        <asp:Label ID="lblDropConsent" runat="server"></asp:Label>
        <br />
&nbsp;<br />
        <asp:Button ID="btnAdd" runat="server" BorderColor="Red" BorderWidth="3px" Text="Add New Course to Schedule" />
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblNotify" runat="server" Font-Bold="True" ForeColor="#CC0000"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnGoWork" runat="server" BorderColor="#00CC66" BorderWidth="3px" Text="Go to Work Order" Visible="False" />
        <br />
        The new course request is put into the Schedule Work Order table. Someone then enters the data to Connect and adds the ClassNbr (Reference#) to the Work Order and saves the data after the course has been entered in Connect.<br />
        When the ClassNbr is added to the record, the new course now appears on our Dashboard with a &quot;NEW&quot; flag with NO CourseNbr or Reference#.&nbsp; The new course appears as NEW and NOT in synch with Connect (because we have not gotten Connect Data.<br />
        The next day, if the course appears on the new CMR7 report, the NEW flag disappears, the course is now marked as Scheduled and inSynch with COnnect and the CourseNbr appears. We get the CourseNbr only from Connect.<br />
        <br />
    </form>
</body>
</html>
