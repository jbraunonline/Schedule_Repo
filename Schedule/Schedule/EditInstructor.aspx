<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="EditInstructor.aspx.vb" Inherits="Schedule.EditInstructor" %>

<!DOCTYPE html>

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
        .auto-style5 {
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
                <td><span class="auto-style4"><strong>MDC Online Schedule</strong></span>
                    <asp:DetailsView ID="DetailsView4" runat="server" AutoGenerateRows="False" CellPadding="4" DataSourceID="SqlDataSource4" ForeColor="#333333" GridLines="None" Height="50px" Width="274px" DataKeyNames="Instructor_ID">
                        <AlternatingRowStyle BackColor="White" />
                        <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
                        <EditRowStyle BackColor="#2461BF" />
                        <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
                        <Fields>
                            <asp:BoundField DataField="Instructor_ID" HeaderText="Instructor_ID" SortExpression="Instructor_ID" InsertVisible="False" ReadOnly="True" />
                            <asp:BoundField DataField="ClassNbr" HeaderText="ClassNbr" SortExpression="ClassNbr" />
                            <asp:BoundField DataField="MDID" HeaderText="MDID" SortExpression="MDID" />
                            <asp:BoundField DataField="Last" HeaderText="Last" SortExpression="Last" />
                            <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
                            <asp:BoundField DataField="InstrCls" HeaderText="InstrCls" SortExpression="InstrCls" />
                            <asp:CheckBoxField DataField="Isync" HeaderText="Isync" SortExpression="Isync" />
                        </Fields>
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EFF3FB" />
                    </asp:DetailsView>
                </td>
                <td style="vertical-align:top"><span class="auto-style5">C<strong>onnect Data</strong></span>
                    <asp:DetailsView ID="DetailsView5" runat="server" Height="50px" Width="274px" AutoGenerateRows="False" CellPadding="4" DataSourceID="SqlDataSource4" ForeColor="#333333" GridLines="None" DataKeyNames="Instructor_ID">
                        <AlternatingRowStyle BackColor="White" />
                        <CommandRowStyle BackColor="#C5BBAF" Font-Bold="True" />
                        <EditRowStyle BackColor="#7C6F57" />
                        <FieldHeaderStyle BackColor="#D0D0D0" Font-Bold="True" />
                        <Fields>
                            <asp:BoundField DataField="Instructor_ID" HeaderText="Instructor_ID" SortExpression="Instructor_ID" InsertVisible="False" ReadOnly="True" />
                            <asp:BoundField DataField="ClassNbr" HeaderText="ClassNbr" SortExpression="ClassNbr" />
                            <asp:BoundField DataField="MDID" HeaderText="MDID" SortExpression="MDID" />
                            <asp:BoundField DataField="Last" HeaderText="Last" SortExpression="Last" />
                            <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
                            <asp:BoundField DataField="InstrCls" HeaderText="InstrCls" SortExpression="InstrCls" />
                            <asp:CheckBoxField DataField="Isync" HeaderText="Isync" SortExpression="Isync" />
                        </Fields>
                        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#E3EAEB" />
                    </asp:DetailsView>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:VC_VCDataConnectionString %>" SelectCommand="SELECT * FROM [Schedule7A] WHERE ([ClassNbr] = @ClassNbr)">
                        <SelectParameters>
                            <asp:QueryStringParameter DefaultValue="1002" Name="ClassNbr" QueryStringField="ID" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
                <td>
                    <telerik:RadFormDecorator ID="RadFormDecorator1" Runat="server" DecoratedControls="CheckBoxes" Skin="Material" />
                </td>
            </tr>
        </table>
        <asp:Button ID="Button1" runat="server" BackColor="#CC0000" Font-Bold="True" ForeColor="White" Text="Edit Data" />
    &nbsp; <span class="auto-style6"><strong>&nbsp;
        <asp:Button ID="Button2" runat="server" BackColor="#009999" Font-Bold="True" ForeColor="White" Text="Instructor Details" />
        <br />
        If we edit schedule data, a report is generated indicating what Connect Data needs to be changed,<br />
        If data matches, then the Csync box will be checked.</strong></span></form>
</body>
</html>
