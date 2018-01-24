<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="External_services.aspx.cs" Inherits="Resource_Management.Admin.External_services" %>
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
    <table style="width:100%;">
        <tr>
            <td colspan="2">
                External service providers</td>
        </tr>
        <tr>
            <td class="text-right">
                Name</td>
            <td class="text-left">
                <asp:TextBox ID="txt_name" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator id="RequiredFieldValidator1" runat="server" ControlToValidate="txt_name" ErrorMessage="Enter name" ForeColor="Red" ValidationGroup="Group1">
                </asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="text-right">
                Service</td>
            <td class="text-left">
                <asp:TextBox ID="txt_service" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator id="RequiredFieldValidator2" runat="server" ControlToValidate="txt_service" ErrorMessage="Enter service" ForeColor="Red" ValidationGroup="Group1">
                </asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="text-right">
                Address</td>
            <td class="text-left">
                <asp:TextBox ID="txt_addr" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator id="RequiredFieldValidator3" runat="server" ControlToValidate="txt_addr" ErrorMessage="Enter address" ForeColor="Red" ValidationGroup="Group1">
                </asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="text-right">
                Contact number</td>
            <td class="text-left">
                <asp:TextBox ID="txt_contact" runat="server"></asp:TextBox>
                 <asp:CompareValidator ID="CompareValidator1" runat="server" Operator="DataTypeCheck" Type="Integer" ValidationExpression="[0-9]{10}" ControlToValidate="txt_contact" ErrorMessage="Value must be 10 numbers" ValidationGroup="Group1" ForeColor="Red" />
                 <asp:RequiredFieldValidator id="RequiredFieldValidator4" runat="server" ControlToValidate="txt_contact" ErrorMessage="Enter contact" ForeColor="Red" ValidationGroup="Group1">
                </asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="text-right">
                start date</td>
            <td class="text-left">
                <asp:TextBox ID="txt_startdate" runat="server"></asp:TextBox>
                <asp:Label ID="lbl_date" runat="server">dd/mm/yyyy</asp:Label>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txt_startdate" ValidationExpression="(((0|1)[0-9]|2[0-9]|3[0-1])\/(0[1-9]|1[0-2])\/((19|20)\d\d))$"
                 ErrorMessage="Invalid date format." ValidationGroup="Group1" ForeColor="Red"/>
                 <asp:RequiredFieldValidator id="RequiredFieldValidator5" runat="server" ControlToValidate="txt_startdate" ErrorMessage="Enter start date" ForeColor="Red" ValidationGroup="Group1">
                </asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="text-right">
                cost per month</td>
            <td class="text-left">
                <asp:TextBox ID="txt_cost" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator id="RequiredFieldValidator6" runat="server" ControlToValidate="txt_cost" ErrorMessage="Enter cost" ForeColor="Red" ValidationGroup="Group1">
                </asp:RequiredFieldValidator>
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
                <asp:Label ID="lbl_msg" runat="server"></asp:Label>
            </td>
            <td>
                <asp:Button ID="btn_submit" runat="server" Text="Submit" onclick="btn_submit_Click" ValidationGroup="Group1" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" Text="Clear" onclick="Button2_Click" />
            </td>
        </tr>
        <tr>
            <td colspan="2">
                List of all services</td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:GridView ID="gv_service" runat="server" AutoGenerateColumns="False">
                    <Columns>
                        <asp:BoundField DataField="extName" HeaderText="Person_name" />
                        <asp:BoundField DataField="extService" HeaderText="Service" />
                        <asp:BoundField DataField="extAddress" HeaderText="Address" />
                        <asp:BoundField DataField="extPhone" HeaderText="contact" />
                        <asp:BoundField DataField="extPayment" HeaderText="Bill/month" />
                        <asp:BoundField DataField="startdate" HeaderText="Started on" />
                        <asp:TemplateField HeaderText="Edit">
                            <ItemTemplate>
                                <asp:LinkButton ID="edit" runat="server" CommandArgument='<%# Eval("extID") %>' 
                                    onclick="edit_Click">Edit</asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Delete">
                            <ItemTemplate>
                                <asp:LinkButton ID="Lnk_delete" runat="server" onclientclick="return DeleteItem()" onclick="Lnk_delete_Click">Delete</asp:LinkButton>
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
    </table>
    </form>

</asp:Content>
