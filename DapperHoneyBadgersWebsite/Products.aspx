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
                <p>cases</p>
                <div>
                    <a href="#">place holder</a>
                </div>
                <p>CPU</p>
                <div>
                    <a href="#">place holder</a>
                </div>
                <p>Motherboard</p>
                <div>
                    <a href="#">place holder</a>
                </div>
                <p>Ram</p>
                <div>
                    <a href="#">place holder</a>
                </div>
                <p>GPU</p>
                <div>
                    <a href="#">place holder</a>
                </div>
                <p>Power Supply</p>
                <div>
                    <a href="#">place holder</a>
                </div>
                <p>Hard drive</p>
                <div>
                    <a href="#">place holder</a>
                </div>
                <p>Price</p>
                <div>
                    <a href="#">place holder</a>
                </div>
            </div>
        </div>
    </div>

    
    
    <!-- Product Layout Page -->
    
    <div class="grid">

        <div class="gridItem"><img src="images/Cases/Corsair Crystal 680X.jpg"/>
            <div class="meta">
                <h3 class="meta__title">Crystal Series 680X RGB</h3>
                <span class="meta__brand">Corsair</span>
                <span class="meta__price">$249.99</span>
            </div>
            <button class="action action--button action--buy"><i class="fa fa-shopping-cart"></i><span class="text-hidden">Add to cart</span></button>
        </div>  <!-- END gridItem -->
        
        <div class="gridItem"><img src="images/Cases/Cooler Master H500.jpg"/>
            <div class="meta">
                <h3 class="meta__title">MasterCase H500</h3>
                <span class="meta__brand">Cooler Master</span>
                <span class="meta__price">$119.99</span>
            </div>
            <button class="action action--button action--buy"><i class="fa fa-shopping-cart"></i><span class="text-hidden">Add to cart</span></button>
        </div>  <!-- END gridItem -->
        
        <div class="gridItem"><img src="images/Cases/Cooler Master MasterBox Q300L.jpg"/>
            <div class="meta">
                <h3 class="meta__title">MasterBox Q300L</h3>
                <span class="meta__brand">Cooler Master</span>
                <span class="meta__price">$49.99</span>
            </div>
            <button class="action action--button action--buy"><i class="fa fa-shopping-cart"></i><span class="text-hidden">Add to cart</span></button>
        </div>  <!-- END gridItem -->
        
        <div class="gridItem"><img src="images/CPU/Intel Core i9-9900K.jpg"/>
            <div class="meta">
                <h3 class="meta__title">Core i9-9900K</h3>
                <span class="meta__brand">Intel</span>
                <span class="meta__price">$549.99</span>
            </div>
            <button class="action action--button action--buy"><i class="fa fa-shopping-cart"></i><span class="text-hidden">Add to cart</span></button>
        </div>  <!-- END gridItem -->
        
        <div class="gridItem"><img src="images/CPU/Intel Core i7-9700K.jpg"/>
            <div class="meta">
                <h3 class="meta__title">Core i7-9700K</h3>
                <span class="meta__brand">Intel</span>
                <span class="meta__price">$379.99</span>
            </div>
            <button class="action action--button action--buy"><i class="fa fa-shopping-cart"></i><span class="text-hidden">Add to cart</span></button>
        </div>  <!-- END gridItem -->
        
        <div class="gridItem"><img src="images/CPU/Intel Core i5-8600K.jpg"/>
            <div class="meta">
                <h3 class="meta__title">Core i5-8600K</h3>
                <span class="meta__brand">Intel</span>
                <span class="meta__price">$252.77</span>
            </div>
            <button class="action action--button action--buy"><i class="fa fa-shopping-cart"></i><span class="text-hidden">Add to cart</span></button>
        </div>  <!-- END gridItem -->
        
        <div class="gridItem"><img src="images/GPU/Asus ROG Strix GeForce RTX 2080 Ti.jpg"/>
            <div class="meta">
                <h3 class="meta__title">ROG Strix GeForce RTX 2080 Ti</h3>
                <span class="meta__brand">Asus</span>
                <span class="meta__price">$1,279.99</span>
            </div>
            <button class="action action--button action--buy"><i class="fa fa-shopping-cart"></i><span class="text-hidden">Add to cart</span></button>
        </div>  <!-- END gridItem -->
        
        <div class="gridItem"><img src="images/GPU/NVidia Titan RTX.jpg"/>
            <div class="meta">
                <h3 class="meta__title">Titan RTX</h3>
                <span class="meta__brand">NVidia</span>
                <span class="meta__price">$2,499.98</span>
            </div>
            <button class="action action--button action--buy"><i class="fa fa-shopping-cart"></i><span class="text-hidden">Add to cart</span></button>
        </div>  <!-- END gridItem -->
        
        <div class="gridItem"><img src="images/GPU/GIGABYTE GeForce RTX 2070 Super WINDFORCE OC 3X.jpg"/>
            <div class="meta">
                <h3 class="meta__title">GeForce RTX 2070 Super WINDFORCE OC 3X</h3>
                <span class="meta__brand">Gigabyte</span>
                <span class="meta__price">$499.99</span>
            </div>
            <button class="action action--button action--buy"><i class="fa fa-shopping-cart"></i><span class="text-hidden">Add to cart</span></button>
        </div>  <!-- END gridItem -->
        
        <div class="gridItem"><img src="images/Motherboard/Asus Prime Z390-A.jpg"/>
            <div class="meta">
                <h3 class="meta__title">Prime Z390-A</h3>
                <span class="meta__brand">Asus</span>
                <span class="meta__price">$179.99</span>
            </div>
            <button class="action action--button action--buy"><i class="fa fa-shopping-cart"></i><span class="text-hidden">Add to cart</span></button>
        </div>  <!-- END gridItem -->
        
        <div class="gridItem"><img src="images/Motherboard/Gigabyte X399 Designare EX.jpg"/>
            <div class="meta">
                <h3 class="meta__title">X399 Designare EX</h3>
                <span class="meta__brand">Gigabyte</span>
                <span class="meta__price">$399.99</span>
            </div>
            <button class="action action--button action--buy"><i class="fa fa-shopping-cart"></i><span class="text-hidden">Add to cart</span></button>
        </div>  <!-- END gridItem -->
        
        <div class="gridItem"><img src="images/Motherboard/Asus ROG Maximus IX Apex.jpg"/>
            <div class="meta">
                <h3 class="meta__title">ROG Maximus IX Apex</h3>
                <span class="meta__brand">Asus</span>
                <span class="meta__price">$317.99</span>
            </div>
            <button class="action action--button action--buy"><i class="fa fa-shopping-cart"></i><span class="text-hidden">Add to cart</span></button>
        </div>  <!-- END gridItem -->
        
        <div class="gridItem"><img src="images/Ram/Corsair Vengeance RGB Pro 32GB.jpg"/>
            <div class="meta">
                <h3 class="meta__title">Vengeance RGB Pro 32GB</h3>
                <span class="meta__brand">Corsair</span>
                <span class="meta__price">$194.99</span>
            </div>
            <button class="action action--button action--buy"><i class="fa fa-shopping-cart"></i><span class="text-hidden">Add to cart</span></button>
        </div>  <!-- END gridItem -->
        
        <div class="gridItem"><img src="images/Ram/G.Skill TridentZ RGB Series 16GB.jpg "/>
            <div class="meta">
                <h3 class="meta__title">TridentZ RGB Series 16GB</h3>
                <span class="meta__brand">G.Skill</span>
                <span class="meta__price">$93.99</span>
            </div>
            <button class="action action--button action--buy"><i class="fa fa-shopping-cart"></i><span class="text-hidden">Add to cart</span></button>
        </div>  <!-- END gridItem -->
        
        <div class="gridItem"><img src="images/Ram/Geil Evo X II AMD Edition 16GB.jpg "/>
            <div class="meta">
                <h3 class="meta__title">Evo X II AMD Edition 16GB</h3>
                <span class="meta__brand">Geil</span>
                <span class="meta__price">$81.99</span>
            </div>
            <button class="action action--button action--buy"><i class="fa fa-shopping-cart"></i><span class="text-hidden">Add to cart</span></button>
        </div>  <!-- END gridItem -->
        
        <div class="gridItem"><img src="images/Hard Drive/Samsung 860 EVO Series.jpg "/>
            <div class="meta">
                <h3 class="meta__title">860 EVO Series</h3>
                <span class="meta__brand">Samsung</span>
                <span class="meta__price">$165.74</span>
            </div>
            <button class="action action--button action--buy"><i class="fa fa-shopping-cart"></i><span class="text-hidden">Add to cart</span></button>
        </div>  <!-- END gridItem -->
        
        <div class="gridItem"><img src="images/Hard Drive/Crucial BX500.jpg "/>
            <div class="meta">
                <h3 class="meta__title">BX500</h3>
                <span class="meta__brand">Crucial</span>
                <span class="meta__price">$39.99</span>
            </div>
            <button class="action action--button action--buy"><i class="fa fa-shopping-cart"></i><span class="text-hidden">Add to cart</span></button>
        </div>  <!-- END gridItem -->
        
        <div class="gridItem"><img src="images/Hard Drive/Intel 660p Series M.2 2280.jpg "/>
            <div class="meta">
                <h3 class="meta__title">660p Series M.2 2280</h3>
                <span class="meta__brand">Intel</span>
                <span class="meta__price">$124.99</span>
            </div>
            <button class="action action--button action--buy"><i class="fa fa-shopping-cart"></i><span class="text-hidden">Add to cart</span></button>
        </div>  <!-- END gridItem -->
        
        <div class="gridItem"><img src="images/Power Supply/Corsair AXi Series AX1600i.jpg "/>
            <div class="meta">
                <h3 class="meta__title">AXi Series AX1600i</h3>
                <span class="meta__brand">Corsair</span>
                <span class="meta__price">$529.99</span>
            </div>
            <button class="action action--button action--buy"><i class="fa fa-shopping-cart"></i><span class="text-hidden">Add to cart</span></button>
        </div>  <!-- END gridItem -->
        
        <div class="gridItem"><img src="images/Power Supply/Corsair RMx Series RM750x.jpg "/>
            <div class="meta">
                <h3 class="meta__title">RMx Series RM750x</h3>
                <span class="meta__brand">Corsair</span>
                <span class="meta__price">$241.99</span>
            </div>
            <button class="action action--button action--buy"><i class="fa fa-shopping-cart"></i><span class="text-hidden">Add to cart</span></button>
        </div>  <!-- END gridItem -->
        
        <div class="gridItem"><img src="images/Power Supply/Cooler Master V1000 Platinum.jpg "/>
            <div class="meta">
                <h3 class="meta__title">V1000 Platinum</h3>
                <span class="meta__brand">Cooler Master</span>
                <span class="meta__price">$412.00</span>
            </div>
            <button class="action action--button action--buy"><i class="fa fa-shopping-cart"></i><span class="text-hidden">Add to cart</span></button>
        </div>  <!-- END gridItem -->

    </div>  <!-- END grid -->


</asp:Content>
