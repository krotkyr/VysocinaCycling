<%@ Page Title="Vysoèina Cycling - Akce" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="akce.aspx.cs" Inherits="Akce" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <meta property="og:description" content="Tento projekt je zamìøen na podporu vıkonnostní cyklistiky na Vysoèinì, a to pøedevším cyklistiky silnièní. Na stránce Akce naleznete informace o tréninkovıch kempech a dalších akcích, které poøádáme." />
    <meta property="og:image" content="http://www.vysocinacycling.cz/images/logo_Facebook.png" />
    <script type="text/javascript">
        $(window).load(function () {
            $("#baner5").nivoSlider({ animSpeed: 1000, pauseTime: 10000, controlNav: false, directionNav: false, keyboardNav: false, effect: "fade" });  
        });
    </script>

    <script type="text/javascript">
        $(document).ready(function () {
            SiteAkceReady();
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <div id="dialogMTBZavod" style="display: none">
        <p>
            Vyplòte prosím všechny údaje. Pro kontrolu bude
            kopie Vaší pøihlášky zaslána i na Váš email.
        </p>
        <table>
            <tr>
                <td style="width: 260px">Jméno:
                </td>
                <td>Pøíjmení:
                </td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="TextBoxMTBZavodJmeno" runat="server" TextMode="SingleLine"
                        Style="width: 240px"></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="TextBoxMTBZavodPrijmeni" runat="server" TextMode="SingleLine" Style="width: 240px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Datum narození:
                </td>
                <td>Kategorie:
                </td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="TextBoxMTBZavodNarozeni" runat="server" TextMode="SingleLine" Style="width: 240px"></asp:TextBox>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownListMTBZavodKategorie" runat="server" Style="width: 244px">
                        <asp:ListItem>Mladší ákynì (2004 – 2005)</asp:ListItem>
                        <asp:ListItem>Mladší áci (2004 – 2005)</asp:ListItem>
                        <asp:ListItem>Starší ákynì (2002 – 2003)</asp:ListItem>
                        <asp:ListItem>Starší áci (2002 – 2003)</asp:ListItem>
                        <asp:ListItem>Kadetky (2000 – 2001)</asp:ListItem>
                        <asp:ListItem>Kadeti (2000 – 2001)</asp:ListItem>
                        <asp:ListItem>Juniorky (1998 – 1999)</asp:ListItem>
                        <asp:ListItem>Junioøi (1998 – 1999)</asp:ListItem>
                        <asp:ListItem>eny (1997 a starší)</asp:ListItem>
                        <asp:ListItem>Mui I. (1987 – 1997)</asp:ListItem>
                        <asp:ListItem>Mui II. (1977 – 1986)</asp:ListItem>
                        <asp:ListItem>Mui III. (1967 – 1976)</asp:ListItem>
                        <asp:ListItem>Mui IV. (1966 a starší)</asp:ListItem>
                        <asp:ListItem>Mui Pøíhozí (1967 – 1997)</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>Klub (pokud jste èlenem nìjakého klubu):
                </td>
                <td>Èíslo licence (pokud jste dritelem licence):
                </td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="TextBoxMTBZavodKlub" runat="server" TextMode="SingleLine" Style="width: 240px"></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="TextBoxMTBZavodLicence" runat="server" TextMode="SingleLine" Style="width: 240px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2">Adresa:
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:TextBox ID="TextBoxMTBZavodAdresa" runat="server" TextMode="SingleLine" Style="width: 504px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Email:
                </td>
                <td>Telefon:
                </td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="TextBoxMTBZavodEmail" runat="server" TextMode="SingleLine" Style="width: 240px"></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="TextBoxMTBZavodTelefon" runat="server" TextMode="SingleLine" Style="width: 240px"></asp:TextBox>
                </td>
            </tr>
        </table>
    </div>
    <div id="dialogSilnicniZavod" style="display: none">
        <p>
            Vyplòte prosím všechny údaje. Pro kontrolu bude
            kopie Vaší pøihlášky zaslána i na Váš email.
        </p>
        <table>
            <tr>
                <td style="width: 260px">Jméno: *
                </td>
                <td>Pøíjmení: *
                </td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="TextBoxSilnicniZavodJmeno" runat="server" TextMode="SingleLine"
                        Style="width: 240px"></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="TextBoxSilnicniZavodPrijmeni" runat="server" TextMode="SingleLine" Style="width: 240px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Datum narození: *
                </td>
                <td>Kategorie: *
                </td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="TextBoxSilnicniZavodNarozeni" runat="server" TextMode="SingleLine" Style="width: 240px"></asp:TextBox>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownListSilnicniZavodKategorie" runat="server" Style="width: 244px">
                        <asp:ListItem>Dìti do 6 let (2010 a mladší)</asp:ListItem>
                        <asp:ListItem>Dìti do 10 let (2006 – 2009)</asp:ListItem>
                        <asp:ListItem>Mladší ákynì (2004 – 2005)</asp:ListItem>
                        <asp:ListItem>Mladší áci (2004 – 2005)</asp:ListItem>
                        <asp:ListItem>Starší ákynì (2002 – 2003)</asp:ListItem>
                        <asp:ListItem>Starší áci (2002 – 2003)</asp:ListItem>
                        <asp:ListItem>Kadetky (2000 – 2001)</asp:ListItem>
                        <asp:ListItem>Kadeti (2000 – 2001)</asp:ListItem>
                        <asp:ListItem>Juniorky (1998 – 1999)</asp:ListItem>
                        <asp:ListItem>Junioøi (1998 – 1999)</asp:ListItem>
                        <asp:ListItem>eny (1997 a starší)</asp:ListItem>  
                        <asp:ListItem>Mui U23 a Elite (1997 a starší) – licence</asp:ListItem>
                        <asp:ListItem>Mui hobby - 110km (1997 a starší)</asp:ListItem>
                        <asp:ListItem>Mui hobby 19-44let - 74km (1972 - 1997)</asp:ListItem>
                        <asp:ListItem>Mui hobby 45-59let - 74km (1957 – 1971)</asp:ListItem>
                        <asp:ListItem>Mui hobby 60+ - 74km (1956 a starší)</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>Klub (pokud jste èlenem nìjakého klubu):
                </td>
                <td>Èíslo a UCI kód licence (pokud jste dritelem):
                </td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="TextBoxSilnicniZavodKlub" runat="server" TextMode="SingleLine" Style="width: 240px"></asp:TextBox>
                </td>       
                <td>
                    <asp:TextBox ID="TextBoxSilnicniZavodLicence" runat="server" TextMode="SingleLine" Style="width: 240px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2">Adresa (uveïte kraj Vysoèina, pokud chcete závodit o Mistra kraje): *
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:TextBox ID="TextBoxSilnicniZavodAdresa" runat="server" TextMode="SingleLine" Style="width: 504px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Email: *
                </td>
                <td>Telefon:
                </td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="TextBoxSilnicniZavodEmail" runat="server" TextMode="SingleLine" Style="width: 240px"></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="TextBoxSilnicniZavodTelefon" runat="server" TextMode="SingleLine" Style="width: 240px"></asp:TextBox>
                </td>
            </tr>
        </table>
    </div>
    <div id="pageAkceContent">
        <div id="baner5" class="nivoSlider">                                            
            <img id="img1" alt="Baner" src="images/Banery/BannerDukovanskeOkruhy2014_01a.jpg" />
        </div>
        <div id="akcetabs" style="text-align: left">
            <ul>
                <li id="Li51"><a href="#tab-51">Poøádáme</a></li>
                <li id="Li52"><a href="#tab-52">Vysoèina Cycling Cup</a></li>
                <li id="Li53"><a href="#tab-53">Silnièní závody na Vysoèinì</a></li>
                <li id="Li54"><a href="#tab-54">MTB závody na Vysoèinì</a></li>
                <li id="Li55"><a href="#tab-55">Ostatní cyklistické akce na Vysoèinì</a></li>
                <li id="Li56"><a href="#tab-56">Èlánky</a></li>
                <li id="Li57"><a href="#tab-57">Fotogalerie</a></li>
            </ul>
            <div id="tab-51" class="clasictext"> 
                <div class="clanek">
                    <h1 style="text-align: center; color: #0066CC">Dukovanské okruhy
                    </h1>
                    <div style="font-size: small; font-weight: bold; font-style: italic; color: #666666; text-align: justify; padding-right: 20px; padding-bottom: 50px;">
                        Tım Vysoèina Cycling poøádá závod Dukovanské okruhy od roku 2015, kdy jej pøevzalo od pùvodního poøadatele. Závod
                        se pyšní ji dlouholetou tradicí.<br />
      Atraktivní tra vede v okolí Jaderné elektrárny Dukovany. Závod je vypsán pro všechny vìkové kategeorie všech vıkonností vèetnì
      závodníkù s licencí a je otevøen pro všechny startující ze všech koutù republiky i pøilehlıch státù.
                <br />
                <br />
                        <h2 style="text-align: center; color: #0066CC">Podrobnosti k závodu naleznete na stránce 
                            <a href="/dukovanske-okruhy">
                            <p style="color: #FF3300">Dukovanské okruhy 2017</p>
                    </h2>

                        </div>
                </div> 
                <br />
                <div class="clanek">
                    <h1 style="text-align: center; color: #0066CC">Vysoèina Cycling MTB Tøebíè 2016
                    </h1>
                    <!--<h2 style="text-align: center; color: #0066CC">
                        Závod je souèástí seriálu <a href="http://www.vysocinamtbcup.cz/" target="_blank">
                            <p style="color: #009933">ECOREM Vysoèina MTB CUP 2015</p>
                        </a>
                    </h2>-->
                    <div style="font-size: small; font-weight: bold; font-style: italic; color: #666666;">
                        Zveme všechny na 4. roèník MTB cross country v Tøebíèi. Tento rok se bude závod konat stejnì
                        jako v minulém roce na louce pod Kostelíèkem, která se nám osvìdèila jako pøíjemné a zajímavé
                        místo v pøírodì a pøitom ve mìstì.<br />
                        Trasa opìt nebude extrémnì nároèná a bude tvoøena i s ohledem na ménì technicky vybavené
                        jezdce. Zùstane èlenitá a zajímavá. Povede po cestách a stezkách v Libušinì údolí a zavede
                        závodníky na atraktivní místo v okolí Kostelièku, které skıtá nádhernı vıhled na Tøebíè.<br />
                        Termín závodu pøesouváme na podzimní termín, abychom na závod pøivedli vìtší mnoství místní mládee,
                        která nám na startu v prázdninovém termínu chybìla. Kategorie zùstanou jako v minulıch roènících,
                        kratší pro pøíchozí, kteøí by standartní tra obtínì zvládali. Startovné 150Kè pro pøedem
                        pøihlášené, 200Kè pro ty kteøí nám pøidìlají více práce v den závodu a vyplní pøihlášku a
                        na místì. Mláde 50Kè. Pøihlášky proto zasílejte zavèas. Vyuijte formuláø pro pøihlášku níe.<br />
                        Startovat se opìt bude ve vlnách podle délky závodu, viz. propozice. Doporuèujeme si
                        pøed závodem projet tra. Pro najídìní bude tra pøipravena tıden pøed závodem.
                        Dávejte však pozor na chodce, kteøí se mohou po trati pohybovat.
                        Vìøíme, e i letos mezi mládeí objevíme nové talenty a zájemce o cyklistiku.
                        <br />
                        <br />
                    </div>
                    <div>
                        <table>
                            <tr>
                                <td style="color: #0033CC; font-weight: bold;">Termín:
                                </td>
                                <td style="color: #FF3300">Záøí nebo øíjen 2016
                                </td>
                                <td align="right">
                                    <input type="button" id="buttonMTBZavod" value="Vyplnit pøihlášku 2016" />
                                </td>
                            </tr>
                            <tr>
                                <td style="color: #0033CC; font-weight: bold;">Typ závodu:
                                </td>
                                <td style="color: #FF3300">MTB cross country
                                </td>
                            </tr>
                            <tr>
                                <td style="color: #0033CC; font-weight: bold;">Pøihlášky:
                                </td>
                                <td><a style="color: #FF3300" href="mailto:mtb@vysocinacycling.cz">mtb(zavináè)vysocinacycling.cz</a>
                                </td>
                            </tr>
                            <tr>
                                <td style="color: #0033CC; font-weight: bold;">Propozice 2015:
                                </td>
                                <td><a style="color: #FF3300" href="files/PropoziceVCmtb2015.pdf" onclick="_gaq.push(['_trackEvent','PDF', 'View', 'Vysoèina Cycling MTB']);"
                                    target="_blank">PropoziceVCmtb2015.pdf</a>
                                </td>
                            </tr>  
                            <tr>
                                <td style="color: #0033CC; font-weight: bold;">
                                </td>
                            </tr>
                            <tr>
                                <td style="color: #0033CC; font-weight: bold;">Vısledky 2013:
                                </td>
                                <td><a style="color: #FF3300" href="files/Vısledky-VysoèinaCyclingMTBTøebíè2013.pdf"
                                    onclick="_gaq.push(['_trackEvent','PDF', 'View', 'Vısledky Vysoèina Cycling MTB Tøebíè 2013']);"
                                    target="_blank">Vısledky-VysoèinaCyclingMTBTøebíè2013.pdf</a>
                                </td>
                            </tr>
                            <tr>
                                <td style="color: #0033CC; font-weight: bold;">Vısledky 2014:
                                </td>
                                <td><a style="color: #FF3300" href="files/Vysledky-VysocinaCyclingMTBTrebic2014.pdf"
                                    onclick="_gaq.push(['_trackEvent','PDF', 'View', 'Vısledky Vysoèina Cycling MTB Tøebíè 2014']);"
                                    target="_blank">Vısledky-VysoèinaCyclingMTBTøebíè2014.pdf</a>
                                </td>
                            </tr>  
                            <tr>
                                <td style="color: #0033CC; font-weight: bold;">Vısledky 2015:
                                </td>
                                <td><a style="color: #FF3300" href="files/VysledkyVCmtb2015.pdf"
                                    onclick="_gaq.push(['_trackEvent','PDF', 'View', 'Vısledky Vysoèina Cycling MTB Tøebíè 2015']);"
                                    target="_blank">VysledkyVCmtb2015.pdf</a>
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>  
            </div>
            <div id="tab-52" class="clasictext">
                <div class="clanek">
                    <br />
                    <div class="clanek" style="color: #990000">
                        <br />
                        V roce 2016 pokraèuje seriál MTB závodù pod názvem <a href="http://www.vysocinamtbcup.cz/"
                            target="_blank" style="color: #008000;">Ecorem Vysoèina MTB CUP</a>. Mùete se opìt tìšit
                        na závody v krásném prostøedí Vysoèiny. Organizátoøi slibují nìkteré novinky.
                        Zveme všechny bikery a zvláš mláde, pro kterou je tento
                        seriál pøedevším poøádán, aby se i tento rok zúèastnili.
                    </div>
                    <br />
                    <div class="clanek" style="color: #990000">
                        <br />
                        V roce 2013 vzniká seriál MTB závodù pod názvem <a href="http://www.vysocinamtbcup.cz/"
                            target="_blank" style="color: #008000;">Vysoèina MTB CUP</a>, kterı nahrazuje
                        pùvodní Vysoèina Cycling Cup - MTB. Hlavní novinkou je monost startovat na pìknıch
                        závodech v prostøedí Vysoèiny s nízkım startovnım a moností pøihlásit se dopøedu
                        na celı seriál za zvıhodnìnıch podmínek. Tratì pøipravují vesmìs bıvalí, nebo
                        souèasní závodníci s ohledem na ménì zkušenìjší jezdce. Soutì je zamìøená i na 
                        mláde. V celkovém poøadí se budou rozdìlovat ve všech vypsanıch kategoriích pìkné
                        finanèní a vìcné ceny. Hlavním cílem seriálu je podpora cyklistiky na Vysoèinì.
                        <br />
                        <br />
                        V silnièní èásti soutìe jsme se rozhodli vyhlásit nejlepší závodníky Vysoèiny
                        podle vısledkù v prùbìhu celého roku. Z nominovanıch závodníkù vyhlásí odborná
                        komise nejlepší závodníky z øad mládee a dospìlıch. Talent Vysoèiny se bude
                        vyhlašovat v kategoriích nejlepší kadet, kadetka, junior, juniorka. Mezi dospìlımi
                        bude vyhlášena nejlepší ena a 3 nejlepší mui.
                    </div>
                    <img style="padding-top: 20px; padding-bottom: 20px; padding-left: 300px; "src="images/Logo_VCC.png"
                        alt="Logo Vysoèina Cycling Cup" border="none" />
                    <h2>
                        Soutì o nejlepšího cyklistu z Vysoèiny 2012
                    </h2>
                    V rámci podpory cyklistiky na Vysoèinì vyhlašujeme ve spolupráci s poøadateli závodù soutì o nejlepšího cyklistu 
                    z Vysoèiny. Jedná se o celoroèní soutì bikerù i silnièáøù. Do soutìe se budou poèítat pouze závody konané na Vysoèinì. 
                    V tìchto závodech vyhlásíme a odmìníme nejlepšího závodníka z Vysoèiny a souèasnì budeme sestavovat bodovı ebøíèek.
                    V posledním závodì vyhlásíme 3 závodníky s nejvyšším poètem bodù v kategorii Biker a Silnièáø.
                    <h2>
                        Bodové hodnocení
                    </h2>
                    Hodnotit se bude hlavní závod bez rozdílu kategorií. Body získá 30 nejlepších závodníkù z Vysoèiny od 30 bodù po 1 bod. Pokud 
                    bude na startu závodu, závodníkù z Vysoèiny ménì ne 30, získá první závodník z Vysoèiny pouze tolik bodù, kolik bude závodníkù 
                    z Vysoèiny na startu. Aby se do vısledkù závodu promítla i kvalita startovního pole, pøiète se ještì k tìmto bodùm hodnocení 30 
                    nejlepších bez rozdílu pøíslušnosti kraje, opìt od 30 bodù po 1 bod. Pokud bude na startu závodu ménì ne 30 závodníkù, získá 
                    první závodník pouze tolik bodù, kolik bude závodníkù na startu. Pøi shodnosti bodù v celkovém poøadí soutìe rozhoduje vìtší 
                    poèet lepších umístìní. Do celkového hodnocení se nebude poèítat závod s nejmenším poètem získanıch bodù. Pøidìlování bodù 
                    demonstruje následující pøíklad. Umístí-li se napøíklad závodník z Vysoèiny v závodì celkovì na 5.místì a souèasnì bude první 
                    ze závodníkù z Vysoèiny a postaví-li se na start celkem 40 závodníku z nich bude 20 z Vysoèiny, získá závodník 46 bodù (20+26).
                    <br />
                    V pøípadì, e se v rámci jednoho závodu budou zapoèítávat vısledky ze dvou tras, bude se u kratší trasy hodnotit pouze 20 nejlepších
                    od 20 bodù po 1 bod, jinak zùsob hodnocení zùstává stejnı.
                    <br />
                    U závodù na silnici bude u vybranıch závodù (Èeskı pohár v Jihlavì a etapovı závod Vysoèina Tour) pouit koeficient, aby se do 
                    bodového hodnocení promítla lépe kvalita závodu. Tímto koeficientem se vynásobí pouze body 30 nejlepších bez rodílu pøíslušnosti kraje.
                    Pøi ménì jak 100 závodnících na startu bude mít tento koeficient hodnotu 2, pøi více jak 100 závodnících na startu bude mít hodnotu 3.
                    <h2>
                        Závody zaøazené do soutìe
                    </h2>
                    <h3>
                        Vysoèina Cycling Cup - MTB
                    </h3>
                    <table>
                        <tr style="font-weight: bold">
                            <td width="40px">
                                Datum:
                            </td>
                            <td style="width: 20px">
                            </td>
                            <td style="width: 600px">
                                Název:
                            </td>
                            <td>
                                Prùbìné vısledky:
                            </td>
                        </tr>
                        <tr style="font-style: italic; font-weight: bold">
                            <td>
                                14.04.2012
                            </td>
                            <td>
                            </td>
                            <td>
                                Okolo Zudova vrchu
                            </td>
                            <td>
                                <a href="files\VysoèinaCyclingCup_MTB_1zavod.pdf" target="_blank" style="text-decoration: underline; cursor: pointer">hodnocení</a>
                            </td>
                        </tr>
                        <tr style="font-style: italic; font-weight: bold;">
                            <td>
                                06.05.2012
                            </td>
                            <td>
                            </td>
                            <td>
                                ÈEZ MTB maraton
                            </td>
                            <td>
                                <a href="files\VysoèinaCyclingCup_MTB_2zavod.pdf" target="_blank" style="text-decoration: underline; cursor: pointer">hodnocení</a>
                            </td>
                        </tr>
                        <tr style="font-style: italic; font-weight: bold;">
                            <td>
                                26.05.2012
                            </td>
                            <td>
                            </td>
                            <td>
                                Jeek Pell's bike maraton Knìice
                            </td>
                            <td>
                                <a href="files\VysoèinaCyclingCup_MTB_3zavod.pdf" target="_blank" style="text-decoration: underline; cursor: pointer">hodnocení</a>
                            </td>
                        </tr>
                        <tr style="font-style: italic; font-weight: bold;">
                            <td>
                                09.06.2012
                            </td>
                            <td>
                            </td>
                            <td>
                                O Štamberského krále
                            </td>
                            <td>
                                <a href="files\VysoèinaCyclingCup_MTB_4zavod.pdf" target="_blank" style="text-decoration: underline; cursor: pointer">hodnocení</a>
                            </td>
                        </tr>
                        <tr style="font-style: italic; font-weight: bold;">
                            <td>
                                07.07.2012
                            </td>
                            <td>
                            </td>
                            <td>
                                Cannondale Kamenickı maraton
                            </td>
                            <td>
                                <a href="files\VysoèinaCyclingCup_MTB_5zavod.pdf" target="_blank" style="text-decoration: underline; cursor: pointer">hodnocení</a>
                            </td>
                        </tr>
                        <tr style="font-style: italic; font-weight: bold;">
                            <td>
                                14.07.2012
                            </td>
                            <td>
                            </td>
                            <td>
                                Pøes 3 vrchy Vysoèiny
                            </td>
                            <td>
                                <a href="files\VysoèinaCyclingCup_MTB_6zavod.pdf" target="_blank" style="text-decoration: underline; cursor: pointer">hodnocení</a>
                            </td>
                        </tr>
                        <tr style="font-style: italic; font-weight: bold;">
                            <td>
                                18.08.2012
                            </td>
                            <td>
                            </td>
                            <td>
                                AVG Námìšskı maraton
                            </td>
                            <td>
                                <a href="files\VysoèinaCyclingCup_MTB_7zavod.pdf" target="_blank" style="text-decoration: underline; cursor: pointer">hodnocení</a>
                            </td>
                        </tr>
                        <tr style="font-style: italic; font-weight: bold;">
                            <td>
                                08.09.2012
                            </td>
                            <td>
                            </td>
                            <td>
                                Rynárecká bejkovna - Finále - vyhlášení celkovıch vısledkù Vysoèina Cycling Cup
                            </td>
                            <td>
                                <a href="files\VysoèinaCyclingCup_MTB_8zavod.pdf" target="_blank" style="text-decoration: underline; cursor: pointer; color: #CC3300;">hodnocení</a>
                            </td>
                        </tr>
                    </table>
                    <h3>
                        Vysoèina Cycling Cup - Silnice
                    </h3>
                    <table>
                        <tr style="font-weight: bold">
                            <td width="40px">
                                Datum:
                            </td>
                            <td style="width: 20px">
                            </td>
                            <td width="600px">
                                Název:
                            </td>
                            <td>
                                Prùbìné vısledky:
                            </td>
                        </tr>
                        <tr style="font-style: italic; font-weight: bold">
                            <td>
                                21.04.2012
                            </td>
                            <td>
                            </td>
                            <td>
                                Dukovanské okruhy - silnice
                            </td>
                            <td>
                                <a href="files\VysoèinaCyclingCup_Silnice_2závody.pdf" target="_blank" style="text-decoration: underline; cursor: pointer">hodnocení</a>
                            </td>
                        </tr>
                        <tr style="font-style: italic; font-weight: bold">
                            <td>
                                21.04.2012
                            </td>
                            <td>
                            </td>
                            <td>
                                Dukovanské okruhy - èasovka
                            </td>
                            <td>
                                <a href="files\VysoèinaCyclingCup_Silnice_2závody.pdf" target="_blank" style="text-decoration: underline; cursor: pointer">hodnocení</a>
                            </td>
                        </tr>
                        <tr style="font-style: italic; font-weight: bold">
                            <td>
                                16.06.2012
                            </td>
                            <td>
                            </td>
                            <td>
                                Zlaté kolo Vysoèiny - všechny tratì
                            </td>
                            <td>
                                <a href="files\VysoèinaCyclingCup_Silnice_5závod.pdf" target="_blank" style="text-decoration: underline; cursor: pointer">hodnocení</a>
                            </td>
                        </tr>
                        <tr style="font-style: italic; font-weight: bold">
                            <td>
                                07.07.2012
                            </td>
                            <td>
                            </td>
                            <td>
                                Èeskı pohár Jihlava
                            </td>
                            <td>
                                <a href="files\VysoèinaCyclingCup_Silnice_6závod.pdf" target="_blank" style="text-decoration: underline; cursor: pointer">hodnocení</a>
                            </td>
                        </tr>
                        <tr style="font-style: italic; font-weight: bold">
                            <td>
                                02.08.2012
                            </td>
                            <td>
                            </td>
                            <td>
                                Vysoèina Tour - etapy
                            </td>
                            <td>
                                <a href="files\VysoèinaCyclingCup_Silnice_11závod.pdf" target="_blank" style="text-decoration: underline; cursor: pointer">hodnocení</a>
                            </td>
                        </tr>
                        <tr style="font-style: italic; font-weight: bold">
                            <td>
                                28.09.2012
                            </td>
                            <td>
                            </td>
                            <td>
                                Tryskem na Kluèovskou horu - Finále - vyhlášení celkovıch vısledkù Vysoèina Cycling Cup
                            </td>
                            <td>
                                <a href="files\VysoèinaCyclingCup_Silnice_12závod.pdf" target="_blank" style="text-decoration: underline; cursor: pointer; color: #CC3300;">hodnocení</a>
                            </td>
                        </tr>
                    </table>
                    <br />
                    <br />
                    Do soutìe lze zaøadit i další závody. Musí bıt však zaøazeny a zveøejnìny na tìchto
                    stránkách nejpozdìji 14 dní pøed konáním závodu.
                </div>
            </div>
            <div id="tab-53" class="clasictext">
                <table>
                    <tr>
                        <td>
                            <ul class="paging5">
                                <li>
                                    <div class="clanek" style="padding-top: 15px; text-align: center; font-weight: bold;
                                        color: #336600;">
                                        Prosíme poøadatele, aby nám zasílali informace k dalším silnièním závodùm na Vysoèinì.
                                        Dìkujeme.
                                    </div>
                                </li>
                                <li>
                                    <div class="clanek">
                                        <h2>
                                            Velká Bíteš - Brno - Velká Bíteš
                                        </h2>
                                        <div>
                                            Èeskı pohár v silnièní cyklistice - èeská jarní klasika. 
                                            <br />
                                            <br />
                                        </div>
                                        <div>
                                            <table>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">
                                                        Termín:
                                                    </td>
                                                    <td style="color: #FF3300">
                                                        2.4.2016
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">
                                                        Typ závodu:
                                                    </td>
                                                    <td style="color: #FF3300">
                                                        Silnièní
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">
                                                        Startují:
                                                    </td>
                                                    <td style="color: #FF3300">
                                                        Mui Elite a U23
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">
                                                        Web poøadatele:
                                                    </td>
                                                    <td style="color: #FF3300">
                                                        <a href="http://www.favoritbrno.cz/" target="_blank" style="cursor: pointer">
                                                            http://www.favoritbrno.cz/</a>
                                                    </td>
                                                </tr>
                                            </table>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="clanek">
                                        <h2>Køianovská padesátka - v roce 2015 zrušeno
                                        </h2>
                                        <div>
                                            Amatérskı cyklistickı závod v okolí Køianova na Vysoèinì, vhodnı pro všechny typy
                                            kol.
                                            <br />
                                            <br />
                                        </div>
                                        <div>
                                            <table>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">Termín:
                                                    </td>
                                                    <td style="color: #FF3300">Neznámı
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">Typ závodu:
                                                    </td>
                                                    <td style="color: #FF3300">Silnièní závod
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">Startují:
                                                    </td>
                                                    <td style="color: #FF3300">Všechny kategorie (registovaní i neregistrovaní)
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">Web poøadatele:
                                                    </td>
                                                    <td style="color: #FF3300">
                                                        <a href="http://www.krizanovska50.unas.cz/" target="_blank" style="cursor: pointer">
                                                            http://www.krizanovska50.unas.cz/</a>
                                                    </td>
                                                </tr>
                                            </table>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="clanek">
                                        <h2>
                                            Dukovanské okruhy
                                        </h2>
                                        <div>
                                            Silnièní závod v okolí Jaderné elektrárny Dukovany. Tra vede turisticky atraktivním
                                            prostøedím kolem Dalešické pøehrady, rozhledny Babylon a mohelenské Hadcovy stepi.
                                            <br />
                                            <br />
                                        </div>
                                        <div>
                                            <table>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">
                                                        Termín:
                                                    </td>
                                                    <td style="color: #FF3300">
                                                        23.4.2016
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">
                                                        Typ závodu:
                                                    </td>
                                                    <td style="color: #FF3300">
                                                        Silnièní závod
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">
                                                        Startují:
                                                    </td>
                                                    <td style="color: #FF3300">
                                                        Všechny kategorie
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">
                                                        Web poøadatele:
                                                    </td>
                                                    <td style="color: #FF3300">
                                                        <a href="http://www.vysocinacycling.cz/" target="_blank" style="cursor: pointer">http://www.vysocinacycling.cz/</a>
                                                    </td>
                                                </tr>
                                            </table>
                                        </div>
                                    </div>
                                </li>  
                                <li>
                                    <div class="clanek">
                                        <h2>VyKing - král Vysoèiny
                                        </h2>
                                        <div>
                                            Amatérskı silnièní cyklistickı závod se startem a cílem na zámeèku Karlštejn u Svratky na Vysoèinì. Tra 100km a 50km.
                                            <br />
                                            <br />
                                        </div>
                                        <div>
                                            <table>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">Termín:
                                                    </td>
                                                    <td style="color: #FF3300">18.6.2016
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">Typ závodu:
                                                    </td>
                                                    <td style="color: #FF3300">Silnièní závod
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">Startují:
                                                    </td>
                                                    <td style="color: #FF3300">Všechny kategorie
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">Web poøadatele:
                                                    </td>
                                                    <td style="color: #FF3300">
                                                        <a href="http://www.vyking.cz/" target="_blank" style="cursor: pointer">
                                                            http://www.vyking.cz/</a>
                                                    </td>
                                                </tr>
                                            </table>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="clanek">
                                        <h2>
                                            Zlaté kolo Vysoèiny
                                        </h2>
                                        <div>
                                            Silnièní maraton, kterı Vás provede nejkrásnìjšimi kopci na Vysoèinì. Maraton startuje
                                            v obci Ruda.
                                            <br />
                                            <br />
                                        </div>
                                        <div>
                                            <table>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">
                                                        Termín:
                                                    </td>
                                                    <td style="color: #FF3300">
                                                        18.6.2016
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">
                                                        Typ závodu:
                                                    </td>
                                                    <td style="color: #FF3300">
                                                        Silnièní maraton
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">
                                                        Startují:
                                                    </td>
                                                    <td style="color: #FF3300">
                                                        Neregistrovaní
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">
                                                        Web poøadatele:
                                                    </td>
                                                    <td style="color: #FF3300">
                                                        <a href="http://www.zlatekolovysociny.cz/" target="_blank" style="cursor: pointer">http://www.zlatekolovysociny.cz/</a>
                                                    </td>
                                                </tr>
                                            </table>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="clanek">
                                        <h2>ïárská Liga Mistrù - èasovka
                                        </h2>
                                        <div>
                                            Silnièní èasovka ve ïáru nad Sázavou.
                                            <br />
                                            <br />
                                        </div>
                                        <div>
                                            <table>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">Termín:
                                                    </td>
                                                    <td style="color: #FF3300">26.6.2016
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">Typ závodu:
                                                    </td>
                                                    <td style="color: #FF3300">Silnièní
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">Startují:
                                                    </td>
                                                    <td style="color: #FF3300">Všechny kategorie
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">Web poøadatele:
                                                    </td>
                                                    <td style="color: #FF3300">
                                                        <a href="http://zrliga.zrnet.cz/" target="_blank" style="cursor: pointer">http://zrliga.zrnet.cz/</a>
                                                    </td>
                                                </tr>
                                            </table>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="clanek">
                                        <h2>
                                            Kolem Melechova
                                        </h2>
                                        <div>
                                            Amatérskı silnièní cyklistickı závod se startem a cílem v obci Meziklasí u Dolního
                                            Mìsta nedaleko Svìtlé nad Sázavou. Na trase je vypsána vrchaøská prémie na Podivínském
                                            kopci.
                                            <br />
                                            <br />
                                        </div>
                                        <div>
                                            <table>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">
                                                        Termín:
                                                    </td>
                                                    <td style="color: #FF3300">
                                                        16.7.2016
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">
                                                        Typ závodu:
                                                    </td>
                                                    <td style="color: #FF3300">
                                                        Silnièní, amatérskı
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">
                                                        Startují:
                                                    </td>
                                                    <td style="color: #FF3300">
                                                        Všechny kategorie
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">
                                                        Web poøadatele:
                                                    </td>
                                                    <td style="color: #FF3300">
                                                        <a href="http://www.melechov.cz/kolem-melechova/propozice.html" target="_blank" style="cursor: pointer">
                                                            http://www.melechov.cz/ </a>
                                                    </td>
                                                </tr>
                                            </table>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="clanek">
                                        <h2>Vysoèina 2015
                                        </h2>
                                        <div>
                                            Silnièní etapovı závod s mezinárodní úèastí. Etapy startují v Bystøici nad Pernštejnem, Polièce a Pøibyslavi.
                                            <br />
                                            <br />
                                        </div>
                                        <div>
                                            <table>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">Termín:
                                                    </td>
                                                    <td style="color: #FF3300">4.8.2016 - 7.8.2016
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">Typ závodu:
                                                    </td>
                                                    <td style="color: #FF3300">Silnièní, Etapovı
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">Startují:
                                                    </td>
                                                    <td style="color: #FF3300">Mui Elite a U23
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">Web poøadatele:
                                                    </td>
                                                    <td style="color: #FF3300">
                                                        <a href="http://vysocinatour.sweb.cz/" target="_blank" style="cursor: pointer">http://vysocinatour.sweb.cz/</a>
                                                    </td>
                                                </tr>
                                            </table>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="clanek">
                                        <h2>ïárská Liga Mistrù
                                        </h2>
                                        <div>
                                            Silnièní závod s délkou 63km. Tra: ïár - Svratka - Snìné - NMNM - Lhotka - Vlachovice.
                                            <br />
                                            <br />
                                        </div>
                                        <div>
                                            <table>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">Termín:
                                                    </td>
                                                    <td style="color: #FF3300">28.8.2016
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">Typ závodu:
                                                    </td>
                                                    <td style="color: #FF3300">Silnièní
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">Startují:
                                                    </td>
                                                    <td style="color: #FF3300">Všechny kategorie
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">Web poøadatele:
                                                    </td>
                                                    <td style="color: #FF3300">
                                                        <a href="http://zrliga.zrnet.cz/" target="_blank" style="cursor: pointer">http://zrliga.zrnet.cz/</a>
                                                    </td>
                                                </tr>
                                            </table>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="clanek">
                                        <h2>Èasovka do Vìcovskıch vrchù
                                        </h2>
                                        <div>
                                            16. roèník èasovky do vrchu na trase Jimramov - Odranec, délka 10km s pøevıšením 300m.
                                            Prezentace v kulturním domì v Odranci od 12:00 do 13:00. Start od Provozovny „BISTRO“
                                            v Jimramovì od 14:30.
                                            <br />
                                            <br />
                                        </div>
                                        <div>
                                            <table>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">Termín:
                                                    </td>
                                                    <td style="color: #FF3300">5.9.2015
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">Typ závodu:
                                                    </td>
                                                    <td style="color: #FF3300">Èasovka do vrchu
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">Startují:
                                                    </td>
                                                    <td style="color: #FF3300">Všechny kategorie
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">Web poøadatele:
                                                    </td>
                                                    <td style="color: #FF3300">
                                                        <a href=https://www.facebook.com/groups/131522306939156/?fref=ts"
                                                            target="_blank" style="cursor: pointer">Facebook - TJ Vìcov</a>
                                                    </td>
                                                </tr>
                                            </table>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="clanek">
                                        <h2>Tour de Okøíšky
                                        </h2>
                                        <div>
                                            Èasovka do vrchu, která je souèástí celoroèní všestranné sportovní soutìe Okøíšskı
                                            Univerzál. Tento rok vede trasa z Pøibyslavic pøes obec Èíhalín, dále na kopec k
                                            silnici èíslo II/351.
                                            <br />
                                            <br />
                                        </div>
                                        <div>
                                            <table>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">Termín:
                                                    </td>
                                                    <td style="color: #FF3300">20.9.2015
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">Typ závodu:
                                                    </td>
                                                    <td style="color: #FF3300">Èasovka do vrchu
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">Startují:
                                                    </td>
                                                    <td style="color: #FF3300">Všechny kategorie
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">Web poøadatele:
                                                    </td>
                                                    <td style="color: #FF3300">
                                                        <a href=http://www.okrisky.cz/VismoOnline_ActionScripts/File.ashx?id_org=10977&id_dokumenty=363488"
                                                            target="_blank" style="cursor: pointer">http://www.okrisky.cz/</a>
                                                    </td>
                                                </tr>
                                            </table>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="clanek">
                                        <h2>
                                            Tryskem na Kluèovskou horu
                                        </h2>
                                        <div>
                                            Èasovka do vrchu se startem u Tøebíèe v obci Støíte a cílem na Kluèovské hoøe.
                                            <br />
                                            <br />
                                        </div>
                                        <div>
                                            <table>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">
                                                        Termín:
                                                    </td>
                                                    <td style="color: #FF3300">
                                                        28.9.2016
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">
                                                        Typ závodu:
                                                    </td>
                                                    <td style="color: #FF3300">
                                                        Èasovka do vrchu
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">
                                                        Startují:
                                                    </td>
                                                    <td style="color: #FF3300">
                                                        Všechny kategorie
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">
                                                        Web poøadatele:
                                                    </td>
                                                    <td style="color: #FF3300">
                                                        <a href="http://cyklotrebic.blgz.cz/" target="_blank" style="cursor: pointer">
                                                            http://cyklotrebic.blgz.cz/</a>
                                                    </td>
                                                </tr>
                                            </table>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </td>
                    </tr>
                </table>
            </div>
            <div id="tab-54" class="clasictext">
                <table>
                    <tr>
                        <td>
                            <ul class="paging6">
                                <li>
                                    <div class="clanek" style="padding-top: 15px; text-align: center; font-weight: bold;
                                        color: #336600;">
                                        Prosíme poøadatele, aby nám zasílali informace k dalším MTB závodùm na Vysoèinì.
                                        Dìkujeme.
                                    </div>
                                </li>
                                <li>
                                    <div class="clanek">
                                        <h2>
                                            Okolo Zudova vrchu - <a href="http://www.vysocinamtbcup.cz/" target="_blank" style="color: #008000;">Vysoèina MTB CUP</a>
                                        </h2>
                                        <div class="MTBzavody">
                                            <a href="images/Foto/OkoloZudovaVrchu.jpg" title="Okolo Zudova vrchu">
                                                <img style="float: left; padding-right: 10px; padding-bottom: 10px;" src="images/Foto/thumb_OkoloZudovaVrchu.jpg"
                                                    alt="O Štamberského krále" border="none" /></a>
                                        </div>
                                        <div>
                                            Štafetovı MTB závod z Lovìtína okolo Zudova vrchu pøes Batelov zpìt do Lovìtína.
                                            <br />
                                            <br />
                                        </div>
                                        <div>
                                            <table>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">
                                                        Termín:
                                                    </td>
                                                    <td style="color: #FF3300">
                                                        11.4.2015
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">
                                                        Typ závodu:
                                                    </td>
                                                    <td style="color: #FF3300">
                                                        MTB štafetovı
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">
                                                        Startují:
                                                    </td>
                                                    <td style="color: #FF3300">
                                                        Všechny kategorie
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">
                                                        Web poøadatele:
                                                    </td>
                                                    <td style="color: #FF3300">
                                                        <a href="http://www.zudak.cz/" target="_blank" style="cursor: pointer">http://www.zudak.cz/</a>
                                                    </td>
                                                </tr>
                                            </table>
                                        </div>
                                    </div>
                                </li>  
                                <li>
                                    <div class="clanek">
                                        <h2>MTB O putovní pohár Barchanu - <a href="http://www.vysocinamtbcup.cz/" target="_blank"
                                            style="color: #008000;">Vysoèina MTB CUP</a>
                                        </h2>
                                        <div>
                                            Závod horskıch kol, kterı se jede v Jemnici. Všechny trasy vedou po lesních cestách
                                            v Mìstském lese a pøilehlém okolí. Délka trasy je cca 44 km (2 kola po 22 km).
                                            <br />
                                            <br />
                                        </div>
                                        <div>
                                            <table>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">Termín:
                                                    </td>
                                                    <td style="color: #FF3300">2.5.2015
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">Typ závodu:
                                                    </td>
                                                    <td style="color: #FF3300">Mistrovství Kraje VYSOÈINA XCM
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">Startují:
                                                    </td>
                                                    <td style="color: #FF3300">Všechny kategorie
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">Web poøadatele:
                                                    </td>
                                                    <td style="color: #FF3300">
                                                        <a href="http://www.mtb.jemnice.cz/" target="_blank" style="cursor: pointer">http://www.mtb.jemnice.cz/</a>
                                                    </td>
                                                </tr>
                                            </table>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="clanek">
                                        <h2>O Štamberského krále - <a href="http://www.vysocinamtbcup.cz/" target="_blank"
                                            style="color: #008000;">Vysoèina MTB CUP</a>
                                        </h2>
                                        <div>
                                            <div class="MTBzavody">
                                                <a href="images/Foto/plakat_O_Stamberskeho_Krale.jpg" title="O Štamberského krále">
                                                    <img style="float: left; padding-right: 10px; padding-bottom: 10px;" src="images/Foto/thumb_plakat_O_Stamberskeho_Krale.jpg"
                                                        alt="O Štamberského krále" border="none" /></a>
                                            </div>
                                            <div>
                                                XC se startem ve Lhotce u Telèe. Tra závodu vede pøevánì po lesních cestách v
                                                okolí obce Lhotka. 
                                                Délka okruhu je 4km, pøevıšení 170 m. Start a cíl u Penzionu pod Štamberkem.
                                                <br />
                                                <br />
                                            </div>
                                        </div>
                                        <div>
                                            <table>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">Termín:
                                                    </td>
                                                    <td style="color: #FF3300">8.5.2015
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">Typ závodu:
                                                    </td>
                                                    <td style="color: #FF3300">MTB cross country
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">Startují:
                                                    </td>
                                                    <td style="color: #FF3300">Všechny kategorie
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">Web poøadatele:
                                                    </td>
                                                    <td style="color: #FF3300">
                                                        <a href="http://www.eurofoam-sport.com/text/cs/o-stamberskeho-krale-2012.aspx" target="_blank"
                                                            style="cursor: pointer">http://www.eurofoam-sport.com/</a>
                                                    </td>
                                                </tr>
                                            </table>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="clanek">
                                        <h2>
                                            Jihlavská 24 MTB
                                        </h2>
                                        <div>
                                            <div class="MTBzavody">
                                                <a href="images/Foto/plakat-cerveny-stoj-2012_600px.jpg" title="Jihlavská 24 MTB">
                                                    <img style="float: left; padding-right: 10px; padding-bottom: 10px;" src="images/Foto/thumb_plakat-cerveny-stoj-2012.jpg"
                                                        alt="Jihlavská 24 MTB" border="none" /></a>
                                            </div>
                                            <div>
                                                Závod se jede na 9,5km okruhu v Jihlavì s pøevıšením 220m a je poøádán jako MISTROVSTVÍ
                                                ÈESKÉ REPUBLIKY 24 HODIN MTB, MISTROVSTVÍ ÈESKÉ REPUBLIKY 12 HODIN MTB a MISTROVSTVÍ
                                                STØEDNÍCH ŠKOL 6 HODIN MTB.
                                                <br />
                                                <br />
                                            </div>
                                        </div>
                                        <div>
                                            <table>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">
                                                        Termín:
                                                    </td>
                                                    <td style="color: #FF3300">
                                                        16.5.2015 - 17.5.2015
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">
                                                        Typ závodu:
                                                    </td>
                                                    <td style="color: #FF3300">
                                                        MTB maraton
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">
                                                        Startují:
                                                    </td>
                                                    <td style="color: #FF3300">
                                                        Mui, eny, mix, studenti støedních škol, podrobnosti na webu poøadatele
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">
                                                        Web poøadatele:
                                                    </td>
                                                    <td style="color: #FF3300">
                                                        <a href="http://www.jihlavska24mtb.cz" target="_blank" style="cursor: pointer">http://www.jihlavska24mtb.cz</a>
                                                    </td>
                                                </tr>
                                            </table>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="clanek">
                                        <h2>ÈEZ MTB maraton
                                        </h2>
                                        <div>
                                            <div class="MTBzavody">
                                                <a href="images/Foto/plakat_CEZMTB_2013.jpg" title="ÈEZ MTB maraton">
                                                    <img style="float: left; padding-right: 10px; padding-bottom: 10px;" src="images/Foto/thumb_plakat_CEZMTB_2013.jpg"
                                                        alt="ÈEZ MTB maraton" border="none" /></a>
                                            </div>
                                            <div>
                                                Nabízíme Vám pohodovou trasu Pøírodním parkem Tøebíèsko, která vede zvlnìnou, èlenitou
                                                a harmonicky vyváenou krajinou po znaèenıch cykloturistickıch cestách.
                                                <br />
                                                <br />
                                            </div>
                                        </div>
                                        <div>
                                            <table>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">Termín:
                                                    </td>
                                                    <td style="color: #FF3300">17.5.2015
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">Typ závodu:
                                                    </td>
                                                    <td style="color: #FF3300">MTB maraton
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">Startují:
                                                    </td>
                                                    <td style="color: #FF3300">Všechny kategorie
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">Web poøadatele:
                                                    </td>
                                                    <td style="color: #FF3300">
                                                        <a href="http://www.cezmtbmaraton.cz/" target="_blank" style="cursor: pointer">http://www.cezmtbmaraton.cz/</a>
                                                    </td>
                                                </tr>
                                            </table>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="clanek">
                                        <h2>Birell Bike Vysoèina Maraton
                                        </h2>
                                        <div>
                                            Trasa v okolí Nového Mìsta na Moravì s cílem na Harusovì kopci.
                                            <br />
                                            <br />
                                        </div>
                                        <div>
                                            <table>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">Termín:
                                                    </td>
                                                    <td style="color: #FF3300">23.5.2015
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">Typ závodu:
                                                    </td>
                                                    <td style="color: #FF3300">MTB maraton
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">Startují:
                                                    </td>
                                                    <td style="color: #FF3300">Všechny kategorie
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">Web poøadatele:
                                                    </td>
                                                    <td style="color: #FF3300">
                                                        <a href="http://www.vysocina-arena.cz/cz/maraton.html" target="_blank" style="cursor: pointer">
                                                            http://www.vysocina-arena.cz/cz/maraton.html </a>
                                                    </td>
                                                </tr>
                                            </table>
                                        </div>
                                    </div>
                                </li>   
                                <li>
                                    <div class="clanek">
                                        <h2>MTB Èeøínek - <a href="http://www.vysocinamtbcup.cz/" target="_blank"
                                            style="color: #008000;">Vysoèina MTB CUP</a>
                                        </h2>
                                        <div>
                                            <div>
                                                XC v atraktivním prostøedí na Èeøínku u Kostelce u Jihlavy.
                                                <br />
                                                <br />
                                            </div>
                                        </div>
                                        <div>
                                            <table>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">Termín:
                                                    </td>
                                                    <td style="color: #FF3300">6.6.2015
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">Typ závodu:
                                                    </td>
                                                    <td style="color: #FF3300">MTB cross country
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">Startují:
                                                    </td>
                                                    <td style="color: #FF3300">Všechny kategorie
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">Web poøadatele:
                                                    </td>
                                                    <td style="color: #FF3300">
                                                        <a href="http://www.uniqa-mtb.cz/" target="_blank"
                                                            style="cursor: pointer">http://www.uniqa-mtb.cz/</a>
                                                    </td>
                                                </tr>
                                            </table>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="clanek">
                                        <h2>
                                            Cannondale Kamenickı maraton
                                        </h2>
                                        <div>
                                            Tra je støednì obtíná, vhodná pro aktivní úèastníky závodù i pro pøíchozí, jede
                                            se pøevánì lesním komplexem Troják, pøevaují lesní a polní cesty z èásti asfalt.
                                            <br />
                                            <br />
                                        </div>
                                        <div>
                                            <table>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">
                                                        Termín:
                                                    </td>
                                                    <td style="color: #FF3300">
                                                        27.6.2015
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">
                                                        Typ závodu:
                                                    </td>
                                                    <td style="color: #FF3300">
                                                        MTB maraton
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">
                                                        Startují:
                                                    </td>
                                                    <td style="color: #FF3300">
                                                        Všechny kategorie
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">
                                                        Web poøadatele:
                                                    </td>
                                                    <td style="color: #FF3300">
                                                        <a href="http://www.mtbkamenicenl.cz/" target="_blank" style="cursor: pointer">http://www.mtbkamenicenl.cz/</a>
                                                    </td>
                                                </tr>
                                            </table>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="clanek">
                                        <h2>Vysoèina Cycling MTB Tøebíè - <a href="http://www.vysocinamtbcup.cz/" target="_blank"
                                            style="color: #008000;">Vysoèina MTB CUP</a>
                                        </h2>
                                        <div>
                                            Trasa se startem a cílem v areálu staré borovinské továrny vede po stezkách v Libušinì
                                            údolí.
                                            <br />
                                            <br />
                                        </div>
                                        <div>
                                            <table>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">Termín:
                                                    </td>
                                                    <td style="color: #FF3300">4.7.2015
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">Typ závodu:
                                                    </td>
                                                    <td style="color: #FF3300">MTB cross country
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">Startují:
                                                    </td>
                                                    <td style="color: #FF3300">Všechny kategorie
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">Web poøadatele:
                                                    </td>
                                                    <td style="color: #FF3300">
                                                        <a href="http://www.vysocinacycling.cz/akce.aspx" target="_blank" style="cursor: pointer">
                                                            http://www.vysocinacycling.cz/</a>
                                                    </td>
                                                </tr>
                                            </table>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="clanek">
                                        <h2>Pøes 3 vrchy Vysoèiny
                                        </h2>
                                        <div>
                                            Trasa vede pøes tøi nejvyšší body v okolí Horní Cerekve, pøes Javoøici, Èeøínek
                                            a Køemešník.
                                            <br />
                                            <br />
                                        </div>
                                        <div>
                                            <table>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">Termín:
                                                    </td>
                                                    <td style="color: #FF3300">11.7.2015
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">Typ závodu:
                                                    </td>
                                                    <td style="color: #FF3300">MTB maraton
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">Startují:
                                                    </td>
                                                    <td style="color: #FF3300">Všechny kategorie
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">Web poøadatele:
                                                    </td>
                                                    <td style="color: #FF3300">
                                                        <a href="http://www.trivrchyvysociny.info/" target="_blank" style="cursor: pointer">
                                                            http://www.trivrchyvysociny.info/</a>
                                                    </td>
                                                </tr>
                                            </table>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="clanek">
                                        <h2>Cyklistickı závod kolem Vlasenice - <a href="http://www.vysocinamtbcup.cz/" target="_blank"
                                            style="color: #008000;">Vysoèina MTB CUP</a>
                                        </h2>
                                        <div>
                                            Jak u sám název závodu napovídá, trasa vede v okolí obce Vlasenice poblí Kamenice
                                            nad Lipou.
                                            <br />
                                            <br />
                                        </div>
                                        <div>
                                            <table>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">Termín:
                                                    </td>
                                                    <td style="color: #FF3300">18.7.2015
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">Typ závodu:
                                                    </td>
                                                    <td style="color: #FF3300">MTB maraton
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">Startují:
                                                    </td>
                                                    <td style="color: #FF3300">Všechny kategorie
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">Web poøadatele:
                                                    </td>
                                                    <td style="color: #FF3300">
                                                        <a href="http://www.lhota-vlasenice.cz/" target="_blank" style="cursor: pointer">http://www.lhota-vlasenice.cz/</a>
                                                    </td>
                                                </tr>
                                            </table>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="clanek">
                                        <h2>
                                            AVG Námìšskı cyklomaraton
                                        </h2>
                                        <div>
                                            Trasa vede v okolí Námìštì nad Oslavou a Dalešické pøehrady.
                                            <br />
                                            <br />
                                        </div>
                                        <div>
                                            <table>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">
                                                        Termín:
                                                    </td>
                                                    <td style="color: #FF3300">
                                                        16.8.2014
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">
                                                        Typ závodu:
                                                    </td>
                                                    <td style="color: #FF3300">
                                                        MTB maraton
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">
                                                        Startují:
                                                    </td>
                                                    <td style="color: #FF3300">
                                                        Všechny kategorie
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">
                                                        Web poøadatele:
                                                    </td>
                                                    <td style="color: #FF3300">
                                                        <a href="http://cyklomaraton.sokolisti.org/" target="_blank" style="cursor: pointer">
                                                            http://cyklomaraton.sokolisti.org/</a>
                                                    </td>
                                                </tr>
                                            </table>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="clanek">
                                        <h2>Bike maraton Knìice - <a href="http://www.vysocinamtbcup.cz/" target="_blank"
                                            style="color: #008000;">Vysoèina MTB CUP</a>
                                        </h2>
                                        <div>
                                            Pohodovı závod pro pøíznivce horskıch kol, kteøí si chtìjí zmìøit síly s ostatními,
                                            vede krásnou krajinou Vysoèiny pøevánì po polních a lesních cestách s minimálním
                                            køíením silnic s celkovım pøevıšením 750m a délkou 50km (hlavní závod).
                                            <br />
                                            <br />
                                        </div>
                                        <div>
                                            <table>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">Termín:
                                                    </td>
                                                    <td style="color: #FF3300">12.9.2015
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">Typ závodu:
                                                    </td>
                                                    <td style="color: #FF3300">MTB maraton
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">Startují:
                                                    </td>
                                                    <td style="color: #FF3300">Všechny kategorie
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">Web poøadatele:
                                                    </td>
                                                    <td style="color: #FF3300">
                                                        <a href="http://www.cykloknezice.cz" target="_blank" style="cursor: pointer">
                                                            http://www.cykloknezice.cz </a>
                                                    </td>
                                                </tr>
                                            </table>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="clanek">
                                        <h2>
                                            MTB Vystrkovská 250
                                        </h2>
                                        <div>
                                            Jde o štafetu dvojic na horskıch kolech po dobu 120 minut po vyznaèené pøiblinì
                                            6km dlouhé trati. Závod je souèástí poháru Triatlet Humpolecka.
                                            <br />
                                            <br />
                                        </div>
                                        <div>
                                            <table>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">
                                                        Termín:
                                                    </td>
                                                    <td style="color: #FF3300">
                                                        6.9.2014
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">
                                                        Typ závodu:
                                                    </td>
                                                    <td style="color: #FF3300">
                                                        MTB závod dvojic
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">
                                                        Startují:
                                                    </td>
                                                    <td style="color: #FF3300">
                                                        Všechny kategorie
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">
                                                        Web poøadatele:
                                                    </td>
                                                    <td style="color: #FF3300">
                                                        <a href="http://www.vystrkov.cz/250/" target="_blank" style="cursor: pointer">http://www.vystrkov.cz/250/</a>
                                                    </td>
                                                </tr>
                                            </table>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="clanek">
                                        <h2>
                                            Rynárecká bejkovna - <a href="http://www.vysocinamtbcup.cz/" target="_blank"
                                            style="color: #008000;">Vysoèina MTB CUP</a>
                                        </h2>
                                        <div>
                                            MTB cross country závod v okolí obce Rynárec u Pelhøimova.
                                            <br />
                                            <br />
                                        </div>
                                        <div>
                                            <table>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">
                                                        Termín:
                                                    </td>
                                                    <td style="color: #FF3300">
                                                        19.9.2015
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">
                                                        Typ závodu:
                                                    </td>
                                                    <td style="color: #FF3300">
                                                        Mistrovství Kraje VYSOÈINA XCO
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">
                                                        Startují:
                                                    </td>
                                                    <td style="color: #FF3300">
                                                        Všechny kategorie
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">
                                                        Web poøadatele:
                                                    </td>
                                                    <td style="color: #FF3300">
                                                        <a href="http://cyklohobby.rynarec.cz/index.php/bejkovna" target="_blank" style="cursor: pointer">
                                                            http://cyklohobby.rynarec.cz/index.php/bejkovna</a>
                                                    </td>
                                                </tr>
                                            </table>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="clanek">
                                        <h2>Velká cena Fajáku
                                        </h2>
                                        <div>
                                            Velká dìtská cena Fajáku - tradièní závod pro nejmenší, malé a vìtší dìti s bohatou
                                            tombolou. Tra je situována do areálu sjezdovky na Fajtovì kopci u Velkého Meziøíèí.
                                            <br />
                                            <br />
                                        </div>
                                        <div>
                                            <table>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">Termín:
                                                    </td>
                                                    <td style="color: #FF3300">22.6.2014
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">Typ závodu:
                                                    </td>
                                                    <td style="color: #FF3300">MTB cross country + sprint maraton
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">Startují:
                                                    </td>
                                                    <td style="color: #FF3300">Všechny kategorie
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">Web poøadatele:
                                                    </td>
                                                    <td style="color: #FF3300">
                                                        <a href="http://www.jkcyklo.cz/" target="_blank" style="cursor: pointer">http://www.jkcyklo.cz/</a>
                                                    </td>
                                                </tr>
                                            </table>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="clanek">
                                        <h2>
                                            Jihlavská 24 KM
                                        </h2>
                                        <div>
                                            24 km v okolí Zborné.
                                            <br />
                                            <br />
                                        </div>
                                        <div>
                                            <table>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">Termín:
                                                    </td>
                                                    <td style="color: #FF3300">27.9.2014
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">Typ závodu:
                                                    </td>
                                                    <td style="color: #FF3300">MTB maraton
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">Startují:
                                                    </td>
                                                    <td style="color: #FF3300">Všechny kategorie
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">Web poøadatele:
                                                    </td>
                                                    <td style="color: #FF3300">
                                                        <a href="http://www.jihlavska24mtb.cz/" target="_blank" style="cursor: pointer">http://www.jihlavska24mtb.cz/</a>
                                                    </td>
                                                </tr>
                                            </table>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="clanek">
                                        <h2>Humpolecká 50
                                        </h2>
                                        <div>
                                            26 km okruh v okolí Humpolce. Mui absolvují 2 okruhy. Samotnı okruh startuje u
                                            humpolecké rybárny. Vıšlapem se závodník dostane k dominantì mìsta, zøíceninì hradu
                                            Orlík, a dále pokraèuje prùjezdem mìsta k obci Hnìvkovice, kde za vesnicí odboèuje
                                            k rekreaèní oblasti Valcha... Rychlé technické sjezdy zde budou pro zavodníky zajisté
                                            lahùdkou.
                                            <br />
                                            <br />
                                        </div>
                                        <div>
                                            <table>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">Termín:
                                                    </td>
                                                    <td style="color: #FF3300">27.9.2014
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">Typ závodu:
                                                    </td>
                                                    <td style="color: #FF3300">MTB maraton
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">Startují:
                                                    </td>
                                                    <td style="color: #FF3300">Všechny kategorie
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">Web poøadatele:
                                                    </td>
                                                    <td style="color: #FF3300">
                                                        <a href="http://humpolecka50.cz/" target="_blank" style="cursor: pointer">http://humpolecka50.cz/</a>
                                                    </td>
                                                </tr>
                                            </table>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="clanek">
                                        <h2>SCOTT Kriterium horskıch kol Pelhøimov „Setkání mistrù“
                                        </h2>
                                        <div>
                                            Okruh v centru mìsta o délce cca 1 km, vedenı kolem námìstí a po pøilehlıch komunikacích,
                                            technicky nároènı,
                                            <br />
                                            <br />
                                        </div>
                                        <div>
                                            <table>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">Termín:
                                                    </td>
                                                    <td style="color: #FF3300">11.9.2013
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">Typ závodu:
                                                    </td>
                                                    <td style="color: #FF3300">MTB kriterium
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">Startují:
                                                    </td>
                                                    <td style="color: #FF3300">Všechny kategorie
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">Web poøadatele:
                                                    </td>
                                                    <td style="color: #FF3300">
                                                        <a href="http://www.team.velosport.cz/cs/clanek/29/scott-kriterium-horskych-kol-pelhrimov.html"
                                                            target="_blank" style="cursor: pointer">http://www.team.velosport.cz/</a>
                                                    </td>
                                                </tr>
                                            </table>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="clanek">
                                        <h2>
                                            Cyklošvih okolo Rokštejna
                                        </h2>
                                        <div>
                                            Veøejnı závod na horskıch kolech v obci Støíov u Brtnice, kterı se jede v okolí zøíceniny hradu Rokštejn.
                                            <br />
                                            <br />
                                        </div>
                                        <div>
                                            <table>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">
                                                        Termín:
                                                    </td>
                                                    <td style="color: #FF3300">
                                                        ...
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">
                                                        Typ závodu:
                                                    </td>
                                                    <td style="color: #FF3300">
                                                        MTB cross country
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">
                                                        Startují:
                                                    </td>
                                                    <td style="color: #FF3300">
                                                        Všechny kategorie
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">
                                                        Web poøadatele:
                                                    </td>
                                                    <td style="color: #FF3300">
                                                        <a href="files\OkoloRokstejna5r.pdf" target="_blank" style="cursor: pointer">Propozice</a>
                                                    </td>
                                                </tr>
                                            </table>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="clanek">
                                        <h2>
                                            eXtreme winter cup
                                        </h2>
                                        <div>
                                            Veøejnı závod na horskıch kolech ve ïáru nad Sázavou.
                                            <br />
                                            <br />
                                        </div>
                                        <div>
                                            <table>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">
                                                        Termín:
                                                    </td>
                                                    <td style="color: #FF3300">
                                                        14.12.2013
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">
                                                        Typ závodu:
                                                    </td>
                                                    <td style="color: #FF3300">
                                                        MTB cross country
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">
                                                        Startují:
                                                    </td>
                                                    <td style="color: #FF3300">
                                                        Všechny kategorie
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">
                                                        Web poøadatele:
                                                    </td>
                                                    <td style="color: #FF3300">
                                                        <a href="http://extremewintercup.webnode.cz" target="_blank" style="cursor: pointer">http://extremewintercup.webnode.cz</a>
                                                    </td>
                                                </tr>
                                            </table>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </td>
                    </tr>
                </table>
            </div>
            <div id="tab-55" class="clasictext">
                <table>
                    <tr>
                        <td>
                            <ul class="paging7">
                                <li>
                                    <div class="clanek" style="padding-top: 15px; text-align: center; font-weight: bold;
                                        color: #336600;">
                                        Prosíme poøadatele, aby nám zasílali informace k dalším cyklistickım akcím na Vysoèinì.
                                        Dìkujeme.
                                    </div>
                                </li>
                                <li>
                                    <div class="clanek">
                                        <h2>
                                            Køíem kráem Vysoèinou na kole
                                        </h2>
                                        <div>
                                            <div id="raceImage">
                                                <img style="float: left; padding-right: 10px; padding-bottom: 10px;" src="images/Foto/logoKkVNaKole.gif"
                                                        alt="Køíem kráem Vysoèinou na kole" border="none" />
                                            </div>
                                            <div>
                                                Letošní šestı roèník akce "Køíem kráem Vysoèinou na kole 2013" probìhne ve dnech
                                                28.6. - 5.7.2013. Plánujeme tradièní start z Masarykova námìstí v Jihlavì (28.6.2013)
                                                a dojezd do Akciového pivovaru Dalešice (5.7.2013).<br />
                                                Tra: 28.6.2013 Jihlava - Luka nad Jihlavou - Brtnice -Opatov - Tøeš (61,2 km)
                                                29.6.2013 Tøeš - Kostelec - Hutì - Novı Rychnov - Køemešník - Pelhøimov (44 km)
                                                30.6.2013 Pelhøimov - Proseè - Oboøištì - Vlásenice - Drbohlavy - Boejov - Kámen
                                                - Pacov (45,7 km) 1.7.2013 Pacov - Cetoraz - Obrataò - Èernovice - Mnich - Kamenice
                                                nad Lipou (42,2 km) 2.7.2013 Kamenice nad Lipou - Èastrov - Ctiboø - Metánov - Rodinov
                                                - irovnice (43,2 km) 3.7.2013 irovnice - Poèátky - Svatá Kateøina - Jihlávka -
                                                Kalištì - Javoøice - Míchova skála - Lhotka - Èástkovice - Telè (42,6
                                                km) 4.7.2013 Telè - Rozsíèky - Opatov - Pøedín - Pokojovice - Petrovice - Sokolí
                                                - Tøebíè (57,3 km) 5.7.2013 Tøebíè - Nárameè - Ocmanice - Hartvíkovice - Kramolín
                                                - Dalešice (50,6 km)
                                                <br />
                                                <br />
                                            </div>
                                        </div>
                                        <div>
                                            <table>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">
                                                        Termín:
                                                    </td>
                                                    <td style="color: #FF3300">
                                                        28.6.2013 - 5.7.2013
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">
                                                        Web poøadatele:
                                                    </td>
                                                    <td style="color: #FF3300">
                                                        <a href="http://www.vysocinounakole.cz/" target="_blank" style="cursor: pointer">
                                                            http://www.vysocinounakole.cz/</a>
                                                    </td>
                                                </tr>
                                            </table>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="clanek">
                                        <h2>
                                            HAIBIKE BIKE SRAZ NA VYSOÈINÌ
                                        </h2>
                                        <div>
                                            <div id="raceImage1">
                                                <a href="images/Foto/letak_2014-1200ZM.jpg" title="HAIBIKE BIKE SRAZ NA VYSOÈINÌ">
                                                    <img style="float: left; padding-right: 10px; padding-bottom: 10px;" src="images/Foto/thumb_Letak_BS_2012.jpg"
                                                        alt="HAIBIKE BIKE SRAZ NA VYSOÈINÌ" border="none" /></a>
                                            </div>
                                            <div>
                                                Idea našich Bike Srazù je stále stejná. Snaíme se o víkendové setkání lidí, je
                                                horské kolo váe poutem  nejpevnìjším. Tato bajková setkání se odehrávají na pozadí
                                                vyjídìk v místy kruté ale i romantické, èlovìkem zkrocené, ale i  panenské, krásné
                                                a ještì krásnìjší pøírodì Èeskomoravské Vrchoviny. Na své si pøijdou i vyznavaèi
                                                lahodnıch mokù pøi spoleèném veèerním bajkovém veèeru. Posezení slouí ke sblíení
                                                a vùbec všeobecnému potlachu všech úèastníkù. Hlavním cílem je sraz bajkerù, pøátelské
                                                svezení a pobavení se. Po svìtovém poháru MTB Merida Bike Vysoèinì se jedná o druhou
                                                monost jak poznat zdejší terény. Právì díky tomu, e se nejedná o závod, mùete si
                                                vychutnat zdejší terén naplno. Další informace o programu naleznete v propozicích.
                                                <br />
                                                <br />
                                            </div>
                                        </div>
                                        <div>
                                            <table>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">
                                                        Termín:
                                                    </td>
                                                    <td style="color: #FF3300">
                                                        17.7.2015 - 19.7.2015
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">
                                                        Web poøadatele:
                                                    </td>
                                                    <td style="color: #FF3300">
                                                        <a href="http://bikesraz.turbosnekteam.com/" target="_blank" style="cursor: pointer">
                                                            http://bikesraz.turbosnekteam.com/</a>
                                                    </td>
                                                </tr>
                                            </table>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="clanek">
                                        <h2>
                                            Na kole dìtem Vysoèinou
                                        </h2>
                                        <div>
                                            <div>
                                                <img style="float: left; padding-right: 10px; padding-bottom: 10px;" src="images/Foto/thumb_NaKoleDetemVysocinou.jpg"
                                                    alt="Na kole dìtem Vysoèinou" border="none" />
                                            </div>
                                            <div>
                                                Stejnì jako loni, i v letošním roce poøádáme dobroèinnou cyklojízdu Na kole dìtem
                                                Vysoèinou. Letošní roèník se uskuteèní v sobotu, 7. záøí 2013. Start pelotonu je
                                                na námìstí Zachariáše z Hradce v Telèi v 10:00, platba dobrovolného startovného
                                                bude probíhat od 8:30. V èele pelotonu pojede mistr svìta v jízdì na vysokém kole,
                                                pan Josef Zimovèák.
                                                <br />
                                                Záštitu nad projektem pøevzali: RNDr. Miloš Vystrèil - senátora volebního obvodu
                                                52 (okres Jihlava, Daèicko a Slavonicko) Ing. Tomáš Škaryd - èlen Rady Kraje Vysoèina
                                                Ing. Jaroslav Vymazal - primátor mìsta Jihlavy Mgr. Roman Fabeš - starosta mìsta
                                                Telèe.
                                                <br />
                                                Celková délka trasy je cca 73 km, její podrobnı popis naleznete zde: http://www.nakoledetemvysocinou.cz/trasa-cyklojizdy/.
                                                <br />
                                                I v letošním roce je startovné dobrovolné. Vıtìek ze startovného a ze sponzorskıch
                                                darù bude vìnován na podporu onkologicky nemocnıch dìtí. Polovina vıtìku bude vìnována
                                                nadaènímu fondu Na kole dìtem, kterı prostøedky pouije na financování rekondièních
                                                pobytù onkologicky nemocnıch dìtí. Druhá polovina pak pøipadne pediatrickému oddìlení
                                                Nemocnice Jihlava, které z vybrané èástky poøídí pulsní oxymetr HOYER, pøístroj
                                                na mìøení tepové frekvence a procenta kyslíku v krvi.
                                                <br />
                                                Protoe jsou mezi úèastníky i cyklisté z Jihlavy a okolí, chtìli bychom jim vyjít
                                                vstøíc a usnadnit jim dopravu do Telèe a zpìt. Pro zájemce nabízíme monost autobusové
                                                pøepravy. Kapacita autobusu je omezená, 49 osob na sezení, 30 kol do vleku. Vzhledem
                                                k tomu, e máme na organizaci cyklojízdy omezené finanèní prostøedky, jednalo by
                                                se o slubu placenou, a to ve vıši 70 Kè za 1 cestu (vè. pøepravy kola). Pokud byste
                                                o danou slubu mìli zájem, nahlaste se, prosím, buï na tel.è. 775195135 nebo na
                                                emailu nakoledetemvysocinou@seznam.cz.
                                                <br />
                                                Mezi ty, kteøí se rozhodli naši akci podpoøit patøí i hudební skupiny Indienami
                                                a ROS3S, které po pøíjezdu pelotonu zpìt do Telèe zahrají na telèském námìstí. Bez
                                                nároku na honoráø! Vstupné je zdarma, na místì bude monost dobrovolnì pøispìt na
                                                onkologicky nemocné dìti do naší kasièky. Vıtìek z celé akce bude pøedán zástupcùm
                                                nadaèního fondu a pediatrického oddìlení v závìru koncertu. Kromì koncertu probìhne
                                                také pøednáška pana Josefa Zimovèáka o èinnosti jeho nadaèního fondu a jeho zkušenostech
                                                s jízdou na vysokém kole. Registrace na cyklojízdu je moná do 1.9.2012. Není povinná,
                                                ale doporuèená - registrováním si zajistíte obèerstvení na trase a navíc budete
                                                zaøazeni do slosování o vìcné ceny, které probìhne po pøíjezdu na námìstí v Telèi.
                                                Registrovat se mùete zde: http://www.nakoledetemvysocinou.cz/registrace2/.
                                                <br />
                                                Doufáme, e se nám v letošním roce podaøí oslovit ještì více úèastníkù a s jejich
                                                pomocí vybereme vyšší finanèní pøíspìvek ne loni, kdy se za pomoci 150 úèastníkù
                                                a sponzorù podaøilo vybrat 40 910 Kè. Budeme rádi, pokud zváíte úèast na našem
                                                projektu a pøípadnì pøizvete i Vaše pøátele a známé.
                                                <br />
                                                Za organizaèní tım, Lucie Doanová CoDoMa, o.s. 775195135 www.nakoledetemvysocinou.cz
                                                <br />
                                                <br />
                                            </div>
                                        </div>
                                        <div>
                                            <table>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">
                                                        Termín:
                                                    </td>
                                                    <td style="color: #FF3300">
                                                        6.9.2014
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">
                                                        Web poøadatele:
                                                    </td>
                                                    <td style="color: #FF3300">
                                                        <a href="http://www.nakoledetemvysocinou.cz/" target="_blank" style="cursor: pointer">
                                                            http://www.nakoledetemvysocinou.cz/</a>
                                                    </td>
                                                </tr>
                                            </table>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </td>
                    </tr>
                </table>
            </div>
            <div id="tab-56">
                <table>
                    <tr>
                        <td>
                            <ul class="paging11">
                                <li>
                                    <div id="clanek11" class="rozbalovaciclanek">
                                        <div class="infoclanek">
                                            Autor: Ivo Fišer<br />
                                            Vydáno: 21.8.2013
                                        </div>
                                        <div class="uvodclanku">
                                            <h1 class="nadpish1">ïárskı Pilman 2012
                                            </h1>
                                            Ve Vysoèina Cycling existuje i malá triatlonová sekce, do které patøí jeden ostøejší
                                            závodník Dušan Procházka a já jako dálkoplaz a jeho fanoušek:-). Rosa Krotkı mi
                                            ze starého pøátelství umonil vozit i tımovı dres - jestli v nìm ale zvedám presti
                                            tımu, to u je jiná otázka:-)
                                        </div>
                                        <div class="showtext" align="right">
                                            <button type="button" class="viewpart" style="width: 67px; height: 20px; font-size: xx-small;
                                                text-align: right;">Zobrazit</button>
                                        </div>
                                        <div class="textclanku">
                                            <br />
                                            Nicménì co není v nohách, mùe bıt zase v hlavì nebo aspoò na jazyku a proto jsem
                                            se chopil pøíleitosti a pod záminkou vlastního zranìní a propadlého startovného
                                            (co je v triatlonu trochu vìtší poloka ne jinde) nalákal v minulém roce do ïáru
                                            dva skuteèné dravce z Jihlavy, a spoléhal na to, e s jejich pomocí se bude závodit
                                            líp. No a co se dìlo potom, to nemìlo obdoby a Vy se to hned dozvíte.<br />
                                            <br />
                                            Za náš tım nastoupil Vláïa Rychetskı, vıbornı silnièáø závodící v masters, kterı
                                            patøí k nejlepším v republice. Pro bìh jsem vytáhl z rukávu Vláïu Srba, kterı musí
                                            všechny závody bìhat sám, protoe ostatním vdycky uteèe... no a na plavání, tam
                                            se zas nedá tolik zkazit, tak to jsem si nechal pro sebe:-)<br />
                                            <br />
                                            Individuální závodníci, kterıch byla vìtšina, mìli pøed štafetami 15 min. náskok
                                            - tak jsem si øíkal, koneènì mì nebude mlátit 100 lidí po hlavì a ukáu jim zaè
                                            je toho loket:-) Jene se rychle ukázalo, e ostatní asi chodili na bazén èastìji
                                            a zaèali se mi ztrácet v dáli...a aby to nebylo všechno, pøehnali se kolem mì první
                                            hvìzdy hlavního závodu muù...a tak jako klesaly ke dnu moje nohy, zaèala klesat
                                            i moje nálada...<br />
                                            <br />
                                            Ale pak to pøišlo - èelo závodu se vyøítilo z vody a svım dupotem a odlétajícími
                                            kapkami vody probudilo Vláïu Srba, kterı do té doby spokojenì podøimoval v trávì
                                            na bøehu. Uvidìl moji ztrátu rovnající se délce Titaniku, s rozbìhem skoèil do jezera,
                                            voda se zaèala vaøit a náskok první štafety rychle mizel, z Titaniku se stal remorkér
                                            a potom moná tak jednomístnı kajak... já u jsem tam byl v podstatì zbyteènı, tak
                                            jsem se alespoò rozhodl pro uiteènou èinnost a obtìoval sleèny ze sponzorské štafety
                                            Fordu:-)<br />
                                            <br />
                                            Potom vıbìh z depa a tam u èekal nekompromisní Vláïa Rychetskı, kterı se rozhodl
                                            provìøit, co ti triatlonisti na svıch èasovkáøskıch speciálech vlastnì umí. Popravdì,
                                            ten náskok z vody mìli dost znaènej, take pøed Vláïou bylo moná 50, moná 80 nebo
                                            100 triatlonistù, v èele s døívìjším vítìzem svìtovıch pohárù Martinem Kròávkem.
                                            Klátili se na svıch strojích, funìli do kopcù, potili se, døeli... Ale bylo jim
                                            to houby platné, jednoho po druhém je míjel cyklista bez speciálního vybavení, zato
                                            s perfektní technikou jízdy a dynamitem v nohách. Tempem, které se rovnalo tomu
                                            v elitì a na špièce závodu, projídìl startovním polem jako nù máslem, smìrem vpøed.
                                            Ostatní štafety zatím netušily, co se dìje, a o mnoho pozdìji jim došlo, e bìhem
                                            cyklistické èásti se všechny posunuly na druhé a další místa:-) To, e se jejich
                                            èlenové støídali po kadém kole (3x31km) bylo vlastnì u úplnì jedno... <br />
                                            <br />
                                            Triatlonová reprezentace v boji o mistrovskı titul ovšem jela také rychle a i kdy
                                            mnoho desítek triatlonistù padlo Vláïovi R. za obì, stále zbylo ještì asi 30 nejlepších,
                                            kteøí se, nic zlého netuše, vydali na bìeckou èást. Fanynky tleskaly Kròávkovi
                                            i slovenskému Karlu Dalajovi, ale jen do té doby, ne jim náhlı závan vìtru fouknul
                                            vlasy do oèí... kdy si je opìt odhrnuly, muselo se jim zdát, e vidí ducha, kterı
                                            jen tak pro zábavu letí mezi unavenımi triatlonisty. Nicménì to nebyl ádnı pøízrak,
                                            to si jen Vláïa pøestal pískat na stéblo trávy a po pøedchozí malé plavecké rozcvièce
                                            se pustil do závodu naplno. Dluno øíci, e pøihlíející ani organizátoøi vùbec
                                            netušili, e jim nìkdo mùe tak rychle bìet po trati -pomocníkùm na obèerstvovací
                                            stanici padaly kelímky z rukou, starší lidé sotva uskakovali, babièky nevìøícnì
                                            kroutily hlavami a jejich vnuèky házely podprsenkami...:-) Jestli se Vláïa nìkterım
                                            z nich stihl v lesní èásti okruhu i podepsat, jsem se vlastnì ani neptal a zùstane
                                            to zahaleno tajemstvím... Konkurenèní štafety u také pochopily, e mají problém
                                            a e jim asi nìco uniklo:-) Triatlonoví soupeøi z oné elitní tøicítky se zamraèili
                                            a pøidali do kroku (tedy ti ménì moudøí), ti rozumnìjší si dali radìji dva plátky
                                            melounu navíc, protoe museli mít správnı dojem, e asi není jejich den.... <br />
                                            <br />
                                            A teda na toho Kròávka s Dalajem a ještì asi další tøi, kteøí (a mùou za to podìkovat
                                            hlavnì mnì:-)) mìli takovı náskok, e by to nesebìhl ani Kenenissa Bekele, Tanui,
                                            Kiptanui, Lagat ani nikdo jinı. A je to tak dobøe, protoe cílová páska patøí absolutnímu
                                            vítìzi (mì dalo zabrat i tìch posledních 50 metrù, které jsme bìeli spoleènì do
                                            cíle).<br />
                                            <br />
                                            Ještì jednou díky Vláïovi and Vláïovi za krásnı sportovní záitek, reprezentaci
                                            klubu a speciálnì ode mne za monost pozdravit všechny soupeøe i diváky ze schùdku,
                                            na kterém je napsáno èíslo 1.<br />
                                            <br />
                                            Za triatlonovou sekci Vysoèina Cycling<br />
                                            <br />
                                            Ivoš Fišer
                                        </div>
                                        <div class="hidetext" align="right">
                                            <button type="button" class="hidepart" style="width: 53px; height: 20px; font-size: xx-small;
                                                text-align: right;">Skrıt</button>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div id="clanek12" class="rozbalovaciclanek">
                                        <div class="infoclanek">
                                            Autor: Rostislav Krotkı<br />
                                            Vydáno: 12.6.2012
                                        </div>
                                        <div class="uvodclanku">
                                            <h1 class="nadpish1">
                                                Etapovı závod An Post Rás mıma oèima aneb taktika boje v Irsku</h1>
                                            S tımem Sparty jsme v kvìtnu absolvovali etapovı závod okolo Irska. Etapovı závod
                                            s názvem An Post Rás je zaøazen do kategorie 2.2 evropského kalendáøe. Specifikou
                                            tohoto závodu je, e zde startují pouze pìtièlenné tımy, co na jednu stranu klade
                                            mnohem vìtší nároky na kvalitní tımovou spolupráci a na druhé stranì dìlá závod
                                            zajímavìjším, protoe ho nemùe jednoduše ovládnout jeden silnı tım.
                                        </div>
                                        <div class="showtext" align="right">
                                            <button type="button" class="viewpart" style="width: 67px; height: 20px; font-size: xx-small; text-align: right; ">Zobrazit</button>
                                        </div>
                                        <div class="textclanku">
                                            <h1 class="nadpish2">
                                                Urèení leadera</h1>
                                            Závod je sloen z osmi etap. Dùkladné prostudování etap pøed samotnım závodem bylo
                                            velmi dùleité ke stanovení taktiky a urèení leadera. Ji pøed závodem jsme vyhodnotili
                                            jako rozhodující 5. etapu, která mìla asi 15km pøed cílem strmé stoupání na vrchaøskou
                                            prémii se sklonem pøesahujícím místy 20%. Role leadera proto jednoznaènì padla na
                                            Martina Hunala.
                                            <h1 class="nadpish2">
                                                Pøíprava pøed startem</h1>
                                            Abychom neponechali nic náhodì, rozhodli jsme se s Martinem cestovat do Irska letecky,
                                            pøestoe zbytek tımu cestoval autem. Martin byl u pøed startem v dobré formì a
                                            nebylo by rozumné pøivodit únavu dlouhım cestováním. Samozøejmostí byly masáe a
                                            kvalitní odpoèinek pøed nároènım závodem. Na závod jsme odcestovali 2 dny pøed startem,
                                            abychom se dobøe aklimatizovali na místní podmínky. Na start se postavilo 35 pìtièlennıch
                                            tımù, tedy 175 startujících.
                                            <h1 class="nadpish2">
                                                1. etapa</h1>
                                            V úvodní etapì jsme mìli za úkol pohlídat, aby neodjela ádná silná skupina, ve
                                            které bychom nemìli zastoupení, a která by si mohla vytvoøit nebezpeènı náskok.
                                            To se nám podaøilo a do cíle spurtovalo prakticky celé hlavní pole. Odskoèená šestice
                                            mìla náskok 6 sekund. Ze sparanù jsem byl v cíli nejlépe, desátı v hlavním poli,
                                            celkovì 16. místo. Jirka Nesveda 22. místo, Martin Hunal 25. místo. Martin bral
                                            navíc 2 bonifikaèní sekundy na prémiích, které se pozdìji ukázaly jako velmi cenné.
                                            <h1 class="nadpish2">
                                                2. etapa</h1>
                                            Druhá etapa mìla v úvodu podobnı prùbìh jako ta první. Nástup støídal nástup, ale
                                            nikomu se odjet nepodaøilo. A zhruba na 50km v okamiku, kdy peloton najel na úzkou
                                            silnici, balík najednou zastavil a vepøedu se utvoøila skupina, v ní mìla vìtšina
                                            silnıch tımù jednoho svého zástupce. Tento okamik jsme jako tım zazdili, protoe
                                            jsme se v té chvíli obèerstvovali. Chvíli jsme èekali, jestli se tempa neujme nìjakı
                                            jinı tım, kterı vepøedu nemá svého zástupce, ale ádnı takovı se nenašel. Náskok
                                            nebezpeènì rostl a Martin zaèínal bıt nervózní. Nebylo u na co èekat, a tak jsem
                                            najel dopøedu a zaèal tahat. Záhy se pøidal celı tım a zaèali jsme pracovat pro
                                            Martina. Naše tempo ale nebylo zprvu pøíliš vırazné a náskok odjeté skupiny se nezmenšoval,
                                            spíše naopak, stále mírnì rostl a ke ètyøem minutám. Proto se k nám pøidal i další
                                            silnı tım, kterı vepøedu nemìl svého zástupce, francouzskı AVC Aix En Provence.
                                            Nejdøíve s námi tahal pouze jeden jejich závodník, ale pozdìji se pøidali i další.
                                            Náskok odjeté skupiny se zaèal sniovat. Posledních 20km pøed cílem nás èekal zvlnìnı
                                            terén a 3 horské prémie 3. kategorie. Tady se pøidali i ostatní Francouzi a náskok
                                            zaèal rychle klesat. Vepøedu jsem zùstal s Francouzi tahat u jen sám. Martin si
                                            hlídal své soupeøe pro pøípad, e by chtìl nìkdo zaútoèit. Náskok odjeté skupiny
                                            se nám nakonec úplnì zlikvidovat nepodaøilo, ale 28 sekund ztráty na sedmièlennou
                                            skupinu nemohlo mít na celkovı vıvoj závodu rozhodující vliv. I po nároèném celodenním
                                            tahání na špici se mi nakonec v závìru etapy podaøilo prosadit na 20. místo na cílové
                                            pásce. Martin Hunal dojel na 35. místì. Do cíle dorazilo asi šedesátièlenné hlavní
                                            pole.
                                            <h1 class="nadpish2">
                                                3. etapa</h1>
                                            Ráno pøed startem jsme si øíkali, e u se nám nesmí stát to, co v pøedchozí etapì.
                                            Navíc byly na programu první vìtší kopce, take pøíleitost pro Martina potvrdit
                                            roli leadera. Všichni se trochu prvních vìtších kopcù obávali, co zapøíèinilo i
                                            lehkou nervozitu v balíku. Tato nervozita mìla za následek nìkolik nepøíjemnıch
                                            pádù. První pøišel asi 75km na úzké silnici pøed první vrchaøskou prémií 3. kategorie.
                                            Naštìstí jsme s Martinem jeli vepøedu. Trochu se zpomalilo, aby se peloton po pádu
                                            znovu spojil. Toho vyuila ètveøice závodníkù, která si zaèala budovat náskok. Po
                                            nájezdu do dalšího kopce, na nìm byla prémie 2. kategorie, se pole zaèalo trhat
                                            a zaèalo se ostøe závodit. Závodilo se i z kopce a pøišel další pád, kde zùstal
                                            i jeden z pøedpokládanıch leaderù domácího tımu. Vepøedu zùstala ji jen dvojice
                                            a balík loajálnì opìt zpomalil a èekalo se, ne se závodníci dostanou po pádu zpìt.
                                            Následující vrchaøská prémie se proto jela jen zlehka. Martin si na ní dojel pro
                                            3. místo. Za prémií se vše sjelo, a protoe vepøedu odjetí závodníci díky pádùm
                                            v balíku získali velkı náskok a do cíle nebylo ji daleko, asi 30km, na špici zaèali
                                            jet závodníci z domácího tımu An Post Sean Kelly. Vinou chyby nìkterého ze závodníkù
                                            ale došlo opìt k dalšímu pádu, kterı rozdìlil hlavní pole na dvì skupiny. Nyní se
                                            u neèekalo. Vzadu zùstal ve lutém jedoucí Švıcar, domácí tım asi vycítil šanci
                                            a skupiny se zaèaly nahánìt. Naštìstí Martin byl c èelní skupinì s Ondrou Pávkem,
                                            take jsem nechal veškerou aktivitu na ostatních. Skupiny se nakonec asi 10km pøed
                                            cílem sjely. Byli dojeti i uprchlíci a tak spurtoval celı balík. Martin byl relativnì
                                            v pohodì. Podaøilo se mu dostat do spurtu na vıhodnou pozici a na pásce z toho bylo
                                            pìkné 6. místo v etapì. Já dojel ve stejném èase na 26. místì. Pøestoe bylo v etapì
                                            nìkolik pádù, naštìstí se nikdo z našeho tımu do ádného nepøipletl a mohli jsme
                                            se všichni v klidu pøipravovat na další den.
                                            <h1 class="nadpish2">
                                                4. etapa</h1>
                                            Pády v pøedchozí etapì nás trochu vystrašily, navíc to vypadalo, e 4. etapa bude
                                            velmi vìtrná, take jasnı plán byl, pohybovat se stále co nejvíce vepøedu a sjídìt
                                            pøípadné útoky. To se nám v podstatì daøilo, celı tım fungoval a ádné silné skupinì
                                            se odjet nepodaøilo. Hlavní pole se na vìtru sice silnì zredukovalo, ale rozhodovalo
                                            se a v závìru. Tady ovšem pøišla naše slabší chvilka. Asi 5km pøed cílem se krajina
                                            náhle otevøela a zaèal foukat velmi silnı boèní vítr. V té chvíli jsme s Martinem
                                            nemìli nejlepší pozici, skupina se natáhla a my se snaili dostat co nejrychleji
                                            dopøedu. Jel se terezín na doraz a skupina se zaèala trhat. Podaøilo se nám dostat
                                            na hranici první dvacítky, ale dál u to nešlo. Martin nakonec obsadil 22. místo,
                                            ale bohuel ztratil 12 sekund na prvního. Já dojel 36. Po závodì se ukázalo, e
                                            menší ztráta v této etapì mohla mít velkı vliv na Martinùv celkovı vısledek a Martin
                                            mohl jít pozdìji klidnì i do lutého dresu.
                                            <h1 class="nadpish2">
                                                5. etapa</h1>
                                            Tuto etapu jsme pøed závodem vyhodnotili jako klíèovou a celı závod smìrovali pøedevším
                                            k ní. V této etapì se mìly projevit Martinovy kvality ve strmıch kopcích. Úvod etapy
                                            byl rychlı, v podstatì jako i v pøedchozích dnech. Nebezpeèné nástupy se nám daøilo
                                            eliminovat. Vıbornì pracovali Ondra Pávek s Jirkou Nesvedou. V první èásti etapy
                                            byly na programu dvì vrchaøské prémie 3. kategorie, kde si Martin pøipsal 3. a 2.
                                            místo, pak následovalo rovinatìjších 30km pøed závìreènımi pìti vrchaøskımi prémiemi,
                                            z nich ta pøedposlední 1. kategorie mìla rozhodnout. V této rovinatìjší pasái
                                            se podaøilo odjet šestièlenné skupinì, která si vytvoøila asi dvouminutovı náskok.
                                            10km pøed finálovımi kopci dovezl mnì a Martinovi Jirka Nesveda pití a dotáhl nás
                                            na špici balíku. V tom okamiku se na špici zrychlilo a Jirku napadlo, e nás zkusí
                                            odpojit. Bylo tìsnì po obèerstvovaèce, balík lehce zpomalil a my se najednou ocitli
                                            v úniku. S námi tam byl i lutı Švıcar, leader závodu, kterı mìl také zájem jet.
                                            Pochopil jsem, e je to šance, jak Martinovi ušetøit síly pøed rozhodujícím kopcem.
                                            Domluvili jsme se, a se jen veze, a já se snail aktivnì tahat, aby byl náš náskok
                                            pøed kopci co nejvìtší. To se daøilo, zájem tahat jsme sice mìli pouze ètyøi, ale
                                            v tu chvíli to staèilo. Po najetí do prvních kopcù jsme pøed sebou spatøili první
                                            odjetou skupinu, kterou se nám podaøilo záhy sjet. Z této skupiny se však ještì
                                            pøed tím odpoutal francouzskı závodník Rostollan. Jakmile jsme skupinu sjeli, nemìl
                                            nikdo zájem jet. ádnı tım nemìl vepøedu svého leadera, pouze my Martina a Švıcaøi
                                            ve lutém jedoucího Langa. Øekl jsem Martinovi, a se radìji stále šetøí a tahal
                                            jsem v podstatì pouze s Langem. Martin vdy jel jen na vrchaøskou prémii. Bylo tedy
                                            jen otázkou, kdy nás balík sjede. V balíku se ovšem muselo zákonitì zrychlit a leadeøi
                                            ostatních tımù se nemohli moc šetøit, to byla naše vıhoda. Martin byl stále relativnì
                                            odpoèatı a pøipravenı na rozhodující stoupání na vrchaøskou prémii 1. kategorie.
                                            Balík nás nakonec sjel asi 3km pøed zaèátkem kopce. Já u toho mìl docela dost,
                                            tak jsem se snail si ještì tìch pár kilometrù alespoò trochu odpoèinout. Teï u
                                            to bylo jen na Martinovi. Martin najel do kopce vepøedu a hlídal si s pøehledem
                                            své soupeøe. Nahoru na kopec nakonec vyjel ètvrtı z hlavní skupiny, a po sjezdu
                                            z kopce, kterı byl strmı stejnì jako vıjezd (po nerovné silnici, naštìstí pøímé
                                            bez zatáèek se dolù „letìlo“ rychlostí témìø 100km/h) se vepøedu vytvoøila vedoucí
                                            ètveøice dvou Švıcarù, Martina a domácího závodníka tımu An Post Sean Kelly. Jelo
                                            se nadoraz a poslednì zmiòovanı odpadl. Úplnì vepøedu však stále ještì jel osamocenı
                                            Francouz. Skupinka se k nìmu rychle pøibliovala, ale on svùj náskok v cíli s vypìtím
                                            sil uhájil, i kdy jen o pouhıch 9 sekund. Druhı dospurtoval Martin pøed obìma Švıcary.
                                            Do celkového vedení se tímto dostal opìt závodník švıcarského tımu Atlas Jakroo,
                                            nyní Nicolas Baldo. Na druhé místo poskoèil vítìz etapy Francouz Rostollan a Martin
                                            se posunul na 3. pozici pouze se ztrátou 7 sekund na prvního. Nyní Martina trochu
                                            mrzelo tìch 12 sekund z pøedchozího dne. Na druhou stranu ètvrtı v poøadí ztrácel
                                            na Martina pouhou sekundu, take dvousekundová bonifikace z první etapy pøišla vhod.
                                            V tomto závodì prostì nakonec rozhodovaly jen sekundy. Já dorazil do cíle se ztrátou
                                            necelıch dvou minut na 36. místì.
                                            <h1 class="nadpish2">
                                                6. etapa</h1>
                                            Tato etapa mohla ještì zamíchat poøadím, byla také dost kopcovitá, i kdy ten nejvìtší
                                            kopec byl ještì daleko pøed cílem. Kadopádnì domácí tım An Post Sean Kelly byl
                                            pøipraven útoèit, protoe pøedchozí etapa jim nevyšla úplnì podle pøedstav. Kadopádnì
                                            naším zámìrem bylo hlídat Martinovu pozici a nepustit do úniku ádnou silnou skupinu,
                                            která by mohla Martina ohroovat. V první èásti závodu se o to staral pøedevším
                                            Jirka Nesveda a Dan Vejmelka. Mìli za úkol dret vysoké tempo hlavního pole. Bohuel
                                            tato etapa mìla ji na 60km vrchaøskou prémii 2. kategorie, která se jim stala osudná
                                            a vepøedu jsme s Martinem zùstali jen já a Ondra Pávek. Martin byl na prémii 2.
                                            a u vìdìl, e bojuje o dres nejlepšího vrchaøe. Mìl ovšem velmi zdatného soupeøe,
                                            tmavého Anglièana Clarka, kterı ho vìtšinou na prémiích porazil. Podle pøedpokladù
                                            se u na této prémii zaèalo útoèit. Èelo jsme si ale pohlídali a smìøovali naše
                                            snaení k vrchaøské prémii 1. kategorie na 102km. I pøes èetné sjídìní nástupù,
                                            které bylo ve dvou nároènìjší, se nám podaøilo pohlídat soupeøe a Martin mohl v
                                            kopci prokázat své kvality. Nahoru vyjel druhı opìt za Clarkem a zaèalo mu bıt jasné,
                                            e ve vrchaøích z nejvìtší pravdìpodobností nevyhraje. Na kopci se na èele utvoøila
                                            asi dvacetièlenná skupina, do které jsem si po nìkolika kilometrech dojel ještì
                                            i já spolu s nìkolika dalšími jezdci. Ondra bohuel zùstal vzadu, take pøípadná
                                            pomoc Martinovi zùstala ji pouze na mì. Pøed cílem nás èekaly ještì 2 prémie 2.
                                            kategorie na 118km a 124km. Cítil jsem, e v kopci u Martinovi nebudu schopnı nijak
                                            pomoci, tak jsem se alespoò snail, aby mu pøed nimi nic neodjelo, co se podaøilo.
                                            Do pøedposledního kopce najela první skupina kompaktní. Martin si soupeøe ohlídal
                                            a já jsem s vypìtím posledních sil oba kopce také pøejel. Tìsnì pøed cílem, vıbornou
                                            taktickou prací Švıcarù, poodjel ve lutém jedoucí Baldo a o 10s si zvıšil náskok
                                            pøed svımi soupeøi. Martin dospurtoval na 13. místì a já na 16. místì. V celkovém
                                            poøadí se na èele nic zásadního nezmìnilo, Martin zùstal 3., pouze já se posunul
                                            o pár pozic na 19. místo.
                                            <h1 class="nadpish2">
                                                7. etapa</h1>
                                            Pøed etapou jsme mìli jedinı cíl, hájit Martinovo postavení, a v cíli etapy se pokusit
                                            slušnì spurtovat. S druhımi Francouzi a prvními Švıcary jsme se domluvili, e kadı
                                            tım dá 2 závodníky, aby urèovali tempo. Ideální bude nechat odjet skupinu, která
                                            nás nebude ohroovat a dret za ní pøijatelnı odstup. Tato strategie nám vyšla vıbornì
                                            pøesnì podle plánu. Jirka Nesveda s Danem Vejmelkou tahali ze zaèátku, v závìru,
                                            kdy u jim nezbıvaly síly, je postupnì nahradil Ondra Pávek a potom i já. Odjetou
                                            skupinu jsme pøed cílem sjeli. Nìkolik kilometrù pøed cílem ještì odskoèili 2 jezdci,
                                            kteøí nikoho v èele neohroovali. Závìr byl trochu nervózní a nebıt nìkolika pádù,
                                            byli by pøed cílem sjeti. Takto pøijeli 12s pøed hlavním polem. Do jednoho pádu
                                            se bohuel pøipletl i Ondra, Martin naštìstí zvládl vše bez problémù. Já jsem se
                                            soustøedil na spurt. Pøed poslední zatáèkou pøed cílem jsem nastoupil a do cíle
                                            dospurtoval na 7. místì. Martin byl 29.
                                            <h1 class="nadpish2">
                                                8. etapa</h1>
                                            V poslední etapì jsme mìli stejnou taktiku, jako v té pøedchozí. Opìt jsme nechali
                                            odjet skupinu a udávali spolu s Francouzi a Švıcary tempo. V závìru etapy nás však
                                            èekaly okruhy a 3 vrchaøské prémie 3. kategorie, které ještì nabízely šanci nìco
                                            zmìnit, protoe rozestupy na špici v celkovém poøadí nebyly velké. Skupinu jsme
                                            na okruzích sjeli a zaèalo se závodit. Snail jsem se mít Martina poøád na oèích,
                                            abych mohl v pøípadì nìjakıch problémù rychle reagovat. Vedoucí Švıcaøi si však
                                            své vítìzství bez vìtších problémù uhlídali, a v kopci jeli takové tempo, ze kterého
                                            nebyl schopnı nikdo odjet. Martin se za nimi pohyboval s pøehledem, a tak vše smìøovalo
                                            k cílovému spurtu. Ten byl trochu nebezpeènı, pøedcházela mu série zatáèek, podjezd,
                                            obrubníky, ale naštìstí se nic nestalo. Dojeli jsme s Martinem na 15. a 16. místì
                                            a radovali se, e se nám podaøilo uhájit Martinovo celkové 3. místo. Ve vrchaøské
                                            soutìi skonèil Martin na 2. místì.
                                            <h1 class="nadpish2">
                                                Závìrem</h1>
                                            Náš tım pøedvedl v Irsku vıbornou tımovou spolupráci, která vedla ke kıenému vısledku.
                                            Martin zhodnotil závod se slovy: „Hodnì lidi si myslí, e jsem si vısledek vyjel
                                            sám, ale tak to není. Nebıt celého pìtièlenného tımu, se kterım jsme tady startovali,
                                            tak by se nám to nepovedlo. Všem klukùm jsem kadı den za jejich práci podìkoval.
                                            Odvedli velkı kus dobré práce." I ostatní kluci byli spokojeni, e jejich úsilí
                                            dokázal Martin zhodnotit kvalitním vısledkem. Martina je zase potøeba pochválit,
                                            e unesl zodpovìdnost za vısledek tımu, kterı na nìj celı závod pracoval a dokázal
                                            prodat své schopnosti v rozhodujících okamicích.
                                            <br />
                                            Dobrı pocit mohou mít i cyklisté z Vysoèiny, protoe Martin i já zde ijeme a rádi
                                            ji reprezentujeme. Martin zaèínal na biku, take v jeho vısledku mohou najít inspiraci
                                            i mladí bikeøi, kterıch je v souèasnosti na Vysoèinì mnohem víc ne silnièáøù.
                                        </div>
                                        <div class="hidetext" align="right">
                                            <button type="button" class="hidepart" style="width: 53px; height: 20px; font-size: xx-small; text-align: right; ">Skrıt</button>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </td>
                    </tr>
                </table>
            </div>
            <div id="tab-57">
                <table>
                    <tr>
                        <td>
                            <div id="album-Tenerife2011" class="clanek">
                                <h3>
                                    Tenerife 2011</h3>
                                <a href="images/photos/imageTen01.jpg" title="Cesta na úpatí Pico del Teide, pod mraky údolí Orotavy.">
                                    <img src="images/photos/thumb_imageTen01.jpg" alt="Tenerife" /></a> <a href="images/photos/imageTen02.jpg"
                                        title="Pico del Teide z vıchodní strany.">
                                        <img src="images/photos/thumb_imageTen02.jpg" alt="Tenerife" /></a> <a href="images/photos/imageTen03.jpg"
                                            title="Pohled do kráteru.">
                                            <img src="images/photos/thumb_imageTen03.jpg" alt="Tenerife" /></a>
                                <a href="images/photos/imageTen04.jpg" title="Pico del Teide z kráteru.">
                                    <img src="images/photos/thumb_imageTen04.jpg" alt="Tenerife" /></a>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div id="album-Fuerteventura2011" class="clanek">
                                <h3>
                                    Fuerteventura 2011</h3>
                                <a href="images/photos/imageFue01.jpg" title="Nad Betancurií.">
                                    <img src="images/photos/thumb_imageFue01.jpg" alt="Fuerteventura" /></a> <a href="images/photos/imageFue02.jpg"
                                        title="Antigua.">
                                        <img src="images/photos/thumb_imageFue02.jpg" alt="Fuerteventura" /></a>
                                <a href="images/photos/imageFue03.jpg" title="Pole s Aloe Vera.">
                                    <img src="images/photos/thumb_imageFue03.jpg" alt="Fuerteventura" /></a> <a href="images/photos/imageFue04.jpg"
                                        title="Pohled na hory u mìsta Cotillo.">
                                        <img src="images/photos/thumb_imageFue04.jpg" alt="Fuerteventura" /></a>
                                <a href="images/photos/imageFue05.jpg" title="Plá Sotavento.">
                                    <img src="images/photos/thumb_imageFue05.jpg" alt="Fuerteventura" /></a> <a href="images/photos/imageFue06.jpg"
                                        title="Plá Cofete.">
                                        <img src="images/photos/thumb_imageFue06.jpg" alt="Fuerteventura" /></a>
                                <a href="images/photos/imageFue07.jpg" title="Plá Cofete.">
                                    <img src="images/photos/thumb_imageFue07.jpg" alt="Fuerteventura" /></a> <a href="images/photos/imageFue08.jpg"
                                        title="Plá Cofete.">
                                        <img src="images/photos/thumb_imageFue08.jpg" alt="Fuerteventura" /></a>
                                <a href="images/photos/imageFue09.jpg" title="Píseèné duny u Corraleja.">
                                    <img src="images/photos/thumb_imageFue09.jpg" alt="Fuerteventura" /></a>
                            </div>
                        </td>
                    </tr>
                </table>
            </div>
        </div>
    </div>
</asp:Content>

