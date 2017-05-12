﻿<%@ Page Title="Authentifizierung" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Confirm.aspx.cs" Inherits="CarMarket.Account.Confirm" Async="true" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <h2><%: Title %>.</h2>

    <div>
        <asp:PlaceHolder runat="server" ID="successPanel" ViewStateMode="Disabled" Visible="true">
            <p>
                Danke, dass Sie Ihren Account bestätigen. Klicken Sie <asp:HyperLink ID="login" runat="server" NavigateUrl="~/Account/Login">hier</asp:HyperLink>  zum Einloggen             
            </p>
        </asp:PlaceHolder>
        <asp:PlaceHolder runat="server" ID="errorPanel" ViewStateMode="Disabled" Visible="false">
            <p class="text-danger">
                Ein Fehler ist aufgetreten.
            </p>
        </asp:PlaceHolder>
    </div>
</asp:Content>
