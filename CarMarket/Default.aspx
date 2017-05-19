<%@ Page Title="Home" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CarMarket._Default" %>


<asp:Content  ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <div>
            <asp:Menu ID="mnuTabs" runat="server" Orientation="Horizontal" OnMenuItemClick="mnuTabs_MenuItemClick" CssClass="tabs">
                <Items>
                    <asp:MenuItem Text="Suchen" Value="0" Selected="True"></asp:MenuItem>
                    <asp:MenuItem Text="Inserieren" Value="1"></asp:MenuItem>
                </Items>
                <StaticMenuItemStyle CssClass="tab" />
                <StaticSelectedStyle CssClass="selectedTab" />
            </asp:Menu>
        </div>
        <div class="tabContents">
            <asp:MultiView ID="multiTabs" runat="server" ActiveViewIndex="0">
                <asp:View ID="View1" runat="server">View #1</asp:View>
                <asp:View ID="View2" runat="server">View #2</asp:View>
            </asp:MultiView>
        </div>
    </div>

    <div class="row">
        <div class="col-md-4">
            <h2>Autos suchen</h2>
            <p>
                Suchen Sie jetzt ein Auto Ihrer Wahl! Wir sind sicher, Ihr Wunschauto ist verfügbar!
            </p>
            <p>
                <a class="btn btn-default" href="/Suche.aspx">Jetzt loslegen &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Autos inserieren</h2>
            <p>
                Möchten Sie ein Auto für etwas Geld loswerden? Sie suchen eine einfache Möglichkeit, Ihr Auto zu inserieren? Stellen Sie hier Ihr Angebot! 
                Viele interessierte Besucher werden Ihr Inserat sehen! 
            </p>
            <p>
                <a class="btn btn-default" href="https://www.ferrari.com/de-AT">Jetzt loslegen &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Händlersuche</h2>
            <p>
                Sind Sie Händler und wollen Ihre Autos auf www.carmarket.com verkaufen?
            </p>
            <p>
                <a class="btn btn-default" href="https://www.denzel.at/">Jetzt loslegen &raquo;</a>
            </p>
        </div>
    </div>

</asp:Content>
