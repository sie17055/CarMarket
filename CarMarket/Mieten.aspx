<%@ Page Title="Mieten" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Mieten.aspx.cs" Inherits="CarMarket.Mieten" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %></h2>
    <p class="text-danger">
        <asp:Literal runat="server" ID="ErrorMessage" />
    </p>

    <div class="form-horizontal">
        <h4></h4>
        <hr />
        <!--<asp:ValidationSummary runat="server" CssClass="text-danger" />-->
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="Von" CssClass="col-md-2 control-label">Von*</asp:Label>
            <div class="col-md-10">
                <asp:Calendar ID="Von" runat="server" BackColor="White" OnSelectionChanged="Von_SelectionChanged"></asp:Calendar>
                <asp:TextBox ID="HiddenTextBox1" CssClass="HiddenTextBox1" runat="server" Visible="false"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Bitte wählen Sie ein Datum aus!" ForeColor="Red" ControlToValidate="HiddenTextBox1"></asp:RequiredFieldValidator>
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="Bis" CssClass="col-md-2 control-label">Bis*</asp:Label>
            <div class="col-md-10">
                <asp:Calendar ID="Bis" runat="server" BackColor="White" OnSelectionChanged="Bis_SelectionChanged"></asp:Calendar>
                <asp:TextBox ID="HiddenTextBox2" CssClass="HiddenTextBox2" runat="server" Visible="false"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Bitte wählen Sie ein Datum aus!" ForeColor="Red" ControlToValidate="HiddenTextBox2"></asp:RequiredFieldValidator>
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="Automarke" CssClass="col-md-2 control-label">Automarke*</asp:Label>
            <div class="col-md-10">
                <asp:DropDownList ID="Automarke" AutoPostBack="true" runat="server" DataSourceID="SqlDataSource1" DataTextField="m_bezeichnung" DataValueField="m_id"></asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:supercarrent %>" ProviderName="<%$ ConnectionStrings:supercarrent.ProviderName %>" SelectCommand="SELECT m_id, m_bezeichnung FROM m_marken ORDER BY m_bezeichnung"></asp:SqlDataSource>
                <asp:RequiredFieldValidator runat="server" ControlToValidate="Automarke"
                    CssClass="text-danger" ErrorMessage="Das Automarke-Feld ist ein Pflichtfeld!" />
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="Modell" CssClass="col-md-2 control-label">Modell*</asp:Label>
            <div class="col-md-10">
                <asp:DropDownList ID="Modell" runat="server" DataSourceID="SqlDataSource2" DataTextField="mo_bezeichnung" DataValueField="mo_bezeichnung"></asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:supercarrent %>" ProviderName="<%$ ConnectionStrings:supercarrent.ProviderName %>" SelectCommand="SELECT mo_bezeichnung FROM mo_modelle INNER JOIN m_marken ON mo_m_id = m_id WHERE (mo_m_id = @id) ORDER BY mo_bezeichnung">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="Automarke" Name="id" PropertyName="SelectedValue" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:RequiredFieldValidator runat="server" ControlToValidate="Modell"
                    CssClass="text-danger" ErrorMessage="Das Modell-Feld ist ein Pflichtfeld!" />
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="Automarke" CssClass="col-md-2 control-label"> </asp:Label>
            <div class="col-md-10">
                <asp:Button ID="Button1" CssClass="button button1" runat="server" Text="Mieten" OnClick="Button1_Click" />
            </div>
        </div>
        <div class="form-group">
            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
        </div>        
    </div>
</asp:Content>
