<%@ Page Title="Vysoèina Cycling - Tım" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="tym.aspx.cs" Inherits="Tym" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <meta property="og:description" content="Tento projekt je zamìøen na podporu vıkonnostní cyklistiky na Vysoèinì, a to pøedevším cyklistiky silnièní. Na stránce Tım naleznete informace o tımu Vysoèina cycling a mùete se zde také zaregistrovat. Pøihlášení èlenové a pøíznivci tımu zde naleznou další informace." />
    <meta property="og:image" content="http://www.vysocinacycling.cz/images/logo_Facebook.png" />
    <script type="text/javascript">
        $(window).load(function () {
            $("#baner2").nivoSlider({ animSpeed: 1000, pauseTime: 5000, controlNav: false, directionNav: false, keyboardNav: false, effect: "fade" });
        });
    </script>

    <script type="text/javascript">
        $(document).ready(function () {
            SiteTymReady();
        });
    </script>
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <div id="dialogupravaclenstvi" title="Úprava údajù" style="display: none">
        <p>
            Zde mùete upravit nìkteré parametry Vašeho èlenství. Pokud chcete upravit údaj, kterı zde není 
            uveden, napište mi, nebo starou registraci smate a zaregistrujte se znovu.</p>
        <table>
            <tr>
                <td style="width: 110px">
                    Email:
                </td>
                <td>
                    <asp:TextBox ID="TextBoxUEmail" runat="server" TextMode="SingleLine" style="width:140px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 110px">
                    Lokalita:
                </td>
                <td>
                    <asp:TextBox ID="TextBoxUObec" runat="server" TextMode="SingleLine" style="width:140px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 110px">
                    Kraj:
                </td>
                <td>
                    <asp:DropDownList ID="DropDownListUKraj" runat="server" style="width:145px">
                        <asp:ListItem>Vysoèina</asp:ListItem>
                        <asp:ListItem>Jihomoravskı</asp:ListItem>
                        <asp:ListItem>Jihoèeskı</asp:ListItem>
                        <asp:ListItem>Karlovarskı</asp:ListItem>
                        <asp:ListItem>Královéhradeckı</asp:ListItem>
                        <asp:ListItem>Libereckı</asp:ListItem>
                        <asp:ListItem>Moravskoslezskı</asp:ListItem>
                        <asp:ListItem>Olomouckı</asp:ListItem>
                        <asp:ListItem>Pardubickı</asp:ListItem>
                        <asp:ListItem>Plzeòskı</asp:ListItem>
                        <asp:ListItem>Praha</asp:ListItem>
                        <asp:ListItem>Støedoèeskı</asp:ListItem>
                        <asp:ListItem>Ústeckı</asp:ListItem>
                        <asp:ListItem>Zlínskı</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td style="width: 110px">
                    Úroveò:
                </td>
                <td>
                    <asp:DropDownList ID="DropDownListUUroven" runat="server" style="width:145px">
                        <asp:ListItem>Rekreaèní jezdec</asp:ListItem>
                        <asp:ListItem>Hobby jezdec</asp:ListItem>
                        <asp:ListItem>Aktivní závodník</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td style="width: 110px">
                    Chci bıt:
                </td>
                <td>
                    <asp:DropDownList ID="DropDownListUClen" runat="server" style="width:145px">
                        <asp:ListItem>Pøíznivec tımu</asp:ListItem>
                        <asp:ListItem>Pasivní èlen</asp:ListItem>
                        <asp:ListItem>Aktivní èlen</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td style="width: 110px">
                    Preferuji:
                </td>
                <td>
                    <asp:DropDownList ID="DropDownListUDisciplina" runat="server" style="width:145px">
                        <asp:ListItem>Silnice</asp:ListItem>
                        <asp:ListItem>Bike</asp:ListItem>
                        <asp:ListItem>Cyklokros</asp:ListItem>
                        <asp:ListItem>Dráha</asp:ListItem>
                        <asp:ListItem>Jiná disciplína</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td style="width: 110px">
                    Poèasí:
                </td>
                <td>
                    <asp:DropDownList ID="DropDownListUPocasi" runat="server" style="width:145px">
                        <asp:ListItem>Daèice</asp:ListItem>
                        <asp:ListItem>Havlíèkùv Brod</asp:ListItem>
                        <asp:ListItem>Jihlava</asp:ListItem>
                        <asp:ListItem>Kostelní Myslová</asp:ListItem>
                        <asp:ListItem>Moravské Budìjovice</asp:ListItem>
                        <asp:ListItem>Námìš</asp:ListItem>
                        <asp:ListItem>Pøibyslav</asp:ListItem>
                        <asp:ListItem>Telè</asp:ListItem>
                        <asp:ListItem>Tøebíè</asp:ListItem>
                        <asp:ListItem>Velké Meziøíèí</asp:ListItem>
                        <asp:ListItem>ïár nad Sázavou</asp:ListItem>
                        <asp:ListItem>Brno</asp:ListItem>
                        <asp:ListItem>Èeské Budìjovice</asp:ListItem>
                        <asp:ListItem>Hodonín</asp:ListItem>
                        <asp:ListItem>Jindøichùv Hradec</asp:ListItem>
                        <asp:ListItem>Karlovy Vary</asp:ListItem>
                        <asp:ListItem>Liberec</asp:ListItem>
                        <asp:ListItem>Olomouc</asp:ListItem>
                        <asp:ListItem>Ostrava</asp:ListItem>
                        <asp:ListItem>Pardubice</asp:ListItem>
                        <asp:ListItem>Plzeò</asp:ListItem>
                        <asp:ListItem>Praha</asp:ListItem>
                        <asp:ListItem>Tábor</asp:ListItem>
                        <asp:ListItem>Zlín</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td style="width: 110px">
                    Heslo:
                </td>
                <td>
                    <asp:TextBox ID="TextBoxUHeslo" runat="server" TextMode="Password" style="width:140px"></asp:TextBox>
                </td>
            </tr>
        </table>
    </div>
    <div id="dialogzrusitclenstvi" title="Zrušení èlenství" style="display: none">
        <p>
            Pokud dokonèíte tuto akci, bude smazán Váš úèet se všemi souvisejícími daty. Chcete-li dál vyuívat vıhod našich stránek, staòte se alespoò naším pøíznivcem a zvolte funkci "Upravit údaje".</p>
        <table>
            <tr>
                <td style="width: 120px">
                    Uivatelské jméno:
                </td>
                <td style="width: 200px">
                    <asp:Label ID="LabelZCUserName" runat="server" Text="" Font-Size="10" Font-Bold="True"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="width: 110px">
                    Heslo:
                </td>
                <td style="width: 200px">
                    <asp:TextBox ID="TextBoxZCHeslo" runat="server" TextMode="Password" style="width:140px"></asp:TextBox>
                </td>
            </tr>
        </table>
    </div>
    <div id="dialogzmenahesla" title="Zmìna hesla" style="display: none">
        <p>
            Heslo musí mít minimálnì 7 znakù.</p>
        <table>
            <tr>
                <td style="width: 120px;">
                    Staré heslo:
                </td>
                <td style="width: 200px">
                    <asp:TextBox ID="TextBoxStareHeslo" runat="server" TextMode="Password" style="width:140px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 110px">
                    Nové heslo:
                </td>
                <td style="width: 200px">
                    <asp:TextBox ID="TextBoxNoveHeslo" runat="server" TextMode="Password" style="width:140px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 110px">
                    Kontrola hesla:
                </td>
                <td style="width: 200px">
                    <asp:TextBox ID="TextBoxKontrolaNovehoHesla" runat="server" TextMode="Password" style="width:140px"></asp:TextBox>
                </td>
            </tr>
        </table>
    </div>
    <div id="dialogPridatZavod" title="Pøidání závodu" style="display: none">
        <p>
            Vyplòte všechna pole.</p>
        <table>
            <tr>
                <td style="width: 110px">
                    Datum:
                </td>
                <td>
                    <asp:TextBox ID="TextBoxPZDatum" runat="server" TextMode="SingleLine" style="width:140px"></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator5" runat="server" Operator="DataTypeCheck"
                        Type="Date"
                        ControlToValidate="TextBoxPZDatum"
                        ErrorMessage="Pole musí obsahovat pouze èíselnou hodnotu."
                        Display="Dynamic"
                        ForeColor="Red" />
                </td>
            </tr>
            <tr>
                <td style="width: 110px">
                    Místo:
                </td>
                <td>
                    <asp:TextBox ID="TextBoxPZMisto" runat="server" TextMode="SingleLine" style="width:140px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 110px">
                    Název závodu:
                </td>
                <td>
                    <asp:TextBox ID="TextBoxPZNazev" runat="server" TextMode="SingleLine" style="width:140px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 110px">
                    Délka:
                </td>
                <td>
                    <asp:TextBox ID="TextBoxPZDelka" runat="server" TextMode="SingleLine" style="width:140px"></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator3" runat="server" Operator="DataTypeCheck"
                        Type="Integer"
                        ControlToValidate="TextBoxPZDelka"
                        ErrorMessage="Pole musí obsahovat pouze èíselnou hodnotu."
                        Display="Dynamic"
                        ForeColor="Red" />
                </td>
            </tr>
            <tr>
                <td style="width: 110px">
                    Èas:
                </td>
                <td>
                    <asp:TextBox ID="TextBoxPZCas" runat="server" TextMode="SingleLine" style="width:140px"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"
                        ControlToValidate="TextBoxPZCas"
                        ValidationExpression="^([0-1]?[0-9]|[2][0-3]):([0-5][0-9]):([0-5][0-9])$"
                        ErrorMessage="Pole musí obsahovat hodnotu ve formátu hh:mm:ss."
                        Display="Dynamic"
                        ForeColor="Red" />
                </td>
            </tr>
            <tr>
                <td style="width: 110px">
                    Celkové umístìní:
                </td>
                <td>
                    <asp:TextBox ID="TextBoxPZUmisteniCelkove" runat="server" TextMode="SingleLine" style="width:140px"></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" Operator="DataTypeCheck"
                        Type="Integer"
                        ControlToValidate="TextBoxPZUmisteniCelkove"
                        ErrorMessage="Pole musí obsahovat pouze èíselnou hodnotu."
                        Display="Dynamic"
                        ForeColor="Red" />
                </td>
            </tr>
            <tr>
                <td style="width: 110px">
                    Kategorie:
                </td>
                <td>
                    <asp:TextBox ID="TextBoxPZKategorie" runat="server" TextMode="SingleLine" style="width:140px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 110px">
                    Umístìní v kategorii:
                </td>
                <td>
                    <asp:TextBox ID="TextBoxPZUmisteniKategorie" runat="server" TextMode="SingleLine" style="width:140px"></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator2" runat="server" Operator="DataTypeCheck"
                        Type="Integer"
                        ControlToValidate="TextBoxPZUmisteniKategorie"
                        ErrorMessage="Pole musí obsahovat pouze èíselnou hodnotu."
                        Display="Dynamic"
                        ForeColor="Red" />
                </td>
            </tr>
        </table>
    </div>
    <div id="dialogSmazatZavod" title="Smazání závodu" style="display: none">
        <p>
            Pro kontrolu musíte vyplnit všechna pole.</p>
        <table>
            <tr>
                <td style="width: 110px">
                    Datum:
                </td>
                <td>
                    <asp:TextBox ID="TextBoxSZDatum" runat="server" TextMode="SingleLine" style="width:140px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 110px">
                    Název závodu:
                </td>
                <td>
                    <asp:TextBox ID="TextBoxSZNazev" runat="server" TextMode="SingleLine" Width="140px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 110px">
                    Délka:
                </td>
                <td>
                    <asp:TextBox ID="TextBoxSZDelka" runat="server" TextMode="SingleLine" style="width:140px"></asp:TextBox>
                </td>
            </tr>
        </table>
    </div>
    <div id="pageTymContent">
        <div id="baner2" class="nivoSlider">
            <img id="img3" alt="Baner" src="images/Banery/BannerTym2013.jpg" />
            <img id="img1" alt="Baner" src="images/Banery/BannerTym2013ml.jpg" />
            <img id="img2" alt="Baner" src="images/Banery/BannerTym2013sil.jpg" />
        </div>
        <div id="tymtabs">
            <ul>
                <li id="Li20"><a href="#tab-20">Tım Vysoèina Cycling</a></li>
                <li id="Li21"><a href="#tab-21">Èlenství</a></li>
                <li id="Li22"><a href="#tab-22">Èlenové</a></li>
                <li id="Li23"><a href="#tab-23">Pro èleny</a></li>
                <li id="Li24"><a href="#tab-24">Info</a></li>
                <li id="Li25"><a href="#tab-25">Dresy</a></li>
                <li id="Li26"><a href="#tab-26">Sponzoøi</a></li>
                <li id="Li27"><a href="#tab-27">Vısledky</a></li>
                <li id="Li28"><a href="#tab-28">Fotogalerie závody</a></li>
                <li id="Li29"><a href="#tab-29">Spoleèné tréninky</a></li>
            </ul>
            <div id="tab-20" class="clasictext">
                <ul id="ZavodniciVysocina" class="paging12"> 
                    <li>
                        <div class="clanek" style="padding-top: 15px; text-align: center; font-weight: bold;
                            font-size: small;">
                            Vedení tımu
                        </div>
                    </li>  
                    <li>
                        <div class="clanek">
                            <table>
                                <tr>
                                    <td valign="top">
                                        <br />
                                        <a href="images/Foto/RK_web.jpg" title="Rostislav Krotkı">
                                            <img src="images/Foto/thumb_RK_web.jpg" alt="Rostislav Krotkı" border="0" /></a>
                                    </td>
                                    <td>
                                        <div style="width: 10px">
                                        </div>
                                    </td>
                                    <td valign="top" align="left">
                                        <h1 class="nadpish1">Rostislav Krotkı
                                        </h1>
                                        <strong>Vìk: </strong>
                                        <br />
                                        <strong>Váha / vıška: </strong>
                                        <br />
                                        <strong>Bydlištì: </strong>
                                        <br />
                                        <strong>Zaèátek cyklistické kariéry: </strong>
                                        <br />
                                        <strong>Typ závodníka: </strong>
                                        <br />
                                        <strong>Ostatní oblíbené sporty: </strong>
                                        <br />
                                        <strong>Vzdìlání: </strong>
                                        <br />
                                        <strong>Zamìstnání: </strong>
                                        <br />
                                        <strong>Motto: </strong>
                                        <br />
                                        <br />
                                        <br />
                                    </td>
                                    <td valign="top" align="left">
                                        <h1 class="nadpish1" style="visibility: hidden">Vedení tımu
                                        </h1>
                                        39 let<br />
                                        77 kg / 179 cm<br />
                                        Lipník (okr. Tøebíè)<br />
                                        16 let<br />
                                        Univerzál<br />
                                        Bìecké lyování<br />
                                        VUT Brno, Ing.<br />
                                        Profi cyklista - AC Sparta Praha, programování<br />
                                        Co tì nezabije, to tì posílí.<br />
                                        <br />
                                        <br />
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </li> 
                    <li>
                        <div class="clanek">
                            <table>
                                <tr>
                                    <td valign="top">
                                        <br />
                                        <a href="images/Foto/MK_web.jpg" title="Marian Klobas">
                                            <img src="images/Foto/thumb_MK_web.jpg" alt="Marian Klobas" border="0" /></a>
                                    </td>
                                    <td>
                                        <div style="width: 10px">
                                        </div>
                                    </td>
                                    <td valign="top" align="left">
                                        <h1 class="nadpish1">Marian Klobas
                                        </h1>
                                        <strong>Vìk: </strong>
                                        <br />
                                        <strong>Váha / vıška: </strong>
                                        <br />
                                        <strong>Bydlištì: </strong>
                                        <br />
                                        <strong>Zaèátek cyklistické kariéry: </strong>
                                        <br />
                                        <strong>Typ závodníka: </strong>
                                        <br />
                                        <strong>Ostatní oblíbené sporty: </strong>
                                        <br />
                                        <strong>Vzdìlání: </strong>
                                        <br />
                                        <strong>Zamìstnání: </strong>
                                        <br />
                                        <strong>Motto: </strong>
                                        <br />
                                        <br />
                                        <br />
                                    </td>
                                    <td valign="top" align="left">
                                        <h1 class="nadpish1" style="visibility: hidden">Vedení tımu
                                        </h1>
                                        38 let<br />
                                        82 kg / 175 cm<br />
                                        Hvìzdoòovice (okr. Tøebíè)<br />
                                        33 let<br />
                                        Tempaø<br />
                                        Posilovna, bìh, bìecké lyování<br />
                                        Veøejnoprávní Jihlava<br />
                                        Státní zamìstnanec<br />
                                        Poznej svou konkurenci. Vyhni se jejich silnım a vyuij jejich slabé stránky.<br />
                                        <br />
                                        <br />
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </li>                           
                    <li>
                        <div class="clanek" style="padding-top: 15px; text-align: center; font-weight: bold;
                            font-size: small;">
                            Závodníci kategorie ELITE
                        </div>
                    </li>
                    <li>
                        <div class="clanek">
                            <table>
                                <tr>
                                    <td valign="top">
                                        <br />
                                        <a href="images/Foto/NoImage.jpg" title="Pavel Kopeckı">
                                            <img src="images/Foto/NoImage.jpg" alt="Pavel Kopeckı" border="0" /></a>
                                    </td>
                                    <td>
                                        <div style="width: 10px">
                                        </div>
                                    </td>
                                    <td valign="top" align="left">
                                        <h1 class="nadpish1">Pavel Kopeckı
                                        </h1>
                                        <strong>Vìk: </strong>
                                        <br />
                                        <strong>Váha / vıška: </strong>
                                        <br />
                                        <strong>Bydlištì: </strong>
                                        <br />
                                        <strong>Zaèátek cyklistické kariéry: </strong>
                                        <br />
                                        <strong>Typ závodníka: </strong>
                                        <br />
                                        <strong>Ostatní oblíbené sporty: </strong>
                                        <br />
                                        <strong>Vzdìlání: </strong>
                                        <br />
                                        <strong>Zamìstnání: </strong>
                                        <br />
                                        <strong>Motto: </strong>
                                        <br />
                                        <br />
                                        <br />
                                    </td>
                                    <td valign="top" align="left">
                                        <h1 class="nadpish1" style="visibility: hidden">Vedení tımu
                                        </h1>
                                        21 let<br />
                                        72 kg / 174 cm<br />
                                        Beroun<br />
                                        13 let<br />
                                        Tempaø<br />
                                        Posilovna, bìh, bìecké lyování<br />
                                        Univerzita Karlova - právnická fakulta<br />
                                        Student<br />
                                        Chybí.<br />
                                        <br />
                                        <br />
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </li> 
                    <li>
                        <div class="clanek">
                            <table>
                                <tr>
                                    <td valign="top">
                                        <br />
                                        <a href="images/Foto/NoImage.jpg" title="Jiøí Virgl">
                                            <img src="images/Foto/NoImage.jpg" alt="Jiøí Virgl" border="0" /></a>
                                    </td>
                                    <td>
                                        <div style="width: 10px">
                                        </div>
                                    </td>
                                    <td valign="top" align="left">
                                        <h1 class="nadpish1">Jiøí Virgl
                                        </h1>
                                        <strong>Vìk: </strong>
                                        <br />
                                        <strong>Váha / vıška: </strong>
                                        <br />
                                        <strong>Bydlištì: </strong>
                                        <br />
                                        <strong>Zaèátek cyklistické kariéry: </strong>
                                        <br />
                                        <strong>Typ závodníka: </strong>
                                        <br />
                                        <strong>Ostatní oblíbené sporty: </strong>
                                        <br />
                                        <strong>Vzdìlání: </strong>
                                        <br />
                                        <strong>Zamìstnání: </strong>
                                        <br />
                                        <strong>Motto: </strong>
                                        <br />
                                        <br />
                                        <br />
                                    </td>
                                    <td valign="top" align="left">
                                        <h1 class="nadpish1" style="visibility: hidden">Vedení tımu
                                        </h1>
                                        18 let<br />
                                        65 kg / 176 cm<br />
                                        Budkov (okr. Tøebíè)<br />
                                        16 let<br />
                                        Vrchaø<br />
                                        Posilovna, bìh, plavání<br />
                                        Støední ekonomická škola<br />
                                        Student<br />
                                        Chybí.<br />
                                        <br />
                                        <br />
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </li>                                    
                    <li>
                        <div class="clanek" style="padding-top: 15px; text-align: center; font-weight: bold;
                            font-size: small;">
                            Závodníci kategorie JUNIOR
                        </div>
                    </li>                           
                    <li>
                        <div class="clanek" style="padding-top: 15px; text-align: center; font-weight: bold;
                            font-size: small;">
                            Závodníci kategorie KADET
                        </div>
                    </li>   
                    <li>
                        <div class="clanek">
                            <table>
                                <tr>
                                    <td valign="top">
                                        <br />
                                        <a href="images/Foto/NoImage.jpg" title="Dominik Molák">
                                            <img src="images/Foto/NoImage.jpg" alt="Dominik Molák" border="0" /></a>
                                    </td>
                                    <td>
                                        <div style="width: 10px">
                                        </div>
                                    </td>
                                    <td valign="top" align="left">
                                        <h1 class="nadpish1">Dominik Molák
                                        </h1>
                                        <strong>Vìk: </strong>
                                        <br />
                                        <strong>Váha / vıška: </strong>
                                        <br />
                                        <strong>Bydlištì: </strong>
                                        <br />
                                        <strong>Zaèátek cyklistické kariéry: </strong>
                                        <br />
                                        <strong>Typ závodníka: </strong>
                                        <br />
                                        <strong>Ostatní oblíbené sporty: </strong>
                                        <br />
                                        <strong>Vzdìlání: </strong>
                                        <br />
                                        <strong>Zamìstnání: </strong>
                                        <br />
                                        <strong>Motto: </strong>
                                        <br />
                                        <br />
                                        <br />
                                    </td>
                                    <td valign="top" align="left">
                                        <h1 class="nadpish1" style="visibility: hidden">Závodník
                                        </h1>
                                        15 let<br />
                                        Chybí.<br />
                                        Okøešice (okr. Tøebíè)<br />
                                        14 let<br />
                                        Vrchaø<br />
                                        Chybí.<br />
                                        Základní škola<br />
                                        Student<br />
                                        Chybí.<br />
                                        <br />
                                        <br />
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </li>                                
                    <li>
                        <div class="clanek" style="padding-top: 15px; text-align: center; font-weight: bold;
                            font-size: small;">
                            Závodníci kategorie STARŠÍ ÁK
                        </div>
                    </li>   
                    <li>
                        <div class="clanek">
                            <table>
                                <tr>
                                    <td valign="top">
                                        <br />
                                        <a href="images/Foto/NoImage.jpg" title="Štìpán Širokı">
                                            <img src="images/Foto/NoImage.jpg" alt="Štìpán Širokı" border="0" /></a>
                                    </td>
                                    <td>
                                        <div style="width: 10px">
                                        </div>
                                    </td>
                                    <td valign="top" align="left">
                                        <h1 class="nadpish1">Štìpán Širokı
                                        </h1>
                                        <strong>Vìk: </strong>
                                        <br />
                                        <strong>Váha / vıška: </strong>
                                        <br />
                                        <strong>Bydlištì: </strong>
                                        <br />
                                        <strong>Zaèátek cyklistické kariéry: </strong>
                                        <br />
                                        <strong>Typ závodníka: </strong>
                                        <br />
                                        <strong>Ostatní oblíbené sporty: </strong>
                                        <br />
                                        <strong>Vzdìlání: </strong>
                                        <br />
                                        <strong>Zamìstnání: </strong>
                                        <br />
                                        <strong>Motto: </strong>
                                        <br />
                                        <br />
                                        <br />
                                    </td>
                                    <td valign="top" align="left"><h1 class="nadpish1" style="visibility: hidden">Závodník
                                        </h1>
                                        15 let<br />
                                        Chybí.<br />
                                        Kralice (okr. Tøebíè)<br />
                                        14 let<br />
                                        Univerzál.<br />
                                        Chybí.<br />
                                        Základní škola<br />
                                        Student<br />
                                        Chybí.<br />
                                        <br />
                                        <br />
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </li>  
                    <li>     
                      <div class="clanek" style="padding-top: 15px; text-align: center; font-weight: bold;
                            font-size: small;">    
                        Historie tımu Vysoèina Cycling
                      </div>   
                    </li> 
                    <li>
                        <div style="padding-top: 15px; text-align: center; font-weight: bold; font-size: medium; padding-bottom: 15px;">
                            Tım Vysoèina Cycling 2013
                        </div>
                    </li>
                    <li>
                        <div class="clanek" style="padding-top: 15px; text-align: center; font-weight: bold; font-size: small;">
                            Tımová karta
                        </div>
                    </li>
                    <li>
                        <div class="clanek">
                            <br />
                            <a href="images/Foto/TymKartaVysocinaCycling_4-2013.jpg" title="Tım Vysoèina Cycling 2013">
                                <img src="images/Foto/TymKartaVysocinaCycling_4-2013_900x600.jpg" alt="Tım Vysoèina Cycling 2013"
                                    border="0" style="padding: 13px" /></a>
                        </div>
                    </li>      
                    <li>
                        <div class="clanek" style="padding-top: 15px; text-align: center; font-weight: bold;
                            font-size: small;">
                            Závodníci kategorie ELITE
                        </div>
                    </li>
                    <li>
                        <div class="clanek">
                            <table>
                                <tr>
                                    <td valign="top">
                                        <br />
                                        <a href="images/Foto/JS_web.jpg" title="Jaroslav Sláma">
                                            <img src="images/Foto/thumb_JS_web.jpg" alt="Jaroslav Sláma" border="0" /></a>
                                    </td>
                                    <td>
                                        <div style="width: 10px">
                                        </div>
                                    </td>
                                    <td valign="top" align="left">
                                        <h1 class="nadpish1">
                                            Jaroslav Sláma
                                        </h1>
                                        <strong>Vìk: </strong>
                                        <br />
                                        <strong>Váha / vıška: </strong>
                                        <br />
                                        <strong>Bydlištì: </strong>
                                        <br />
                                        <strong>Zaèátek cyklistické kariéry: </strong>
                                        <br />
                                        <strong>Typ závodníka: </strong>
                                        <br />
                                        <strong>Ostatní oblíbené sporty: </strong>
                                        <br />
                                        <strong>Vzdìlání: </strong>
                                        <br />
                                        <strong>Zamìstnání: </strong>
                                        <br />
                                        <strong>Motto: </strong>
                                        <br />
                                        <br />
                                        <br />
                                    </td>
                                    <td valign="top" align="left">
                                        <h1 class="nadpish1" style="visibility: hidden">
                                            èlen tımu
                                        </h1>
                                        22 let<br />
                                        76 kg / 186 cm<br />
                                        Køianov (okr. ïár nad Sázavou)<br />
                                        19 let<br />
                                        Univerzál<br />
                                        Bìecké lyování<br />
                                        Gymnázium Vincence Makovského se sportovními tøídami v Novém Mìstì na Moravì<br />
                                        Student<br />
                                        Kdy u nemùeš, tak mùeš ještì 3krát. <br />
                                        <br />
                                        <br />
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </li>
                    <li>
                        <div class="clanek">
                            <table>
                                <tr>
                                    <td valign="top">
                                        <br />
                                        <a href="images/Foto/TP_web.jpg" title="Tomáš Poslušnı">
                                            <img src="images/Foto/thumb_TP_web.jpg" alt="Tomáš Poslušnı" border="0" /></a>
                                    </td>
                                    <td>
                                        <div style="width: 10px">
                                        </div>
                                    </td>
                                    <td valign="top" align="left">
                                        <h1 class="nadpish1">
                                            Tomáš Poslušnı
                                        </h1>
                                        <strong>Vìk: </strong>
                                        <br />
                                        <strong>Váha / vıška: </strong>
                                        <br />
                                        <strong>Bydlištì: </strong>
                                        <br />
                                        <strong>Zaèátek cyklistické kariéry: </strong>
                                        <br />
                                        <strong>Typ závodníka: </strong>
                                        <br />
                                        <strong>Ostatní oblíbené sporty: </strong>
                                        <br />
                                        <strong>Vzdìlání: </strong>
                                        <br />
                                        <strong>Zamìstnání: </strong>
                                        <br />
                                        <strong>Motto: </strong>
                                        <br />
                                        <br />
                                        <br />
                                    </td>
                                    <td valign="top" align="left">
                                        <h1 class="nadpish1" style="visibility: hidden">
                                            èlen tımu
                                        </h1>
                                        23 let<br />
                                        76 kg / 193 cm<br />
                                        Horní Cerekev (okr. Pelhøimov)<br />
                                        18 let<br />
                                        Univerzál / vrchaø<br />
                                        Bìecké lyování, stolní tenis<br />
                                        SŠ Pelhøimov<br />
                                        Truhláø - vıroba nábytku<br />
                                        Všeho zkoušej ale jen dobrého se pøidruj.<br />
                                        <br />
                                        <br />
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </li>
                    <li>
                        <div class="clanek">
                            <table>
                                <tr>
                                    <td valign="top">
                                        <br />
                                        <a href="images/Foto/MC_web.jpg" title="Martin Èervenka">
                                            <img src="images/Foto/thumb_MC_web.jpg" alt="Martin Èervenka" border="0" /></a>
                                    </td>
                                    <td>
                                        <div style="width: 10px">
                                        </div>
                                    </td>
                                    <td valign="top" align="left">
                                        <h1 class="nadpish1">Martin Èervenka
                                        </h1>
                                        <strong>Vìk: </strong>
                                        <br />
                                        <strong>Váha / vıška: </strong>
                                        <br />
                                        <strong>Bydlištì: </strong>
                                        <br />
                                        <strong>Zaèátek cyklistické kariéry: </strong>
                                        <br />
                                        <strong>Typ závodníka: </strong>
                                        <br />
                                        <strong>Ostatní oblíbené sporty: </strong>
                                        <br />
                                        <strong>Vzdìlání: </strong>
                                        <br />
                                        <strong>Zamìstnání: </strong>
                                        <br />
                                        <strong>Motto: </strong>
                                        <br />
                                        <br />
                                        <br />
                                    </td>
                                    <td valign="top" align="left">
                                        <h1 class="nadpish1" style="visibility: hidden">èlen tımu
                                        </h1>
                                        29 let<br />
                                        70 kg / 185 cm<br />
                                        Pole u Blatné (okr. Strakonice)<br />
                                        15 let<br />
                                        Vrchaø<br />
                                        Badminton, tanec, bìh<br />
                                        ZÈU v Plzni, katedra konstruování energetickıch strojù a zaøízení<br />
                                        MPOWER Engineering, obchodní zástupce a projektovı manaer<br />
                                        Nebát se a nekrást.
                                        <br />
                                        <br />
                                        <br />
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </li> 
                    <li>
                        <div class="clanek">
                            <table>
                                <tr>
                                    <td valign="top">
                                        <br />
                                        <a href="images/Foto/NoImage.jpg" title="Vojtìch Stránskı">
                                            <img src="images/Foto/NoImage.jpg" alt="Vojtìch Stránskı" border="0" /></a>
                                    </td>
                                    <td>
                                        <div style="width: 10px">
                                        </div>
                                    </td>
                                    <td valign="top" align="left">
                                        <h1 class="nadpish1">
                                            Vojtìch Stránskı
                                        </h1>
                                        <strong>Vìk: </strong>
                                        <br />
                                        <strong>Váha / vıška: </strong>
                                        <br />
                                        <strong>Bydlištì: </strong>
                                        <br />
                                        <strong>Zaèátek cyklistické kariéry: </strong>
                                        <br />
                                        <strong>Typ závodníka: </strong>
                                        <br />
                                        <strong>Ostatní oblíbené sporty: </strong>
                                        <br />
                                        <strong>Vzdìlání: </strong>
                                        <br />
                                        <strong>Zamìstnání: </strong>
                                        <br />
                                        <strong>Motto: </strong>
                                        <br />
                                        <br />
                                        <br />
                                    </td>
                                    <td valign="top" align="left">
                                        <h1 class="nadpish1" style="visibility: hidden">
                                            èlen tımu
                                        </h1>
                                        24 let<br />
                                        76 kg / 189 cm<br />
                                        Kralupy nad Vltavou<br />
                                        14 let<br />
                                        Univerzál<br />
                                        MTB<br />
                                        <br />
                                        Student<br />
                                        Chybí<br />
                                        <br />
                                        <br />
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </li>
                    <li>
                        <div class="clanek">
                            <table>
                                <tr>
                                    <td valign="top">
                                        <br />
                                        <a href="images/Foto/OP_web.jpg" title="Ondøej Prchal">
                                            <img src="images/Foto/thumb_OP_web.jpg" alt="Ondøej Prchal" border="0" /></a>
                                    </td>
                                    <td>
                                        <div style="width: 10px">
                                        </div>
                                    </td>
                                    <td valign="top" align="left">
                                        <h1 class="nadpish1">Ondøej Prchal
                                        </h1>
                                        <strong>Vìk: </strong>
                                        <br />
                                        <strong>Váha / vıška: </strong>
                                        <br />
                                        <strong>Bydlištì: </strong>
                                        <br />
                                        <strong>Zaèátek cyklistické kariéry: </strong>
                                        <br />
                                        <strong>Typ závodníka: </strong>
                                        <br />
                                        <strong>Ostatní oblíbené sporty: </strong>
                                        <br />
                                        <strong>Vzdìlání: </strong>
                                        <br />
                                        <strong>Zamìstnání: </strong>
                                        <br />
                                        <strong>Motto: </strong>
                                        <br />
                                        <br />
                                        <br />
                                    </td>
                                    <td valign="top" align="left">
                                        <h1 class="nadpish1" style="visibility: hidden">èlen tımu
                                        </h1>
                                        25 let<br />
                                        78 kg / 190 cm<br />
                                        Jihlava<br />
                                        15 let<br />
                                        Univerzál, sprinter<br />
                                        Plavání, bìecké lyování<br />
                                        VUT Brno<br />
                                        Student<br />
                                        Kdy nemùeš, poznáš a ve schlussbusu.
                                        <br />
                                        <br />
                                        <br />
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </li>
                    <li>
                        <div class="clanek">
                            <table>
                                <tr>
                                    <td valign="top">
                                        <br />
                                        <a href="images/Foto/LF_web.jpg" title="Lukáš Frıba">
                                            <img src="images/Foto/thumb_LF_web.jpg" alt="Lukáš Frıba" border="0" /></a>
                                    </td>
                                    <td>
                                        <div style="width: 10px">
                                        </div>
                                    </td>
                                    <td valign="top" align="left">
                                        <h1 class="nadpish1">Lukáš Frıba
                                        </h1>
                                        <strong>Vìk: </strong>
                                        <br />
                                        <strong>Váha / vıška: </strong>
                                        <br />
                                        <strong>Bydlištì: </strong>
                                        <br />
                                        <strong>Zaèátek cyklistické kariéry: </strong>
                                        <br />
                                        <strong>Typ závodníka: </strong>
                                        <br />
                                        <strong>Ostatní oblíbené sporty: </strong>
                                        <br />
                                        <strong>Vzdìlání: </strong>
                                        <br />
                                        <strong>Zamìstnání: </strong>
                                        <br />
                                        <strong>Motto: </strong>
                                        <br />
                                        <br />
                                        <br />
                                    </td>
                                    <td valign="top" align="left">
                                        <h1 class="nadpish1" style="visibility: hidden">èlen tımu
                                        </h1>
                                        30 let<br />
                                        80 kg / 187 cm<br />
                                        Tøebíè<br />
                                        8 let - BMX<br />
                                        Tempaø<br />
                                        Rally<br />
                                        Hotelová škola Tøebíè<br />
                                        Ponokáø<br />
                                        Lepší shoøet ne vyhasnout.
                                        <br />
                                        <br />
                                        <br />
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </li>
                    <li>
                        <div class="clanek">
                            <table>
                                <tr>
                                    <td valign="top">
                                        <br />
                                        <a href="images/Foto/FH_web.jpg" title="Filip Hakl">
                                            <img src="images/Foto/thumb_FH_web.jpg" alt="Filip Hakl" border="0" /></a>
                                    </td>
                                    <td>
                                        <div style="width: 10px">
                                        </div>
                                    </td>
                                    <td valign="top" align="left">
                                        <h1 class="nadpish1">Filip Hakl
                                        </h1>
                                        <strong>Vìk: </strong>
                                        <br />
                                        <strong>Váha / vıška: </strong>
                                        <br />
                                        <strong>Bydlištì: </strong>
                                        <br />
                                        <strong>Zaèátek cyklistické kariéry: </strong>
                                        <br />
                                        <strong>Typ závodníka: </strong>
                                        <br />
                                        <strong>Ostatní oblíbené sporty: </strong>
                                        <br />
                                        <strong>Vzdìlání: </strong>
                                        <br />
                                        <strong>Zamìstnání: </strong>
                                        <br />
                                        <strong>Motto: </strong>
                                        <br />
                                        <br />
                                        <br />
                                    </td>
                                    <td valign="top" align="left">
                                        <h1 class="nadpish1" style="visibility: hidden">èlen tımu
                                        </h1>
                                        19 let<br />
                                        68 kg / 182 cm<br />
                                        Heraltice (okr. Tøebíè)<br />
                                        18 let<br />
                                        Univerzál<br />
                                        Fotbal, bìecké lyování<br />
                                        Gymnázium Tøebíè<br />
                                        Student<br />
                                        Jak chceš bıt nejlepší, kdy jsi dnes nic nedìlal !?
                                        <br />
                                        <br />
                                        <br />
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </li>
                    <li>
                        <div class="clanek">
                            <table>
                                <tr>
                                    <td valign="top">
                                        <br />
                                        <a href="images/Foto/OS_web.jpg" title="Ondøej Svobodník">
                                            <img src="images/Foto/thumb_OS_web.jpg" alt="Ondøej Svobodník" border="0" /></a>
                                    </td>
                                    <td>
                                        <div style="width: 10px">
                                        </div>
                                    </td>
                                    <td valign="top" align="left">
                                        <h1 class="nadpish1">Ondøej Svobodník
                                        </h1>
                                        <strong>Vìk: </strong>
                                        <br />
                                        <strong>Váha / vıška: </strong>
                                        <br />
                                        <strong>Bydlištì: </strong>
                                        <br />
                                        <strong>Zaèátek cyklistické kariéry: </strong>
                                        <br />
                                        <strong>Typ závodníka: </strong>
                                        <br />
                                        <strong>Ostatní oblíbené sporty: </strong>
                                        <br />
                                        <strong>Vzdìlání: </strong>
                                        <br />
                                        <strong>Zamìstnání: </strong>
                                        <br />
                                        <strong>Motto: </strong>
                                        <br />
                                        <br />
                                        <br />
                                    </td>
                                    <td valign="top" align="left">
                                        <h1 class="nadpish1" style="visibility: hidden">èlen tımu
                                        </h1>
                                        20 let<br />
                                        70 kg / 181 cm<br />
                                        Jihlava<br />
                                        19 let<br />
                                        Univerzál<br />
                                        Hokej, tenis<br />
                                        Vysoká škola<br />
                                        Student<br />
                                        Nikdy se nevzdávej  !
                                        <br />
                                        <br />
                                        <br />
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </li>
                    <li>
                        <div class="clanek" style="padding-top: 15px; text-align: center; font-weight: bold;
                            font-size: small;">
                            Závodníci kategorie JUNIOR
                        </div>
                    </li>
                    <li>
                        <div class="clanek">
                            <table>
                                <tr>
                                    <td valign="top">
                                        <br />
                                        <a href="images/Foto/NoImage.jpg" title="Vít Musil">
                                            <img src="images/Foto/NoImage.jpg" alt="Vít Musil" border="0" /></a>
                                    </td>
                                    <td>
                                        <div style="width: 10px">
                                        </div>
                                    </td>
                                    <td valign="top" align="left">
                                        <h1 class="nadpish1">Vít Musil
                                        </h1>
                                        <strong>Vìk: </strong>
                                        <br />
                                        <strong>Váha / vıška: </strong>
                                        <br />
                                        <strong>Bydlištì: </strong>
                                        <br />
                                        <strong>Zaèátek cyklistické kariéry: </strong>
                                        <br />
                                        <strong>Typ závodníka: </strong>
                                        <br />
                                        <strong>Ostatní oblíbené sporty: </strong>
                                        <br />
                                        <strong>Vzdìlání: </strong>
                                        <br />
                                        <strong>Zamìstnání: </strong>
                                        <br />
                                        <strong>Motto: </strong>
                                        <br />
                                        <br />
                                        <br />
                                    </td>
                                    <td valign="top" align="left">
                                        <h1 class="nadpish1" style="visibility: hidden">
                                        </h1>
                                        17 let<br />
                                        72 kg / 190 cm<br />
                                        Staøeè (okr. Tøebíè)<br />
                                        15 let<br />
                                        Vrchaø<br />
                                        Bìh, bìecké lyování<br />
                                        Gymnázium<br />
                                        Student<br />
                                        Chybí.<br />
                                        <br />
                                        <br />
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </li>
                    <li>
                        <div class="clanek" style="padding-top: 15px; text-align: center; font-weight: bold;
                            font-size: small;">
                            Závodníci kategorie KADET
                        </div>
                    </li>   
                    <li>
                        <div class="clanek">
                            <table>
                                <tr>
                                    <td valign="top">
                                        <br />
                                        <a href="images/Foto/NoImage.jpg" title="Vojtìch Øepa">
                                            <img src="images/Foto/NoImage.jpg" alt="Vojtìch Øepa" border="0" /></a>
                                    </td>
                                    <td>
                                        <div style="width: 10px">
                                        </div>
                                    </td>
                                    <td valign="top" align="left">
                                        <h1 class="nadpish1">Vojtìch Øepa
                                        </h1>
                                        <strong>Vìk: </strong>
                                        <br />
                                        <strong>Váha / vıška: </strong>
                                        <br />
                                        <strong>Bydlištì: </strong>
                                        <br />
                                        <strong>Zaèátek cyklistické kariéry: </strong>
                                        <br />
                                        <strong>Typ závodníka: </strong>
                                        <br />
                                        <strong>Ostatní oblíbené sporty: </strong>
                                        <br />
                                        <strong>Vzdìlání: </strong>
                                        <br />
                                        <strong>Zamìstnání: </strong>
                                        <br />
                                        <strong>Motto: </strong>
                                        <br />
                                        <br />
                                        <br />
                                    </td>
                                    <td valign="top" align="left">
                                        <h1 class="nadpish1" style="visibility: hidden">Vedení tımu
                                        </h1>
                                        15 let<br />
                                        73 kg / 185 cm<br />
                                        Velká Bíteš (okr. Tøebíè)<br />
                                        14 let<br />
                                        Tempaø<br />
                                        Hokej<br />
                                        Základní škola<br />
                                        Student<br />
                                        Chybí.<br />
                                        <br />
                                        <br />
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </li>
                    <li>
                        <div class="clanek">
                            <table>
                                <tr>
                                    <td valign="top">
                                        <br />
                                        <a href="images/Foto/KK_web.jpg" title="Karel Klobas">
                                            <img src="images/Foto/thumb_KK_web.jpg" alt="Karel Klobas" border="0" /></a>
                                    </td>
                                    <td>
                                        <div style="width: 10px">
                                        </div>
                                    </td>
                                    <td valign="top" align="left">
                                        <h1 class="nadpish1">Karel Klobas
                                        </h1>
                                        <strong>Vìk: </strong>
                                        <br />
                                        <strong>Váha / vıška: </strong>
                                        <br />
                                        <strong>Bydlištì: </strong>
                                        <br />
                                        <strong>Zaèátek cyklistické kariéry: </strong>
                                        <br />
                                        <strong>Typ závodníka: </strong>
                                        <br />
                                        <strong>Ostatní oblíbené sporty: </strong>
                                        <br />
                                        <strong>Vzdìlání: </strong>
                                        <br />
                                        <strong>Zamìstnání: </strong>
                                        <br />
                                        <strong>Motto: </strong>
                                        <br />
                                        <br />
                                        <br />
                                    </td>
                                    <td valign="top" align="left">
                                        <h1 class="nadpish1" style="visibility: hidden">èlen tımu
                                        </h1>
                                        15 let<br />
                                        67 kg / 180 cm<br />
                                        Heraltice (okr. Tøebíè)<br />
                                        14 let<br />
                                        Sprinter<br />
                                        Basketbal, florbal<br />
                                        Základní škola Okøíšky<br />
                                        Student<br />
                                        Kdy si myslím, e u nemùeš, mùeš ještì jednou tolik.
                                        <br />
                                        <br />
                                        <br />
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </li>
                    <li>
                        <div class="clanek">
                            <table>
                                <tr>
                                    <td valign="top">
                                        <br />
                                        <a href="images/Foto/LeTr_web.jpg" title="Leoš Trojan">
                                            <img src="images/Foto/thumb_LeTr_web.jpg" alt="Leoš Trojan" border="0" /></a>
                                    </td>
                                    <td>
                                        <div style="width: 10px">
                                        </div>
                                    </td>
                                    <td valign="top" align="left">
                                        <h1 class="nadpish1">Leoš Trojan
                                        </h1>
                                        <strong>Vìk: </strong>
                                        <br />
                                        <strong>Váha / vıška: </strong>
                                        <br />
                                        <strong>Bydlištì: </strong>
                                        <br />
                                        <strong>Zaèátek cyklistické kariéry: </strong>
                                        <br />
                                        <strong>Typ závodníka: </strong>
                                        <br />
                                        <strong>Ostatní oblíbené sporty: </strong>
                                        <br />
                                        <strong>Vzdìlání: </strong>
                                        <br />
                                        <strong>Zamìstnání: </strong>
                                        <br />
                                        <strong>Motto: </strong>
                                        <br />
                                        <br />
                                        <br />
                                    </td>
                                    <td valign="top" align="left">
                                        <h1 class="nadpish1" style="visibility: hidden">èlen tımu
                                        </h1>
                                        15 let<br />
                                        65 kg / 182 cm<br />
                                        Okøíšky (okr. Tøebíè)<br />
                                        14 let<br />
                                        Tempaø<br />
                                        Florbal<br />
                                        Základní škola Okøíšky<br />
                                        Student<br />
                                        Neper se, ivot Ti dá do drky sám!
                                        <br />
                                        <br />
                                        <br />
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </li>
                    <li>
                        <div class="clanek" style="padding-top: 15px; text-align: center; font-weight: bold;
                            font-size: small;">
                            Hostující závodníci kategorie ELITE
                        </div>
                    </li>
                    <li>
                        <div class="clanek">
                            <table>
                                <tr>
                                    <td valign="top">
                                        <br />
                                        <a href="images/Foto/MH_web.jpg" title="Martin Hunal">
                                            <img src="images/Foto/thumb_MH_web.jpg" alt="Martin Hunal" border="0" /></a>
                                    </td>
                                    <td>
                                        <div style="width: 10px">
                                        </div>
                                    </td>
                                    <td valign="top" align="left">
                                        <h1 class="nadpish1">Martin Hunal
                                        </h1>
                                        <strong>Vìk: </strong>
                                        <br />
                                        <strong>Váha / vıška: </strong>
                                        <br />
                                        <strong>Bydlištì: </strong>
                                        <br />
                                        <strong>Zaèátek cyklistické kariéry: </strong>
                                        <br />
                                        <strong>Typ závodníka: </strong>
                                        <br />
                                        <strong>Ostatní oblíbené sporty: </strong>
                                        <br />
                                        <strong>Vzdìlání: </strong>
                                        <br />
                                        <strong>Zamìstnání: </strong>
                                        <br />
                                        <strong>Motto: </strong>
                                        <br />
                                        <br />
                                        <br />
                                    </td>
                                    <td valign="top" align="left">
                                        <h1 class="nadpish1" style="visibility: hidden">hostování v tımu
                                        </h1>
                                        23 let<br />
                                        64 kg / 179 cm<br />
                                        Rynárec (okr. Pelhøimov)<br />
                                        17 let<br />
                                        Univerzál / vrchaø<br />
                                        Bìecké lyování, snowboard<br />
                                        Støední prùmyslová škola stavební Tábor<br />
                                        Profi cyklista - AC Sparta Praha, student<br />
                                        Kdy nemùeš, tak si nastup.
                                        <br />
                                        <br />
                                        <br />
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </li>
                    <li>
                        <div class="clanek">
                            <table>
                                <tr>
                                    <td valign="top">
                                        <br />
                                        <a href="images/Foto/LT_web.jpg" title="Lukáš Tomášek">
                                            <img src="images/Foto/thumb_LT_web.jpg" alt="Lukáš Tomášek" border="0" /></a>
                                    </td>
                                    <td>
                                        <div style="width: 10px">
                                        </div>
                                    </td>
                                    <td valign="top" align="left">
                                        <h1 class="nadpish1">Lukáš Tomášek
                                        </h1>
                                        <strong>Vìk: </strong>
                                        <br />
                                        <strong>Váha / vıška: </strong>
                                        <br />
                                        <strong>Bydlištì: </strong>
                                        <br />
                                        <strong>Zaèátek cyklistické kariéry: </strong>
                                        <br />
                                        <strong>Typ závodníka: </strong>
                                        <br />
                                        <strong>Ostatní oblíbené sporty: </strong>
                                        <br />
                                        <strong>Vzdìlání: </strong>
                                        <br />
                                        <strong>Zamìstnání: </strong>
                                        <br />
                                        <strong>Motto: </strong>
                                        <br />
                                        <br />
                                        <br />
                                    </td>
                                    <td valign="top" align="left">
                                        <h1 class="nadpish1" style="visibility: hidden">èlen tımu
                                        </h1>
                                        25 let<br />
                                        69 kg / 181 cm<br />
                                        Sulkovec (okr. ïár nad Sázavou)<br />
                                        23 let<br />
                                        Univerzál / vrchaø<br />
                                        Plavání, bìh<br />
                                        VUT Brno<br />
                                        Student<br />
                                        No pain, No gain.
                                        <br />
                                        <br />
                                        <br />
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </li>
                </ul>
            </div>
            <div id="tab-21">
                <div class="userLoggedOff">
                    <div id="RegistraceClenstvi" class="clanek">
                        <h2>
                            Staòte se èlenem tımu Vysoèina cycling</h2>
                        Èlenem našeho tımu se mùe stát úplnì kadı, kdo má rád cyklistiku a Vysoèinu. Staèí
                        jen vyplnit jednoduchı dotazník a zaregistrovat se. Mùete si vybrat ze tøí typù
                        èlenství (více se dozvíte v sekci "Info"). Vıbìr je pouze na Vás. Èlenství v našem
                        tımu skıtá rùzné vıhody. Je moné získat i zajímavé slevy na naše poradenské sluby,
                        tréninkové kempy, obleèení, cyklistickı materiál a mnoho dalšího, podle toho, jak
                        se budeme rozšiøovat. V pøípadì zájmu je monost zprostøedkovat zajímavé úrazové
                        pojištìní vztahující se i na soutìní aktivity.
                        <h4>
                            Registrace èlenství</h4>
                        <div>
                            <table>
                                <tr>
                                    <td style="width: 110px">
                                        Uivatelské jméno:
                                    </td>
                                    <td style="width: 200px">
                                        <asp:TextBox ID="TextBoxUzivJmeno" runat="server" TextMode="SingleLine" style="width:140px"></asp:TextBox>
                                    </td>
                                    <td style="width: 110px">
                                        Email:
                                    </td>
                                    <td style="width: 200px">
                                        <asp:TextBox ID="TextBoxEmail" runat="server" TextMode="SingleLine" style="width:140px"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 110px">
                                        Heslo <small><i>(min. 7 znakù)</i></small>:
                                    </td>
                                    <td style="width: 200px">
                                        <asp:TextBox ID="TextBoxHeslo" runat="server" TextMode="Password" style="width:140px"></asp:TextBox>
                                    </td>
                                    <td style="width: 110px">
                                        Ovìøení hesla:
                                    </td>
                                    <td>
                                        <asp:TextBox ID="TextBoxKontrolaHesla" runat="server" TextMode="Password" style="width:140px"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 110px">
                                        Jméno:
                                    </td>
                                    <td style="width: 200px">
                                        <asp:TextBox ID="TextBoxJmeno" runat="server" TextMode="SingleLine" style="width:140px"></asp:TextBox>
                                    </td>
                                    <td style="width: 110px">
                                        Pøíjmení:
                                    </td>
                                    <td>
                                        <asp:TextBox ID="TextBoxPrijmeni" runat="server" TextMode="SingleLine" style="width:140px"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 110px">
                                        Lokalita:
                                    </td>
                                    <td style="width: 200px">
                                        <asp:TextBox ID="TextBoxObec" runat="server" TextMode="SingleLine" style="width:140px"></asp:TextBox>
                                    </td>
                                    <td style="width: 110px">
                                        Kraj:
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="DropDownListKraj" runat="server" style="width:145px">
                                            <asp:ListItem>Vysoèina</asp:ListItem>
                                            <asp:ListItem>Jihomoravskı</asp:ListItem>
                                            <asp:ListItem>Jihoèeskı</asp:ListItem>
                                            <asp:ListItem>Karlovarskı</asp:ListItem>
                                            <asp:ListItem>Královéhradeckı</asp:ListItem>
                                            <asp:ListItem>Libereckı</asp:ListItem>
                                            <asp:ListItem>Moravskoslezskı</asp:ListItem>
                                            <asp:ListItem>Olomouckı</asp:ListItem>
                                            <asp:ListItem>Pardubickı</asp:ListItem>
                                            <asp:ListItem>Plzeòskı</asp:ListItem>
                                            <asp:ListItem>Praha</asp:ListItem>
                                            <asp:ListItem>Støedoèeskı</asp:ListItem>
                                            <asp:ListItem>Ústeckı</asp:ListItem>
                                            <asp:ListItem>Zlínskı</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 110px">
                                        Datum narození:
                                    </td>
                                    <td style="width: 200px">
                                        <asp:TextBox ID="TextBoxNarozeni" runat="server" TextMode="SingleLine" style="width:140px"></asp:TextBox>
                                    </td>
                                    <td style="width: 110px">
                                        Úroveò:
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="DropDownListUroven" runat="server" style="width:145px">
                                            <asp:ListItem>Rekreaèní jezdec</asp:ListItem>
                                            <asp:ListItem>Hobby jezdec</asp:ListItem>
                                            <asp:ListItem>Aktivní závodník</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 110px">
                                        Chci bıt:
                                    </td>
                                    <td style="width: 200px">
                                        <asp:DropDownList ID="DropDownListClen" runat="server" style="width:145px">
                                            <asp:ListItem>Pøíznivec tımu</asp:ListItem>
                                            <asp:ListItem>Pasivní èlen</asp:ListItem>
                                            <asp:ListItem>Aktivní èlen</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                    <td style="width: 110px">
                                        Preferuji:
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="DropDownListDisciplina" runat="server" style="width:145px">
                                            <asp:ListItem>Silnice</asp:ListItem>
                                            <asp:ListItem>Bike</asp:ListItem>
                                            <asp:ListItem>Cyklokros</asp:ListItem>
                                            <asp:ListItem>Dráha</asp:ListItem>
                                            <asp:ListItem>Jiná disciplína</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 110px">
                                        Poèasí pro:
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="DropDownListPocasi" runat="server" style="width:145px">
                                            <asp:ListItem>Daèice</asp:ListItem>
                                            <asp:ListItem>Havlíèkùv Brod</asp:ListItem>
                                            <asp:ListItem>Jihlava</asp:ListItem>
                                            <asp:ListItem>Kostelní Myslová</asp:ListItem>
                                            <asp:ListItem>Moravské Budìjovice</asp:ListItem>
                                            <asp:ListItem>Námìš</asp:ListItem>
                                            <asp:ListItem>Pøibyslav</asp:ListItem>
                                            <asp:ListItem>Telè</asp:ListItem>
                                            <asp:ListItem>Tøebíè</asp:ListItem>
                                            <asp:ListItem>Velké Meziøíèí</asp:ListItem>
                                            <asp:ListItem>ïár nad Sázavou</asp:ListItem>
                                            <asp:ListItem>Brno</asp:ListItem>
                                            <asp:ListItem>Èeské Budìjovice</asp:ListItem>
                                            <asp:ListItem>Hodonín</asp:ListItem>
                                            <asp:ListItem>Jindøichùv Hradec</asp:ListItem>
                                            <asp:ListItem>Karlovy Vary</asp:ListItem>
                                            <asp:ListItem>Liberec</asp:ListItem>
                                            <asp:ListItem>Olomouc</asp:ListItem>
                                            <asp:ListItem>Ostrava</asp:ListItem>
                                            <asp:ListItem>Pardubice</asp:ListItem>
                                            <asp:ListItem>Plzeò</asp:ListItem>
                                            <asp:ListItem>Praha</asp:ListItem>
                                            <asp:ListItem>Tábor</asp:ListItem>
                                            <asp:ListItem>Zlín</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                            </table>
                            <p>
                                &nbsp;</p>
                            <input type="button" id="buttonclenstvi" value="Registrovat se" />
                        </div>
                    </div>
                </div>
                <div class="userLoggedOn">
                    <div id="RegistrovanyClen" class="clanek">
                        <h2>
                            Èlen tımu Vysoèina cycling</h2>
                        Èlenství v našem tımu skıtá rùzné vıhody. Je moné získat i zajímavé slevy na naše
                        poradenské sluby, tréninkové kempy, obleèení, cyklistickı materiál a mnoho dalšího.
                        V pøípadì zájmu Vám mùeme zprostøedkovat úrazové pojištìní vztahující se i na soutìní
                        aktivity.
                        <h4>
                            Vaše registraèní údaje</h4>
                        <div>
                            <table>
                                <tr>
                                    <td style="width: 110px">
                                        Uivatelské jméno:
                                    </td>
                                    <td style="width: 200px">
                                        <asp:Label ID="LabelRUUserName" runat="server" Text="" Font-Size="10" Font-Bold="True"></asp:Label>
                                    </td>
                                    <td style="width: 110px">
                                        Email:
                                    </td>
                                    <td style="width: 200px">
                                        <asp:Label ID="LabelRUEmail" runat="server" Text="" Font-Size="10" Font-Bold="True"></asp:Label>
                                    </td>
                                </tr>
                                <tr style="height: 40px; vertical-align: top">
                                    <td style="width: 110px">
                                        Registrace:
                                    </td>
                                    <td style="width: 200px">
                                        <asp:Label ID="LabelRegistrace" runat="server" Text="" Font-Size="10" Font-Bold="True"></asp:Label>
                                    </td>
                                    <td style="width: 110px">
                                        Poslední pøihlášení:
                                    </td>
                                    <td>
                                        <asp:Label ID="LabelLastLogin" runat="server" Text="" Font-Size="10" Font-Bold="True"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 110px">
                                        Jméno:
                                    </td>
                                    <td style="width: 200px">
                                        <asp:Label ID="LabelRUJmeno" runat="server" Text="" Font-Size="10" Font-Bold="True"></asp:Label>
                                    </td>
                                    <td style="width: 110px">
                                        Pøíjmení:
                                    </td>
                                    <td>
                                        <asp:Label ID="LabelRUPrijmeni" runat="server" Text="" Font-Size="10" Font-Bold="True"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 110px">
                                        Lokalita:
                                    </td>
                                    <td style="width: 200px">
                                        <asp:Label ID="LabelRULokalita" runat="server" Text="" Font-Size="10" Font-Bold="True"></asp:Label>
                                    </td>
                                    <td style="width: 110px">
                                        Kraj:
                                    </td>
                                    <td>
                                        <asp:Label ID="LabelRUKraj" runat="server" Text="" Font-Size="10" Font-Bold="True"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 110px">
                                        Datum narození:
                                    </td>
                                    <td style="width: 200px">
                                        <asp:Label ID="LabelRUDatumNarozeni" runat="server" Text="" Font-Size="10" Font-Bold="True"></asp:Label>
                                    </td>
                                    <td style="width: 110px">
                                        Úroveò:
                                    </td>
                                    <td>
                                        <asp:Label ID="LabelRUUroven" runat="server" Text="" Font-Size="10" Font-Bold="True"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 110px">
                                        Typ èlenství:
                                    </td>
                                    <td style="width: 200px">
                                        <asp:Label ID="LabelRUClen" runat="server" Text="" Font-Size="10" Font-Bold="True"></asp:Label>
                                    </td>
                                    <td style="width: 110px">
                                        Preferuji:
                                    </td>
                                    <td>
                                        <asp:Label ID="LabelRUDisciplina" runat="server" Text="" Font-Size="10" Font-Bold="True"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 110px">
                                        Poèasí pro:
                                    </td>
                                    <td style="width: 200px">
                                        <asp:Label ID="LabelRUPocasi" runat="server" Text="" Font-Size="10" Font-Bold="True"></asp:Label>
                                    </td>
                                    <td style="width: 110px">
                                    </td>
                                    <td>
                                    </td>
                                </tr>
                            </table>
                            <p>
                                &nbsp;</p>
                            <input type="button" id="buttonZmenaHesla" value="Zmìnit heslo" />
                            <input type="button" id="buttonUpravitClenstvi" value="Upravit údaje" />
                            <input type="button" id="buttonZrusitClenstvi" value="Zrušit èlenství" />
                            <div style="height: 10px;">
                            </div>
                            <h2>
                                Umístìní v závodech</h2>
                            <div id="userRaces">
                            </div>
                            <div style="height: 20px;">
                            </div>
                            <input type="button" id="buttonPridatZavod" value="Pøidat závod" />
                            <input type="button" id="buttonSmazatZavod" value="Smazat závod" />
                        </div>
                    </div>
                </div>
            </div>
            <div id="tab-22">
                <div class="userLoggedOff">
                    <div class="clanek">
                        <h2>
                            Èlenové tımu
                        </h2>
                        <div id="table-aktivniclenove-jmena">
                        </div>
                        <div style="height: 5px;">
                        </div>
                        <div id="table-pasivniclenove-jmena">
                        </div>
                        <h2>
                            Pøíznivci tımu
                        </h2>
                        <div id="table-priznivci-jmena">
                        </div>
                    </div>
                </div>
                <div class="userLoggedOn">
                    <div class="clanek">
                        <h2>
                            Èlenové tımu
                        </h2>
                        <div id="table-aktivniclenove-data">
                        </div>
                        <div style="height: 5px;">
                        </div>
                        <div id="table-pasivniclenove-data">
                        </div>
                        <h2>
                            Pøíznivci tımu
                        </h2>
                        <div id="table-priznivci-data">
                        </div>
                    </div>
                </div>
            </div>
            <div id="tab-23" class="clasictext">
                <div class="userLoggedOff">
                    <div class="clanek">
                        <h2>
                            Pøihlašte se...
                        </h2>
                        K této sekci mají pøístup pouze pøihlášení èlenové tımu.
                    </div>
                </div>
                <div class="userLoggedOn">
                    <table>
                        <tr>
                            <td>
                                <ul class="paging10">
                                    <li>
                                        <div class="clanek">
                                            <h2>
                                                Slevy na sportovní produkty pro èleny tımu
                                            </h2>
                                            Chtìl bych upozornit všechny èleny na monost zajímavıch slev na sportovní produkty
                                            u partnerù tımu.
                                            <br />
                                            <br />
                                            Jedná se o tyto firmy:
                                            <br />
                                            <a href="http://www.twinsport.cz/" target="_blank" style="text-decoration: underline; cursor: pointer">
                                                TWINSPORT</a> - Na prodejnì v Tøebíèi prodáváme zboí renomovanıch znaèek jako jsou SPECIALIZED, 
                                            ELAN, SUPERIOR,SCOTT, FELT, GHOST, CITY BIKES aj.
                                            <br />
                                            <a href="http://www.s1w.cz/" target="_blank" style="text-decoration: underline; cursor: pointer">
                                                SPEEDweaponry</a> - nabízí TOP produkty pøevánì pro cyklisty (BMC, ZIPP, PowerTap,
                                            Compex, PowerBreathe, atd.)
                                            <br />
                                            <a href="http://www.moose.eu/cz/" target="_blank" style="text-decoration: underline;
                                                cursor: pointer">Moose</a> - nabízí kvalitní ponoky a pletené doplòky.
                                            <br />
                                            <br />
                                            V pøípadì zájmu se informujte na emailu Vysoèina cycling.
                                        </div>
                                    </li>
                                    <li>
                                        <div class="clanek">
                                            <h2>
                                                Tımovı dres
                                            </h2>
                                            Vyobrazení tımového dresu naleznete v záloce dresy. Doplní jej modré rukávky a
                                            modré nohavice. Barevné provedení je navreno v barvách Vysoèiny a charakterizují
                                            jej 3 základní barvy, modrá, zelená a bílá. Jednoduchı design by mìl bıt lehce 
                                            identifikovatelnı a s dostateènou plochou pro budoucí sponzory.
                                            <h3>
                                                Èásti tımového obleèení pro èleny</h3>
                                            <table>
                                                <tr style="font-weight: bold">
                                                    <td>
                                                        Název
                                                    </td>
                                                    <td>
                                                        Cena
                                                    </td>
                                                    <td>
                                                        Vırobce - model
                                                    </td>
                                                    <td>
                                                        Poznámka
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        Dres s krátkım rukávem
                                                    </td>
                                                    <td>
                                                        1340 Kè
                                                    </td>
                                                    <td>
                                                        Kalas - ELITE 03 | Spinn
                                                    </td>
                                                    <td>
                                                        podmínka registrace v tımu
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        Kraasy
                                                    </td>
                                                    <td>
                                                        1620 Kè
                                                    </td>
                                                    <td>
                                                        Kalas - T-Sport ELITE-OMEGA 14 | Lycra POWER / šle sí
                                                    </td>
                                                    <td>
                                                        podmínka registrace v tımu
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        Dres s dlouhım rukávem
                                                    </td>
                                                    <td>
                                                        1580 Kè
                                                    </td>
                                                    <td>
                                                        Kalas - RACE 02, PICOLLO Thermo
                                                    </td>
                                                    <td>
                                                        cena pro èlena tımu
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        Èapáky
                                                    </td>
                                                    <td>
                                                        1480 Kè
                                                    </td>
                                                    <td>
                                                        Kalas - ACTIVE 11, ROUBAIX / šle sí
                                                    </td>
                                                    <td>
                                                        cena pro èlena tımu
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        Vesta
                                                    </td>
                                                    <td>
                                                        1360 Kè
                                                    </td>
                                                    <td>
                                                        Kalas - RACE 01, GAMEX / sí
                                                    </td>
                                                    <td>
                                                        cena pro èlena tımu
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        Návleky na ruce
                                                    </td>
                                                    <td>
                                                        400 Kè
                                                    </td>
                                                    <td>
                                                        Kalas - ACTIVE 01, ROUBAIX
                                                    </td>
                                                    <td>
                                                        cena pro èlena tımu
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        Návleky na nohy
                                                    </td>
                                                    <td>
                                                        490 Kè
                                                    </td>
                                                    <td>
                                                        Kalas - ACTIVE 01, ROUBAIX
                                                    </td>
                                                    <td>
                                                        cena pro èlena tımu
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        Návleky na kolena
                                                    </td>
                                                    <td>
                                                        400 Kè
                                                    </td>
                                                    <td>
                                                        Kalas - ACTIVE 01, ROUBAIX
                                                    </td>
                                                    <td>
                                                        cena pro èlena tımu
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        Návleky na tretry
                                                    </td>
                                                    <td>
                                                        200 Kè
                                                    </td>
                                                    <td>
                                                        Kalas - LYCRA
                                                    </td>
                                                    <td>
                                                        cena pro èlena tımu
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        Rukavièky letní
                                                    </td>
                                                    <td>
                                                        320 Kè
                                                    </td>
                                                    <td>
                                                        Kalas - RACE 02, LYCRA
                                                    </td>
                                                    <td>
                                                        cena pro èlena tımu
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        Ponoky
                                                    </td>
                                                    <td>
                                                        60 Kè
                                                    </td>
                                                    <td>
                                                        Moose - tımovı model
                                                    </td>
                                                    <td>
                                                        cena pro èlena tımu
                                                    </td>
                                                </tr>
                                            </table>
                                            <br />
                                            Obleèení je dostupné v pánské i dámské variantì.
                                            <br />
                                            <br />
                                            Dres + Kraasy jsou podmínkou registrace v tımu.
                                            <br />
                                            Pøi objednávce dalšího obleèení v minimální kombinaci (Dres s dlouhım rukávem nebo
                                            Dres s krátkım rukávem + Návleky na ruce) + (Vesta) + (Návleky na nohy) obdríte
                                            3x tımové ponoky Moose zdarma.
                                            <br />
                                            Ceny pro neèleny a podrobnı popis jednotlivıch kusù naleznete v sekci <a href="prodej.aspx"
                                                style="text-decoration: underline; cursor: pointer">Prodej</a> a záloce Fan-shop.
                                            <br />
                                            <br />
                                            <strong>Jedná se o profesionální cyklistiské obleèení ve vysoké kvalitì, které oblékají
                                                naši pøední závodníci a zahranièní tımy.</strong>
                                            <br />
                                            <br />
                                            Objednávky zasílejte na email, nezapomeòte uvést poèet kusù a velikosti všech objednanıch
                                            kusù. Objednávka je závazná po zaplacení minimalnì 50% zálohy (vırobce poaduje
                                            zálohovou platbu pøi zadání objednávky). Zbytek mùete doplatit pøi obdrení objednaného
                                            obleèení. V pøípadì, e zaplatíte celou objednávku ihned, budete mít poštovné zdarma,
                                            jinak bude úètována dobírka 100 Kè. Monı je i osobní odbìr v Tøebíèi. Toto neplatí
                                            pøi zasílání do zahranièí, tam bude cena poštovného úètována vdy. Po zaslání objednávky
                                            obdríte informaci k platbì.
                                            <br />
                                            Pokud budete mít zájem o jiné èásti obleèení v tımovıch barvách ne které jsou uvedeny
                                            v seznamu, kontaktujte mì.
                                        </div>
                                    </li>
                                </ul>
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
            <div id="tab-24">
                <div class="clanek">
                    <h2>
                        Tım a jeho struktura</h2>
                    Tım Vysoèina cycling je otevøen pro všechny zájemce, kteøí mají rádi cyklistiku.
                    Èleny tımu mohou bıt nejen aktivní sportovci, ale také pøíznivci cyklistiky na Vysoèinì.
                    Zájemci se proto mohou pøihlásit i podle toho, co od svého èlenství oèekávají. Tım
                    Vysoèina cycling chce ovšem urèitım zpùsobem zvıhodnit ty èleny, kteøí se aktivnì
                    podílejí na èinnosti a prezentaci tımu. Chce ocenit sportovce, kteøí tım vıbornì
                    reprezentují na sportovních soutìích, chce ocenit ale i ty, kteøí se podílejí na
                    chodu tımu, jeho zabezpeèení a vıpomoci na rùznıch akcích, které tım poøádá. Chápeme
                    také, e nìkteøí nemají monost aktivnì se podílet na èinnosti tımu, ale pøesto
                    by se rádi stali jeho èlenem. Z tohoto dùvodu jsme se rozhodli rozdìlit èleny do
                    nìkolika kategorií. Jakou kategorii si pøi registraci zvolíte je pouze na Vás. Podle
                    toho, do jaké kategorie se zaøadíte, budete moci vyuívat vıhod Vašeho èlenství.
                    Kategorii je moné v prùbìhu èlenství zmìnit.
                    <h3>
                        Pasivní èlen</h3>
                    Doporuèujeme tìm, kteøí chtìjí vyuívat vıhod našich webovıch stránek, vést si zde
                    tréninkovı deník, èíst zajímavé èlánky o tréninku a vıivì, vyuívat se slevou tréninkovıch
                    poradcù, nebo s námi jet na tréninkovı kemp. Podmínkou tohoto èlenství je pouze
                    zakoupení dresu tımu Vysoèina cycling (minimálnì kraasy a triko) a aktivnì jej
                    vyuívat. Dresy budou k dispozici do konce dubna 2012.
                    <h3>
                        Aktivní èlen</h3>
                    Chcete-li se aktivnì podílet na èinnosti tımu, jsou pro Vás pøipraveny další vıhody
                    a bonusy. Aktivní èlen mùe tımu pøinést prospìch mnostvím rozliènıch èinností.
                    Zejména pak pøivedením sponzora, vıbornou reprezentací tımu na sportovních akcích,
                    vıpomoci v organizaci tımu, publikováním èlánkù na našem webu, vıpomoci pøi tréninkovıch
                    kempech, vıpomoci pøi sportovních akcích a v rùznıch dalších èinnostech. Abychom
                    mohli všechny aktivní èleny objektivnì ohodnotit, pøipravili jsme pro nì bodovı
                    systém.
                    <h3>
                        Pøíznivec tımu</h3>
                    Pøíznivcem tımu se mùe stát kadı, kterému se tım Vysoèina cycling líbí, a chtìl
                    by ho podpoøit, nebo by chtìl vyuívat vıhod našich webovıch stránek. Podmínkou
                    je pouze podpoøit jakımkoliv zpùsobem náš tım.
                    <h3>
                        Profi závodník</h3>
                    Zatím vıhled do budoucna. Mìl by bıt jmenován vedením tımu a jeho pùsobení bude
                    upravovat smlouva.
                    <h3>
                        Bodovı systém</h3>
                    Je zpùsob, jak co nejobjektivnìji ohodnotit èinnost kadého aktivního èlena. Ten
                    za své aktivity sbírá body, které mùe následnì promìnit dle vlastního vıbìru za
                    produkty a sluby nabízené na našem webu. Zatím je to jen pøedbìnı návrh, koneèné
                    hodnocení se bude ještì podle ohlasù upravovat. 1 bod odpovídá 1 Kè.
                    <h4>
                        Seznam bodového ohodnocení:
                    </h4>
                    Za pøivedení sponzora - individuálnì dle pøání sponzora
                    <br />
                    Organizace èinností tımu - 50 b/hod
                    <br />
                    Publikováním èlánkù na našem webu - 100 b/stránku A4
                    <br />
                    Vıpomoc pøi tréninkovıch kempech - 300 b/den
                    <br />
                    Vıpomoc pøi sportovních akcích - 50 b/hod
                    <br />
                    Reprezentace na sportovní akci - 10b/den
                    <br />
                    <br />
                    <strong>Umístìní na sportovní akci:</strong><br />
                    <table>
                        <tr>
                            <td>
                                1. místo na akci 1.kat - 1000 b
                                <br />
                                2. místo na akci 1.kat - 500 b
                                <br />
                                3. místo na akci 1.kat - 300 b
                                <br />
                                1. místo na akci 2.kat - 500 b
                                <br />
                                2. místo na akci 2.kat - 300 b
                                <br />
                                3. místo na akci 2.kat - 100 b
                                <br />
                                1. místo na akci 3.kat - 200 b
                                <br />
                                2. místo na akci 3.kat - 100 b
                                <br />
                                3. místo na akci 3.kat - 50 b
                            </td>
                            <td style="width: 20px">
                            </td>
                            <td style="vertical-align: top">
                                Kategorie akcí jsou rozdìleny dle kvality startovního pole a prezentace v médiích.
                                <br />
                                <br />
                                1.kat - UCI závody
                                <br />
                                2.kat - ÈP, série 53/11, KP apod.
                                <br />
                                3.kat - Regionální závody
                                <br />
                            </td>
                        </tr>
                    </table>
                    <br />
                    <br />
                    Úprava bodového systému je moná 2x roènì a platí vdy od data vyhlášení zmìny.
                </div>
            </div>
            <div id="tab-25" class="clasictext">
                <div id="dresy" class="clanek">
                    <h2>
                        Návrh tımového dresu 2013</h2>
                    <a href="images/Foto/Dres-svetly-2013.jpg" title="Návrh dresu - svìtlá varianta.">
                        <img src="images/Foto/thumb_Dres-svetly-2013.jpg" alt="Dres" border="1" /></a>
                    <a href="images/Foto/Dres-tmavy-2013.jpg" title="Návrh dresu - tmavá varianta.">
                        <img src="images/Foto/thumb_Dres-tmavy-2013.jpg" alt="Dres" border="1" /></a>
                </div>
            </div>
            <div id="tab-26" class="clasictext">
                <h2>
                    Vyèkejte...
                </h2>
                Tuto sekci pøipravujeme.
            </div>
            <div id="tab-27" class="clasictext">
                <div style="padding-top: 15px; text-align: center; font-weight: bold; font-size: medium; padding-bottom: 15px;">
                    Umístìní aktivních èlenù tımu v závodech v roce 
                    <asp:DropDownList ID="DropDownListRaceYear" runat="server" Style="width: 70px" DataSourceID="SqlDataSourceRaceYear" DataValueField="RaceYear" AutoPostBack="true" OnSelectedIndexChanged="DropDownListRaceYear_SelectedIndexChanged">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSourceRaceYear" runat="server" ConnectionString="<%$ ConnectionStrings:VysocinaCycling %>"
                        SelectCommand="SELECT DISTINCT DATEPART(yyyy, RaceDate) AS RaceYear FROM [UserRaces] ORDER BY RaceYear DESC"></asp:SqlDataSource>
                </div>
                <div id="usersRaces">
                </div>
            </div>
            <div id="tab-28" class="clasictext">
                <table>
                    <tr>
                        <td>
                            <div class="clanek" style="padding-top: 15px; text-align: center; font-weight: bold;
                                color: #336600;">
                                Více fotografií naleznete v sekci Galerie.
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div id="album-Zavody_2013" class="clanek">
                                <h3>Závody 2013</h3>
                                <a href="images/photos/DusanProchazka_TrebicskyAquathlon.jpg" title="Dušan Procházka zvítìzil v tøebíèském aquatlonu v kategorii mui 40-49 let">
                                    <img src="images/photos/thumb_DusanProchazka_TrebicskyAquathlon.jpg" alt="Dušan Procházka"
                                        border="0" /></a>
                                <a href="images/photos/Durcova01_2013.jpg" title="Monika Ïurèová zvítìzila v kategorii eny nad 40 let v závodì BBB Vlko-Hron cyklomaratón">
                                    <img src="images/photos/thumb_Durcova01_2013.jpg" alt="Monika Ïurèová"
                                        border="0" /></a>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div id="album-Zavody_2012" class="clanek">
                                <h3>
                                    Závody 2012</h3>
                                <a href="images/photos/Zlate_kolo_Vysociny_2012-1.jpg" title="Zlaté kolo Vysoèiny 2012">
                                    <img src="images/photos/thumb_Zlate_kolo_Vysociny_2012-1.jpg" alt="Zlaté kolo Vysoèiny" border="0" /></a>
                                <a href="images/photos/Zlate_kolo_Vysociny_2012-2.jpg" title="Zlaté kolo Vysoèiny 2012">
                                    <img src="images/photos/thumb_Zlate_kolo_Vysociny_2012-2.jpg" alt="Zlaté kolo Vysoèiny" border="0" /></a>
                                <a href="images/photos/Zlate_kolo_Vysociny_2012-3.jpg" title="Zlaté kolo Vysoèiny 2012">
                                    <img src="images/photos/thumb_Zlate_kolo_Vysociny_2012-3.jpg" alt="Zlaté kolo Vysoèiny" border="0" /></a>
                                <a href="images/photos/XCR4-RK_TP.jpg" title="XCR Specialized Cup 2012 - 4. závod">
                                    <img src="images/photos/thumb_XCR4-RK_TP.jpg" alt="XCR Specialized Cup 2012" border="0" /></a>
                                <a href="images/photos/XCR4-TPoslusny.jpg" title="XCR Specialized Cup 2012 - 4. závod">
                                    <img src="images/photos/thumb_XCR4-TPoslusny.jpg" alt="XCR Specialized Cup 2012" border="0" /></a>
                                <a href="images/photos/imageDurcova.jpg" title="MTB maraton Zelená stopa SNP 2012">
                                    <img src="images/photos/thumb_imageDurcova.jpg" alt="Ïurèová - Vysoèina Cycling" border="0" /></a>
                            </div>
                        </td>
                    </tr>
                </table>
            </div>
            <div id="tab-29" class="clasictext">
                <ul id="Treninky" class="paging12">
                    <li>
                        <div class="clanek">
                            <h2>Gymnázium Tøebíè - posilovna</h2>
                                Spoleènı trénink pro všechny zájemce se koná kadou <strong>støedu</strong> v období
                            <strong>listopad - bøezen</strong>.Sraz v <strong>16h</strong> v malé tìlocviènì.
                        </div>
                    </li>
                    <li>
                        <div class="clanek">
                            <h2>Tøebíè Borovina - silnice</h2>
                            Spoleènı trénink pro všechny zájemce se koná kadou <strong>støedu</strong> v období
                            <strong>duben, kvìten, èerven a záøí</strong>.Sraz v <strong>16:30</strong> na parkovišti pøed borovinskou továrnou.
                            <br /> V období <strong>èervenec a srpen</strong> se trénink koná dle <strong>kalendáøe</strong> tımu. 
                        </div> 
                    </li>
                </ul>
            </div>
        </div>
    </div>
</asp:Content>
