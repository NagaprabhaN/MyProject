<%@ Page Title="" Language="C#" MasterPageFile="~/HRStaff/HRStaff.Master" AutoEventWireup="true" CodeBehind="Requirments.aspx.cs" Inherits="Resource_Management.HRStaff.Requirments" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
<table style="width: 100%;">
    <tr>
        <td>
            List of requirements assigned to you</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            Select
            Domain</td>
        <td>
            <asp:DropDownList ID="DropDownList1" runat="server" Height="18px" Width="182px" 
                onselectedindexchanged="DropDownList1_SelectedIndexChanged" 
                AutoPostBack="True">
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td>
            Select Action</td>
        <td>
            <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" 
                onselectedindexchanged="DropDownList2_SelectedIndexChanged">
                <asp:ListItem>-- select--</asp:ListItem>
                <asp:ListItem>Assigned Requirments</asp:ListItem>
                <asp:ListItem>update</asp:ListItem>
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td colspan="2">
           
            <%--<asp:RadioButton ID="Rbtn_req" runat="server" Text="Assigned requirments" GroupName="view" AutoPostBack="true" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RadioButton ID="Rbtn_Update" runat="server" Text="Update status" GroupName="view" AutoPostBack="true" />
           --%>
            <asp:Label ID="Label1" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td colspan="2">
            <asp:MultiView ID="MultiView1" runat="server">
            <asp:View ID="View1" runat="server">
                <asp:GridView ID="gv_req_assign" runat="server" AllowPaging="True" 
                    AutoGenerateColumns="False">
                <Columns>
                    <asp:BoundField DataField="assignedID" HeaderText="assignedID" 
                        Visible="False" />
                    <asp:BoundField DataField="reqCount" HeaderText="reqCount" />
                    <asp:BoundField DataField="lastdate" HeaderText="lastdate" />
                    <asp:BoundField DataField="Domain" HeaderText="Domain" />
                    <asp:BoundField DataField="status" HeaderText="status" Visible="False" />
                    <asp:BoundField DataField="reqExp" HeaderText="reqExp" />
                 </Columns>
                </asp:GridView>
            </asp:View>
             <asp:View ID="View2" runat="server"> 
                 <table style="width: 100%;">
                     <tr>
                         <td>
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
                <Columns>
                    <asp:BoundField DataField="assignedID" HeaderText="assignedID" />
                    <asp:BoundField DataField="reqCount" HeaderText="reqCount" />
                    <asp:BoundField DataField="lastdate" HeaderText="lastdate" />
                    <asp:BoundField DataField="Domain" HeaderText="Domain" />
                    <asp:BoundField DataField="status" HeaderText="status" Visible="False" />
                    <asp:BoundField DataField="reqExp" HeaderText="reqExp" />
                    <asp:TemplateField HeaderText="Filled">
                        <ItemTemplate>
                            <asp:CheckBox ID="CheckBox1" runat="server" Text='<%# Eval("StaffID") %>' />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
                        </td>
                     </tr>
                     <tr>
                         <td>
                             <asp:Button ID="btn_status_update" runat="server" 
                onclick="btn_status_update_Click" Text="Submit" />
                        
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lbl_msg" runat="server"></asp:Label>
                         </td>
                         <td>
                             &nbsp;
                         </td>
                     </tr>
                    
                 </table> 
             
       
            </asp:View>
            </asp:MultiView>
        </td>
    </tr>
</table>
</form>
</asp:Content>
