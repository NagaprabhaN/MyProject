<%@ Page Title="" Language="C#" MasterPageFile="~/Visitor/Registration/Registration.Master" AutoEventWireup="true" CodeBehind="RJobseeker.aspx.cs" Inherits="Resource_Management.Visitor.Registration.RJobseeker" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <form id="form1" runat="server">
    <table style="width:100%;">
        <tr>
            <td colspan="2">
                Registration Form</td>
        </tr>
        <tr>
            <td style="height: 19px">
                </td>
            <td class="text-left" style="height: 19px">
                </td>
        </tr>
        <tr>
            <td class="text-right">
                Name&nbsp;&nbsp;&nbsp; </td>
            <td class="text-left">
                <asp:TextBox ID="txt_name" runat="server" Width="207px"></asp:TextBox>
                <asp:RequiredFieldValidator id="RequiredFieldValidator1" runat="server" ControlToValidate="txt_name" ErrorMessage="name is a required field." ForeColor="Red" ValidationGroup="Group1">
                </asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="text-right">
                Address&nbsp;&nbsp;&nbsp; </td>
            <td class="text-left">
                <asp:TextBox ID="txt_addr" runat="server" Width="207px"></asp:TextBox>
                <asp:RequiredFieldValidator id="RequiredFieldValidator7" runat="server" ControlToValidate="txt_addr" ErrorMessage="Address is required." ForeColor="Red" ValidationGroup="Group1">
                </asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="text-right">
                Phone&nbsp;&nbsp;&nbsp; </td>
            <td class="text-left">
                <asp:TextBox ID="txt_ph" runat="server" Width="207px"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator2" runat="server" Operator="DataTypeCheck" Type="Integer" ValidationExpression="[0-9]{10}"
 ControlToValidate="txt_ph" ErrorMessage="Value must be 10 numbers" ValidationGroup="Group1" ForeColor="Red" />
                <asp:RequiredFieldValidator id="RequiredFieldValidator8" runat="server" ControlToValidate="txt_ph" ErrorMessage="Phone number is required." ForeColor="Red" ValidationGroup="Group1">
                </asp:RequiredFieldValidator>

            </td>
        </tr>
        <tr>
            <td class="text-right">
                Date of registration&nbsp;&nbsp;&nbsp; </td>
            <td class="text-left">
                <asp:TextBox ID="txt_dor" runat="server" Width="207px"></asp:TextBox> &nbsp;dd/mm/yyyy
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txt_dor" ValidationExpression="(((0|1)[0-9]|2[0-9]|3[0-1])\/(0[1-9]|1[0-2])\/((19|20)\d\d))$"
    ErrorMessage="Invalid date format." ValidationGroup="Group1" ForeColor="Red"/>

           </td>
        </tr>
        <tr>
            <td class="text-right">
                Qualification&nbsp;&nbsp;&nbsp; </td>
            <td class="text-left">
                <asp:TextBox ID="txt_qua" runat="server" Width="207px"></asp:TextBox>
                <asp:RequiredFieldValidator id="RequiredFieldValidator9" runat="server" ControlToValidate="txt_qua" ErrorMessage="Qualification is required." ForeColor="Red" ValidationGroup="Group1">
                </asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="text-right">
                Experience&nbsp;&nbsp;&nbsp; </td>
            <td class="text-left">
                <asp:TextBox ID="txt_exp" runat="server" Width="207px"></asp:TextBox>
                 <asp:CompareValidator ID="CompareValidator3" runat="server" Operator="DataTypeCheck" Type="Integer" ControlToValidate="txt_exp" ErrorMessage="Value must be number" ValidationGroup="Group1" ForeColor="Red"/>
            </td>
        </tr>
        <tr>
            <td class="text-right">
                CTC&nbsp;&nbsp;&nbsp; </td>
            <td class="text-left">
                <asp:TextBox ID="txt_ctc" runat="server" Width="207px"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator1" runat="server" Operator="DataTypeCheck" Type="Integer" 
 ControlToValidate="txt_ctc" ErrorMessage="Value must be number" ValidationGroup="Group1" ForeColor="Red"/>
            </td>
        </tr>
        <tr>
            <td class="text-right">
                login ID&nbsp;&nbsp;&nbsp; </td>
            <td class="text-left">
                <asp:TextBox ID="txt_id" runat="server" Width="207px"></asp:TextBox>
                <asp:RequiredFieldValidator ControlToValidate="txt_id" ID="RequiredFieldValidator4" runat="server" ErrorMessage="login Required" ValidationGroup="Group1" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="text-right">
                Password&nbsp;&nbsp;&nbsp; </td>
            <td class="text-left">
                <asp:TextBox ID="txt_pwd" runat="server" Width="207px" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ControlToValidate="txt_pwd" ID="RequiredFieldValidator5" runat="server" ErrorMessage="Password Required" ValidationGroup="Group1" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="text-right">
                Confirm password&nbsp;&nbsp;&nbsp; </td>
            <td class="text-left">
                <asp:TextBox ID="txt_cpwd" runat="server" Width="207px" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ControlToValidate="txt_cpwd" ID="RequiredFieldValidator6" runat="server" ErrorMessage="Password Required" ValidationGroup="Group1" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:CompareValidator runat="server" id="cmpNumbers" controltovalidate="txt_cpwd" controltocompare="txt_pwd" type="Integer" errormessage="Password doesnot match" ValidationGroup="Group1" ForeColor="Red"/><br />
            </td>
        </tr>
        <tr>
            <td class="text-right">
                Domain</td>
            <td class="text-left">
                <asp:TextBox ID="txt_domain" runat="server" Width="208px"></asp:TextBox>
                <asp:RequiredFieldValidator id="RequiredFieldValidator3" runat="server" ControlToValidate="txt_domain" ErrorMessage="Domain is a required field." ForeColor="Red" ValidationGroup="Group1">
                </asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="text-right">
                Email</td>
            <td class="text-left">
                <asp:TextBox ID="txt_Email" runat="server" Width="207px"></asp:TextBox>
                <asp:RequiredFieldValidator id="RequiredFieldValidator2" runat="server" ControlToValidate="txt_Email" ErrorMessage="Email is a required field." ForeColor="Red" ValidationGroup="Group1">
                </asp:RequiredFieldValidator>           
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Please Enter Valid Email ID"
                  ValidationGroup="Group1" ControlToValidate="txt_Email" CssClass="requiredFieldValidateStyle" ForeColor="Red"
                  ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">
                  </asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="text-right">
                Designation</td>
            <td class="text-left">
                <asp:TextBox ID="txt_designation" runat="server" Width="202px"></asp:TextBox>
                <asp:RequiredFieldValidator id="RequiredFieldValidator10" runat="server" ControlToValidate="txt_designation" ErrorMessage="designation required field." ForeColor="Red" ValidationGroup="Group1">
                </asp:RequiredFieldValidator> 
            </td>
        </tr>
        <tr>
            <td class="text-right">
                &nbsp;</td>
            <td class="text-left">
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lbl_msg" runat="server" Text="Label" Width="207px"></asp:Label>
            </td>
            <td>
                <asp:Button ID="btn_submit" runat="server" Text="Submit" 
                    onclick="Button1_Click" ValidationGroup="Group1"/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btn_exit" runat="server" Text="Home" onclick="btn_exit_Click" />
            </td>
        </tr>
    </table>
    </form>

</asp:Content>
