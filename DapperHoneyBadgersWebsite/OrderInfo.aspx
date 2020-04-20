<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="OrderInfo.aspx.cs" Inherits="DapperHoneyBadgersWebsite.OrderInfo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="center">
        <h1>Order Information</h1>
        <table class="infoTable" id="orderTable" runat="server">
            
        </table>
        <!-- Only sent to the client when an order has been selected, to show the total and a return button. -->
        <div id="orderTotal" runat="server">
            <h1>Total: <span id="orderTotalValue" runat="server"></span></h1>
            <asp:Button runat="server" Text="Return" OnClick="BtnReturn_Click" CssClass="center" Height="30px" />
        </div>
    </div>  <!-- END div center1 -->
</asp:Content>
