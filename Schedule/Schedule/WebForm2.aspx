<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="WebForm2.aspx.vb" Inherits="Schedule.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
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
        </div>
        <telerik:RadGrid ID="RadGrid1" runat="server" DataSourceID="SqlDataSource1">
<GroupingSettings CollapseAllTooltip="Collapse all groups"></GroupingSettings>
            <MasterTableView AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                <Columns>
                    <telerik:GridBoundColumn DataField="Term" FilterControlAltText="Filter Term column" HeaderText="Term" SortExpression="Term" UniqueName="Term">
                    </telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="Reference" FilterControlAltText="Filter Reference column" HeaderText="Reference" SortExpression="Reference" UniqueName="Reference">
                    </telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="Catalog" FilterControlAltText="Filter Catalog column" HeaderText="Catalog" SortExpression="Catalog" UniqueName="Catalog">
                    </telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="Prefix" FilterControlAltText="Filter Prefix column" HeaderText="Prefix" SortExpression="Prefix" UniqueName="Prefix">
                    </telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="Course" FilterControlAltText="Filter Course column" HeaderText="Course" SortExpression="Course" UniqueName="Course">
                    </telerik:GridBoundColumn>
                </Columns>
            </MasterTableView>
        </telerik:RadGrid>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:VC_VCDataConnectionString %>" SelectCommand="SELECT [Term], [Reference], [Catalog], [Prefix], [Course] FROM [CMR] WHERE ([Term] = @Term)">
            <SelectParameters>
                <asp:Parameter DefaultValue="2215" Name="Term" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
