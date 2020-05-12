<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="DapperHoneyBadgersWebsite.Products" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

      <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <script>
  $( function() {
    $( "#accordion" ).accordion();
  } );
  </script>
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <div id="container">
        <div class="searchcon">
            <p>
                <asp:Label ID="Label1" runat="server" Text="search:"></asp:Label>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </p>
            <div id="accordion">
                <p>Cases</p>
                <div>
                    <div class ="link-border">
                        <a href="ProductCasMod.aspx">Model</a>
                    </div>
                        <br>
                    <div class ="link-border">
                        <a href="#">Price</a>
                    </div>
                        <br>
                    <div class ="link-border">
                        <a href="#">Size</a>
                    </div>
                        <br>
                    <div class ="link-border">
                        <a href="#">RGB</a>
                    </div>
                        <br>
                    <div class ="link-border">
                        <a href="#">Material</a>
                    </div>
                </div>
            
                <p>CPU</p>
                <div>
                    <div class ="link-border">
                        <a href="#">Model</a>
                    </div>
                    <br>
                    <div class ="link-border">
                        <a href="#">Price</a>
                    </div>
                    <br>
                    <div class ="link-border">
                        <a href="#">Cores</a>
                    </div>
                    <br>
                    <div class ="link-border">
                        <a href="#">Architecture</a>
                    </div>
                    <br>
                    <div class ="link-border">
                        <a href="#">integrated GPU</a>
                    </div>
                    <br>
                    <div class ="link-border">
                        <a href="#">Speed</a>
                    </div>
                    <br>
                    <div class ="link-border">
                        <a href="#">Socket Type</a>
                    </div>
                </div>
                <p>Motherboard</p>
                <div>
                    <a href="#">Model</a>
                    <br>
                    <a href="#">socket type</a>
                    <br>
                    <a href="#">Ram Slots</a>
                    <br>
                    <a href="#">m2 Compstible</a>
                    <br>
                    <a href="#">Saata version</a>
                    <br>
                    <a href="#">USB Version</a>
                    <br>
                    <a href="#">Chipset</a>
                </div>
                <p>Ram</p>
                <div>
                    <a href="#">Model</a>
                    <br>
                    <a href="#">number of sticks</a>
                    <br>
                    <a href="#">Voltage</a>
                    <br>
                    <a href="#">Speed Mode</a>
                    <br>
                    <a href="#">Timing</a>
                </div>
                <p>GPU</p>
                <div>
                    <a href="#">Model</a>
                    <br>
                    <a href="#">VRAM</a>
                    <br>
                    <a href="#">SLIC Compatible</a>
                    <br>
                    <a href="#">Size</a>
                    <br>
                    <a href="#">CoreClock</a>
                </div>
                <p>Power Supply</p>
                <div>
                    <a href="#">Model</a>
                    <br>
                    <a href="#">Max Power</a>
                </div>
                <p>Hard drive</p>
                <div>
                    <a href="#">Model</a>
                    <br>
                    <a href="#">External</a>
                    <br>
                    <a href="#">SDD</a>
                    <br>
                    <a href="#">Capacity</a>
                </div>
            </div>
        </div>
    </div>

    
    
    <!-- Product Layout Page -->
    
    <div class="grid">

        <div class="gridItem"><img />
            <div class="meta">
                <h3 class="meta__title">Dummy Product</h3>
                <span class="meta__brand">Dummy Brand</span>
                <span class="meta__price">$99</span>
            </div>
            <button class="action action--button action--buy"><i class="fa fa-shopping-cart"></i><span class="text-hidden">Add to cart</span></button>
        </div>  <!-- END gridItem -->
        <div class="gridItem"><img />
            <div class="meta">
                <h3 class="meta__title">Dummy Product</h3>
                <span class="meta__brand">Dummy Brand</span>
                <span class="meta__price">$99</span>
            </div>
            <button class="action action--button action--buy"><i class="fa fa-shopping-cart"></i><span class="text-hidden">Add to cart</span></button>
        </div>  <!-- END gridItem -->

       

    </div>  <!-- END grid -->


</asp:Content>
