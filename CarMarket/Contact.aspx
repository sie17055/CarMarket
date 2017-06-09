<%@ Page Title="Kontakt" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="CarMarket.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %></h2>
    <h3>Haben Sie Fragen?</h3>
    <address>
        Spengergasse 20<br />
        Wien, 1050<br />
        Österreich<br />
        <abbr title="Telefon">T:</abbr>
        +43 699 123 456 78
    </address>

    <address>
        <strong>Support:</strong>   <a href="mailto:support@supercarrent.at">support@supercarrent.com</a><br />
        <strong>CEO:</strong> <a href="mailto:office@supercarrent.at">office@supercarrent.com</a>
    </address>

    <p>
        Exoten und Klassiker aus aller Welt
    </p>
</asp:Content>
