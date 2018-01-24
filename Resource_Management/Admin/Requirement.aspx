<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Requirement.aspx.cs" Inherits="Resource_Management.Admin.Requirement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
  <table style="width:100%;">
  <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2" class="text-center">
                Employer requirement list</td>
        </tr>
        <tr>
            <td colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">
                HR Staff:&nbsp;&nbsp;
                <asp:DropDownList ID="ddl_hrstaff" runat="server" Height="21px" Width="195px">
                </asp:DropDownList>
                <asp:RequiredFieldValidator ControlToValidate="ddl_hrstaff" ID="RequiredFieldValidator3" ValidationGroup="Group1" ErrorMessage="Please select staff" InitialValue="0" runat="server"  Display="Dynamic">
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
            <td colspan="2">
                <asp:GridView ID="gv_requiremnt" runat="server" AutoGenerateColumns="False">
                    <Columns>
                        <asp:BoundField DataField="reqID" HeaderText="reqID" Visible="False" />
                        <asp:BoundField DataField="compName" HeaderText="Company" />
                        <asp:BoundField DataField="reqDesignation" HeaderText="Designation" />
                        <asp:BoundField DataField="reqCount" HeaderText="Count" />
                        <asp:BoundField DataField="jobDesc" HeaderText="jobDesc" />
                        <asp:BoundField DataField="reqExp" HeaderText="reqExp" />
                        <asp:BoundField DataField="Domain" HeaderText="Domain" />
                        <asp:BoundField DataField="CTC" HeaderText="CTC" />
                        <asp:BoundField DataField="lastdate" HeaderText="lastdate" />
                        <asp:BoundField DataField="status" HeaderText="status" Visible="False" />
                        <asp:TemplateField HeaderText="Assign">
                            <ItemTemplate>
                              <asp:CheckBox ID="chk_assign" runat="server" Text='<%# Eval("reqID") %>' />
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Label ID="lbl_msg" runat="server"></asp:Label>
                <asp:Button ID="btn_assign" runat="server" onclick="btn_assign_Click"  ValidationGroup="Group1"
                    Text="Assign Requirement" />
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
