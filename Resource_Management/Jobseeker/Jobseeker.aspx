<%@ Page Title="" Language="C#" MasterPageFile="~/Jobseeker/Jobseeker.Master" AutoEventWireup="true" CodeBehind="Jobseeker.aspx.cs" Inherits="Resource_Management.Jobseeker.Jobseeker1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
    <table style="width:100%;">
        <tr>
            <td colspan="2">
                YOUR PROFILE</td>
        </tr>
        <tr>
            <td colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                Your ID</td>
            <td>
                <asp:Label ID="lbl_id" runat="server"  Width="210px"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                Name</td>
            <td>
                <asp:TextBox ID="txt_name" runat="server" Width="210px"></asp:TextBox>
                <asp:RequiredFieldValidator id="RequiredFieldValidator1" runat="server" ControlToValidate="txt_name" ErrorMessage="name is a required field." ForeColor="Red" ValidationGroup="Group1">
                </asp:RequiredFieldValidator>
                
            </td>
        </tr>
        <tr>
            <td>
                Address</td>
            <td>
                <asp:TextBox ID="txt_addr" runat="server" TextMode="MultiLine" Width="210px"></asp:TextBox>
                <asp:RequiredFieldValidator id="RequiredFieldValidator2" runat="server" ControlToValidate="txt_addr" ErrorMessage="name is a required field." ForeColor="Red" ValidationGroup="Group1">
                </asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                Phone</td>
            <td>
                <asp:TextBox ID="txt_phone" runat="server" Width="210px"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator1" runat="server" Operator="DataTypeCheck" Type="Integer" ValidationExpression="[0-9]{10}" ControlToValidate="txt_phone" ErrorMessage="Value must be 10 numbers" ValidationGroup="Group1" ForeColor="Red" />
                <asp:RequiredFieldValidator id="RequiredFieldValidator3" runat="server" ControlToValidate="txt_phone" ErrorMessage="Phone number is required." ForeColor="Red" ValidationGroup="Group1">
                </asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                Email</td>
            <td>
                <asp:TextBox ID="txt_email" runat="server" Width="210px"></asp:TextBox>
                 <asp:RequiredFieldValidator id="RequiredFieldValidator4" runat="server" ControlToValidate="txt_email" ErrorMessage="Email is a required field." ForeColor="Red" ValidationGroup="Group1">
                </asp:RequiredFieldValidator>           
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Please Enter Valid Email ID"
                  ValidationGroup="Group1" ControlToValidate="txt_email" CssClass="requiredFieldValidateStyle" ForeColor="Red"
                  ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">
                  </asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td>
                DoRegistration</td>
            <td>
                <asp:Label ID="lbl_dor" runat="server" Width="210px"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                Qualification</td>
            <td>
                <asp:TextBox ID="txt_qual" runat="server" Width="210px"></asp:TextBox>
                <asp:RequiredFieldValidator id="RequiredFieldValidator5" runat="server" ControlToValidate="txt_qual" ErrorMessage="qualification is a required field." ForeColor="Red" ValidationGroup="Group1">
                </asp:RequiredFieldValidator>  
            </td>
        </tr>
        <tr>
            <td>
                Experience</td>
            <td>
                <asp:TextBox ID="txt_exp" runat="server" Width="210px"></asp:TextBox>
                <asp:RequiredFieldValidator id="RequiredFieldValidator6" runat="server" ControlToValidate="txt_exp" ErrorMessage="experience is a required field." ForeColor="Red" ValidationGroup="Group1">
                </asp:RequiredFieldValidator>  
                <asp:CompareValidator ID="CompareValidator2" runat="server" Operator="DataTypeCheck" Type="Integer" ControlToValidate="txt_exp" ErrorMessage="Value must be numbers" ValidationGroup="Group1" ForeColor="Red" />
                
            </td>
        </tr>
        <tr>
            <td>
                Expected salary</td>
            <td>
                <asp:TextBox ID="txt_sal" runat="server" Width="210px"></asp:TextBox>
                <asp:RequiredFieldValidator id="RequiredFieldValidator7" runat="server" ControlToValidate="txt_sal" ErrorMessage="Phone number is required." ForeColor="Red" ValidationGroup="Group1">
                </asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator3" runat="server" Operator="DataTypeCheck" Type="Integer" ValidationExpression="[0-9]{10}" ControlToValidate="txt_sal" ErrorMessage="Value must be 10 numbers" ValidationGroup="Group1" ForeColor="Red" />
            </td>
        </tr>
        <tr>
            <td>
                Domain</td>
            <td>
                <asp:DropDownList ID="ddlDomain" runat="server" Height="16px" Width="212px">
                </asp:DropDownList>
                <asp:RequiredFieldValidator ControlToValidate="ddlDomain" ID="RequiredFieldValidator8" ValidationGroup="Group1"  ForeColor="Red" ErrorMessage="Please select Domain" InitialValue="0" runat="server"  Display="Dynamic">
                </asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                Designation</td>
            <td>
                <asp:TextBox ID="txt_designation" runat="server" Width="209px"></asp:TextBox>
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
                <asp:Label ID="lbl_msg" runat="server" Width="210px"></asp:Label>
            </td>
            <td>
                <asp:Button ID="btn_update" runat="server" Text="Submit" ValidationGroup="Group" 
                    onclick="btn_update_Click" />
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
