<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="InstructorDetails.aspx.vb" Inherits="Schedule.InstructorDetails" %>

v<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style3 {
            width: 800px;
        }
        .auto-style4 {
            color: #990033;
            font-size: x-large;
        }
        .auto-style6 {
            font-family: Arial, Helvetica, sans-serif;
            font-size: large;
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
        </div>
        <strong>
        <asp:Label ID="Label1" runat="server" Text="Label" Font-Bold="True" Font-Names="Arial" Font-Size="XX-Large"></asp:Label>
&nbsp;</strong><table class="auto-style3">
            <tr>
                <td><span class="auto-style4"><strong>MDC Online </strong>Details</span>
                    <asp:DetailsView ID="DetailsView4" runat="server" AutoGenerateRows="False" CellPadding="4" DataSourceID="SqlDataSource4" ForeColor="#333333" GridLines="None" Height="50px" Width="500px">
                        <AlternatingRowStyle BackColor="White" />
                        <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
                        <EditRowStyle BackColor="#2461BF" />
                        <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
                        <Fields>
                            <asp:BoundField DataField="EMPLID" HeaderText="EMPLID" SortExpression="EMPLID" />
                            <asp:BoundField DataField="MDID" HeaderText="MDID" SortExpression="MDID" />
                            <asp:BoundField DataField="Instructor" HeaderText="Instructor" SortExpression="Instructor" />
                            <asp:BoundField DataField="Last" HeaderText="Last" SortExpression="Last" />
                            <asp:BoundField DataField="First" HeaderText="First" SortExpression="First" />
                            <asp:BoundField DataField="Calendar" HeaderText="Calendar" SortExpression="Calendar" />
                            <asp:BoundField DataField="New" HeaderText="New" SortExpression="New" />
                            <asp:BoundField DataField="Outlook" HeaderText="Outlook" SortExpression="Outlook" />
                            <asp:BoundField DataField="FT_PT" HeaderText="FT_PT" SortExpression="FT_PT" />
                            <asp:BoundField DataField="Chair" HeaderText="Chair" SortExpression="Chair" />
                            <asp:BoundField DataField="ChairCoutlook" HeaderText="ChairCoutlook" SortExpression="ChairCoutlook" />
                            <asp:BoundField DataField="Location" HeaderText="Location" SortExpression="Location" />
                            <asp:BoundField DataField="Campus" HeaderText="Campus" SortExpression="Campus" />
                            <asp:BoundField DataField="School" HeaderText="School" SortExpression="School" />
                            <asp:BoundField DataField="Rcampus" HeaderText="Rcampus" SortExpression="Rcampus" />
                            <asp:BoundField DataField="CanChange" HeaderText="CanChange" SortExpression="CanChange" />
                            <asp:BoundField DataField="Bbtrain" HeaderText="Bbtrain" SortExpression="Bbtrain" />
                            <asp:BoundField DataField="Vccert" HeaderText="Vccert" SortExpression="Vccert" />
                            <asp:BoundField DataField="Vcdev" HeaderText="Vcdev" SortExpression="Vcdev" />
                            <asp:BoundField DataField="Developer" HeaderText="Developer" SortExpression="Developer" />
                            <asp:BoundField DataField="Credentials" HeaderText="Credentials" SortExpression="Credentials" />
                            <asp:BoundField DataField="PendingCred" HeaderText="PendingCred" SortExpression="PendingCred" />
                            <asp:BoundField DataField="Notes" HeaderText="Notes" SortExpression="Notes" />
                        </Fields>
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EFF3FB" />
                    </asp:DetailsView>
                </td>
                <td style="vertical-align:top">&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:VC_VCDataConnectionString %>" SelectCommand="SELECT * FROM [2213FacultyInfo] WHERE ([EMPLID] = @EMPLID)">
                        <SelectParameters>
                            <asp:Parameter DefaultValue="1000033286" Name="EMPLID" Type="Double" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
        <asp:Button ID="Button1" runat="server" BackColor="#CC0000" Font-Bold="True" ForeColor="White" Text="Edit Data" />
    &nbsp; <span class="auto-style6"><strong>&nbsp;</strong></span></form>
</body>
</html>
