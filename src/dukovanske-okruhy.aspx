<%@ Page Title="Vysoèina Cycling - Dukovanské okruhy" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="dukovanske-okruhy.aspx.cs" Inherits="DukovanskeOkruhy" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <meta property="og:description" content="Silnièní cyklistickı závod Dukovanské okruhy." />
    <meta property="og:image" content="http://www.vysocinacycling.cz/images/logo_Facebook.png" />
    <script type="text/javascript">
        $(window).load(function () {
            $("#baner8").nivoSlider({ animSpeed: 1000, pauseTime: 10000, controlNav: false, directionNav: false, keyboardNav: false, effect: "fade" });
        });
    </script>

    <script type="text/javascript">
        $(document).ready(function () {
            SiteDukovanskeOkruhyReady();
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <div id="dialogPrezentace" style="display: none; font-size: large">
        <br />
        <table>
            <tr>
                <td>
                    <asp:Label runat="server" AssociatedControlID="TextBoxStartovniCislo">Startovní èíslo:&nbsp;</asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBoxStartovniCislo" runat="server" TextMode="SingleLine" Style="width: 80px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:RangeValidator ID="TextBoxStartovniCisloValidator" Type="Integer" MinimumValue="1" MaximumValue="300" runat="server" ControlToValidate="TextBoxStartovniCislo" ValidationGroup="DialogPrezentovat" ErrorMessage="Zadejte èíslo od 1 do 300." ForeColor="Red"></asp:RangeValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label runat="server" AssociatedControlID="TextBoxStartFee">Zaplaceno:&nbsp;</asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBoxStartFee" runat="server" TextMode="SingleLine" Style="width: 80px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:RangeValidator ID="TextBoxStartFeeValidator" Type="Integer" MinimumValue="0" MaximumValue="350" runat="server" ControlToValidate="TextBoxStartFee" ValidationGroup="DialogPrezentovat" ErrorMessage="Zadejte èíslo od 0 do 350." ForeColor="Red"></asp:RangeValidator>
                </td>
            </tr>
        </table>
        <br />
    </div>
    <div id="dialogZrusitPrezentaci" style="display: none; font-size: large">
        <br />
        Opravdu zrušit prezentaci ?
    </div>
    <div id="dialogFinish" style="display: none; font-size: large">
        <br />
        <table>
            <tr>
                <td>
                    <asp:Label runat="server" AssociatedControlID="TextBoxFinishTime">Cílovı èas:&nbsp;</asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBoxFinishTime" runat="server" TextMode="SingleLine" Style="width: 200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:RegularExpressionValidator ID="TextBoxFinishTimeValidator" runat="server" ValidationExpression="^(0?[1-9]|[12][0-9]|3[01])[\.\-](0?[1-9]|1[012])[\.\-]\d{4} ([01]?[0-9]|2[0-3]):[0-5][0-9]:[0-5][0-9]$" ControlToValidate="TextBoxFinishTime" SetFocusOnError="True" ErrorMessage="Zadejte èas ve formátu: dd.MM.yyyy HH:mm:ss" ForeColor="Red"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label runat="server" AssociatedControlID="TextBoxGroupOrder">Poøadí ve stejném èase:&nbsp;</asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBoxGroupOrder" runat="server" TextMode="SingleLine" Style="width: 80px">1</asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:RangeValidator ID="TextBoxGroupOrderValidator" Type="Integer" MinimumValue="1" MaximumValue="200" runat="server" ControlToValidate="TextBoxGroupOrder" ErrorMessage="Zadejte èíslo od 1 do 200." ForeColor="Red" SetFocusOnError="True"></asp:RangeValidator>
                </td>
            </tr>
        </table>
    </div>
    <div id="dialogSendPozvanka" style="display: none">
        <br />
        <table>
            <tr>
                <td>
                    <asp:Label runat="server" AssociatedControlID="TextBoxSubject">Nadpis:&nbsp;</asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBoxSubject" runat="server" TextMode="SingleLine" Style="width: 440px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label runat="server" AssociatedControlID="TextBoxBody">Text:&nbsp;</asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBoxBody" runat="server" TextMode="MultiLine" Style="width: 440px; height: 440px"></asp:TextBox>
                </td>
            </tr>
        </table>
    </div>
    <div id="pageDukovanskeOkruhyContent">
        <div id="baner8" class="nivoSlider">
            <img id="img1" alt="Baner" src="images/Banery/BannerDukovanskeOkruhy2014_01a.jpg" />
        </div>
        <asp:SQLDataSource ID="SQLDataSourceRaceCategory" runat="server" SelectCommand="SELECT rc.NAME FROM RaceCategory rc, Races r WHERE rc.ID_RACE = r.ID_RACE and r.ID_RACE_ACTION = 5 and rc.AGE_TO <= @Age AND rc.AGE_FROM >= @Age ORDER BY rc.AGE_TO DESC, rc.NAME ASC" ConnectionString="<%$ ConnectionStrings:VysocinaCycling %>" ProviderName="<%$ ConnectionStrings:VysocinaCycling.ProviderName %>">
            <SelectParameters>
                <asp:QueryStringParameter DefaultValue="0" Name="Age" QueryStringField="Age" Type="int16" />
            </SelectParameters>
        </asp:SQLDataSource>
        <div id="dukovanskeokruhytabs">
            <ul>
                <li id="Li81"><a href="#tab-81">O závodu</a></li>
                <li id="Li82"><a href="#tab-82">Propozice</a></li>
                <li id="Li83"><a href="#tab-83">Tra</a></li>
                <li id="Li84"><a href="#tab-84">Pøihláška</a></li>
                <li id="Li85"><a href="#tab-85">Startovní listina</a></li>
                <li id="Li86"><a href="#tab-86">Vısledky</a></li>
                <li id="Li87"><a href="#tab-87">Historie</a></li>
            </ul>
            <div id="tab-81" class="clasictext">
                <div class="clanek">
                    <table>
                        <tr>
                            <td>
                                <h1 style="text-align: center; color: #0066CC">Dukovanské okruhy 2019</h1>
                                <h2 style="text-align: center; color: #0066CC">
                                    Termín: 20.7.2019
                                </h2>
                                <h2 style="text-align: center; color: #0066CC">
                                    Otevøené Mistrovství kraje Vysoèina v silnièním závodì jednotlivcù
                                </h2>
                            </td>
                            <td>
                            </td>
                        </tr>
                        <tr>
                            <td align="center" valign="top">
                                <div style="font-size: small; font-weight: bold; font-style: italic; color: #666666; text-align: justify; padding-right: 20px;">
                                    V okolí Jaderné elektrárny Dukovany se i letos v èervenci uskuteèní silnièní 
                                    cyklistickı závod, kterı kadoroènì pøiláká poèetné startovní pole všech vıkonnostních 
                                    kategorií vèetnì mládee, hobby jezdcù, ale také elitních profesionálù.<br />
                                    Chceme závodníkùm nabídnout opìt zajímavou tra na okruhu v okolí Jaderné elektrárny. 
                                    Okruh je zvlnìnı a kopcovitı, nechybí lesní pasáe, ani otevøená místa na vìtru. 
                                    Celı okruh vede po kvalitních silnicích. V prùbìhu závodu mohou závodníci spatøit 
                                    dominantu jaderné elektrárny ze všech jejich stran. Souèasnì je tra provede 
                                    zajímavımi místy v okolí Dalešické pøehrady a øeky Jihlavy. Pøed cílem na 
                                    závodníky èeká krátké stoupání, které udìlá závìr závodu atraktivnìjší.<br />
                                    Novinkou letošního roèníku, je zaøazení závodu do prestiní série RoadCup a s tím 
                                    související úpravy rozdìlení kategorií pro hobby závodníky. Do série RoadCup je 
                                    zaøazena tra o délce 110 km (tøi okruhy) a je vypsána pro všechny vìkové kategorie 
                                    hooby. Hobby závodníci však mají stále monost startovat i v lehèí variantì 
                                    na 74 km (2 okruhy) v kategorii open.<br />
                                    Závod je opìt vypsán i jako Mistrovství Kraje Vysoèina pro všechny vìkové kategorie 
                                    startující na dlouhém okruhu (mui musí absolvovat hlavní závod na 153 km).<br />
                                    Na nejlepší v hlavním závodu èekají zajímavé finanèní ceny. Pro mláde a hobby kategorie 
                                    budou pøipraveny vìcné ceny. Pro nejlepší v kraji medaile a diplomy.<br />
                                    Hlavním partnerem závodu je Jaderná elektrárna Dukovany, která podporuje tento tradièní
                                    závod od jeho poèátku v roce 1995. Podìkování patøí i menším partnerù, kteøí
                                    kadoroènì vìnují pìkné vìcné ceny.<br />
                                    Pøihlašovat se mùete prostøednictvím pøihlašovacího formuláøe zde (karta pøihláška). 
                                    Vìtší tımy mohou zaslat souhrnou pøihlášku na email 
                                    <a style="color: #FF3300" href="mailto:silnice@vysocinacycling.cz">silnice(zavináè)vysocinacycling.cz</a>.
                                    <br />
                                    <br />
                                    <img src="images/foto/DO2019.jpg" alt="Dukovanské okruhy 2019" border="none" />
                                    <br />
                                </div>
                            </td>
                            <td valign="top" align="center"> 
                                <div>
                                    <a href="http://www.pomahejpohybem.cz" title="Pomáhej pohybem" target="_blank">
                                        <img src="images/inzerce/CEZ_EPP_branding(ram)_Novinky,cz_120x600_Right2_repeat.jpg" alt="CEZ EPP" border="none" />
                                    </a>
                                </div>
                                <div>
                                    <a href="http://www.nakolarce.cz/" title="Penzion Na Koláøce" target="_blank">
                                        <img src="images/inzerce/NA_KOLARCE-sm.png" alt="Na Koláøce" border="none" />
                                    </a>
                                </div>
                                <div>
                                    <a href="http://www.jemca.cz/" title="Jemèa" target="_blank">
                                        <img src="images/inzerce/jemca.png" alt="Jemèa" border="none" />
                                    </a>
                                </div>
                                <div>
                                    <a href="http://www.decathlon.cz/" title="Decathlon" target="_blank">
                                        <img src="images/inzerce/decathlon.png" alt="Decathlon" border="none" />
                                    </a>
                                </div>
                                <div>
                                    <a href="https://www.tour-sport.cz/" title="Tour Sport Tøebíè" target="_blank">
                                        <img src="images/inzerce/toursport-sm.png" alt="Tour Sport" border="none" />
                                    </a>
                                </div>
                                <div>
                                    <a href="http://www.isostar.cz/" title="Isostar" target="_blank">
                                        <img src="images/inzerce/ISOSTAR_black.png" alt="Isostar" border="none" />
                                    </a>
                                </div>
                                <div>
                                    <a href="http://www.nuvia.cz/" title="Nuvia a.s." target="_blank">
                                        <img src="images/inzerce/nuvia-sm.png" alt="Nuvia" border="none" />
                                    </a>
                                </div>
                                <div>
                                    <a href="https://www.zpmvcr.cz/" title="Zdravotní pojišovna ministerstva vnitra" target="_blank">
                                        <img src="images/inzerce/zpmv-sm.png" alt="211" border="none" />
                                    </a>
                                </div>
                                <div>
                                    <a href="http://www.centropen.cz/" title="Centropen" target="_blank">
                                        <img src="images/inzerce/centropen.png" alt="Centropen" border="none" />
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
            <div id="tab-82" class="clasictext">
                    <div class="clanek" >
                        <object data="./files/Dukovanske_okruhy_2019.pdf" style="margin-top:15px" width="930" height="2580" type="application/pdf">
                            <br />
                            Váš prohlíeè nepodporuje zobrazení PDF. Soubor lze stáhnout na tomto odkazu <a href="files/Dukovanske_okruhy_2019.pdf" target="_blank">Dukovanske_okruhy_2019.pdf</a>
                            <br />
                        </object>
                    </div>
            </div>
            <div id="tab-83" class="clasictext">
                    <div class="clanek">
                        <h2>
                            Dlouhı okruh
                        </h2>
                        <img src="images/clanky/Dlouhy_okruh.jpg" alt="Dlouhı okruh" border="none" />
                        <img src="images/clanky/Dlouhy_okruh-profil.jpg" alt="Dlouhı okruh - profil" border="none" />
                        <h2>
                            Krátkı okruh
                        </h2>
                        <img src="images/clanky/Kratky_okruh.jpg" alt="Krátkı okruh" border="none" />
                        <img src="images/clanky/Kratky_okruh-profil.jpg" alt="Krátkı okruh - profil" border="none" />
                    </div>
            </div>
            <div id="tab-84" class="clasictext">
                <!--<input type="button" id="buttonSilnicniZavod" value="Vyplnit pøihlášku na Dukovanské okruhy 2019" />-->
                <div class="clanek">
                    <div id="silnicniZavod" style="text-align: left">
                        <h2>Vyplòte prosím registraèní údaje. Pole oznaèená * jsou povinná.</h2>
                        <h2>Pro kontrolu bude kopie Vaší pøihlášky zaslána i na Váš email.</h2>
                        <table width="550px">
                            <tr>
                                <td style="width:270px">
                                    <asp:Label AssociatedControlID="TextBoxSilnicniZavodJmeno" runat="server">Jméno: *</asp:Label>
                                    <asp:TextBox ID="TextBoxSilnicniZavodJmeno" runat="server" TextMode="SingleLine" Style="width: 250px"></asp:TextBox>
                                </td>
                                <td align="left">
                                    <asp:Label AssociatedControlID="TextBoxSilnicniZavodPrijmeni" runat="server">Pøíjmení: *</asp:Label>
                                    <asp:TextBox ID="TextBoxSilnicniZavodPrijmeni" runat="server" TextMode="SingleLine" Style="width: 250px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label AssociatedControlID="TextBoxSilnicniZavodNarozeni" runat="server">Datum narození: *</asp:Label>
                                    <asp:TextBox ID="TextBoxSilnicniZavodNarozeni" runat="server" TextMode="SingleLine" Style="width: 250px" OnTextChanged="TextBoxSilnicniZavodNarozeni_TextChanged" AutoPostBack="true"></asp:TextBox>
                                    <asp:CompareValidator ID="CompareValidatorTextBoxSilnicniZavodNarozeni" runat="server" ControlToValidate="TextBoxSilnicniZavodNarozeni" Type="Date" Operator="DataTypeCheck" />
                                </td>
                                <td align="left">
                                    <asp:Label AssociatedControlID="DropDownListSilnicniZavodKategorie" runat="server">Kategorie: *</asp:Label>
                                    <asp:DropDownList ID="DropDownListSilnicniZavodKategorie" runat="server" Style="width: 254px" DataSourceID="SQLDataSourceRaceCategory" DataValueField="NAME">
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label AssociatedControlID="TextBoxSilnicniZavodKlub" runat="server">Klub (pokud jste èlenem nìjakého klubu):</asp:Label>
                                    <asp:TextBox ID="TextBoxSilnicniZavodKlub" runat="server" TextMode="SingleLine" Style="width: 250px"></asp:TextBox>
                                </td>
                                <td align="left">
                                    <asp:Label AssociatedControlID="TextBoxSilnicniZavodLicence" runat="server">Èíslo a UCI kód licence (pokud jste dritelem):</asp:Label>
                                    <asp:TextBox ID="TextBoxSilnicniZavodLicence" runat="server" TextMode="SingleLine" Style="width: 250px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <asp:Label AssociatedControlID="TextBoxSilnicniZavodAdresa" runat="server">Mìsto (v závorce uveïte "Kraj Vysoèina", pokud chcete závodit o Mistra kraje Vysoèina): *</asp:Label>
                                    <asp:TextBox ID="TextBoxSilnicniZavodAdresa" runat="server" TextMode="SingleLine" Style="width: 524px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label AssociatedControlID="TextBoxSilnicniZavodEmail" runat="server">Email: *</asp:Label>
                                    <asp:TextBox ID="TextBoxSilnicniZavodEmail" runat="server" TextMode="SingleLine" Style="width: 250px"></asp:TextBox>
                                </td>
                                <td align="left">
                                    <asp:Label AssociatedControlID="TextBoxSilnicniZavodTelefon" runat="server">Telefon:</asp:Label>
                                    <asp:TextBox ID="TextBoxSilnicniZavodTelefon" runat="server" TextMode="SingleLine" Style="width: 250px"></asp:TextBox>
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
                                <input id="buttonSilnicniZavod" type="button" runat="server" title="Dukovanské okruhy 2019" value="Odeslat pøihlášku" />
                            </td>
                            <td align="right">
                                <input id="buttonSilnicniZavodSmazForm" type="button" runat="server" title="Dukovanské okruhy 2019" value="Smazat formuláø" />
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
            <div id="tab-85" class="clasictext">
                    <div class="clanek">
                        <div id="registrationTable"></div>
                    </div>
            </div>
            <div id="tab-86" class="clasictext">
                    <div class="clanek">
                        <div id="finishTable"></div>
                    </div>
            </div>
            <div id="tab-87" class="clasictext">
                    <div class="clanek">
                        <table>  
                            <tr>
                                <td>
                                    <h2 style="text-align: center; color: #0066CC">Poslední roèníky</h2>
                                </td>
                                <td>
                                </td>
                            </tr>
                            <tr>
                                <td style="color: #0066CC; font-weight: bold; padding-top: 5px">Roèník 2017:
                                </td>
                                <td>
                                </td>
                            </tr>
                            <tr>
                                <td style="color: #0033CC; font-weight: bold;">Pøihlášení závodníci:
                                </td>
                                <td style="color: #FF3300"><a href="http://www.vysocinacycling.cz/files/RegistraceDO2017.pdf" onclick="ga('send', 'event', 'PDF', 'View', 'Pøihlášky Dukovanské okruhy 2016');" target="_blank">RegistraceDO2017.pdf</a>
                                </td>
                            </tr> 
                            <tr>
                                <td style="color: #0033CC; font-weight: bold;">Startovní listina:
                                </td>
                                <td style="color: #FF3300"><a href="http://www.vysocinacycling.cz/files/PrezenceDO2017.pdf" onclick="ga('send', 'event', 'PDF', 'View', 'Startovní listina Dukovanské okruhy 2016');" target="_blank">PrezenceDO2017.pdf</a>
                                </td>
                            </tr>
                            <tr>
                                <td style="color: #0033CC; font-weight: bold;">Vısledky:
                                </td>
                                <td style="color: #FF3300"><a href="http://www.vysocinacycling.cz/files/VysledkyDO2017.pdf" onclick="ga('send', 'event', 'PDF', 'View', 'Vısledky Dukovanské okruhy 2016');" target="_blank">VysledkyDO2017.pdf</a>
                                </td>
                            </tr>     
                            <tr>
                                <td style="color: #0033CC; font-weight: bold;">Èlánek:
                                </td>
                                <td style="color: #FF3300"><a href="http://www.vysocinacycling.cz/Default.aspx?NewsId=192">Dukovanské okruhy 2017 ovládl Václav Neerka</a>
                                </td>
                            </tr>
                            <tr>
                                <td style="color: #0066CC; font-weight: bold; padding-top: 20px">Roèník 2016:
                                </td>
                                <td>
                                </td>
                            </tr>
                            <tr>
                                <td style="color: #0033CC; font-weight: bold;">Pøihlášení závodníci:
                                </td>
                                <td style="color: #FF3300"><a href="http://www.vysocinacycling.cz/files/RegistraceDO2016.pdf" onclick="ga('send', 'event', 'PDF', 'View', 'Pøihlášky Dukovanské okruhy 2016');" target="_blank">RegistraceDO2016.pdf</a>
                                </td>
                            </tr> 
                            <tr>
                                <td style="color: #0033CC; font-weight: bold;">Startovní listina:
                                </td>
                                <td style="color: #FF3300"><a href="http://www.vysocinacycling.cz/files/PrezenceDO2016.pdf" onclick="ga('send', 'event', 'PDF', 'View', 'Startovní listina Dukovanské okruhy 2016');" target="_blank">PrezenceDO2016.pdf</a>
                                </td>
                            </tr>
                            <tr>
                                <td style="color: #0033CC; font-weight: bold;">Vısledky:
                                </td>
                                <td style="color: #FF3300"><a href="http://www.vysocinacycling.cz/files/VysledkyDO2016.pdf" onclick="ga('send', 'event', 'PDF', 'View', 'Vısledky Dukovanské okruhy 2016');" target="_blank">VysledkyDO2016.pdf</a>
                                </td>
                            </tr>     
                            <tr>
                                <td style="color: #0033CC; font-weight: bold;">Èlánek:
                                </td>
                                <td style="color: #FF3300"><a href="http://www.vysocinacycling.cz/Default.aspx?NewsId=182">Sparan Jonáš Vojtìch vítìzem Dukovanskıch okruhù 2016</a>
                                </td>
                            </tr>
                            <tr>
                                <td style="color: #0066CC; font-weight: bold; padding-top: 20px">Roèník 2015:
                                </td>
                                <td>
                                </td>
                            </tr>
                            <tr>
                                <td style="color: #0033CC; font-weight: bold;">Pøihlášení závodníci:
                                </td>
                                <td style="color: #FF3300"><a href="http://www.vysocinacycling.cz/files/DukovanskeOkruhy2015-prihlasky.pdf" onclick="ga('send', 'event', 'PDF', 'View', 'Pøihlášky Dukovanské okruhy 2015');" target="_blank">DukovanskeOkruhy2015-prihlasky.pdf</a>
                                </td>
                            </tr>
                            <tr>
                                <td style="color: #0033CC; font-weight: bold;">Startovní listina:
                                </td>
                                <td style="color: #FF3300"><a href="http://www.vysocinacycling.cz/files/DukovanskeOkruhy2015-startovka.pdf" onclick="ga('send', 'event', 'PDF', 'View', 'Startovní listina Dukovanské okruhy 2015');" target="_blank">DukovanskeOkruhy2015-startovka.pdf</a>
                                </td>
                            </tr>
                            <tr>
                                <td style="color: #0033CC; font-weight: bold;">Vısledky:
                                </td>
                                <td style="color: #FF3300"><a href="http://www.vysocinacycling.cz/files/DukovanskeOkruhy2015-vysledky.pdf" onclick="ga('send', 'event', 'PDF', 'View', 'Vısledky Dukovanské okruhy 2015');" target="_blank">DukovanskeOkruhy2015-vysledky.pdf</a>
                                </td>
                            </tr>   
                            <tr>
                                <td style="color: #0033CC; font-weight: bold;">Èlánek:
                                </td>
                                <td style="color: #FF3300"><a href="http://www.vysocinacycling.cz/Default.aspx?NewsId=167">David Dvorskı vítìzem Dukovanskıch okruhù</a>
                                </td>
                            </tr>
                        </table>
                    </div>
            </div>
        </div>
     </div>
</asp:Content>
