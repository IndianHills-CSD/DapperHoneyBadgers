<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ItemDetail.aspx.cs" Inherits="DapperHoneyBadgersWebsite.ItemDetail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <!-- Item Details and Images -->
    
    <!--
       Displays a single item after being selected from the store, cart, order or wishlist pages. 
    -->
    
    <div id="item">
        <div class="row">
            <div class="column">
                <img src="https://i.imgur.com/EGxVaD0.png" />
            </div>  <!-- END column -->
            
            <div class="column">
                <span id="itemName">*** Insert Item Name as page heading   Lorem ipsum dolor sit amet, adipiscing elit ipsum dolor sit id est laborum.</span>

                <div class="itemPrice">
                    <aside>$##,###.##</aside>
                </div>  <!-- END itemPrice -->
                
                

                <ul class="prodDetails">
                    <li>Items Details Here, below hr tag include any other data.</li>
                    <li>Items Details Here Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</li>
                    <li>Items Details Here Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</li>
                    <li>Items Details Here Ut enim ad minim veniam</li>
                    <li>Items Details Here</li>
                    <li>Items Details Here Neque porro</li>
                    <li>Items Details Here</li>
                </ul>
            </div>  <!-- END column -->
        </div>  <!--  END row -->
        <div class="qtyRow">
            <form class="qtyForm">
                <label for="qty">Qty:</label>
                <input type="number" id="qty" value="1" min="1" max="999" name="qty">
                <button type="submit">Add to Cart</button> 
            </form>  <!-- END qtyForm -->
       </div>   <!-- END qtyRow -->
        <hr/>
        
        <section>
            <p class="text">    Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Consequat mauris nunc congue nisi vitae suscipit tellus. Nullam ac tortor vitae purus faucibus ornare. Mauris ultrices eros in cursus turpis. Sem integer vitae justo eget magna fermentum. Lacus luctus accumsan tortor posuere ac ut consequat. Blandit libero volutpat sed cras ornare arcu dui vivamus arcu. Est velit egestas dui id ornare arcu odio. Odio eu feugiat pretium nibh. At volutpat diam ut venenatis tellus in. Vitae purus faucibus ornare suspendisse sed nisi. Dapibus ultrices in iaculis nunc sed augue. Eget duis at tellus at urna condimentum. Velit laoreet id donec ultrices tincidunt arcu non sodales. Sit amet nisl suscipit adipiscing bibendum est ultricies integer quis. Cursus metus aliquam eleifend mi in nulla posuere. A lacus vestibulum sed arcu non odio euismod lacinia at. Habitant morbi tristique senectus et. Porttitor leo a diam sollicitudin tempor id eu.</p>

            <p class="text">    In vitae turpis massa sed elementum tempus egestas sed sed. Augue mauris augue neque gravida. Amet risus nullam eget felis eget nunc lobortis mattis. Malesuada nunc vel risus commodo viverra maecenas accumsan lacus. Cursus metus aliquam eleifend mi in nulla posuere sollicitudin. Adipiscing tristique risus nec feugiat in fermentum. Mauris pellentesque pulvinar pellentesque habitant morbi tristique. Augue neque gravida in fermentum et sollicitudin ac orci phasellus. Luctus accumsan tortor posuere ac ut consequat semper viverra nam. Hac habitasse platea dictumst quisque sagittis. Est ullamcorper eget nulla facilisi etiam. Elit pellentesque habitant morbi tristique. Tortor vitae purus faucibus ornare suspendisse. Tellus mauris a diam maecenas sed enim ut sem. Quam adipiscing vitae proin sagittis nisl rhoncus. Et malesuada fames ac turpis egestas maecenas pharetra. Laoreet suspendisse interdum consectetur libero id faucibus nisl tincidunt. Et ligula ullamcorper malesuada proin libero nunc.</p>
        </section>
    </div>  <!-- END itemInfo -->

</asp:Content>
