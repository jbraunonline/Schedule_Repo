<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="WebForm1.aspx.vb" Inherits="Schedule.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-family: Arial, Helvetica, sans-serif;
            font-size: large;
            font-weight: bold;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <telerik:RadStyleSheetManager ID="RadStyleSheetManager1" runat="server">
        </telerik:RadStyleSheetManager>
        <telerik:RadScriptManager ID="RadScriptManager1" runat="server">
            <scripts>
                <asp:ScriptReference Assembly="Telerik.Web.UI" Name="Telerik.Web.UI.Common.Core.js">
                </asp:ScriptReference>
                <asp:ScriptReference Assembly="Telerik.Web.UI" Name="Telerik.Web.UI.Common.jQuery.js">
                </asp:ScriptReference>
                <asp:ScriptReference Assembly="Telerik.Web.UI" Name="Telerik.Web.UI.Common.jQueryInclude.js">
                </asp:ScriptReference>
            </scripts>
        </telerik:RadScriptManager>
        <telerik:RadAjaxManager ID="RadAjaxManager1" runat="server">
        </telerik:RadAjaxManager>
        <div class="auto-style1">
            2215 MDC Online Schedule
            <asp:Button ID="Button1" runat="server" BackColor="#CC0000" Font-Bold="True" Font-Size="XX-Small" ForeColor="White" Text="Add New Section" />
        </div>
        <telerik:RadGrid ID="RadGrid1" runat="server" AllowSorting="True" DataSourceID="SqlDataSource1" Skin="WebBlue" AllowFilteringByColumn="True" Width="1200px">
<GroupingSettings CollapseAllTooltip="Collapse all groups"></GroupingSettings>
            <mastertableview autogeneratecolumns="False" datasourceid="SqlDataSource1">
                <Columns>
                    <telerik:GridCheckBoxColumn DataField="Csync" DataType="System.Boolean" FilterControlAltText="Filter Csync column" HeaderText="Csync" SortExpression="Csync" UniqueName="Csync">
                    </telerik:GridCheckBoxColumn>
<telerik:GridHyperLinkColumn DataTextField="ClassNbr" HeaderText="Course" UniqueName="LinkClass" DataNavigateUrlFields="ClassNbr" DataNavigateUrlFormatString="EditCourse.aspx?ID={0}" Text="Details" DataTextFormatString="Details" AllowFiltering="false">
</telerik:GridHyperLinkColumn>
                    <telerik:GridBoundColumn DataField="ClassNbr" FilterControlAltText="Filter ClassNbr column" HeaderText="ClassNbr" SortExpression="ClassNbr" UniqueName="ClassNbr" DataType="System.Int32">
                    </telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="Course" FilterControlAltText="Filter Course column" HeaderText="Course" SortExpression="Course" UniqueName="Course" ReadOnly="True">
                    </telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="Status" FilterControlAltText="Filter Status column" HeaderText="Status" SortExpression="Status" UniqueName="Status">
                    </telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="TotEnrl" DataType="System.Double" FilterControlAltText="Filter TotEnrl column" HeaderText="TotEnrl" SortExpression="TotEnrl" UniqueName="TotEnrl" AllowFiltering="false">
                    </telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="CapEnrl" FilterControlAltText="Filter CapEnrl column" HeaderText="CapEnrl" SortExpression="CapEnrl" UniqueName="CapEnrl" DataType="System.Double" AllowFiltering="false" Visible="false">
                    </telerik:GridBoundColumn >
                    <telerik:GridBoundColumn DataField="Session" FilterControlAltText="Filter Session column" HeaderText="Session" SortExpression="Session" UniqueName="Session">
                    </telerik:GridBoundColumn>

                    <telerik:GridCheckBoxColumn DataField="Isync" DataType="System.Boolean" FilterControlAltText="Filter Isync column" HeaderText="Isync" SortExpression="Isync" UniqueName="Isync">
                    </telerik:GridCheckBoxColumn>
<telerik:GridHyperLinkColumn DataTextField="MDIC" HeaderText="Instructor" UniqueName="LinkInst" DataNavigateUrlFields="ClassNbr" DataNavigateUrlFormatString="EditInstructor.aspx?ID={0}" Text="Details" DataTextFormatString="Inst Detail" AllowFiltering="false">
</telerik:GridHyperLinkColumn>
                    <telerik:GridBoundColumn DataField="MDID" FilterControlAltText="Filter MDID column" HeaderText="MDID" SortExpression="MDID" UniqueName="MDID" Visible="false">
                    </telerik:GridBoundColumn>

                    <telerik:GridBoundColumn DataField="last" FilterControlAltText="Filter last column" HeaderText="last" SortExpression="last" UniqueName="last">
                    </telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="FirstName" FilterControlAltText="Filter FirstName column" HeaderText="FirstName" SortExpression="FirstName" UniqueName="FirstName" AllowFiltering="false">
                    </telerik:GridBoundColumn>


                    <telerik:GridBoundColumn DataField="Course_ID" FilterControlAltText="Filter Course_ID column" HeaderText="Course_ID" SortExpression="Course_ID" UniqueName="Course_ID" DataType="System.Int32" ReadOnly="True" Visible="false">
                    </telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="Instructor_ID" FilterControlAltText="Filter Instructor_ID column" HeaderText="Instructor_ID" SortExpression="Instructor_ID" UniqueName="Instructor_ID" DataType="System.Int32" ReadOnly="True" Visible="false">
                    </telerik:GridBoundColumn>
                </Columns>
            </mastertableview>
              <GroupingSettings CaseSensitive="false" />
        </telerik:RadGrid>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:VC_VCDataConnectionString %>" SelectCommand="SELECT        Schedule7.ClassNbr, Schedule7.Subject + Schedule7.Catalog As Course, Schedule7.Status, Schedule7.TotEnrl, Schedule7.CapEnrl, Schedule7.Session, Schedule7A.MDID, Schedule7A.last, Schedule7A.FirstName, Schedule7A.Isync, Schedule7.Csync, 
                         Schedule7.Course_ID, Schedule7A.Instructor_ID
FROM            Schedule7 LEFT OUTER JOIN
                         Schedule7A ON Schedule7.ClassNbr = Schedule7A.ClassNbr
Order by 
Schedule7.Subject"></asp:SqlDataSource>
        <telerik:RadFormDecorator ID="RadFormDecorator1" Runat="server" DecoratedControls="CheckBoxes" Skin="Material" />
    </form>
</body>
</html>
