<%@ Page Title="Unsere Autos" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Supercars.aspx.cs" Inherits="CarMarket.Supercars" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %></h2>
    <div style="display: inline-block">
        <div style="width:850px; float: left">
            <asp:GridView ID="datagrid" runat="server" AutoGenerateColumns="False" DataKeyNames="mo_id" DataSourceID="SqlDataSource1" AllowPaging="True" BackColor="White" PageSize="7" Font-Names="Microsoft YaHei" RowStyle-HorizontalAlign="Center" RowStyle-VerticalAlign="Middle" BorderStyle="Solid">
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:ImageField DataImageUrlField="mo_picture" HeaderText="Bild" SortExpression="mo_picture" ControlStyle-Height="90" ControlStyle-Width="160">
                        <ControlStyle Height="90px" Width="160px"></ControlStyle>
                    </asp:ImageField>
                    <asp:BoundField DataField="mo_bezeichnung" HeaderText="Modellname" SortExpression="mo_bezeichnung"/>
                    <asp:BoundField DataField="mo_vmax" HeaderText="Höchstgeschwindigkeit (km/h)" SortExpression="mo_vmax" />
                    <asp:BoundField DataField="mo_0100" HeaderText="0 - 100 km/h (s)" SortExpression="mo_0100" />
                </Columns>
                <HeaderStyle BackColor="Orange" HorizontalAlign="Center" VerticalAlign="Middle" />

<RowStyle HorizontalAlign="Center" VerticalAlign="Middle"></RowStyle>
            </asp:GridView>
        </div>
        <div style="width:250px; float: left">
            <asp:DetailsView ID="DetailsView1" DataKeyNames="mo_id" runat="server" Height="50px" Width="125px" AutoGenerateRows="False" DataSourceID="SqlDataSource1" HorizontalAlign="Left" BackColor="White" Font-Names="Microsoft YaHei">
                <Fields>
                    <asp:BoundField DataField="mo_ps" HeaderText="Leistung (PS)" />
                    <asp:BoundField DataField="mo_gewicht" HeaderText="Leergewicht (kg)" />
                    <asp:BoundField DataField="mo_getriebe" HeaderText="Getriebe" />
                    <asp:BoundField DataField="mo_antrieb" HeaderText="Antrieb" />
                    <asp:BoundField DataField="mo_price" HeaderText="Preis" />
                </Fields>
            </asp:DetailsView>
        </div>
    </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:supercarrent %>" ProviderName="<%$ ConnectionStrings:supercarrent.ProviderName %>" SelectCommand="SELECT * FROM mo_modelle ORDER BY mo_m_id, mo_bezeichnung" DeleteCommand="DELETE FROM mo_modelle WHERE mo_id = ? AND mo_m_id = ?" InsertCommand="INSERT INTO mo_modelle (mo_id, mo_m_id, mo_bezeichnung, mo_gewicht, mo_ps, mo_vmax, mo_0100, mo_getriebe, mo_antrieb, mo_picture) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)" UpdateCommand="UPDATE mo_modelle SET mo_bezeichnung = ?, mo_gewicht = ?, mo_ps = ?, mo_vmax = ?, mo_0100 = ?, mo_getriebe = ?, mo_antrieb = ?, mo_picture = ? WHERE mo_id = ? AND mo_m_id = ?">
        <DeleteParameters>
            <asp:Parameter Name="mo_id" Type="Int32" />
            <asp:Parameter Name="mo_m_id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="mo_id" Type="Int32" />
            <asp:Parameter Name="mo_m_id" Type="Int32" />
            <asp:Parameter Name="mo_bezeichnung" Type="String" />
            <asp:Parameter Name="mo_gewicht" Type="Int32" />
            <asp:Parameter Name="mo_ps" Type="Int32" />
            <asp:Parameter Name="mo_vmax" Type="Int32" />
            <asp:Parameter Name="mo_0100" Type="Single" />
            <asp:Parameter Name="mo_getriebe" Type="String" />
            <asp:Parameter Name="mo_antrieb" Type="String" />
            <asp:Parameter Name="mo_picture" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="mo_bezeichnung" Type="String" />
            <asp:Parameter Name="mo_gewicht" Type="Int32" />
            <asp:Parameter Name="mo_ps" Type="Int32" />
            <asp:Parameter Name="mo_vmax" Type="Int32" />
            <asp:Parameter Name="mo_0100" Type="Single" />
            <asp:Parameter Name="mo_getriebe" Type="String" />
            <asp:Parameter Name="mo_antrieb" Type="String" />
            <asp:Parameter Name="mo_picture" Type="String" />
            <asp:Parameter Name="mo_id" Type="Int32" />
            <asp:Parameter Name="mo_m_id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
