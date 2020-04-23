<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CartLayout.aspx.cs" Inherits="DapperHoneyBadgersWebsite.CartLayout" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<!-- Dapper Honey Badgers Online Store Car Layout -->
    <table class="cartTable" id="cartItemsTable" runat="server">
        <thead class="cartHead">
            <tr>
                <th colspan="4"  class="tableHeadText"><h4><span id="cartTotalCount" runat="server">#</span> Item(s) in your shopping cart</h4></th>
            </tr>
        </thead>
        <tbody class="cartBody">
            <tr>
                <td class="imgContainer"><a href="https://imgur.com/Q478okn"><img src="https://i.imgur.com/Q478okn.jpg" title="source: imgur.com" /></a></td>
                <td class="itemDescript"><a href="#">Item Model Name</a></td>
                <td><input class="qtyInput" value="1" type="number" min="1" max="999" /></td>
                <td class="itemPrice">$###.##</td>
            </tr>
            <tr>
                <td class="imgContainer"><a href="https://imgur.com/Q478okn"><img src="https://i.imgur.com/Q478okn.jpg" title="source: imgur.com" /></a></td>
                <td class="itemDescript"><a href="#">Item Model Name</a></td>
                <td><input class="qtyInput" value="1" type="number" min="1" max="999" /></td>
                <td class="itemPrice">$###.##</td>
            </tr>
            <tr>
                <td class="imgContainer"><a href="https://imgur.com/Q478okn"><img src="https://i.imgur.com/Q478okn.jpg" title="source: imgur.com" /></a></td>
                <td class="itemDescript"><a href="#">Item Model Name</a></td>
                <td><input class="qtyInput" value="1" type="number" min="1" max="999" /></td>
                <td class="itemPrice">$###.##</td>
            </tr>
            <tr>
                <td class="imgContainer"><a href="https://imgur.com/Q478okn"><img src="https://i.imgur.com/Q478okn.jpg" title="source: imgur.com" /></a></td>
                <td class="itemDescript"><a href="#">Item Model Name</a></td>
                <td><input class="qtyInput" value="1" type="number" min="1" max="999"/></td>
                <td class="itemPrice">$###.##</td>
            </tr>
        </tbody>
        <tfoot class="cartFoot">
            <tr>
                <td class="grandTotal" colspan="4"><span class="totalLabel">Grand Total: </span><span class="totalAmount">$###.##</span>
                </td>
            </tr>
        </tfoot>
    </table>

</asp:Content>
