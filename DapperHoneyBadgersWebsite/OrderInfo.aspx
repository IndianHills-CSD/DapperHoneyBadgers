<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="OrderInfo.aspx.cs" Inherits="DapperHoneyBadgersWebsite.OrderInfo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="center">     
        <table class="infoTable">
            <tr>
                <th><strong>Order ID</strong></th>
                <th colspan="2"><strong>Order Details</strong></th>
            </tr>   <!-- END Headings Row -->
<!-- 
    All order id in table have placeholder link incase we wanted to give a brief order description here and a more detailed of an individual order on a separate page. This HTML table is a place holder. Maybe a better to use DataTable in load event to create a dynamic data table and StringBuilder class to create html code for the table rather than have a hard coded HTML table. 
-->
            <tr>
                <td><a href="#">Insert OrderID</a></td>
                <td colspan="2">Insert OrderDate, ProductID, etc here</td>
            </tr>   <!-- END Data Row -->
            <tr>
                <td><a href="#">Insert OrderID</a></td>
                <td colspan="2">Insert OrderDate, ProductID, etc here</td>
            </tr>   <!-- END Data Row -->
            <tr>
                <td><a href="#">Insert OrderID</a></td>
                <td colspan="2">Insert OrderDate, ProductID, etc here</td>
            </tr>   <!-- END Data Row -->
            <tr>
                <td><a href="#">Insert OrderID</a></td>
                <td colspan="2">Insert OrderDate, ProductID, etc here</td>
            </tr>   <!-- END Data Row -->
            <tr>
                <td><a href="#">Insert OrderID</a></td>
                <td colspan="2">Insert OrderDate, ProductID, etc here</td>
            </tr>   <!-- END Data Row -->
            <tfoot>
               <!-- colspan="" creates a single row 3 columns wide for the button to be in -->
                <tr colspan="3">
                    <td colspan="3">        
                        <button class="homeBTN">
                            Return Home
                        </button>
                    </td>
                </tr>
            </tfoot>
        </table>
    </div>  <!-- END div center1 -->

</asp:Content>
