<%@ Page Title="" Language="C#" MasterPageFile="~/Employer/Employer.Master" AutoEventWireup="true" CodeBehind="Employer.aspx.cs" Inherits="Resource_Management.Employer.Employer1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <form id="form1" runat="server">

    <table style="width:100%;">
        <tr>
            <td colspan="3">
                PROFILE</td>
        </tr>
        <tr>
            <td>
                Registered ID</td>
            <td>
                <asp:Label ID="lbl_Rid" runat="server"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                Company Name</td>
            <td>
                <asp:TextBox ID="txt_name" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                Address</td>
            <td>
                <asp:TextBox ID="txt_addr" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                Phone</td>
            <td>
                <asp:TextBox ID="txt_Phone" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                Tieup-date</td>
            <td>
                <asp:Label ID="lbl_tieup" runat="server"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                IIncharge Person</td>
            <td>
                <asp:TextBox ID="txt_incharge" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                Contact</td>
            <td>
                <asp:TextBox ID="txt_contact" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lbl_msg" runat="server" Text="Label"></asp:Label>
            </td>
            <td>
                <asp:Button ID="btn_update" runat="server" Text="Update" 
                    onclick="btn_update_Click" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="height: 22px">
                </td>
            <td style="height: 22px">
                </td>
            <td style="height: 22px">
                </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>

</form>

</asp:Content>
