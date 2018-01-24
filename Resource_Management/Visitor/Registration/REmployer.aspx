<%@ Page Title="" Language="C#" MasterPageFile="~/Visitor/Registration/Registration.Master" AutoEventWireup="true" CodeBehind="REmployer.aspx.cs" Inherits="Resource_Management.Visitor.Registration.REmployer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
    <table style="width: 100%; color: #000066;">
        <tr>
            <td colspan="2">
                <strong style="font-size: large">EMPLOYER REGISTRATION FORM</strong></td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="text-left">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="text-right">
                Company Name :</td>
            <td class="text-left">
                <asp:TextBox ID="txt_name" runat="server" Width="207px" Height="33px"></asp:TextBox>
                 <asp:RequiredFieldValidator id="RequiredFieldValidator1" runat="server" ControlToValidate="txt_name" ErrorMessage="name is a required field." ForeColor="Red" ValidationGroup="Group1">
                </asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="text-right">
                Company Address :</td>
            <td class="text-left">
                <asp:TextBox ID="txt_addr" runat="server" Width="207px" Height="33px"></asp:TextBox>
                 <asp:RequiredFieldValidator id="RequiredFieldValidator7" runat="server" ControlToValidate="txt_addr" ErrorMessage="Address is required." ForeColor="Red" ValidationGroup="Group1">
                </asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="text-right">
                Company Phone :</td>
            <td class="text-left">
                <asp:TextBox ID="txt_phone" runat="server" Width="207px" Height="33px"></asp:TextBox>
                 <asp:CompareValidator ID="CompareValidator1" runat="server" Operator="DataTypeCheck" Type="Integer" ValidationExpression="[0-9]{10}" ControlToValidate="txt_phone" ErrorMessage="Value must be 10 numbers" ValidationGroup="Group1" ForeColor="Red" />
                <asp:RequiredFieldValidator id="RequiredFieldValidator2" runat="server" ControlToValidate="txt_phone" ErrorMessage="Phone number is required." ForeColor="Red" ValidationGroup="Group1">
                </asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="text-right">
                Tie-up Date :</td>
            <td class="text-left">
                <asp:TextBox ID="txt_date" runat="server" Width="207px" Height="33px"></asp:TextBox>
                <asp:Label ID="lbl_date" runat="server">dd/mm/yyyy</asp:Label>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txt_date" ValidationExpression="(((0|1)[0-9]|2[0-9]|3[0-1])\/(0[1-9]|1[0-2])\/((19|20)\d\d))$"
                 ErrorMessage="Invalid date format." ValidationGroup="Group1" ForeColor="Red"/>
            </td>
        </tr>
        <tr>
            <td class="text-right" style="height: 24px">
                Incharge Person :</td>
            <td class="text-left" style="height: 24px">
                <asp:TextBox ID="txt_incharge" runat="server" Width="207px" Height="33px"></asp:TextBox>
                 <asp:RequiredFieldValidator id="RequiredFieldValidator9" runat="server" ControlToValidate="txt_incharge" ErrorMessage="incharge person is required." ForeColor="Red" ValidationGroup="Group1">
                </asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="text-right">
                Contact :</td>
            <td class="text-left">
                <asp:TextBox ID="txt_contact" runat="server" Width="207px" Height="33px"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator2" runat="server" Operator="DataTypeCheck" Type="Integer" ValidationExpression="[0-9]{10}"
 ControlToValidate="txt_contact" ErrorMessage="Value must be 10 number" ValidationGroup="Group1" ForeColor="Red" />
                <asp:RequiredFieldValidator id="RequiredFieldValidator8" runat="server" ControlToValidate="txt_contact" ErrorMessage="Phone number is required." ForeColor="Red" ValidationGroup="Group1">
                </asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="text-right">
                Log&nbsp; Id :</td>
            <td class="text-left">
                <asp:TextBox ID="txt_id" runat="server" Width="207px" Height="33px"></asp:TextBox>
                <asp:RequiredFieldValidator ControlToValidate="txt_id" ID="RequiredFieldValidator4" runat="server" ErrorMessage="login Required" ValidationGroup="Group1" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="text-right">
                Password :</td>
            <td class="text-left">
                <asp:TextBox ID="txt_pwd" runat="server" Width="207px" Height="33px" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ControlToValidate="txt_pwd" ID="RequiredFieldValidator5" runat="server" ErrorMessage="Password Required" ValidationGroup="Group1" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="text-right">
                Confirm Password :</td>
            <td class="text-left">
                <asp:TextBox ID="txt_cpwd" runat="server" Width="207px" Height="33px" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ControlToValidate="txt_cpwd" ID="RequiredFieldValidator6" runat="server" ErrorMessage="Password Required" ValidationGroup="Group1" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:CompareValidator runat="server" id="cmpNumbers" controltovalidate="txt_cpwd" controltocompare="txt_pwd" type="Integer" errormessage="Password doesnot match" ValidationGroup="Group1" ForeColor="Red"/><br />
            </td>
        </tr>
        <tr>
            <td style="height: 22px">
                </td>
            <td style="height: 22px">
                </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lbl_msg" runat="server" Text="Label" Height="33px"></asp:Label>
            </td>
            <td>
                <asp:Button ID="btn_submit" runat="server" Text="Submit" Height="33px" onclick="btn_submit_Click1" ValidationGroup="Group1"/>

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btn_exit" runat="server" Text="Home" Height="33px" 
                    onclick="btn_exit_Click" />
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
