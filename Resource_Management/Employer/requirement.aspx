<%@ Page Title="" Language="C#" MasterPageFile="~/Employer/Employer.Master" AutoEventWireup="true" CodeBehind="requirement.aspx.cs" Inherits="Resource_Management.Employer.requirement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
    <table style="width:100%;">
        <tr>
            <td colspan="2">
                PLACE NEW REQUIREMENT</td>
        </tr>
        <tr>
            <td colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                Domain</td>
            <td>
                <asp:DropDownList ID="ddlDomain" runat="server" Height="21px" Width="245px">
                </asp:DropDownList>
                <asp:RequiredFieldValidator ControlToValidate="ddlDomain" ID="RequiredFieldValidator1" ValidationGroup="Group1"  ForeColor="Red" ErrorMessage="Please select Domain" runat="server"  Display="Dynamic">
                </asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                Req Designation</td>
            <td>
                <asp:TextBox ID="txt_desig" runat="server" Width="247px"></asp:TextBox>
                <asp:RequiredFieldValidator id="RequiredFieldValidator2" runat="server" ControlToValidate="txt_desig" ErrorMessage="enter designation required." ForeColor="Red" ValidationGroup="Group1">
                </asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                Req Count</td>
            <td>
                <asp:TextBox ID="txt_count" runat="server" Width="247px"></asp:TextBox>
                 <asp:RequiredFieldValidator id="RequiredFieldValidator3" runat="server" ControlToValidate="txt_count" ErrorMessage="enter required count." ForeColor="Red" ValidationGroup="Group1">
                </asp:RequiredFieldValidator>
                 <asp:CompareValidator ID="CompareValidator1" runat="server" Operator="DataTypeCheck" Type="Integer" ControlToValidate="txt_count" ErrorMessage="Value must be numbers" ValidationGroup="Group1" ForeColor="Red" />
            </td>
        </tr>
        <tr>
            <td>
                Job Desc</td>
            <td>
                <asp:TextBox ID="txt_job" runat="server" Width="247px"></asp:TextBox>
                <asp:RequiredFieldValidator id="RequiredFieldValidator4" runat="server" ControlToValidate="txt_job" ErrorMessage="enter job desc." ForeColor="Red" ValidationGroup="Group1">
                </asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                Req Exp</td>
            <td>
                <asp:TextBox ID="txt_reqexp" runat="server" Width="247px"></asp:TextBox>
                <asp:RequiredFieldValidator id="RequiredFieldValidator5" runat="server" ControlToValidate="txt_reqexp" ErrorMessage="enter exp req." ForeColor="Red" ValidationGroup="Group1">
                </asp:RequiredFieldValidator>
                 <asp:CompareValidator ID="CompareValidator2" runat="server" Operator="DataTypeCheck" Type="Integer" ControlToValidate="txt_reqexp" ErrorMessage="Value must be numbers" ValidationGroup="Group1" ForeColor="Red" />
            </td>
        </tr>
        <tr>
            <td>
                salary</td>
            <td>
                <asp:TextBox ID="txt_salary" runat="server" Width="247px"></asp:TextBox>
                <asp:RequiredFieldValidator id="RequiredFieldValidator6" runat="server" ControlToValidate="txt_salary" ErrorMessage="enter salary." ForeColor="Red" ValidationGroup="Group1">
                </asp:RequiredFieldValidator>
                 <asp:CompareValidator ID="CompareValidator3" runat="server" Operator="DataTypeCheck" Type="Integer" ControlToValidate="txt_salary" ErrorMessage="Value must be numbers" ValidationGroup="Group1" ForeColor="Red" />
            
            </td>
        </tr>
        <tr>
            <td>
                Lastdate</td>
            <td>
                <asp:TextBox ID="txt_ldate" runat="server" Width="247px"></asp:TextBox>
                <asp:Label ID="lbl_date" runat="server">dd/mm/yyyy</asp:Label>
                <%--<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txt_ldate" ValidationExpression="(((0|1)[0-9]|2[0-9]|3[0-1])\/(0[1-9]|1[0-2])\/((19|20)\d\d))$"
                 ErrorMessage="Invalid date format." ValidationGroup="Group1" ForeColor="Red"/>--%>
                <asp:RequiredFieldValidator id="RequiredFieldValidator7" runat="server" ControlToValidate="txt_ldate" ErrorMessage="enter last date." ForeColor="Red" ValidationGroup="Group1">
                </asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="height: 22px">
                </td>
            <td style="height: 22px">
                </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Width="247px"></asp:Label>
            </td>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Submit" onclick="Button1_Click" ValidationGroup="Group" />
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <%--<tr>
            <td>
               List Of Filled Requiremnts</td>
            <td>
                &nbsp;</td>
        </tr>--%>
        <%-- <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">
               <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
                    <Columns>
                        <asp:BoundField DataField="reqID" HeaderText="reqID" />
                        <asp:BoundField DataField="reqDesignation" HeaderText="Designation" />
                        <asp:BoundField DataField="reqCount" HeaderText="Count" />
                        <asp:BoundField DataField="Domain" HeaderText="Domain" />
                    </Columns>
                </asp:GridView>
            </td>
        </tr>--%>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                List of requirements</td>
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
            <td colspan="2">
                <asp:GridView ID="gv_req_list" runat="server" AutoGenerateColumns="False" 
                    AllowPaging="True">
                    <Columns>
                        <asp:BoundField DataField="reqID" HeaderText="reqID" />
                        <asp:BoundField DataField="reqDesignation" HeaderText="Designation" />
                        <asp:BoundField DataField="reqCount" HeaderText="Count" />
                        <asp:BoundField DataField="jobDesc" HeaderText="jobDesc" />
                        <asp:BoundField DataField="reqExp" HeaderText="reqExp" />
                        <asp:BoundField DataField="CTC" HeaderText="Salary" />
                        <asp:BoundField DataField="lastdate" HeaderText="lastdate" />
                        <asp:BoundField DataField="Domain" HeaderText="Domain" />
                        <asp:BoundField DataField="DomainID" HeaderText="DomainID" />
                        <asp:TemplateField HeaderText="Edit">
                            <ItemTemplate>
                                <asp:LinkButton ID="lnk_edit" runat="server" 
                                    CommandArgument='<%# Eval("reqID") %>' onclick="lnk_edit_Click">Edit</asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Delete">
                            <ItemTemplate>
                                <asp:LinkButton ID="lnk_Delete" runat="server" 
                                    CommandArgument='<%# Eval("reqID") %>' onclick="lnk_Delete_Click">Delete</asp:LinkButton>
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
