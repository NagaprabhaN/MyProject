<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="A_Employer.aspx.cs" Inherits="Resource_Management.Admin.A_Employer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <form id="form1" runat="server">
    <table style="width:100%;">
        <tr>
            <td colspan="2">
                Company<strong> tie-up list</strong></td>
        </tr>
        <tr>
            <td colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:GridView ID="gv_employer" runat="server" AutoGenerateColumns="False">
                    <Columns>
                        <asp:BoundField DataField="compID" HeaderText="compID" Visible="False" />
                        <asp:BoundField DataField="compName" HeaderText="Name" />
                        <asp:BoundField DataField="compAddress" HeaderText="Address" />
                        <asp:BoundField DataField="compPhone" HeaderText="contact" />
                        <asp:BoundField DataField="tieup_date" HeaderText="tie-up on" />
                        <asp:BoundField DataField="incharge_person" HeaderText="Incharge HR" />
                        <asp:BoundField DataField="contact" HeaderText="incharge_contact" />
                        <asp:BoundField DataField="userID" HeaderText="userID" />
                        <asp:BoundField DataField="password" HeaderText="Password" />
                        <asp:BoundField DataField="status" HeaderText="Status" Visible="False" />
                        <asp:TemplateField HeaderText="Status">
                            <ItemTemplate>
                                <asp:CheckBox ID="chk_status" runat="server" Text='<%# Eval("compID") %>' />
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
                <asp:Button ID="btn_Submit" runat="server" onclick="btn_Submit_Click" 
                    Text="Submit" />
            </td>
        </tr>
        
        <tr>
            <td colspan="2">
                &nbsp;</td>
        </tr>
        
        <tr>
            <td colspan="2">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    AllowPaging="True">
                    <Columns>
                        <asp:BoundField DataField="compID" HeaderText="compID" Visible="False" />
                        <asp:BoundField DataField="compName" HeaderText="Name" />
                        <asp:BoundField DataField="compAddress" HeaderText="Address" />
                        <asp:BoundField DataField="compPhone" HeaderText="contact" />
                        <asp:BoundField DataField="tieup_date" HeaderText="tie-up on" />
                        <asp:BoundField DataField="incharge_person" HeaderText="Incharge HR" />
                        <asp:BoundField DataField="contact" HeaderText="incharge_contact" />
                        <asp:BoundField DataField="userID" HeaderText="userID" />
                        <asp:BoundField DataField="password" HeaderText="Password" />
                        <asp:BoundField DataField="status" HeaderText="Status" Visible="False" />
                    </Columns>
                </asp:GridView>
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
