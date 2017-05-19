<%@ Page Title="Password Changed" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ResetPasswordConfirmation.aspx.cs" Inherits="CarMarket.Account.ResetPasswordConfirmation" Async="true" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <h2><%: Title %>.</h2>
    <div>
        <p>Ihr Passwort wurde geändert. Klicken Sie <asp:HyperLink ID="login" runat="server" NavigateUrl="~/Account/Login">hier</asp:HyperLink> zum Einloggen </p>
    </div>
</asp:Content>
