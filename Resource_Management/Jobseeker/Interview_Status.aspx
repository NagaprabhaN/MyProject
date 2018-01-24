<%@ Page Title="" Language="C#" MasterPageFile="~/Jobseeker/Jobseeker.Master" AutoEventWireup="true" CodeBehind="Interview_Status.aspx.cs" Inherits="Resource_Management.Jobseeker.Interview_Status" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <form id="form1" runat="server">
    <table style="width:100%;">
        <tr>
            <td>
                Your Interview status:</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lbl_status" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    </form>

</asp:Content>
