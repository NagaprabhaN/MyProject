<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="A_HRStaff.aspx.cs" Inherits="Resource_Management.Admin.A_HRStaff" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<script type="text/javascript">
    function DeleteItem() {
        if (confirm("Are you sure you want to delete ...?")) {
            return true;
        }
        return false;
    }
 </script>

    <form id="form1" runat="server">
    <table style="width: 100%; color: #000066;">
        <tr>
            <td style="width: 211px">
                <strong>HR STAFF DETAILS</strong></td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 211px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 211px">
                ADD NEW STAFF</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 211px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 211px">
                &nbsp;</td>
            <td class="text-left">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 211px" class="text-right">
                Name</td>
            <td class="text-left">
                <asp:TextBox ID="txt_name" runat="server" Width="239px"></asp:TextBox>
                <asp:RequiredFieldValidator id="RequiredFieldValidator1" runat="server" ControlToValidate="txt_name" ErrorMessage="name is a required field." ForeColor="Red" ValidationGroup="Group1">
                </asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 211px" class="text-right">
                Address</td>
            <td class="text-left">
                <asp:TextBox ID="txt_addr" runat="server" Width="239px"></asp:TextBox>
                 <asp:RequiredFieldValidator id="RequiredFieldValidator2" runat="server" ControlToValidate="txt_addr" ErrorMessage="Address is required." ForeColor="Red" ValidationGroup="Group1">
                </asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 211px" class="text-right">
                Phone</td>
            <td class="text-left">
                <asp:TextBox ID="txt_phone" runat="server" Width="239px"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator1" runat="server" Operator="DataTypeCheck" Type="Integer" ValidationExpression="[0-9]{10}" ControlToValidate="txt_phone" ErrorMessage="Value must be 10 numbers" ValidationGroup="Group1" ForeColor="Red" />
                <asp:RequiredFieldValidator id="RequiredFieldValidator3" runat="server" ControlToValidate="txt_phone" ErrorMessage="Phone number is required." ForeColor="Red" ValidationGroup="Group1">
                </asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 211px" class="text-right">
                Designation</td>
            <td class="text-left">
                <asp:TextBox ID="txt_desig" runat="server" Width="239px"></asp:TextBox>
                <asp:RequiredFieldValidator id="RequiredFieldValidator4" runat="server" ControlToValidate="txt_desig" ErrorMessage="designation is required." ForeColor="Red" ValidationGroup="Group1">
                </asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 211px" class="text-right">
                Qualification</td>
            <td class="text-left">
                <asp:TextBox ID="txt_qual" runat="server" Width="239px"></asp:TextBox>
                <asp:RequiredFieldValidator id="RequiredFieldValidator5" runat="server" ControlToValidate="txt_qual" ErrorMessage="qualification is required." ForeColor="Red" ValidationGroup="Group1">
                </asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 211px" class="text-right">
                CTC</td>
            <td class="text-left">
                <asp:TextBox ID="txt_ctc" runat="server" Width="239px"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator2" runat="server" Operator="DataTypeCheck" Type="Integer" ControlToValidate="txt_ctc" ErrorMessage="Value must be numbers" ValidationGroup="Group1" ForeColor="Red" />
                <asp:RequiredFieldValidator id="RequiredFieldValidator6" runat="server" ControlToValidate="txt_ctc" ErrorMessage="CTC is required." ForeColor="Red" ValidationGroup="Group1">
                </asp:RequiredFieldValidator>

            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 211px" class="text-right">
                User ID</td>
            <td class="text-left">
                <asp:TextBox ID="txt_userid" runat="server" Width="239px"></asp:TextBox>
                <asp:RequiredFieldValidator id="RequiredFieldValidator7" runat="server" ControlToValidate="txt_userid" ErrorMessage="UserID is required." ForeColor="Red" ValidationGroup="Group1">
                </asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 211px" class="text-right">
                Password</td>
            <td class="text-left">
                <asp:TextBox ID="txt_pwd" runat="server" Width="239px"></asp:TextBox>
                <asp:RequiredFieldValidator id="RequiredFieldValidator8" runat="server" ControlToValidate="txt_pwd" ErrorMessage="Password is required." ForeColor="Red" ValidationGroup="Group1">
                </asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 211px" class="text-right">
                Date of Join</td>
            <td class="text-left">
                <asp:TextBox ID="txt_doj" runat="server" Width="239px"></asp:TextBox>
                 &nbsp; &nbsp;dd/mm/yyyy
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txt_doj" ValidationExpression="(((0|1)[0-9]|2[0-9]|3[0-1])\/(0[1-9]|1[0-2])\/((19|20)\d\d))$"
    ErrorMessage="Invalid date format." ValidationGroup="Group1" ForeColor="Red"/>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 211px">
                <asp:Label ID="lbl_msg" runat="server"></asp:Label>
            </td>
            <td>
                <asp:Button ID="btn_Add" runat="server" Text="ADD" onclick="btn_Add_Click" ValidationGroup="Group1" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
         <tr>
            <td style="width: 211px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
          <tr>
            <td colspan="3" 
                  style="height: 22px; font-family: 'Times New Roman', Times, serif;">
                <asp:GridView ID="GV_Staff" runat="server" AutoGenerateColumns="False">
                    <Columns>
                        <asp:BoundField DataField="StaffID" HeaderText="Staff ID" />
                        <asp:BoundField DataField="SName" HeaderText="Name" />
                        <asp:BoundField DataField="SAddress" HeaderText="Address" />
                        <asp:BoundField DataField="SPhone" HeaderText="Phone" />
                        <asp:BoundField DataField="SDOJ" HeaderText="Date of Join" />
                        <asp:BoundField DataField="SDesignation" HeaderText="Designation" />
                        <asp:BoundField DataField="SQualification" HeaderText="Qualification" />
                        <asp:BoundField DataField="SCTC" HeaderText="CTC" />
                        <asp:BoundField DataField="SUserID" HeaderText="ID" />
                        <asp:BoundField DataField="SPassword" HeaderText="Password" />
                        <asp:TemplateField HeaderText="EDIT">
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" 
                                    CommandArgument='<%# Eval("StaffID") %>' onclick="LinkButton1_Click">Edit</asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="DELETE">
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton2" runat="server" 
                                    CommandArgument='<%# Eval("StaffID") %>' onclientclick="return DeleteItem()" onclick="LinkButton2_Click" >Delete</asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                        
                    </Columns>
                </asp:GridView>
              </td>
        </tr>
          <tr>
            <td style="width: 211px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    </form>

</asp:Content>
