<%@ Page Title="" Language="C#" MasterPageFile="~/HRStaff/HRStaff.Master" AutoEventWireup="true" CodeBehind="change_password.aspx.cs" Inherits="Resource_Management.HRStaff.change_password1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<form id="form1" runat="server">
    <table style="width: 100%; color: #000099;">
        <tr>
            <td>
                CHANGE PASSWORD</td>
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
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                Old password</td>
            <td>
                <asp:TextBox ID="txt_old" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator id="RequiredFieldValidator1" runat="server" ControlToValidate="txt_old" ErrorMessage="old password is required." ForeColor="Red" ValidationGroup="Group1">
                </asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                New password</td>
            <td>
                <asp:TextBox ID="txt_new" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator id="RequiredFieldValidator2" runat="server" ControlToValidate="txt_new" ErrorMessage="Enter new password." ForeColor="Red" ValidationGroup="Group1">
                </asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                Confirm password</td>
            <td>
                <asp:TextBox ID="txt_confirm" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator id="RequiredFieldValidator3" runat="server" ControlToValidate="txt_confirm" ErrorMessage="Enter new password." ForeColor="Red" ValidationGroup="Group1">
                </asp:RequiredFieldValidator>
                <asp:CompareValidator runat="server" id="cmpNumbers" controltovalidate="txt_confirm" controltocompare="txt_new" type="Integer" errormessage="Password doesnot match" ValidationGroup="Group1" ForeColor="Red"/><br />
            
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </td>
            <td>
                <asp:Button ID="btn_submit" runat="server" onclick="btn_submit_Click" ValidationGroup="Group" Text="SUBMIT" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    </form>
</asp:Content>
