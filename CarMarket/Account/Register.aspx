<%@ Page Title="Registrieren Sie sich noch heute!" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="CarMarket.Account.Register" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <h2><%: Title %></h2>
    <p class="text-danger">
        <asp:Literal runat="server" ID="ErrorMessage" />
    </p>

    <div class="form-horizontal">
        <h4></h4>
        <hr />
        <!--<asp:ValidationSummary runat="server" CssClass="text-danger" />-->
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="Anrede" CssClass="col-md-2 control-label">Anrede*</asp:Label>
            <div class="col-md-10">
                <asp:DropDownList runat="server" ID="Anrede" CssClass="form-control" Width="170px" >
                    <asp:ListItem Selected="True">Herr</asp:ListItem>
                    <asp:ListItem>Frau</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator runat="server" ControlToValidate="Anrede"
                    CssClass="text-danger" ErrorMessage="Das Anrede-Feld ist ein Pflichtfeld!" />
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="Vorname" CssClass="col-md-2 control-label">Vorname*</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="Vorname" CssClass="form-control" TextMode="SingleLine" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="Vorname"
                    CssClass="text-danger" ErrorMessage="Das Vorname-Feld ist ein Pflichtfeld!" />
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="Nachname" CssClass="col-md-2 control-label">Nachname*</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="Nachname" CssClass="form-control" TextMode="SingleLine" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="Nachname"
                    CssClass="text-danger" ErrorMessage="Das Nachname-Feld ist ein Pflichtfeld!" />
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="Telefon" CssClass="col-md-2 control-label">Telefonnummer*</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="Telefon" CssClass="form-control" TextMode="Phone" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="Telefon"
                    CssClass="text-danger" ErrorMessage="Das Telefonnummer-Feld ist ein Pflichtfeld!" />
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="Email" CssClass="col-md-2 control-label">Email*</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="Email" CssClass="form-control" TextMode="Email" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="Email"
                    CssClass="text-danger" ErrorMessage="Das Email-Feld ist ein Pflichtfeld!" />
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="Username" CssClass="col-md-2 control-label">Benutzername*</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="Username" CssClass="form-control" TextMode="SingleLine" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="Username"
                    CssClass="text-danger" ErrorMessage="Das Benutzername-Feld ist ein Pflichtfeld!" />
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="Password" CssClass="col-md-2 control-label">Passwort*</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="Password" TextMode="Password" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="Password"
                    CssClass="text-danger" ErrorMessage="Das Passwort-Feld ist ein Pflichtfeld!" />
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="ConfirmPassword" CssClass="col-md-2 control-label">Passwort wiederholen*</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="ConfirmPassword" TextMode="Password" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="ConfirmPassword"
                    CssClass="text-danger" Display="Dynamic" ErrorMessage="Das Passwort bestätigen-Feld ist ein Pflichtfeld!" />
                <asp:CompareValidator runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPassword"
                    CssClass="text-danger" Display="Dynamic" ErrorMessage="Die beiden Passwörter stimmen nicht überein!" />
            </div>
        </div>
        <div class="form-group">
            <div class="col-md-offset-2 col-md-10">
                <asp:Button runat="server" OnClick="CreateUser_Click" Text="Registrieren" CssClass="btn btn-default" />
            </div>
        </div>
    </div>
</asp:Content>
