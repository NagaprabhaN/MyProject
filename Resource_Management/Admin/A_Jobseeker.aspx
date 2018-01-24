<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="A_Jobseeker.aspx.cs" Inherits="Resource_Management.Admin.A_Jobseeker" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
    <table style="width:100%;">
        <tr>
            <td colspan="2">
                Send Email to shortlisted candidates</td>
        </tr>
        <tr>
            <td>
                Domain</td>
            <td class="text-left">
                <asp:DropDownList ID="DropDownList1" runat="server" Height="16px" Width="196px">
                   <%-- <asp:ListItem>---Select---</asp:ListItem>
                    <asp:ListItem>DotNet</asp:ListItem>
                    <asp:ListItem>Java</asp:ListItem>
                    <asp:ListItem>PHP</asp:ListItem>
                    <asp:ListItem>Hadoop</asp:ListItem>
                    <asp:ListItem>Driver Programming</asp:ListItem>
                    <asp:ListItem>Python</asp:ListItem>--%>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ControlToValidate="DropDownList1" ID="RequiredFieldValidator3" ValidationGroup="Group1"  ForeColor="Red" ErrorMessage="Please select Domain" InitialValue="0" runat="server"  Display="Dynamic">
                </asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                Job Description</td>
            <td class="text-left">
                <asp:TextBox ID="TextBox1" runat="server" Width="196px" TextMode="MultiLine"></asp:TextBox>
                <asp:RequiredFieldValidator id="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="job description is a required field." ForeColor="Red" ValidationGroup="Group1">
                </asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                Venue for Interview</td>
            <td class="text-left">
                <asp:TextBox ID="TextBox2" runat="server" Width="196px"></asp:TextBox>
                 <asp:RequiredFieldValidator id="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Please enter venue." ForeColor="Red" ValidationGroup="Group1">
                </asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                Date of Interview</td>
            <td class="text-left">
                <asp:TextBox ID="TextBox3" runat="server" Width="196px"></asp:TextBox>
                <asp:Label ID="lbl_date" runat="server">dd/mm/yyyy</asp:Label>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox3" ValidationExpression="(((0|1)[0-9]|2[0-9]|3[0-1])\/(0[1-9]|1[0-2])\/((19|20)\d\d))$"
    ErrorMessage="Invalid date format." ValidationGroup="Group1" ForeColor="Red"/>
            </td>
        </tr>
        <tr>
            <td style="height: 22px">
                </td>
            <td style="height: 22px">
                </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
                    <Columns>
                        <asp:BoundField DataField="candID" HeaderText="CandID" />
                        <asp:BoundField DataField="candName" HeaderText="Name" />
                        <asp:BoundField DataField="candQualification" HeaderText="Qualification" />
                        <asp:BoundField DataField="candExp" HeaderText="candExp" />
                        <asp:BoundField DataField="expectedCTC" HeaderText="expectedCTC" />
                        <asp:BoundField DataField="Domain" HeaderText="Domain" />
                        <asp:BoundField DataField="status" HeaderText="Status" Visible="False" />
                        <asp:BoundField DataField="EmailID" HeaderText="EmailID" />
                        <asp:TemplateField HeaderText="SendTo">
                            <ItemTemplate>
                                <asp:CheckBox ID="chk_send" runat="server" Text='<%# Eval("candID") %>' />
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lbl_msg" runat="server"></asp:Label>
            </td>
            <td>
                <asp:Button ID="btn_sendMail" runat="server" onclick="btn_sendMail_Click" Text="Send Mail" ValidationGroup="Group" />
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
