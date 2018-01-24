<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Domain.aspx.cs" Inherits="Resource_Management.Admin.Domain" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
    <table style="width:100%;">
        <tr>
            <td colspan="2">
                Domains we provide service&nbsp; on</td>
        </tr>
        <tr>
            <td>
                Domain Name</td>
            <td>
                <asp:TextBox ID="txt_domain" runat="server" Height="24px" Width="241px"></asp:TextBox>
                 <asp:RequiredFieldValidator id="RequiredFieldValidator1" runat="server" ControlToValidate="txt_domain" ErrorMessage="Please enter Domain." ForeColor="Red" ValidationGroup="Group1">
                </asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lbl_msg" runat="server"></asp:Label>
            </td>
            <td>
                <asp:Button ID="btn_ADD" runat="server" onclick="btn_ADD_Click" Text="ADD" ValidationGroup="Group1"/>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:GridView ID="gv_domain" runat="server" AutoGenerateColumns="False">
                    <Columns>
                        <asp:BoundField DataField="DomainID" HeaderText="DomainID" />
                        <asp:BoundField DataField="DomainName" HeaderText="DomainName" />
                        <asp:TemplateField HeaderText="Edit">
                            <ItemTemplate>
                                <asp:LinkButton ID="lnk_edit" runat="server" 
                                    CommandArgument='<%# Eval("DomainID") %>' onclick="lnk_edit_Click">Edit</asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Delete">
                            <ItemTemplate>
                                <asp:LinkButton ID="lnk_delete" runat="server" 
                                    CommandArgument='<%# Eval("DomainID") %>' onclick="lnk_delete_Click">Delete</asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    </form>
</asp:Content>
