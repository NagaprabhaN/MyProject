<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Placed_Record.aspx.cs" Inherits="Resource_Management.Admin.Placed_Record" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<form id="form1" runat="server">
    <table style="width:100%;">
        <tr>
            <td>
                <strong>List of Placed candidates</strong></td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="gv_placedCand" runat="server" AutoGenerateColumns="False">
                    <Columns>
                        <asp:BoundField DataField="P_candID" HeaderText="P_candID" Visible="False" />
                        <asp:BoundField DataField="P_candName" HeaderText="P_candName" />
                        <asp:BoundField DataField="P_candAddress" HeaderText="Address" />
                        <asp:BoundField DataField="P_candPhone" HeaderText="Phone" />
                        <asp:BoundField DataField="P_Company" HeaderText="Company" />
                        <asp:BoundField DataField="P_Designation" HeaderText="Designation" />
                        <asp:BoundField DataField="P_CTC" HeaderText="CTC" />
                        <asp:BoundField DataField="P_Status" HeaderText="Status" />
                    </Columns>
                </asp:GridView>
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    </form>
</asp:Content>
