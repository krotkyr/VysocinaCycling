<%@ Title="Vysočina Cycling - Časovka na Klučovskou horu" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="casovka-na-klucovskou-horu.aspx.cs" Inherits="CasovkaNaKlucovskouHoru" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <meta property="og:description" content="Silniční časovka do vrchu na trati Střítež - Klučovská hora." />
    <meta property="og:image" content="http://www.vysocinacycling.cz/images/logo_Facebook.png" />
    <script type="text/javascript">
        $(window).load(function () {
            $("#baner8").nivoSlider({ animSpeed: 1000, pauseTime: 10000, controlNav: false, directionNav: false, keyboardNav: false, effect: "fade" });
        });
    </script>

    <script type="text/javascript">
        $(document).ready(function () {
            SiteCasovkaNaKlucovskouHoruReady();
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
        <div id="baner8" class="nivoSlider">
            <img id="img1" alt="Baner" src="images/Banery/BannerVysocina2012_20.jpg" />
        </div>
        <asp:SQLDataSource ID="SQLDataSourceRaceCategory" runat="server" SelectCommand="SELECT rc.NAME FROM RaceCategory rc, Races r WHERE rc.ID_RACE = r.ID_RACE and r.ID_RACE_ACTION = 6 and rc.AGE_TO <= @Age AND rc.AGE_FROM >= @Age ORDER BY rc.AGE_TO DESC, rc.NAME ASC" ConnectionString="<%$ ConnectionStrings:VysocinaCycling %>" ProviderName="<%$ ConnectionStrings:VysocinaCycling.ProviderName %>">
            <SelectParameters>
                <asp:QueryStringParameter DefaultValue="0" Name="Age" QueryStringField="Age" Type="int16" />
            </SelectParameters>
        </asp:SQLDataSource>
        <asp:SQLDataSource ID="SQLDataSourceRaceActions" runat="server" SelectCommand="SELECT ID_RACE_ACTION, NAME FROM RaceActions ORDER BY ID_RACE_ACTION ASC" ConnectionString="<%$ ConnectionStrings:VysocinaCycling %>" ProviderName="<%$ ConnectionStrings:VysocinaCycling.ProviderName %>">
        </asp:SQLDataSource>
        <div id="casovkaklucovtabs">
            <ul>
                <li id="Li91"><a href="#tab-91">O závodu</a></li>
                <li id="Li92"><a href="#tab-92">Propozice</a></li>
                <li id="Li93"><a href="#tab-93">Trať</a></li>
                <li id="Li94"><a href="#tab-94">Přihláška</a></li>
                <li id="Li95"><a href="#tab-95">Startovní listina</a></li>
                <li id="Li96"><a href="#tab-96">Výsledky</a></li>
                <li id="Li97"><a href="#tab-97">Historie</a></li>
            </ul>
            <div id="tab-91" class="clasictext">
                <div class="clanek">
                    <table>
                        <tr>
                            <td>
                                <h1 style="text-align: center; color: #0066CC">Časovka na Klučovskou horu 2019</h1>
                                <h2 style="text-align: center; color: #0066CC">
                                    Termín: 28.9.2019
                                </h2>
                            </td>
                            <td>
                            </td>
                        </tr>
                        <tr>
                            <td align="center" valign="top">
                                <div style="font-size: small; font-weight: bold; font-style: italic; color: #666666; text-align: justify; padding-right: 20px;">
                                    Tým Vysočina Cycling zve nejen místní, ale všechny nadšené cyklisty na tradiční silniční cyklistickou časovku do vrchu na trati
                                    Střítež - Klučovská hora. Časovka bude startovat na výjezdu z obce Střítež, kde bude i prezentace. První závodník vyrazí
                                    na trať v 10h. Vyhlášení závodu proběhne na Klučovské hoře po dojezdu posledního závodníka cílem. Přijeďte ukončit závodní
                                    silniční sezonu právě časovkou do vrchu ... <br>
                                    Přihlášku můžete vyplnit na našem webu. Prezentace začne v 9h a skončí 9:45. Startovat se bude podle startovních
                                    čísel, takže první prezentovaní závodníci odstartují nejdříve.<br>Přihlášku lze zaslat i na náš email
                                    <a style="color: #FF3300" href="mailto:casovka@vysocinacycling.cz">casovka(zavináč)vysocinacycling.cz</a>,
                                    nebo se můžete přihlásit až na místě. V případě přihlášky přes webový formulář však pomůžete zjednodušit a urychlit prezentaci.
                                    <br>
                                    <br>
                                    Věřím, že se zde objeví i noví zájemci o cyklistiku. Náš klub je rád přivítá.
                                    Právě nyní je ten správný čas začít se zajímat o přípravu na Tvou budoucí závodní kariéru! 
                                    <br />
                                    <br />
                                    <img src="images/clanky/PlakatCKH2019.jpg" alt="Časovka na Klučovskou horu 2019" border="none" />
                                    <br />
                                </div>
                            </td>
                            <td valign="top" align="center">
                                <div>
                                    <a href="http://www.decathlon.cz/" title="Decathlon" target="_blank">
                                        <img src="images/inzerce/decathlon.png" alt="Decathlon" border="none" />
                                    </a>
                                </div>
                                <div>
                                    <a href="https://www.tour-sport.cz/" title="Tour Sport Třebíč" target="_blank">
                                        <img src="images/inzerce/toursport-sm.png" alt="Tour Sport" border="none" />
                                    </a>
                                </div>
                                <div class="userRoleEditor">
                                    <input id="buttonPozvanka" type="button" runat="server" title="Pozvánka" value="Odeslat emaily" />
                                </div>
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
            <div id="tab-92" class="clasictext">
                    <div class="clanek" >
                        <object data="./files/Casovka_na_Klucovskou_horu_2019.pdf" style="margin-top:15px" width="930" height="2580" type="application/pdf">
                            <br />
                            Váš prohlížeč nepodporuje zobrazení PDF. Soubor lze stáhnout na tomto odkazu <a href="filesCasovka_na_Klucovskou_horu_2019.pdf" target="_blank">Casovka_na_Klucovskou_horu_2019.pdf</a>
                            <br />
                        </object>
                    </div>
            </div>
            <div id="tab-93" class="clasictext">
            </div>
            <div id="tab-94" class="clasictext">
                <div class="clanek">
                    <div id="silnicniCasovka" style="text-align: left">
                        <h2>Vyplňte prosím registrační údaje. Pole označená * jsou povinná.</h2>
                        <h2>Pro kontrolu bude kopie Vaší přihlášky zaslána i na Váš email.</h2>
                        <table width="550px">
                            <tr>
                                <td style="width:270px">
                                    <asp:Label AssociatedControlID="TextBoxSilnicniCasovkaJmeno" runat="server">Jméno: *</asp:Label>
                                    <asp:TextBox ID="TextBoxSilnicniCasovkaJmeno" runat="server" TextMode="SingleLine" Style="width: 250px"></asp:TextBox>
                                </td>
                                <td align="left">
                                    <asp:Label AssociatedControlID="TextBoxSilnicniCasovkaPrijmeni" runat="server">Příjmení: *</asp:Label>
                                    <asp:TextBox ID="TextBoxSilnicniCasovkaPrijmeni" runat="server" TextMode="SingleLine" Style="width: 250px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label AssociatedControlID="TextBoxSilnicniCasovkaNarozeni" runat="server">Datum narození: *</asp:Label>
                                    <asp:TextBox ID="TextBoxSilnicniCasovkaNarozeni" runat="server" TextMode="SingleLine" Style="width: 250px" OnTextChanged="TextBoxSilnicniCasovkaNarozeni_TextChanged" AutoPostBack="true"></asp:TextBox>
                                    <asp:CompareValidator ID="CompareValidatorTextBoxSilnicniCasovkaNarozeni" runat="server" ControlToValidate="TextBoxSilnicniCasovkaNarozeni" Type="Date" Operator="DataTypeCheck" />
                                </td>
                                <td align="left">
                                    <asp:Label AssociatedControlID="DropDownListSilnicniCasovkaKategorie" runat="server">Kategorie: *</asp:Label>
                                    <asp:DropDownList ID="DropDownListSilnicniCasovkaKategorie" runat="server" Style="width: 254px" DataSourceID="SQLDataSourceRaceCategory" DataValueField="NAME">
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label AssociatedControlID="TextBoxSilnicniCasovkaKlub" runat="server">Klub (pokud jste členem nějakého klubu):</asp:Label>
                                    <asp:TextBox ID="TextBoxSilnicniCasovkaKlub" runat="server" TextMode="SingleLine" Style="width: 250px"></asp:TextBox>
                                </td>
                                <td align="left">
                                    <asp:Label AssociatedControlID="TextBoxSilnicniCasovkaLicence" runat="server">Číslo a UCI kód licence (pokud jste držitelem):</asp:Label>
                                    <asp:TextBox ID="TextBoxSilnicniCasovkaLicence" runat="server" TextMode="SingleLine" Style="width: 250px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <asp:Label AssociatedControlID="TextBoxSilnicniCasovkaAdresa" runat="server">Město: *</asp:Label>
                                    <asp:TextBox ID="TextBoxSilnicniCasovkaAdresa" runat="server" TextMode="SingleLine" Style="width: 524px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label AssociatedControlID="TextBoxSilnicniCasovkaEmail" runat="server">Email: *</asp:Label>
                                    <asp:TextBox ID="TextBoxSilnicniCasovkaEmail" runat="server" TextMode="SingleLine" Style="width: 250px"></asp:TextBox>
                                </td>
                                <td align="left">
                                    <asp:Label AssociatedControlID="TextBoxSilnicniCasovkaTelefon" runat="server">Telefon:</asp:Label>
                                    <asp:TextBox ID="TextBoxSilnicniCasovkaTelefon" runat="server" TextMode="SingleLine" Style="width: 250px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <div id="SendEmail" class="userRoleEditor" style="display: none">
                                        <asp:CheckBox ID="CheckBoxEmail" runat="server" Checked="false" Text="Neodesílat emaily."></asp:CheckBox>
                                    </div>
                                </td>
                            </tr>
                        </table>
                    </div>
                    <br />
                    <br />
                    <table width="540px">
                        <tr>
                            <td align="left">
                                <input id="buttonSilnicniCasovka" type="button" runat="server" title="Časovka na Klučovskou horu 2019" value="Odeslat přihlášku" />
                            </td>
                            <td align="right">
                                <input id="buttonSilnicniCasovkaSmazForm" type="button" runat="server" title="Časovka na Klučovskou horu 2019" value="Smazat formulář" />
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
            <div id="tab-95" class="clasictext">
            </div>
            <div id="tab-96" class="clasictext">
            </div>
            <div id="tab-97" class="clasictext">
            </div>
        </div>
</asp:Content>
