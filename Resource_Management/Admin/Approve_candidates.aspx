<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Approve_candidates.aspx.cs" Inherits="Resource_Management.Admin.Approve_candidates" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
    <table style="width:100%;">
        <tr>
            <td colspan="2">
                Update with joined candidates</td>
        </tr>
        <tr>
            <td>
                Select HR staff</td>
            <td>
                <asp:DropDownList ID="ddl_staff" runat="server" Height="16px" Width="189px" 
                    AutoPostBack="True" onselectedindexchanged="ddl_staff_SelectedIndexChanged">
                </asp:DropDownList>
                <asp:RequiredFieldValidator ControlToValidate="ddl_staff" ID="RequiredFieldValidator3"
                ValidationGroup="Group1" ErrorMessage="Please select staff" InitialValue="0" runat="server"  Display="Dynamic">
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
                <asp:GridView ID="gv_cand_list" runat="server" AutoGenerateColumns="False">
                    <Columns>
                        <asp:BoundField DataField="P_candID" HeaderText="p_candID" Visible="False" />
                        <asp:BoundField DataField="P_candName" HeaderText="Name" />
                        <asp:BoundField DataField="P_candAddress" HeaderText="P_candAddress" />
                        <asp:BoundField DataField="P_candPhone" HeaderText="P_candPhone" />
                        <asp:BoundField DataField="P_Company" HeaderText="P_Company" />
                        <asp:BoundField DataField="P_Designation" HeaderText="P_Designation" />
                        <asp:BoundField DataField="P_CTC" HeaderText="P_CTC" />
                        <asp:BoundField DataField="P_Status" HeaderText="P_Status" Visible="False" />
                        <asp:BoundField DataField="candID" HeaderText="candID" />
                        <asp:BoundField DataField="DomainID" HeaderText="DomainID" />
                        <asp:TemplateField HeaderText="Approve">
                            <ItemTemplate>
                                <asp:CheckBox ID="chk_approve" runat="server" Text='<%# Eval("candID") %>' />
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Label ID="lbl_msg" runat="server"></asp:Label>
                <asp:Button ID="btn_submit" runat="server" onclick="btn_submit_Click" Text="Submit" ValidationGroup="Group1" />
            </td>
        </tr>
    </table>
    </form>
</asp:Content>
