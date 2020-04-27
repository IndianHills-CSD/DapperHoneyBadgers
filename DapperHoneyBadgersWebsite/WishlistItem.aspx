<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WishlistItem.aspx.cs" Inherits="DapperHoneyBadgersWebsite.WishlistItem" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!-- Wishlist Item Layout -->
    
    <!--
        Use jquery or something to make a popup "float" over the screen when selected? 
    -->

    <div class="btnBox">
        <input type="button" class="btnWishlists" value="My Wishlists" />
        <input type="button" class="btnCreateList" value="Create New List" />
    </div>

    <table class="wishlistTable">
        <thead>
        </thead>
        <tbody class="wishlistBody">
            <tr>
               <td><a href="https://imgur.com/uG5zWaL"><img src="https://i.imgur.com/uG5zWaL.jpg" title="source: imgur.com" /></a></td>
                <td>ASUS Intel ROG STRIX H370-F GAMING Socket LGA 1151 DDR4 ATX Motherboard </td>
                <td>$###.##</td>
            </tr>
            <tr>
                <td><a href="https://imgur.com/19hLexS"><img src="https://i.imgur.com/19hLexS.jpg" title="source: imgur.com" /></a></td>
                <td>Rosewill PRISM M ATX Mid Tower Gaming PC Computer Case w/ RGB Fan</td>
                <td>$###.##</td>
            </tr>
            <tr>
                <td><a href="https://imgur.com/1ZvgyKj"><img src="https://i.imgur.com/1ZvgyKj.jpg" title="source: imgur.com" /></a></td>
                <td>Intel Core i9-9900K Coffee Lake 8-Core, 16-Thread, 3.6 GHz (5.0 GHz Turbo) LGA 1151 (300 Series) 95W BX80684I99900K Desktop Processor Intel UHD Graphics 630</td>
                <td>$###.##</td>
            </tr>
            <tr>
                <td><a href="https://imgur.com/vjwt03Z"><img src="https://i.imgur.com/vjwt03Z.jpg" title="source: imgur.com" /></a></td>
                <td>ASUS ROG Strix GeForce RTX 2080 Ti DirectX 12 ROG-STRIX-RTX2080TI-O11G-GAMING 11GB 352-Bit GDDR6 PCI Express 3.0 HDCP Ready SLI Support Video Card</td>
                <td>$###.##</td>
            </tr>
        </tbody>
        <tfoot>
          <tr colspan="4">
              <td colspan="3" style="text-align:right">Subtotal: </td>
              <td colspan="1">$##,###.##</td>
          </tr>
        </tfoot>
    </table>
    <div id="moreInfo">

    </div>

</asp:Content>
