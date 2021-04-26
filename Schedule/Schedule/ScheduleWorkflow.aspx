<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="ScheduleWorkflow.aspx.vb" Inherits="Schedule.ScheduleWorkflow" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-size: x-large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <telerik:RadStyleSheetManager ID="RadStyleSheetManager1" runat="server">
        </telerik:RadStyleSheetManager>
        <telerik:RadScriptManager ID="RadScriptManager1" runat="server">
            <Scripts>
                <asp:ScriptReference Assembly="Telerik.Web.UI" Name="Telerik.Web.UI.Common.Core.js">
                </asp:ScriptReference>
                <asp:ScriptReference Assembly="Telerik.Web.UI" Name="Telerik.Web.UI.Common.jQuery.js">
                </asp:ScriptReference>
                <asp:ScriptReference Assembly="Telerik.Web.UI" Name="Telerik.Web.UI.Common.jQueryInclude.js">
                </asp:ScriptReference>
            </Scripts>
        </telerik:RadScriptManager>
        <telerik:RadAjaxManager ID="RadAjaxManager1" runat="server">
        </telerik:RadAjaxManager>
        <div>
            <span class="auto-style1"><strong>Work Order for Adding New Courses to Connect</strong></span><br />
            Notice: the new course will NOT show up on the schedule unless a ClassNbr Reference@ is added to the record.<br />
            When edutubgm the ClassNbr is initially set to ZERP. Click the edit link, gather the info for the Connect entry. and then when added, ADD THE NEW CLASSNBR and save this form.</div>
        <telerik:RadGrid ID="RadGrid1" runat="server" DataSourceID="SqlDataSource1" Skin="WebBlue" AutoGenerateEditColumn="True" Width="800px">
<GroupingSettings CollapseAllTooltip="Collapse all groups"></GroupingSettings>
            <MasterTableView AutoGenerateColumns="False" DataKeyNames="Course_ID" DataSourceID="SqlDataSource1">
                <Columns>
                    <telerik:GridBoundColumn DataField="Course_ID" DataType="System.Int32" FilterControlAltText="Filter Course_ID column" HeaderText="Course_ID" ReadOnly="True" SortExpression="Course_ID" UniqueName="Course_ID">
                    </telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="Course" FilterControlAltText="Filter Course column" HeaderText="Course" SortExpression="Course" UniqueName="Course">
                    </telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="Term" FilterControlAltText="Filter Term column" HeaderText="Term" SortExpression="Term" UniqueName="Term">
                    </telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="AcadGroup" FilterControlAltText="Filter AcadGroup column" HeaderText="AcadGroup" SortExpression="AcadGroup" UniqueName="AcadGroup">
                    </telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="AcadOrg" FilterControlAltText="Filter AcadOrg column" HeaderText="AcadOrg" SortExpression="AcadOrg" UniqueName="AcadOrg">
                    </telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="AcadName" FilterControlAltText="Filter AcadName column" HeaderText="AcadName" SortExpression="AcadName" UniqueName="AcadName" Visible="false">
                    </telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="Campus" FilterControlAltText="Filter Campus column" HeaderText="Campus" SortExpression="Campus" UniqueName="Campus" Visible="false">
                    </telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="ClassNbr" DataType="System.Int32" FilterControlAltText="Filter ClassNbr column" HeaderText="ClassNbr" SortExpression="ClassNbr" UniqueName="ClassNbr" Visible="false">
                    </telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="Subject" FilterControlAltText="Filter Subject column" HeaderText="Subject" SortExpression="Subject" UniqueName="Subject" Visible="false">
                    </telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="CatalogNbr" FilterControlAltText="Filter CatalogNbr column" HeaderText="CatalogNbr" SortExpression="CatalogNbr" UniqueName="CatalogNbr" Visible="false">
                    </telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="ClassDescr" FilterControlAltText="Filter ClassDescr column" HeaderText="ClassDescr" SortExpression="ClassDescr" UniqueName="ClassDescr" Visible="false">
                    </telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="Comp" FilterControlAltText="Filter Comp column" HeaderText="Comp" SortExpression="Comp" UniqueName="Comp" Visible="false">
                    </telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="CapEnrl" DataType="System.Double" FilterControlAltText="Filter CapEnrl column" HeaderText="CapEnrl" SortExpression="CapEnrl" UniqueName="CapEnrl" Visible="false">
                    </telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="Session" FilterControlAltText="Filter Session column" HeaderText="Session" SortExpression="Session" UniqueName="Session" Visible="false">
                    </telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="ClassType" FilterControlAltText="Filter ClassType column" HeaderText="ClassType" SortExpression="ClassType" UniqueName="ClassType" Visible="false">
                    </telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="AddConsent" FilterControlAltText="Filter AddConsent column" HeaderText="AddConsent" SortExpression="AddConsent" UniqueName="AddConsent" Visible="false">
                    </telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="DropConsent" FilterControlAltText="Filter DropConsent column" HeaderText="DropConsent" SortExpression="DropConsent" UniqueName="DropConsent" Visible="false">
                    </telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="RequestDate" DataType="System.DateTime" FilterControlAltText="Filter RequestDate column" HeaderText="RequestDate" SortExpression="RequestDate" UniqueName="RequestDate">
                    </telerik:GridBoundColumn>
                </Columns>
            </MasterTableView>
        </telerik:RadGrid>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:VC_VCDataConnectionString %>" SelectCommand="SELECT [Course_ID], [Course], [Term], [AcadGroup], [AcadOrg], [AcadName], [Campus], [ClassNbr], [Subject], [CatalogNbr], [ClassDescr], [Comp], [CapEnrl], [Session], [ClassType], [AddConsent], [DropConsent], [RequestDate] FROM [Schedule7_Mod] WHERE ([SubmitDateDate] &lt; @SubmitDateDate)">
            <SelectParameters>
                <asp:Parameter DbType="Date" DefaultValue="1/2/1900" Name="SubmitDateDate" />
            </SelectParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
