<%@ Page Title="Bewertungen" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Bewertungen.aspx.cs" Inherits="CarMarket.Bewertungen" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %></h2>
    <div style="display: inline-block">
        <div style="float: left">
            <asp:GridView ID="GridView1" runat="server" HorizontalAlign="Left" DataSourceID="SqlDataSource1" AutoGenerateColumns="False">
                <Columns>
                    <asp:BoundField DataField="b_mo_id" HeaderText="Modell" />
                    <asp:BoundField DataField="b_user" HeaderText="User" />
                    <asp:BoundField DataField="b_text" HeaderText="Bewertung" />
                    <asp:BoundField DataField="b_punkte" HeaderText="Punkte" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:supercarrentConnectionString %>" ProviderName="<%$ ConnectionStrings:supercarrentConnectionString.ProviderName %>" SelectCommand="SELECT * FROM b_bewertungen" DeleteCommand="DELETE FROM b_bewertungen WHERE b_id = ?" InsertCommand="INSERT INTO b_bewertungen (b_id, b_mo_id, b_user, b_text, b_punkte) VALUES (?, ?, ?, ?, ?)" UpdateCommand="UPDATE b_bewertungen SET b_mo_id = ?, b_user = ?, b_text = ?, b_punkte = ? WHERE b_id = ?">
                <DeleteParameters>
                    <asp:Parameter Name="b_id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="b_id" Type="Int32" />
                    <asp:Parameter Name="b_mo_id" Type="Int32" />
                    <asp:Parameter Name="b_user" Type="String" />
                    <asp:Parameter Name="b_text" Type="String" />
                    <asp:Parameter Name="b_punkte" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="b_mo_id" Type="Int32" />
                    <asp:Parameter Name="b_user" Type="String" />
                    <asp:Parameter Name="b_text" Type="String" />
                    <asp:Parameter Name="b_punkte" Type="Int32" />
                    <asp:Parameter Name="b_id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
        <div style="float: left">
            <div class="form-group">
                <div class="col-md-10">
                    <asp:DropDownList ID="Automarke" AutoPostBack="true" runat="server" DataSourceID="SqlDataSource3" DataTextField="m_bezeichnung" DataValueField="m_id"></asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:supercarrent %>" ProviderName="<%$ ConnectionStrings:supercarrent.ProviderName %>" SelectCommand="SELECT m_id, m_bezeichnung FROM m_marken ORDER BY m_bezeichnung"></asp:SqlDataSource>
                    <asp:DropDownList ID="Modell" runat="server" DataSourceID="SqlDataSource2" DataTextField="mo_bezeichnung" DataValueField="mo_bezeichnung"></asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:supercarrent %>" ProviderName="<%$ ConnectionStrings:supercarrent.ProviderName %>" SelectCommand="SELECT mo_bezeichnung FROM mo_modelle INNER JOIN m_marken ON mo_m_id = m_id WHERE (mo_m_id = @id) ORDER BY mo_bezeichnung">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="Automarke" Name="id" PropertyName="SelectedValue" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <textarea rows="10" cols="50" maxlength="500" placeholder="Schriftliche Bewertung eingeben ... (max. 500 Zeichen)" required="required" spellcheck="true" id="textarea1" runat="server"></textarea> 
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                    </asp:RadioButtonList>
                    <asp:Button ID="Button1" runat="server" Text="Bewertung abschicken" CssClass="button button1" OnClick="Button1_Click"/>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

