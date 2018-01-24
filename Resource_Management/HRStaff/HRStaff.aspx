<%@ Page Title="" Language="C#" MasterPageFile="~/HRStaff/HRStaff.Master" AutoEventWireup="true" CodeBehind="HRStaff.aspx.cs" Inherits="Resource_Management.HRStaff.HRStaff1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
    <table style="width:100%;">
        <tr>
            <td>
                YOUR PROFILE</td>
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
                Your ID</td>
            <td>
                <asp:Label ID="lbl_id" runat="server"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                Name</td>
            <td>
                <asp:TextBox ID="txt_name" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator id="RequiredFieldValidator1" runat="server" ControlToValidate="txt_name" ErrorMessage="name is required." ForeColor="Red" ValidationGroup="Group1">
                </asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                Address</td>
            <td>
                <asp:TextBox ID="txt_addr" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator id="RequiredFieldValidator2" runat="server" ControlToValidate="txt_addr" ErrorMessage="address is required." ForeColor="Red" ValidationGroup="Group1">
                </asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                Phone</td>
            <td>
                <asp:TextBox ID="txt_phone" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator id="RequiredFieldValidator3" runat="server" ControlToValidate="txt_phone" ErrorMessage="phone number required." ForeColor="Red" ValidationGroup="Group1">
                </asp:RequiredFieldValidator>
                 <asp:CompareValidator ID="CompareValidator1" runat="server" Operator="DataTypeCheck" Type="Integer" ValidationExpression="[0-9]{10}" ControlToValidate="txt_phone" ErrorMessage="Value must be 10 numbers" ValidationGroup="Group1" ForeColor="Red" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                Date of join</td>
            <td>
                <asp:Label ID="lbl_doj" runat="server"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                Designation</td>
            <td>
                <asp:Label ID="lbl_desig" runat="server"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="height: 24px">
                Qualification</td>
            <td style="height: 24px">
                <asp:TextBox ID="txt_qual" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator id="RequiredFieldValidator4" runat="server" ControlToValidate="txt_qual" ErrorMessage="qualification is required." ForeColor="Red" ValidationGroup="Group1">
                </asp:RequiredFieldValidator>
            </td>
            <td style="height: 24px">
            </td>
        </tr>
        <tr>
            <td>
                Salary</td>
            <td>
                <asp:Label ID="lbl_ctc" runat="server"></asp:Label>
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
                <asp:Label ID="lbl_msg" runat="server"></asp:Label>
            </td>
            <td>
                <asp:Button ID="btn_update" runat="server" onclick="btn_update_Click" ValidationGroup="Group" 
                    Text="UPDATE" />
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
    </table>
    </form>
</asp:Content>
