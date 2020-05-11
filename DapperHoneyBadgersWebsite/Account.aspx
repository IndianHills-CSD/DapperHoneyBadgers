<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Account.aspx.cs" Inherits="DapperHoneyBadgersWebsite.Account" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="AccountResponse" class="accountResponse" runat="server"></div>
    <div id="AccountCreationAndLogin" class="floatContainer" runat="server">
        <div id="AccountLogin" class="floatLeftTwoColumn" runat="server">
            <span id="AccountLoginSpecifics" runat="server">
                <p>
                    <asp:Label ID="lblUsername" runat="server" Text="Username:" CssClass="label"></asp:Label>
                    <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>&nbsp
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Required" ControlToValidate="txtUsername"></asp:RequiredFieldValidator>
                </p>

                <p>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Username must be at least 8 characters long." ControlToValidate="txtUsername" ValidationExpression="^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$"></asp:RegularExpressionValidator>
                </p>
                <p>
                    <asp:Label ID="lblPassword" runat="server" Text="Password:" CssClass="label"></asp:Label>
                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>&nbsp
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Required" ControlToValidate="txtPassword"></asp:RequiredFieldValidator>
                </p>
                <p>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ErrorMessage="Password must contain at least 1 number, 1 letter, and 8 characters." ControlToValidate="txtPassword" ValidationExpression="^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$"></asp:RegularExpressionValidator>
                </p>
            </span>
            <p>
                <asp:Button ID="btnLogin" runat="server" Text="Login" BackColor="#003300" OnClick="btnLogin_Click" />
            </p>
        </div>
        <div id="AccountCreation" class="floatRightTwoColumn" runat="server">
            <span id="AccountCreationSpecifics" runat="server">
                <p>
                    <asp:Label ID="lblEmail" runat="server" Text="Email:" CssClass="label"></asp:Label>
                    <asp:TextBox ID="txtEmail" runat="server" TextMode="Email"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Required" ControlToValidate="txtEmail"></asp:RequiredFieldValidator>
                </p>
                <p>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="Please enter in a valid Email Address." ValidationExpression="^\w+[@]\w+[.](com|net|org|edu|gov)$" ControlToValidate="txtEmail"></asp:RegularExpressionValidator>
                </p>
                <p>
                    <asp:Label ID="lblAddress" runat="server" Text="Address:" CssClass="label"></asp:Label>
                    <asp:TextBox ID="txtAddress" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Required" ControlToValidate="txtAddress"></asp:RequiredFieldValidator>
                </p>
                <p>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Please enter a valid address." ValidationExpression="(?:[A-Za-z0-9.-]+[ ]?)+(?:Avenue|Lane|Road|Boulevard|Drive|Street|Ave|Dr|Rd|Blvd|Ln|St)\.?" ControlToValidate="txtAddress"></asp:RegularExpressionValidator>
                </p>
            </span>
            <p>
                <asp:Button ID="btnRegister" runat="server" Text="Register" BackColor="#003300" OnClick="btnRegister_Click" />
            </p>
        </div>
    </div>
    <div id="AccountStatus" class="floatContainer" runat="server">

        <div class="floatLeftTwoColumn">
            <asp:Button ID="btnLogout" runat="server" Text="Logout" BackColor="#003300" OnClick="btnLogout_Click" />
        </div>
        <div class="floatRightTwoColumn">
            <asp:Label ID="Label1" runat="server" Text="Change Email:" CssClass="label"></asp:Label><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </div>
        <div class="floatRightTwoColumn">
            <asp:Label ID="Label2" runat="server" Text="Change Password:" CssClass="label"></asp:Label><asp:TextBox ID="TextBox2" runat="server" TextMode="Email"></asp:TextBox>
        </div>
        <div class="floatRightTwoColumn">
            <asp:Label ID="Label3" runat="server" Text="confrim new password:" CssClass="label"></asp:Label><asp:TextBox ID="TextBox3" runat="server" TextMode="Password"></asp:TextBox>
        </div>
        <div class="floatRightTwoColumn">
            <asp:Label ID="Label4" runat="server" Text="old Password:" CssClass="label"></asp:Label><asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        </div>
    </div>
</asp:Content>
