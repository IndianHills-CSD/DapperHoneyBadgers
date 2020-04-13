<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Account.aspx.cs" Inherits="DapperHoneyBadgersWebsite.Account" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="AccountCreationAndLogin" class="floatContainer" runat="server">
        <div class="floatLeftTwoColumn"><asp:Label ID="lblUsername" runat="server" Text="Username:" CssClass="label"></asp:Label><asp:TextBox ID="txtUsername" runat="server"></asp:TextBox></div>
        <div class="floatRightTwoColumn"><asp:Label ID="lblEmail" runat="server" Text="Email:" CssClass="label"></asp:Label><asp:TextBox ID="txtEmail" runat="server" TextMode="Email"></asp:TextBox></div>
        <br />
        <div class="floatLeftTwoColumn"><asp:Label ID="lblPassword" runat="server" Text="Password:" CssClass="label"></asp:Label><asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox></div>
        <div class="floatRightTwoColumn"><asp:Label ID="lblAddress" runat="server" Text="Address:" CssClass="label"></asp:Label><asp:TextBox ID="txtAddress" runat="server"></asp:TextBox></div>
        <br />
        <div class="floatLeftTwoColumn"><asp:Button ID="btnLogin" runat="server" Text="Login" BackColor="#003300" /></div>
        <div class="floatRightTwoColumn"><asp:Button ID="btnRegister" runat="server" Text="Register" BackColor="#003300" /></div>
    </div>
    <div id="AccountStatus" class="floatContainer" runat="server">
        
        <div class="floatLeftTwoColumn"><asp:Button ID="Button1" runat="server" Text="Logout" BackColor="#003300" /></div>
        <div class="floatRightTwoColumn"><asp:Label ID="Label1" runat="server" Text="Change Email:" CssClass="label"></asp:Label><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></div>
        <div class="floatRightTwoColumn"><asp:Label ID="Label2" runat="server" Text="Change Password:" CssClass="label"></asp:Label><asp:TextBox ID="TextBox2" runat="server" TextMode="Email"></asp:TextBox></div>
        <div class="floatRightTwoColumn"><asp:Label ID="Label3" runat="server" Text="confrim new password:" CssClass="label"></asp:Label><asp:TextBox ID="TextBox3" runat="server" TextMode="Password"></asp:TextBox></div>
        <div class="floatRightTwoColumn"><asp:Label ID="Label4" runat="server" Text="old Password:" CssClass="label"></asp:Label><asp:TextBox ID="TextBox4" runat="server"></asp:TextBox></div>
    </div>
</asp:Content>
