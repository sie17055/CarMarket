<%@ Page Title="Home" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CarMarket._Default" %>


<asp:Content  ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
            <asp:Button id="Button1" runat="server" Text="Suchen" OnClick="Button1_Click" CssClass="btn btn-default"  /> &nbsp;
            <asp:Button id="Button2" runat="server" Text="Inserieren" OnClick="Button2_Click" CssClass="btn btn-default"  /> &nbsp;<br /><br />
            <asp:MultiView id="MultiView1" runat="server" ActiveViewIndex=0>
            <asp:View id="View1" runat="server">
                <a>Suchen</a>
                <br />
                <br />
            </asp:View>
            <asp:View id="View2" runat="server">
                <a>Inserieren</a>
                <br />
                <br />
            </asp:View>
        </asp:MultiView>
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
