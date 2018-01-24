<%@ Page Title="" Language="C#" MasterPageFile="~/HRStaff/HRStaff.Master" AutoEventWireup="true" CodeBehind="candidates_list.aspx.cs" Inherits="Resource_Management.HRStaff.candidates_list" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
<table style="width: 100%;">
    <tr>
        <td>
            List of candidates</td>
    </tr>
    <tr>
        <td>
            Select
            Domain&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="ddl_Domain" runat="server" Height="21px" Width="236px" 
                onselectedindexchanged="ddl_Domain_SelectedIndexChanged" AutoPostBack="True" >
            </asp:DropDownList>
            <asp:RequiredFieldValidator ControlToValidate="ddl_Domain" ID="RequiredFieldValidator1" ValidationGroup="Group1"  ForeColor="Red" ErrorMessage="Please select Domain" InitialValue="0" runat="server"  Display="Dynamic">
                </asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            Company&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            <asp:DropDownList ID="ddl_company" runat="server" Height="26px" Width="237px">
            </asp:DropDownList>
            <asp:RequiredFieldValidator ControlToValidate="ddl_company" ID="RequiredFieldValidator2" ValidationGroup="Group1"  ForeColor="Red" ErrorMessage="Please select company" InitialValue="0" runat="server"  Display="Dynamic">
            </asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            Designation&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txt_designation" runat="server" Width="236px"></asp:TextBox>
            <asp:RequiredFieldValidator ControlToValidate="txt_designation" ID="RequiredFieldValidator3" runat="server" ErrorMessage="designation Required" ValidationGroup="Group1" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            Salary&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txt_salary" runat="server" Width="236px"></asp:TextBox>
             <asp:CompareValidator ID="CompareValidator1" runat="server" Operator="DataTypeCheck" Type="Integer" ControlToValidate="txt_salary" ErrorMessage="Value must be numbers" ValidationGroup="Group1" ForeColor="Red" />
                <asp:RequiredFieldValidator id="RequiredFieldValidator4" runat="server" ControlToValidate="txt_salary" ErrorMessage="salary is required is required." ForeColor="Red" ValidationGroup="Group1">
                </asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            Experience&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txt_exp" runat="server" Width="236px"></asp:TextBox>
             <asp:CompareValidator ID="CompareValidator2" runat="server" Operator="DataTypeCheck" Type="Integer" ControlToValidate="txt_exp" ErrorMessage="Value must be numbers" ValidationGroup="Group1" ForeColor="Red" />
                <asp:RequiredFieldValidator id="RequiredFieldValidator5" runat="server" ControlToValidate="txt_exp" ErrorMessage="experience is required." ForeColor="Red" ValidationGroup="Group1">
                </asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
                <Columns>
                    <asp:BoundField DataField="candName" HeaderText="candName" />
                    <asp:BoundField DataField="candAddr" HeaderText="Address" />
                    <asp:BoundField DataField="candPhone" HeaderText="phone" />
                    <asp:BoundField DataField="candQualification" HeaderText="candQualification" />
                    <asp:BoundField DataField="candExp" HeaderText="candExp" />
                    <asp:BoundField DataField="expectedCTC" HeaderText="expectedCTC" />
                    <asp:BoundField DataField="Domain" HeaderText="Domain" />
                    <asp:BoundField DataField="Designation" HeaderText="Designation" />
                    <asp:BoundField DataField="status" HeaderText="status" Visible="False" />
                    <asp:TemplateField HeaderText="status">
                        <ItemTemplate>
                            <asp:CheckBox ID="CheckBox1" runat="server" Text='<%# Eval("candID") %>' />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            <asp:Button ID="btn_update" runat="server" onclick="btn_update_Click" ValidationGroup="Group1" 
                Text="Submit" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lbl_msg" runat="server"></asp:Label>
        </td>
    </tr>
</table>
</form>
</asp:Content>
