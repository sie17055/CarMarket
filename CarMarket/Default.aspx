<%@ Page Title="Home" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CarMarket._Default" %>


<asp:Content  ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <div>
            <asp:Menu ID="mnuTabs" runat="server" Orientation="Horizontal" OnMenuItemClick="mnuTabs_MenuItemClick" CssClass="tabs">
                <Items>
                    <asp:MenuItem Text="Aktionen" Value="0" Selected="True"></asp:MenuItem>
                    <asp:MenuItem Text="Neues" Value="1"></asp:MenuItem>
                </Items>
                <StaticMenuItemStyle CssClass="tab" />
                <StaticSelectedStyle CssClass="selectedTab" />
            </asp:Menu>
        </div>
        <div class="tabContents">
            <asp:MultiView ID="multiTabs" runat="server" ActiveViewIndex="0">
                <asp:View ID="View1" runat="server"><img class="imgaktion" src="Images/regera1.jpg"/></asp:View>
                <asp:View ID="View2" runat="server">Bald erhältlich: <a href="http://www.toyota-global.com/showroom/toyota_design/concept_cars/gallery_ft-1.html">Toyota FT-1</a></asp:View>
            </asp:MultiView>
        </div>
    </div>

    <div class="row">
        <div class="col-md-4">
            <h2>Modelle ansehen</h2>
            <p>
                Suchen Sie jetzt ein Mietauto Ihrer Wahl! Wir sind sicher, Ihr Wunschauto ist verfügbar!
            </p>
            <p>
                <a class="btn btn-default" href="/Supercars.aspx">Jetzt loslegen &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Supercar mieten</h2>
            <p>
                Haben Sie sich für eines unserer tollen Supercars entschieden? Mieten Sie es! Ab € 499,- / Tag!
            </p>
            <p>
                <a class="btn btn-default" href="/Mieten.aspx">Jetzt loslegen &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Kundenmeinungen</h2>
            <p>
                Wollen Sie etwas über die Erfahrungen anderer Kunden wissen? Lesen Sie jetzt Kundenrezensionen!
            </p>
            <p>
                <a class="btn btn-default" href="/Bewertungen.aspx">Jetzt loslegen &raquo;</a>
            </p>
        </div>
    </div>

</asp:Content>
