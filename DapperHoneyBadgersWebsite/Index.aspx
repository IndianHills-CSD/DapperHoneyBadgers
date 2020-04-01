<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="DapperHoneyBadgersWebsite.Index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="featuredItemSection">
        <div class="featuredItemContainer">
            <img class="featuredItemContent" src="http://2.bp.blogspot.com/-p1vjvwymt6c/VmzZ3T6k6EI/AAAAAAAAAG0/jsCRoTCZX4k/s1600/CPU.png" alt="Featured Item" />
        </div>
        <div class="featuredItemContainer">
            <div class="featuredItemContent">
                <h1>The Super Puter</h1>
                <p>A great exterior case for all of the various parts within. Keep your specs secret while showboating your wallet.</p>
            </div>
        </div>
        <div class="featuredItemContainer">
            <div class="featuredItemContent">
                <h1>User Reviews</h1>
                <h2>Bilbo Baggins:</h2>
                <p>Great website for a shut-in like myself.</p>
                <h2>Larry the Cable Guy</h2>
                <p>I reckon this here website will save folks like me a ton of trouble fixing up those there broken 'puter parts.</p>
            </div>
        </div>
    </div>
        <div id="ContentSection">
        <div class="ContentCategoryContainer">
            <header>
                <img src="https://c1.neweggimages.com/NeweggImage/ProductImage/20-331-188-V02.jpg" alt="Content" />
            </header>
            <div class="TCon">
                <a href ="Hardrives.aspx">Hardrives</a>
            </div>
        </div>  
        <div class="ContentCategoryContainer">
            <header>
                <img src="https://c1.neweggimages.com/NeweggImage/ProductImage/20-331-188-V02.jpg" alt="Content" />
            </header>
            <div class="TCon">
                <a href ="Hardrives.aspx">Hardrives</a>
            </div>
        </div>  
    </div>
</asp:Content>
