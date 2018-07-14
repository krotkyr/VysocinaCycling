<%@ Page Title="Vysoèina Cycling - Trénink" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="trenink.aspx.cs" Inherits="Trenink" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <meta property="og:description" content="Tento projekt je zamìøen na podporu vıkonnostní cyklistiky na Vysoèinì, a to pøedevším cyklistiky silnièní. Na stránce Trénink naleznete informace a èlánky o cyklistickém tréninku. Naleznete zde i monost tréninkového poradenství." />
    <meta property="og:image" content="http://www.vysocinacycling.cz/images/logo_Facebook.png" />
    <script type="text/javascript">
        $(window).load(function () {
            $("#baner3").nivoSlider({ animSpeed: 1000, pauseTime: 5000, controlNav: false, directionNav: false, keyboardNav: false, effect: "fade" });
        });
    </script>

    <script type="text/javascript">
        $(document).ready(function () {
            SiteTtreninkReady();
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <div id="dialogprihlasitkemp" style="display: none">
        <p>
            Vyplòte prosím kontaktní údaje. Spojíme se s Vámi co nejdøíve. Pro kontrolu bude
            kopie Vaší pøihlášky zaslána i na Váš email.</p>
        <table>
            <tr>
                <td style="width: 80px">
                    Jméno:
                </td>
                <td style="width: 200px">
                    <asp:TextBox ID="TextBoxPKempJmeno" runat="server" TextMode="SingleLine" style="width:140px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 80px">
                    Úroveò:
                </td>
                <td style="width: 200px">
                    <asp:DropDownList ID="DropDownListPKempUroven" runat="server" style="width:145px">
                        <asp:ListItem>Rekreaèní jezdec</asp:ListItem>
                        <asp:ListItem>Hobby jezdec</asp:ListItem>
                        <asp:ListItem>Aktivní závodník</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td style="width: 80px">
                    Od:
                </td>
                <td>
                    <asp:Label ID="LabelPKempOd" runat="server" Text="" Font-Size="10" ForeColor="#0033CC"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="width: 80px">
                    Do:
                </td>
                <td>
                    <asp:Label ID="LabelPKempDo" runat="server" Text="" Font-Size="10" ForeColor="#0033CC"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="width: 80px">
                    Mám zájem o:
                </td>
                <td style="width: 200px">
                    <asp:DropDownList ID="DropDownListPKempTyp" runat="server" style="width:145px">
                        <asp:ListItem>Úspornou variantu</asp:ListItem>
                        <asp:ListItem>Plnı komfort</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td style="width: 80px">
                    Poznámka:
                </td>
                <td>
                    <asp:TextBox ID="TextBoxPKempPozn" runat="server" TextMode="SingleLine" style="width:140px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 80px">
                    Email:
                </td>
                <td>
                    <asp:TextBox ID="TextBoxPKempEmail" runat="server" TextMode="SingleLine" style="width:140px"></asp:TextBox>
                </td>
            </tr>
        </table>
    </div>
    <div id="dialogzadostkemp" style="display: none">
        <p>
            Vyplòte prosím kontaktní údaje. Spojíme se s Vámi co nejdøíve. Pro kontrolu bude
            kopie Vaší pøihlášky zaslána i na Váš email.</p>
        <table>
            <tr>
                <td style="width: 80px;">
                    Jméno:
                </td>
                <td style="width: 200px">
                    <asp:TextBox ID="TextBoxKempJmeno" runat="server" TextMode="SingleLine" style="width:140px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 80px">
                    Úroveò:
                </td>
                <td style="width: 200px">
                    <asp:DropDownList ID="DropDownListKempUroven" runat="server" style="width:145px">
                        <asp:ListItem>Rekreaèní jezdec</asp:ListItem>
                        <asp:ListItem>Hobby jezdec</asp:ListItem>
                        <asp:ListItem>Aktivní závodník</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td style="width: 80px">
                    Od:
                </td>
                <td>
                    <asp:TextBox ID="TextBoxKempOd" runat="server" TextMode="SingleLine" style="width:140px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 80px">
                    Do:
                </td>
                <td>
                    <asp:TextBox ID="TextBoxKempDo" runat="server" TextMode="SingleLine" style="width:140px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 80px">
                    Mám zájem o:
                </td>
                <td style="width: 200px">
                    <asp:DropDownList ID="DropDownListKempTyp" runat="server" style="width:145px">
                        <asp:ListItem>Úspornou variantu</asp:ListItem>
                        <asp:ListItem>Plnı komfort</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td style="width: 80px">
                    Poznámka:
                </td>
                <td>
                    <asp:TextBox ID="TextBoxKempPozn" runat="server" TextMode="SingleLine" style="width:140px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 80px">
                    Email:
                </td>
                <td>
                    <asp:TextBox ID="TextBoxKempEmail" runat="server" TextMode="SingleLine" style="width:140px"></asp:TextBox>
                </td>
            </tr>
        </table>
    </div>
    <div id="dialogzadostporadenstvi" style="display: none">
        <p>
            Vyplòte prosím kontaktní údaje. Spojíme se s Vámi co nejdøíve. Pro kontrolu bude kopie Vaší ádosti zaslána i na Váš email.</p>
        <table>
            <tr>
                <td style="width: 50px">
                    Jméno:
                </td>
                <td style="width: 200px">
                    <asp:TextBox ID="TextBoxZadostJmeno" runat="server" TextMode="SingleLine" style="width:140px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 50px">
                    Období:
                </td>
                <td style="width: 200px">
                    <asp:DropDownList ID="DropDownListZadostObdobi" runat="server" style="width:145px">
                        <asp:ListItem>1 mìsíc</asp:ListItem>
                        <asp:ListItem>2 mìsíce</asp:ListItem>
                        <asp:ListItem>3 mìsíce</asp:ListItem>
                        <asp:ListItem>4 mìsíce</asp:ListItem>
                        <asp:ListItem>5 mìsícù</asp:ListItem>
                        <asp:ListItem>6 mìsícù</asp:ListItem>
                        <asp:ListItem>7 mìsícù</asp:ListItem>
                        <asp:ListItem>8 mìsícù</asp:ListItem>
                        <asp:ListItem>9 mìsícù</asp:ListItem>
                        <asp:ListItem>10 mìsícù</asp:ListItem>
                        <asp:ListItem>11 mìsícù</asp:ListItem>
                        <asp:ListItem>1 rok</asp:ListItem>
                        <asp:ListItem>Tréninkovı kemp</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td style="width: 50px">
                    Úroveò:
                </td>
                <td style="width: 200px">
                    <asp:DropDownList ID="DropDownListZadostUroven" runat="server" style="width:145px">
                        <asp:ListItem>Rekreaèní jezdec</asp:ListItem>
                        <asp:ListItem>Hobby jezdec</asp:ListItem>
                        <asp:ListItem>Aktivní závodník</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td style="width: 50px">
                    Email:
                </td>
                <td>
                    <asp:TextBox ID="TextBoxZadostEmail" runat="server" TextMode="SingleLine" style="width:140px"></asp:TextBox>
                </td>
            </tr>
        </table>
    </div>
    <div id="pageTreninkContent">
        <div id="baner3" class="nivoSlider">
            <img id="img8" alt="Baner" src="images/Banery/VC_banner_08.jpg" />
            <img id="img10" alt="Baner" src="images/Banery/VC_banner_09.jpg" />
            <img id="img3" alt="Baner" src="images/Banery/VC_banner_11.jpg" />
            <img id="img22" alt="Baner" src="images/Banery/VC_banner_05.jpg" />
        </div>
        <div id="treninktabs" style="text-align: left">
            <ul>
                <li id="Li31"><a href="#tab-31">Èlánky</a></li>
                <li id="Li32"><a href="#tab-32">Testy</a></li>
                <li id="Li33"><a href="#tab-33">Základní principy tréninku</a></li>
                <li id="Li34"><a href="#tab-34">Fyziologie</a></li>
                <li id="Li35"><a href="#tab-35">Speciální trénink</a></li>
                <li id="Li36"><a href="#tab-36">Tréninkové kempy</a></li>
                <li id="Li37"><a href="#tab-37">Poradenství</a></li>
                <li id="Li38"><a href="#tab-38">Tréninkoví poradci</a></li>
            </ul>
            <div id="tab-31">
                <table>
                    <tr>
                        <td>
                            <ul class="paging2">
                                <li>
                                    <div id="clanek6" class="rozbalovaciclanek">
                                        <div class="infoclanek">
                                            Autor: Rostislav Krotkı<br />
                                            Vydáno: 27.5.2013
                                        </div>
                                        <div class="uvodclanku">
                                            <h1 class="nadpish1">Streèink v cyklistice</h1>
                                            Protahovací cvièení (streèink) je dùleitım doplòkem v drtivé vìtšinì sportovních
                                            odvìtví. Ani cyklistika není vıjimkou. Cyklistika navíc jednostrannì zatìuje nìkteré
                                            svalové partie, èím dochází ke zkrácení svalù a svalové dysbalanci. To má èasto
                                            za následek vadné drení tìla, které mùe èasem vyústit v rùzné problémy a bolesti.
                                            Streèink dokáe toto z velké èásti eliminovat. Uvolnìné svaly lépe regenerují a
                                            vzhledem k vìtšímu rozsahu jsou schopny podat i vyšší vıkon. Z protaenıch svalù
                                            se rychleji a lépe odplavují škodlivé látky a svaly jsou ménì náchylné ke køeèím.
                                            Z tìchto dùvodù by se streèink mìl stát samozøejmou souèástí kadého tréninku.
                                        </div>
                                        <div class="showtext" align="right">
                                            <button type="button" class="viewpart" style="width: 67px; height: 20px; font-size: xx-small;
                                                text-align: right;">Zobrazit</button>
                                        </div>
                                        <div class="textclanku">
                                            <h1 class="nadpish2">Streèink pøed tréninkem</h1>
                                            Zapamatujte si, e nikdy se nesnaíme protahovat studené svaly. Vdy je nutné svaly
                                            nejprve zahøát a po té je protahovat. V opaèném pøípadì se vystavujeme velkému riziku
                                            poškození svalù. Nìkteøí odborníci dokonce protahování pøed vıkonem nedoporuèují.
                                            Mùj názor je protahovat, ale a po dostateèném zahøátí. V pøípadì cyklistického
                                            tréninku napøíklad po 15-ti minutách rozjetí zastavit a protáhnout se. Nepøehánìjte
                                            to s protahováním do krajních poloh, pouze do lehkého pnutí.
                                            <h1 class="nadpish2">Streèink v prùbìhu tréninku</h1>
                                            Pøi cyklistickém tréninku na streèink vìtšinou prostoru moc není, ale mùete vyuít
                                            malou zastávku, nebo se protáhnout pøímo za jízdy. Prùbìné protaení je vhodné
                                            zejména pøi kompenzaèním tréninku den po závodì, kdy jsou svaly více unavené a
                                            zataené. V tomto pøípadì je vhodné si zastávky na protaení udìlat. Opìt to nepøeháníme
                                            s krajními polohami.
                                            <h1 class="nadpish2">Streèink po tréninku nebo závodì</h1>
                                            Asi nejdùleitìjší èas pro streèink. Èím více jsou svaly unavené, tím delší èas
                                            je nutné vìnovat protahování. Nejvìtší efekt má streèink pøímo po koupeli, kdy je
                                            tìlo rozehøáté a svaly relativnì uvolnìné. V tuto dobu vyuijeme streèink pro rychlejší
                                            regeneraci a odplavení odpadních látek ze svalù. Sérii cvikù mùeme opakovat i vícekrát.
                                            Pøi následujících opakováních se dostáváme postupnì do krajních poloh. Pro vìtší
                                            efekt mùeme protahovací cvièení s nìkolikahodinovım odstupem znovu zopakovat. Pokud
                                            máte naplánovánu masá, je vhodné se protáhnout ještì pøed masáí.
                                            <h1 class="nadpish2">Pravidla protahování</h1>
                                            Protahované svaly musí bıt zahøáté.<br />
                                            Cviky provádíme plynule bez kmitù.<br />
                                            Dbáme na správné provedení cvikù.<br />
                                            Krajní poloha nesmí bolet.<br />
                                            Zamìøujeme se pøedevším na svaly, které jsou nejvíce namáhané, ale neopomíjíme i
                                            ostatní.<br />
                                            Èím více jsou svaly unavené z pøedchozích tréninkù, tím více èasu je potøeba vìnovat
                                            jejich protaení.
                                            <h1 class="nadpish2">Cviky</h1>
                                            Na následujících obrázcích jsem pro vás pøipravil série cvikù, které mùete provádìt
                                            pøi tréninku s oporou kola a cviky, které jsou spíše vhodné na doma.<br />
                                            <br />
                                            <div id="strecink">
                                                <a href="images/clanky/Cviky-kolo.jpg" title="Protahovací cviky s oporou kola">
                                                    <img src="images/clanky/thumb_Cviky-kolo.jpg" alt="Streèink" /></a>
                                                <a href="images/clanky/Cviky1.jpg" title="Série protahovacích cvikù - 1.èást">
                                                    <img src="images/clanky/thumb_Cviky1.jpg" alt="Streèink" /></a>
                                                <a href="images/clanky/Cviky2.jpg" title="Série protahovacích cvikù - 2.èást">
                                                    <img src="images/clanky/thumb_Cviky2.jpg" alt="Streèink" /></a>
                                            </div>
                                            <h1 class="nadpish2">Závìrem</h1>
                                            Zaøadíte-li streèink do tréninku jako jeho samozøejmou souèást, budete z nìj bezesporu
                                            profitovat. Pokud si na nìj zvyknete a budete-li jej provádìt pravidelnì, pomùe
                                            vám posunout vaši vıkonnostní hranici zase o nìco vıš.
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
                                            Vydáno: 11.4.2012
                                        </div>
                                        <div class="uvodclanku">
                                            <h1 class="nadpish1">
                                                Compex - podpora regenerace</h1>
                                            Compex lze jednoduše charakterizovat jako elektro-stimulaèní pøístroj, kterı pomáhá cítit 
                                            se lépe. Spojuje v sobì mnoství funkcí z oblasti rehabilitace, regenerace a masáí, úlevy 
                                            od bolesti, zahøívacích cvièení, posilovacích a protahovacích cvièení, kondièních a fitness 
                                            programù, Ocení jej nejen sportovci, ale i lidé v rekonvalescenci po rùznıch zranìních nebo 
                                            eny, které chtìjí zefektivnit své snaení pøi tvarování postavy.
                                        </div>
                                        <div class="showtext" align="right">
                                            <button type="button" class="viewpart" style="width: 67px; height: 20px; font-size: xx-small; text-align: right; ">Zobrazit</button>
                                        </div>
                                        <div class="textclanku"><h1 class="nadpish2">
                                                Jak Compex funguje</h1>
                                            Compex je zaloen na ètyøech párech elektrod, které se nalepí na stimulované svaly. Abychom 
                                            zvıšili úèinky elektrostimulace, mùeme vyuít ukazatel motorického bodu, kterı nám pomùe 
                                            pøesnì nalézt správnou pozici elektrod. Pokud vlastníte pøístroj s MI senzorem (muscle 
                                            intelligence senzor), dojde v první fázi elektrostimulaèního programu k oskenování 
                                            stimulovaného svalu. Na základì tohoto mìøení zobrazí Compex napøíklad vhodné rozmezí 
                                            intenzit, nebo další parametry svalu podle spuštìného programu. MI senzor nabízí funkce 
                                            MI-SCAN, MI-RANGE, MI-TENS a MI-ACTION. Elektrické impulsy stahují a uvolòují stimulovanı 
                                            sval v pøesnì definovanıch intervalech a intenzitì, kterou si sami mùete regulovat. Vše 
                                            opìt závisí na spuštìném programu a stimulovaném svalu. Kadı program má své doporuèené 
                                            pozice elektrod a svou stanovenou délku. Jakmile skonèí, pøístroj oznámí tuto skuteènost 
                                            zvukovım signálem.
                                            <h1 class="nadpish2">
                                                Compex jako regeneraèní pomùcka ve sportu</h1>
                                            Pro vìtšinu sportovcù má Compex nejvìtší pøínos pøi podpoøe regenerace a uvolnìní namoenıch 
                                            svalù. U cyklistù se jedná pøedevším o stehenní svaly, lıtkovı sval, hıïovı sval a zádové 
                                            svaly. Všechny tyto svaly lze stimulovat pøístrojem Compex, co napomáhá jejich uvolnìní 
                                            a rychlejší regeneraci, popøípadì úlevì od bolesti. Pøístroj obsahuje nìkolik programù 
                                            pro regeneraci. Ten nejpouívanìjší je bezesporu program aktivní regenerace, kterı sám 
                                            nejvíce vyuívám. Pracuje na principu protøepání svalù, kdy se frekvence stahù postupnì 
                                            sniuje a zároveò se zvyšuje intenzita impulsù. Tento program trvá asi 24 minut a po 
                                            ukonèení je vhodné provést ještì pro zvıšení jeho efektu protahovací cvièení.
                                            <h1 class="nadpish2">
                                                Compex a jeho tréninkové programy</h1>
                                            Compex lze vyuít i jako doplnìk k tréninku. Nabízí programy jak na zlepšení sily, tak na 
                                            zvıšení vytrvalosti. U tìchto programù se doporuèuje zvıšit intenzitu impulzù na maximální 
                                            snesitelnou úroveò, aby bylo zapojeno co moná nejvíce svalovıch vláken a trénink byl tak 
                                            maximálnì efektivní. Posilovací tréninky vyuívají ve velké míøe hlavnì hendikepovaní 
                                            sportovci, nebo lidé po zranìní, kteøí potøebují posílit svaly, které nejsou schopni 
                                            zatíit pøirozenım pohybem a je u nich nebezpeèí atrofie.
                                            <h1 class="nadpish2">
                                                Osobní zkušenosti</h1>
                                            Své zkušenosti jsem získal s modelem Compex Performance, kterı je urèenı pøevánì pro 
                                            sportovce a cyklisty. Kdy jsem zaèal Compex vyuívat, mìl jsem mírné obavy, jakım 
                                            zpùsobem budu snášet elektrické impulsy. Musím pøiznat, e mi to zprvu nebylo moc 
                                            pøíjemné a proto jsem si radìji nastavoval niší hodnoty intenzity impulsù a to na 
                                            spodní hranici rozmezí stanoveného MI senzorem. Postupnì jsem si ale zvykal a nyní 
                                            nemám problém se pohybovat uprostøed stanoveného pásma. <br />
                                            Pøi prvních procedurách jsem si poctivì hledal pozice elektrod pomocí ukazatele motorického 
                                            bodu, co docela prodluovalo celı prùbìh masáe. Po nìkolika zapojeních však èlovìk zjistí, 
                                            kam elektrody nalepit a to i v pøípadì rùznıch svalovıch skupin, co velmi urychluje prùbìh 
                                            pøípravy na masá. Compex pouívám pøevánì na masá stehenních svalù, lıtkovıch svalù a 
                                            nìkdy i hıdí. Nejlépe reagují stehenní svaly a na jejich stimulaci staèí nejmenší 
                                            intenzita impulsù. Nejhùøe mi reagují lıtkové svaly, co je dle mého mínìní zpùsobeno tím, 
                                            e mi lıtka èasto natékají. Moná by se hodil i jinı program, kterı ovšem model 
                                            Performance neobsahuje.
                                            <h1 class="nadpish2">
                                                Jakı model vybrat</h1>
                                            Cenová politika vırobce je taková, e vybavil své modely rùznımi programy dle zamìøení 
                                            pøístroje a pokud chcete vyuívat i programy ostatních pøístrojù, je nejvıhodnìjší nákup 
                                            modelu Copmpex Wireless, kterı krom toho, e umoòuje nahrání jakéhokoli elektrostimulaèního 
                                            programu ze všech dostupnıch modelù, má i spoustu dalších vymoeností, vèetnì bezdrátové 
                                            komunikace s ovládací jednotkou, nebo MI senzoru na všech elektrodách. Z tìchto dùvodù 
                                            bych doporuèil pøi nákupu zváit, zda Compex bude vyuívat více lidí (napøíklad celá rodina), 
                                            nebo bude vyuíván pouze k jednomu úèelu a na základì toho vybrat odpovídající model.
                                            <h1 class="nadpish2">
                                                Závìrem</h1>
                                            Compex se mi za dobu uívání velmi osvìdèil a pomáhá mi hlavnì v situacích, kdy není monost 
                                            vyuít klasické masáe. Ale i pøi monosti masáe ho beru jako vıbornı doplnìk. Pokud si 
                                            pøipravím pøed masáí svaly za pomocí Compexu, je pak klasická masá o mnoho úèinnìjší. 
                                            Velmi dobré vısledky jsem pozoroval pøi jarním soustøedìní, kdy mi masér potvrdil, e moje 
                                            svaly jsou v o mnoho lepším stavu, ne kdy jsem Compex nepouíval. Lepší a rychlejší 
                                            regenerace znamená monost více trénovat a tím docílit i vyšší vıkonnosti. Cítím, e mi v 
                                            tom Compex mùe pomoci.
                                        </div>
                                        <div class="hidetext" align="right">
                                            <button type="button" class="hidepart" style="width: 53px; height: 20px; font-size: xx-small; text-align: right; ">Skrıt</button>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div id="clanek11" class="rozbalovaciclanek">
                                        <div class="infoclanek">
                                            Autor: Rostislav Krotkı<br />
                                            Vydáno: 11.3.2012
                                        </div>
                                        <div class="uvodclanku">
                                            <h1 class="nadpish1">
                                                Intenzivní èást objemového pøípravného období</h1>
                                            Pokud máte absolvován blog základní vytrvalosti, mùete pøejít na èást pøípravy, ve které 
                                            zaènete zaøazovat intenzity. Vzhledem k tomu, e se poøád nacházíme v pøípravném období, 
                                            je trénink stále objemového charakteru. O to nároènìjší je zaøazení intenzit tak, aby 
                                            nedošlo k pøetrénování a intenzivní trénink mìl pro nás pozitivní efekt. Z tohoto dùvodu 
                                            nemusí tento trénink tvoøit stìejní èást tréninkové jednotky. Ta by mìla bıt stále 
                                            zaloena na vytrvalosti a intenzity by mìly bıt vloeny s pøimìøenou délkou trvání a 
                                            správnım naèasováním. Vdy záleí na trénovanosti kadého jedince.
                                        </div>
                                        <div class="showtext" align="right">
                                            <button type="button" class="viewpart" style="width: 67px; height: 20px; font-size: xx-small; text-align: right; ">Zobrazit</button>
                                        </div>
                                        <div class="textclanku"><h1 class="nadpish2">
                                                Co vnímat jako intenzitu</h1>
                                            Intenzita v objemové pøípravì je kadá èást tréninkové jednotky, kdy se pohybujeme v 
                                            oblasti nad aerobním prahem. Aerobní práh je stav organismu, kdy tìlo zaèíná pøecházet 
                                            z tukového metabolismu na cukry. Èím trénovanìjší sportovec, tím blíe je tento práh 
                                            k prahu anaerobnímu. 
                                            <h1 class="nadpish2">
                                                Kdy zaøadit intenzity</h1>
                                            Abychom dosáhli maximálního tréninkového efektu, je nutné zaøazovat intenzity v prvních 
                                            trénincích tréninkového cyklu, kdy je tìlo ještì relativnì odpoèaté. Poslední tréninky 
                                            v cyklu ji absolvujeme pouze ve vytrvalostním reimu. V rámci tréninkové jednotky 
                                            zaøazujeme intenzity po dùkladném rozjetí v první èásti tréninku. Zvláštì v objemové 
                                            pøípravì mùe bıt rozjetí delší, protoe tìlu trvá mnohem déle, ne se plnì adaptuje 
                                            na zátì. Poèet a délka intenzit jsou závislé na trénovanosti kadého jedince.
                                            <h1 class="nadpish2">
                                                Jaké intenzity zaøadit</h1>
                                            V pøípravném období mùeme zaøadit nìkolik typù intenzit, které jsou vhodné kombinovat 
                                            s vytrvalostním tréninkem. V první øadì je to silovı trénink nízkou, nebo støední 
                                            frekvencí šlapání. Tento trénink je velmi nároènı a je vhodné jej zaøadit ihned po 
                                            dùkladném rozjetí v první èásti tréninkové jednotky a bıt pøed ním co nejlépe odpoèatı. 
                                            Dalším vhodnım tréninkem v pøípravném období je trénink motoriky šlapání. Je to jízda 
                                            vysokou frekvencí šlapání kolem 110 ot/min trvající 1h - 2h. Tento trénink je vhodné 
                                            zaøadit nejlépe na konec tréninkové jednotky. Po nìm následuje pouze vyjetí. Zvláštì 
                                            úvodní tréninky jsou velmi nároèné a je potøeba jej zaøadit opìt mezi první v 
                                            tréninkovém cyklu.  Mezi intenzity v objemové pøípravì lze zaøadit také úseky na 
                                            špici ve skupinì, které se odehrávají mezi aerobním a anaerobním prahem. Další 
                                            dùleitou intenzitou jsou spurty na konci kadého tréninku, které mají i kompenzaèní 
                                            efekt. Cílenı trénink na úrovni anaerobního prahu bych v této fázi pøípravy zatím 
                                            nedoporuèoval a radìji jej zaøadil a po dùkladnìjším odpoèinku v období tìsnì pøed 
                                            prvními závody.
                                            <h1 class="nadpish2">
                                                Jakım zpùsobem kombinovat intenzity</h1>
                                            Ideálním základem tréninku v tomto období je trénink ve skupinì s intenzitami na špici, 
                                            nebo trénink v kopcovitém terénu se støednì dlouhımi kopci. Oba typy tréninku jsou 
                                            intervalového charakteru s úseky lehce nad hranicí aerobního prahu. K obìma typùm 
                                            tréninkù lze v prvních jednotkách kadého tréninkového cyklu pøidat silovı trénink a 
                                            vdy na závìr spurty. Trénink motoriky šlapání je vhodnı trénovat individuálnì, nebo 
                                            v malé skupince a je vhodné si najít rovinatı profil. Kombinovat lze s lehèím základním 
                                            tréninkem a je vhodné jej absolvovat jako první v tréninkovém cyklu. V rámci celé 
                                            tøítıdenní intenzivní objemové èásti nejprve postupnì intenzity pøidáváme a v závìru 
                                            pøecházíme zpìt do vytrvalosti.
                                            <h1 class="nadpish2">
                                                Závìrem</h1>
                                            Intenzivní èást objemové pøípravy na kole je nejnároènìjším obdobím celé pøípravy a 
                                            je nutné ji vìnovat náleitou pozornost, nepodcenit regeneraci, poctivì provádìt 
                                            protahovací cvièení, vyuít masáí a soustøedit se i na kvalitní stravu a popøípadì 
                                            vyuít i vitaminovıch a potravinovıch doplòkù. Jen tak z ní vytìíte maximum.
                                        </div>
                                        <div class="hidetext" align="right">
                                            <button type="button" class="hidepart" style="width: 53px; height: 20px; font-size: xx-small; text-align: right; ">Skrıt</button>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div id="clanek10" class="rozbalovaciclanek">
                                        <div class="infoclanek">
                                            Autor: Rostislav Krotkı<br />
                                            Vydáno: 25.2.2012
                                        </div>
                                        <div class="uvodclanku">
                                            <h1 class="nadpish1">
                                                Wattmetr v pøípravném období  - vytrvalost</h1>
                                            Protoe u 5 let pouívám wattmetr PowerTap jako nepostradatelnou tréninkovou pomùcku, 
                                            chtìl bych v nìkterıch èláncích ukázat, jak jej nejlépe vyuít a popsat moje zkušenosti 
                                            a reálné vyuití v rùznıch typech tréninkù. I v pøípravném období pøed sezónou lze wattmetr 
                                            s vıhodou vyuívat a to nejen ve speciálních tréninkovıch jednotkách. V další èástí se vám 
                                            pokusím vysvìtlit jak.
                                        </div>
                                        <div class="showtext" align="right">
                                            <button type="button" class="viewpart" style="width: 67px; height: 20px; font-size: xx-small; text-align: right; ">Zobrazit</button>
                                        </div>
                                        <div class="textclanku"><h1 class="nadpish2">
                                                Nepodceòujte vıznam tepové frekvence</h1>
                                            Na úvod bych chtìl pøipomenout jednu dùleitou informaci, watty udávají okamitou hodnotu 
                                            vašeho vynaloeného vıkonu, ale tepová frekvence je odezvou na aktuální stav organismu, 
                                            i kdy má urèité zpodìní. Pøi vytrvalostním vıkonu není toto zpodìní pøíliš podstatné a 
                                            stav organismu je pøi tomto dlouhodobém zatíení o mnoho dùleitìjší ne okamitı vıkon. 
                                            Øídit se proto pouze hodnotou, kterou udává váš wattmetr, není pøíliš vhodné. Proè ale v 
                                            tom pøípadì mìøit watty? Odpovìï je jednoduchá, abyste umìli øídit kvalitu a délku tréninku.
                                            <h1 class="nadpish2">
                                                Vytrvalostní trénink s wattmetrem</h1>
                                            Všichni víme, e je dùleité zaèínat s kratšími vytrvalostními tréninky a postupnì je 
                                            prodluovat, aby se tìlo postupnì adaptovalo na vytrvalostní zátì. Málokdo ovšem ví, 
                                            jak dlouhı trénink je pro nìj ideální. Pomoci nám mùe právì mìøení vıkonu a tepové 
                                            frekvence. U trénovaného sportovce má jeho vıkon následující prùbìh, v první fázi se 
                                            tìlo adaptuje, to znamená, e klesá tepová frekvence a stoupá vıkon, v druhé fází se 
                                            tyto dvì velièiny stabilizují a v poslední fázi zaèíná vıkon klesat, pøestoe tepová 
                                            frekvence se stále drí na vyšší hodnotì. Pokud trénink ve vhodné chvíli ukonèíme, 
                                            nedojde k pøetrénování, ani nedostateènému zatíení. Wattmetr je k tomu vynikajícím 
                                            pomocníkem, mùete navíc sledovat váš postup v prùbìhu tréninkového cyklu a následnì 
                                            délku a intenzitu tréninku vhodnì upravovat. Efektivita vašeho tréninku se tím mùe 
                                            vıraznì zvıšit. Zkušení sportovci mohou intenzitu a délku tréninku v mnoha pøípadech 
                                            odhadnout, ale ti ménì zkušení vìtšinou nikoliv.
                                            <h1 class="nadpish2">
                                                Vytrvalostní trénink ve skupinì</h1>
                                            Tento trénink je praktikován pøevánì na spoleènıch tımovıch soustøedìních. Tìlo si na 
                                            špici zvyká na vyšší intenzity, pøesto jsou tréninky velmi dlouhé. Pøed tímto typem 
                                            tréninkù je vhodné mít najetı ji nìjakı objem. Pøi skupinovém vytrvalostním tréninku 
                                            mùete wattmetr také s vıhodou vyuít. Pomocí vıkonu a tepové frekvence, mùete øídit 
                                            optimální intenzitu, délku a frekvenci na špici. Pokud se vám podaøí optimálnì skloubit 
                                            tyto tøi velièiny, budete z tohoto tréninku vıraznì profitovat v prvních jarních závodech.
                                            Nezapomínejte, e rychlost skupiny by mìla bıt taková, abyste se i v háku pohybovali v 
                                            aerobním pásmu, jinak jízda postrádá vytrvalostní tréninkovı efekt.
                                            <h1 class="nadpish2">
                                                Watty a informace o celkovém zatíení organismu</h1>
                                            Dalším pøínosem wattmetru je vıstup v podobì reálného zatíení organismu, takzvaného 
                                            stress faktoru. Tento údaj vám vypoèítá speciální software dodávanı s wattmetrem, nebo 
                                            jej pøímo na displeji zobrazují nìkteré typy cyklistickıch computerù. Zatíení organismu 
                                            není pøímo úmìrné prùmìrnému wattovému vıkonu, ani prùmìrné tepové frekvenci. Velmi 
                                            závisí na zmìnách intenzity jízdy. Díky hodnotì stress faktoru mùete posoudit skuteènou 
                                            nároènost tréninku a pøizpùsobit pak trénink následující.
                                            <h1 class="nadpish2">
                                                Wattmetr jako zpìtná odezva</h1>
                                            Pokud dobøe znáte své hodnoty vıkonu za rùznıch podmínek, dokáete velice dobøe posoudit 
                                            aktuální stav vašeho organismu a ne se jen domnívat, jak na tom jste. Pøedpokládá to 
                                            ovšem dlouhodobìjší a intenzivní vyuívání wattmetru. Pøi pøíleitostném pouívání si 
                                            jen tìko vytvoøíte objektivní zhodnocení, a proto doporuèuji pouívat wattmetr i pøi 
                                            závodech.
                                            <h1 class="nadpish2">
                                                Závìrem</h1>
                                            Pro zaèínající uivatele wattmetru je pøípravné období ideální dobou k nasbírání základních 
                                            informací o chování svého organismu a reakcí na rùzné podnìty zpùsobené rùznım typem zátìe, 
                                            napøíklad si mùete otestovat ideální frekvenci šlapání v rùznıch situacích. Tyto informace 
                                            pak lze s vıhodou vyuít i v závodech. Více o rùznıch typech tréninku a vyuití wattmetru 
                                            se pokusím napsat v nìkterém z dalších èlánkù.
                                        </div>
                                        <div class="hidetext" align="right">
                                            <button type="button" class="hidepart" style="width: 53px; height: 20px; font-size: xx-small; text-align: right; ">Skrıt</button>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div id="clanek9" class="rozbalovaciclanek">
                                        <div class="infoclanek">
                                            Autor: Martin Hunal<br />
                                            Vydáno: 20.2.2012
                                        </div>
                                        <div class="uvodclanku">
                                            <h1 class="nadpish1">
                                                Kyslíkovı stan v tréninkové pøípravì</h1>
                                            V zimní pøípravì na sezónu jsem se rozhodl vyuít kyslíkovı stan.  Pro ty, které zajímá 
                                            tato metoda, jen pomáhá posunout hranice vıkonnosti zase o nìco vıše, jsem se pokusil 
                                            spolu s Rosou Krotkım napsat nìkolik mıch prvních zkušeností.
                                        </div>
                                        <div class="showtext" align="right">
                                            <button type="button" class="viewpart" style="width: 67px; height: 20px; font-size: xx-small; text-align: right; ">Zobrazit</button>
                                        </div>
                                        <div class="textclanku"><h1 class="nadpish2">
                                                Pøedchozí zkušenosti</h1>
                                            Ji v minulém roce jsem mìl pøíleitost vyuít podobnou metodu, která je zaloená na 
                                            hypoxii. Oznaèuje se zkratkou IHT (Intermittent Hypoxia Training) a funguje na principu 
                                            støídavého dıchání vysokohorského vzduchu. Moje zkušenosti s touto metodou byly velmi 
                                            pozitivní, podle mého názoru mi pomohla hlavnì v následujících závodech k lepším vısledkùm. 
                                            Druhá polovina sezóny u byla trochu horší, a proto jsem se rozhodl letos vyzkoušet i další 
                                            známou metodu, kyslíkovı stan.
                                            <h1 class="nadpish2">
                                                Popis</h1>
                                            Kyslíkovı stan, jen simuluje vysokohorské prostøedí, vyuila v kariéøe øada sportovcù. 
                                            Nejvíce tuto metodu proslavila Kateøina Neumannová pøi pøípravì na olympiádu.  I z tohoto 
                                            dùvodu jsem se rozhodl vyzkoušet její úèinky na sobì. Zapùjèil jsem si kyslíkovı stan 
                                            Hypoxico. Jak je z názvu patrné, funguje kyslíkovı stan na principu sníeného obsahu 
                                            kyslíku, tzv. hypoxie. Hlavním pøíslušenstvím stanu je generátor, kterı nasává okolní 
                                            vzduch a upravuje v nìm právì koncentraci kyslíku. Pøes hadici potom pøivádí upravenı 
                                            vzduch do stanu. Generátor dokáe simulovat nadmoøskou vıšku od 600 m.n.m. a do 4000 
                                            m.n.m. Stan je vyroben z prùhledného materiálu, take mùete bez problémù komunikovat s 
                                            okolím. Stan není absolutnì utìsnìn, generátor upravenı vzduch pouze pøivádí a pøebyteènı 
                                            se dostává do okolí síovinou ve vrchní èásti stanu. Generátor je ovšem docela hluènı, 
                                            take je vhodné jej umístit do jiné místnosti. Ve stanu, kterı jsem si zapùjèil, se pohodlnì 
                                            vyspí dva lidé. V nabídce však jsou i stany menší, nebo naopak vìtší.
                                            <h1 class="nadpish2">
                                                Adaptace</h1>
                                            Adaptace organismu probíhá postupnım zvyšováním nadmoøské vıšky. Já jsem zaèínal na 1400 
                                            m.n.m. Zprvu jsem kadou noc zvyšoval nadmoøskou vıšku cca o 200 metrù. Nyní ji zvyšuji po 
                                            více dnech, a to podle pocitu ze spánku. Zatím mi spaní ve stanu problém nedìlá, ale pøi 
                                            vyšších nadmoøskıch vıškách u by kvalita spánku mohla bıt ovlivnìná, a proto je potøeba 
                                            zvyšovat opatrnì a adaptaci neuspìchat.
                                            <h1 class="nadpish2">
                                                Hypoxie</h1>
                                            Díky hypoxii dochází v tìle ke zvıšené tvorbì hemoglobinu a èervenıch krvinek, dále pak ke 
                                            zmìnám bunìènıch funkcí, sníení klidového krevního tlaku, srdeèní tepové frekvence a u 
                                            astmatikù by mìlo docházet i ke zlepšení astmatickıch potíí. Já je v minulosti mìl, take 
                                            vìøím, e bude mít na mì stan i v tomto ohledu pozitivní vliv. Stan zatím pouívám tøi tıdny 
                                            a mám ho pronajatı na mìsíc. V prùbìhu sezóny si plánuji stan pronajmout ještì jednou, ale 
                                            u na kratší dobu, protoe adaptace na nadmoøskou vıšku bude pro mne snadnìjší. Dùleité 
                                            budou vısledky krevních testù a jejich porovnání pøed a po pouití kyslíkového stanu. 
                                            Krvetvorbu je také vhodné podpoøit zvıšenım pøíjmem eleza, vitamínu B12 a kyseliny listové. 
                                            Vzhledem k tomu, e vznik èervené krvinky trvá zhruba sedm dní, je vhodné testy provést 
                                            minimálnì po tıdnu po ukonèení pouití kyslíkového stanu. ivotnost èervenıch krvinek je 
                                            100-120 dní, to je i dùvod pro opakované pouití kyslíkového stanu.
                                            <h1 class="nadpish2">
                                                Vliv na trénink</h1>
                                            Co se tıká tréninkù, zatím se cítím normálnì a nemám pocit, e bych byl více unavenı ne 
                                            jindy. Zvládám absolvovat stejné dávky, jako kdy jsem stan nepouíval. To pokládám za 
                                            velké pozitivum této metody.
                                            <h1 class="nadpish2">
                                                Zhodnocení</h1>
                                            Po prvních závodech, které mì èekají asi za mìsíc po ukonèení pouívání kyslíkového stanu, 
                                            se pokusím shrnout další moje pocity z úèinku na mùj organismus a oèekávanı vıkonnostní 
                                            rùst. Vìøím, e budou více ne pozitivní. Také mì zajímá srovnání s vıše zmiòovanou metodou 
                                            IHT. V dubnu se tedy mùete tìšit na mé zhodnocení a porovnání obou metod.
                                        </div>
                                        <div class="hidetext" align="right">
                                            <button type="button" class="hidepart" style="width: 53px; height: 20px; font-size: xx-small; text-align: right; ">Skrıt</button>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div id="clanek8" class="rozbalovaciclanek">
                                        <div class="infoclanek">
                                            Autor: Rostislav Krotkı<br />
                                            Vydáno: 2.2.2012
                                        </div>
                                        <div class="uvodclanku">
                                            <h1 class="nadpish1">
                                                Speciální pøíprava pøed sezónou</h1>
                                            V tomto èlánku napíšu nìco o speciální pøípravì na závodní období. V této èásti pøípravy 
                                            je ji vhodné se pøevánì orientovat na kolo. S touto pøípravou je vhodné zaèít asi 2 mìsíce 
                                            pøed prvními plánovanımi závody. Pro ty, co zaèínají závodit na zaèátku dubna, je nyní 
                                            nejvyšší èas. Jak by mìla pøíprava vypadat, si povíme podrobnìji.
                                        </div>
                                        <div class="showtext" align="right">
                                            <button type="button" class="viewpart" style="width: 67px; height: 20px; font-size: xx-small; text-align: right; ">Zobrazit</button>
                                        </div>
                                        <div class="textclanku">
                                            <h1 class="nadpish2">
                                                Kdy zaèít</h1>
                                            Jak u jsem naznaèil, je vhodné zaèít ideálnì 9 tıdnù (v pøípadì 4 tıdenního makrocyklu) 
                                            pøed prvními plánovanımi závody. Je to z toho dùvodu, abychom byli schopni absolvovat 2 
                                            základní typy tréninku, speciální (cyklistickou) vytrvalostní èást a následnì zaèít 
                                            rozvíjet intenzity.
                                            <h1 class="nadpish2">
                                                Vytrvalostí èást</h1>
                                            První makrocyklus speciální pøípravy by mìl bıt zamìøen pøevánì na objemovı trénink. 
                                            Formou zvyšující se zátìe ve 3-5 denních cyklech bychom mìli v tomto období pøipravit 
                                            tìlo na vytrvalostní zátì. Speciální tréninky by se mìly odehrávat pøevánì v aerobním 
                                            pásmu. Je to velmi dùleité pro další pøípravu, protoe si tímto zpùsobem budujeme základy 
                                            pro budoucí období. Pokud toto období vynecháme nebo vıraznì zkrátíme, vìtšinou se to projeví 
                                            brzkou jarní formou a následnım propadem vıkonnosti.<br />
                                            Nebylo by dobré ani v této dobì zapomínat na posilování, doporuèuji však ji vyuívat 
                                            posilování na kole. Zaèínáme postupnì na 5min – 15min kopci, frekvencí 60-70 ot/min a tepové 
                                            frekvenci 10-15 tepù pod anaerobním prahem, popøípadì odpovídajícím wattovım vıkonem. Ze 
                                            zaèátku staèí zaøadit tento trénink jednou tıdnì.<br />
                                            Dalším dùleitım tréninkovım prvkem jsou spurty. Aplikujeme je na konci kadého tréninku. 
                                            Staèí 3 – 5 spurtù na maximum. Spurty mají nejen rychlostní pøínos, aby si tìlo zvyklo na 
                                            konci jízdy mobilizovat poslední síly, ale i jako aktivní regenerace po dlouhé relativnì 
                                            jednotvárné jízdì.<br />
                                            V celé vytrvalostní èásti je moné kombinovat jak individuální, tak skupinovou jízdu. Lepší 
                                            jsou však menší skupiny, aby se organismus udroval neustále v aerobní oblasti.
                                            <h1 class="nadpish2">
                                                Intenzivní èást</h1>
                                            V posledním makrocyklu pøed závodním obdobím je nutné pøipravit tìlo na vysoké intenzity, 
                                            ve kterıch se bude pohybovat v prvních závodech. Pokud to neudìláme, bude to pro nìj šok a 
                                            urèitì se to projeví i na vısledku v závodì.<br />
                                            Intenzity zaøazujeme postupnì. Zaèínáme kratšími na úrovni anaerobního prahu, postupnì je 
                                            v dalších trénincích prodluujeme (tzv. intervalovı trénink). Snaíme se dret "závodní" 
                                            frekvenci šlapání (95-100 ot/min).<br />
                                            V trénincích dále zaøazujeme i kopce na vyšších intenzitách.  Stále však praktikujeme vıše 
                                            zmiòovanı silovı trénink a spurty na konci tréninku. Celkovı objem tréninku se mùe oproti 
                                            vytrvalostní èásti mírnì sníit.
                                            <h1 class="nadpish2">
                                                Bezprostøední pøíprava na první závody</h1>
                                            Po této relativnì hodnì nároèné intenzivní èásti a následném kompenzaèním tıdnu následuje 
                                            poslední pøedzávodní tıden, kdy by se mìly objemy tréninku ji sníit a mìli bychom se 
                                            aktivnì rozjet pøed nadcházejícími závody.
                                            <h1 class="nadpish2">
                                                Závìrem</h1>
                                            Je zøejmé, e tato závìreèná pøíprava vyaduje více èasu na trénink, ne v jinıch èástech 
                                            sezóny. Pokud budete trénovat poctivì a správnì, vynaloenı èas se vám však urèitì vrátí v 
                                            podobì dobrıch vısledkù po celı rok. Je vhodné tuto èást sezóny nepodcenit. Pokud je to 
                                            moné, je lepší absolvovat tyto 2 pøípravné èásti v klidu nìkde na jarním soustøedìní, kde 
                                            se tréninku mùete plnì vìnovat.
                                        </div>
                                        <div class="hidetext" align="right">
                                            <button type="button" class="hidepart" style="width: 53px; height: 20px; font-size: xx-small; text-align: right; ">Skrıt</button>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div id="clanek7" class="rozbalovaciclanek">
                                        <div class="infoclanek">
                                            Autor: Rostislav Krotkı<br />
                                            Vydáno: 13.1.2012
                                        </div>
                                        <div class="uvodclanku">
                                            <h1 class="nadpish1">
                                                Jak na zimní soustøedìní</h1>
                                            Leden bıvá pro cyklisty, kteøí zaèínají závodit a v dubnu nejvhodnìjším obdobím
                                            vyrazit na hory na lye. Pro všeobecnou vytrvalostní pøípravu jsou nejvhodnìjší
                                            bìky. V aerobním pásmu se na bìkách mùete pohybovat dlouhé hodiny. Pøi tomto
                                            tréninku zapojíte celé tìlo a zlepšujete tak vytrvalostní, aerobní a silové schopnosti
                                            organismu. Na zimní soustøedìní na bìkách staèí jeden tıden.
                                        </div>
                                        <div class="showtext" align="right">
                                            <button type="button" class="viewpart" style="width: 67px; height: 20px; font-size: xx-small; text-align: right; ">Zobrazit</button>
                                        </div>
                                        <div class="textclanku">
                                            <h1 class="nadpish2">
                                                Jak by mìla vypadat pøíprava pøed plánovanım soustøedìním</h1>
                                            Pøi plánování tıdenního soustøedìní na horách je dobré si uvìdomit nìkolik dùleitıch
                                            vìcí. Protoe trénujete v cyklech, které mají stupòující se tendenci, je dobré zaøadit
                                            soustøedìní ve druhé èásti tøítıdenní tréninkové èásti makro cyklu (ètvrtı tıden
                                            je kompenzaèní). Pøed soustøedìním je však nutné bıt relativnì odpoèatı, take dva
                                            dny pøed odjezdem je vhodné zaøadit pouze lehkı kompenzaèní trénink nebo regeneraci.
                                            Pokud je to moné, je vhodné mít pøed tıdenním soustøedìním zaøazeno alespoò nìkolik
                                            tréninkù na bìkách, aby se tìlo, alespoò èásteènì adaptovalo na specifickou zátì.
                                            V opaèném pøípadì vás bude u po prvních trénincích bolet celé tìlo. Pokud se budete
                                            øídit tìmito radami, mùete zaèít soustøedìní bez obav.
                                            <h1 class="nadpish2">
                                                Prùbìh soustøedìní</h1>
                                            Pokud vyjedete na celı tıden, bìek si uijete dosyta a nemá tedy cenu zaèínat velkımi
                                            dávkami. Zvláštì ti, co nemìli monost si na bìkách pøed soustøedìním zatrénovat,
                                            by mìli dávat pozor, aby to s prvními tréninky nepøehnali. Soustøedìní tedy zaèínáme
                                            lehèími a kratšími vıjezdy a postupnì dávky zvyšujeme. Je vhodné si dát po tøech
                                            dnech pauzu na regeneraci, zajít si do bazénu, sauny, víøivky, nebo na masá a co
                                            nejvíce zregenerovat. Po odpoèinkovém dni, budete mít zase chu postavit se do stopy.
                                            Poslední den je dobré zaøadit pouze lehèí trénink na „vyjetí“. Pokud plánujete kombinovat
                                            bìky a sjezdovky, je lepší zaøadit sjezd na dopoledne a odpoledne vyrazit na bìky.
                                            Je to z toho dùvodu, e sjezd je silová zátì, její trénink by mìl bıt zaøazen
                                            vdy jako první a a po té trénovat vytrvalost. Tréninkové dávky jsou závislé na
                                            vìku a trénovanosti kadého jedince a mìli by bıt tak velké, abyste byli schopni
                                            celé soustøedìní bez vìtších problémù absolvovat.
                                            <h1 class="nadpish2">
                                                Trénink po soustøedìní</h1>
                                            Po pøíjezdu domù si další den urèitì zajdìte na regeneraèní procedury. Následující
                                            dva dny zaøaïte lehkı trénink a a po té regeneraèní tıden. Je lepší, kdy tìlo
                                            pøejde do odpoèinku postupnì, zvláštì pak po vìtší zátìi.
                                            <h1 class="nadpish2">
                                                Závìrem</h1>
                                            Zimní soustøedìní na bìkách je bezesporu vynikající pøípravou pro další cyklistickı
                                            trénink, kterı by ji mìl následovat v únoru v dalším tréninkovém makro cyklu tak,
                                            abyste byli kvalitnì pøipraveni na první dubnové starty. Pokud zaèínáte závodit
                                            pozdìji, nebo naopak døíve, mùete si i zimní soustøedìní posunout na odpovídající
                                            termín.
                                        </div>
                                        <div class="hidetext" align="right">
                                            <button type="button" class="hidepart" style="width: 53px; height: 20px; font-size: xx-small; text-align: right; ">Skrıt</button>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div id="clanek5" class="rozbalovaciclanek">
                                        <div class="infoclanek">
                                            Autor: Rostislav Krotkı<br />
                                            Vydáno: 23.12.2011
                                        </div>
                                        <div class="uvodclanku">
                                            <h1 class="nadpish1">
                                                Trénink na válcích</h1>
                                            Válce by nemìly chybìt ve vıbavì ádného cyklisty. Proè si pøednostnì vybrat válce
                                            jsem ji psal v minulém èlánku. Nyní si v úvodu povíme, co je dobré si pøed tréninkem
                                            na válcích uvìdomit. Abychom docílili lehké a plynulé jízdy, je dùleité mít dobøe
                                            nahuštìná kola. Válce je potøeba seøídit tak, aby osa pøedního kola byla kolmá na
                                            osu pøedního válce. Je vhodné mít válce postavené poblí nìjakého opìrného bodu,
                                            aby se vám lépe nastupovalo a slézalo.
                                        </div>
                                        <div class="showtext" align="right">
                                            <button type="button" class="viewpart" style="width: 67px; height: 20px; font-size: xx-small; text-align: right; ">Zobrazit</button>
                                        </div>
                                        <div class="textclanku">
                                            Nesmíte však zapomenout, e na trenaéru bychom mìli trénovat v dobøe vìtrané místnosti,
                                            ve které by mìla bıt radìji niší teplota. Vdy jsou lepší vìtší prostory. I tak
                                            musíte poèítat s tím, e se budete více potit, a proto je potøeba mít pøipravené
                                            dostateèné mnoství tekutin a popøípadì i ruèník. Komu vyhovuje na ochlazování ventilátor,
                                            moná nebude ruèník potøebovat. A nyní ji k samotnému tréninku.
                                            <h1 class="nadpish2">
                                                Rozjetí</h1>
                                            Kadı trénink, nejen na válcích, bychom mìli zaèít rozjetím. Rozjetí by mìlo bıt
                                            tak dlouhé, aby se organismus zahøál na provozní teplotu a byl tak pøipraven na
                                            vyšší zátì. Délka bıvá kolem 15-20min. Intenzita je niší, pohybujeme se do aerobního
                                            prahu. Po rozjetí je vhodné slézt z kola a provést asi 5-10min protaení. Protaení
                                            (streèink) je toti o mnoho úèinnìjší, pokud jsou svaly zahøáté. Po protaení je
                                            ji tìlo pøipraveno na hlavní tréninkovı program.
                                            <h1 class="nadpish2">
                                                Hlavní tréninkovı program</h1>
                                            Tato èást je zaloena na principu intervalového tréninku. Je úplnì zbyteèné drtit
                                            na válcích dlouhı vytrvalostní trénink, daleko vhodnìjší a pøínosnìjší jsou tréninky
                                            intervalové. Délka hlavního programu se obvykle pohybuje mezi 0,5h – 1,5h. Pokud
                                            nemáme k dispozici brdìné válce, musíme si vystaèit pouze s frekvenèními intervaly.<br />
                                            Intervaly je moné øídit podle tepové frekvence, nebo podle wattmetru. Musíme si
                                            však uvìdomit, e se tìlo na trenaeru více pøehøívá, a tím se zvyšuje i tepová
                                            frekvence. Toto zvıšení mùe bıt u kadého jedince jiné. Hodnì záleí na termoregulaèních
                                            schopnostech organismu. Tréninkové prahy je tedy vhodné stanovit i za pouití wattmetru.
                                            Pøesto není wattmetr k tréninku na válcích bezpodmíneènì nutnı. Odpor se toti mìní
                                            pouze rychlostí jízdy a mùeme jej tedy korigovat jen zaøazenım pøevodem a frekvencí
                                            šlapání. Pokud si pøed kadım tréninkem nahustíte kolo na stejnı tlak a pouíváte-li
                                            stejné pláštì nebo galusky, lze vıkony v jednotlivıch tréninkovıch jednotkách bez
                                            problémù porovnávat.<br />
                                            Pøi øízení intervalového tréninku je moné pracovat s nìkolika parametry. Mùete
                                            zvyšovat poèet intervalù, mùete zkracovat odpoèinkovou fázi, prodluovat délku
                                            intervalù, nebo zvyšovat intenzitu intervalù. Tyto monosti lze samozøejmì i rùznì
                                            kombinovat. Dùleité je zatìovat organismus jen do té míry, ne jeho vıkonost v
                                            rámci tréninku zaène klesat. Poznáte to tak, e u nejste schopni udret poadovanı
                                            vıkon ve stanoveném rozsahu tepové frekvence. U trénovaného jedince se tìlo v prvních
                                            intervalech zapracovává a postupnì se jeho vıkonnost zvyšuje. Po nìkolika intervalech
                                            vıkon kulminuje a v dalších se ji zaèíná zhoršovat. V této fázi je nutné trénink
                                            ukonèit. Velmi tedy záleí na druhu intervalového tréninku. Ten je nutné stanovit
                                            individuálnì podle toho, jak dlouhı trénink máte v plánu a jaká je vaše vıkonnost.
                                            Pro první intervalové tréninky doporuèuji vyzkoušet toto:<br />
                                            <p>
                                                5min rozjetí po protaení 95-100ot<br />
                                                5min 15-20tepù pod ANP 110-115ot intenzita<br />
                                                5min 95-100ot kompenzace<br />
                                                5min 10-15tepù pod ANP 110-115ot intenzita<br />
                                                5min 95-100ot kompenzace<br />
                                                5min 5-10tepù pod ANP 110-115ot intenzita<br />
                                                5min 95-100ot kompenzace<br />
                                                5min 5-10tepù pod ANP 110-115ot intenzita<br />
                                                10min 95-100ot kompenzace</p>
                                            Pokud jste byli schopní zopakovat poslední intenzitu na stejné, nebo vyšší úrovni
                                            mùete si pøidat po 5min kompenzaci další interval. Pokud ne, trénink ukonèete 10min
                                            kompenzací dle rozpisu. Vyhodnocení je zøejmé z pøedchozího textu. Pro následující
                                            trénink upravte délku a intenzitu (max. ANP) intervalù tak, abyste mohli absolvovat
                                            trénink v poadované délce.<br />
                                            Máte-li k dispozici brdìné válce, nabízí se vám další monosti. Mùete buï støídat
                                            frekvenèní intervaly se silovımi, nebo jet pouze trénink se silovımi intervaly (na
                                            válcích asi 70ot). Nezapomeòte, e silové intervaly se jezdí na niší tepové frekvenci
                                            (asi o 10 tepù) ne intervaly frekvenèní.
                                            <h1 class="nadpish2">
                                                Vyjetí</h1>
                                            Pøed ukonèením tréninku je dobré opìt slézt z kola, a provést asi 5-10min protaení.
                                            Poté se ještì asi 10min kompenzaènì vyjet. Po osprchování provést ještì jedno dùkladné
                                            protaení, nejlépe alespoò 20min.<br />
                                            <br />
                                            V pøíštím èlánku vám ukáu nìjaké protahovací cviky, a to s kolem i bez kola.
                                        </div>
                                        <div class="hidetext" align="right">
                                            <button type="button" class="hidepart" style="width: 53px; height: 20px; font-size: xx-small; text-align: right; ">Skrıt</button>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div id="clanek4" class="rozbalovaciclanek">
                                        <div class="infoclanek">
                                            Autor: Rostislav Krotkı<br />
                                            Vydáno: 14.12.2011
                                        </div>
                                        <div class="uvodclanku">
                                            <h1 class="nadpish1">
                                                Trénink na trenaéru, vıbìr vhodného typu</h1>
                                            Trenaér je vìtšinou mezi cyklisty ta nejménì oblíbená forma cyklistiky, v zimních
                                            mìsících však vìtšinou jediná moná. Jak si “zpøíjemnit“ trénink na trenaéru a
                                            pøitom kvalitnì odtrénovat a jakı trenaér vybrat? To jsou otázky, na které se vám
                                            pokusím dnes odpovìdìt.
                                        </div>
                                        <div class="showtext" align="right">
                                            <button type="button" class="viewpart" style="width: 67px; height: 20px; font-size: xx-small; text-align: right; ">Zobrazit</button>
                                        </div>
                                        <div class="textclanku">
                                            <h1 class="nadpish2">
                                                Jakı trenaér vybrat</h1>
                                            Mìli bychom si v první øadì uvìdomit, k jakému tréninku jej budeme pøevánì pouívat
                                            a zda jej budeme chtít obèas nìkam vozit, pøípadnì zda jej budeme pouívat i v sezónì
                                            a jakım zpùsobem. V podstatì máme na vıbìr mezi válci, klasickım trenaérem a stacionárním
                                            kolem. Nebudu zde rozebírat rùzné modely, ale zamìøím se pouze na tyto tøi kategorie.
                                            <h1 class="nadpish2">
                                                Válce</h1>
                                            Válce doporuèuji všem mladım cyklistùm a všem, kteøí potøebují zlepšit techniku
                                            šlapání. Jsou vıborné i na vyjetí po tréninku. Vidím je jako nepostradatelnou pomùcku
                                            pro mladé a zaèínající cyklisty pro nauèení správné techniky šlapání. Protoe jste
                                            pøi jízdì na válcích nuceni dret rovnováhu, jsou zapojeny i menší svalové skupiny
                                            a jízda tak pøipomíná nejvíce jízdu po silnici. Na pevnıch typech trenaérù jsou
                                            nohy fixovány a trénink není tak úèinnı. Obávat se jich opravdu nemusíte. Pokud
                                            nejste úplné døevo, jezdit se na nich èasem urèitì nauèíte. Jedinou nevıhodou je
                                            jen horší monost silového tréninku, snad s vıjimkou brdìnıch válcù, kde ovšem
                                            odpor nelze mìnit za jízdy. Pøenositelnost je vìtšinou dobrá, vìtšina typù se dá
                                            sloit.
                                            <h1 class="nadpish2">
                                                Klasickı trenaér (ergometr)</h1>
                                            Vıhodou ergometru je jeho stabilita a monost jednoduše a plynule mìnit odpor brzdou.
                                            Z tohoto dùvodu je vyuíván hlavnì pro intervalovı a silovı trénink, kdy si mùeme
                                            jednoduše mìnit zátì mezi úseky. Vyuíván je také èasto na rozjídìní pøed èasovkou.
                                            Vıhodou je i jeho dobrá pøenositelnost a skladnost. Díky stabilitì mùete pøi delším
                                            tréninku napøíklad sledovat TV. Trénink na trenaéru je toti psychicky nároènìjší
                                            ne jízda v pøírodì, protoe kolem vás neubíhá krajina. Z tohoto dùvodu se rozhodli
                                            i nìkteøí vırobci pøidat tìmto trenaérùm monost sledovat virtuální trasu na TV
                                            nebo PC. Trenaérùm pøidali i další programové vychytávky, jako napøíklad programové
                                            nastavení tréninkové trasy (automatická zmìna odporu zátìe dle virtuálního profilu
                                            trasy), nebo závody mezi majiteli stejného vybavení, nebo virtuálními závodníky.
                                            Trenaér tedy doporuèuji na delší tréninky, silové tréninky a rozjídìní pøed závody,
                                            popøípadì tìm starším, kteøí si u na válce netroufají. Pøesto však neèekejte, e
                                            ergometrem nahradíte cyklistickı trénink.
                                            <h1 class="nadpish2">
                                                Stacionární nebo spinningové kolo</h1>
                                            Pøedchozí dvì kategorie umoòovaly trénink na kole, na kterém jezdíte i na silnici.
                                            Stacionární kolo je nahrazuje, a proto má dle mého názoru pro opravdového cyklistu
                                            jen omezené monosti. Jen na málo stacionárních kolech si mùete udìlat identickı
                                            posed jako na svém kole. Kdy u se vám podaøí nastavit vıšku a pozici sedla a øídítek,
                                            mùete narazit na délku klik, šíøku støedu (mùete mít napøíklad nohy dál od sebe),
                                            atp. Stacionární kola mají v oblibì hlavnì eny, protoe klasické kolo jim v bytì
                                            vadí a stacionární kolo povaují za kus vybavení. Pøesto pokud se vám podaøí se
                                            vším tím nìjak vypoøádat, dá se i na stacionárním kole nìjakı ten trénink objet.
                                            Speciálním pøípadem stacionárního kola je kolo spinningové, které je hojnì vyuívané
                                            ve fitcentrech. Tréninky na spinningovıch kolech jsou vìtšinou stavìné pro posílení
                                            celého tìla a nemají s cyklistickım tréninkem mnoho spoleèného, pøesto bych je jako
                                            zpestøení zimních tréninkù nezavrhoval. Vıhodou spinningovıch kol je hlavnì jejich
                                            setrvaèník, kterı vás nutí plynule šlapat a v neposlední øadì i trénink ve skupinì,
                                            kterı je mnohem pøíjemnìjší.
                                            <h1 class="nadpish2">
                                                Závìrem</h1>
                                            Trenaérem nikdy nenahradíte trénink na silnici. Trenaér vám nabídne pouze konstantní
                                            odpor, ale v reálnıch podmínkách je odpor vdy velmi promìnlivı, ovlivnìnı nerovnostmi,
                                            poryvy vìtru atp. Z tohoto dùvodu budete pøechod na silnici vdy pociovat jako
                                            zmìnu, se kterou se tìlo musí vyrovnat. Vyrovná se s ní pouze a jenom tréninkem
                                            v tìchto podmínkách. Pøesto lze trenaér úèinnì vyuít ke zlepšení obìhového systému,
                                            ke zlepšení techniky šlapání a k posílení svalstva, popøípadì úpravì tìlesné váhy.
                                            Speciálnì pak k rozjídìní, nebo kompenzaènímu vyjetí. Podle toho, k èemu bude trenaér
                                            nejvíce vyuíván, byste se mìli i rozhodovat, kterı typ zakoupit. Já doporuèuji
                                            pro kadého, kdo to myslí s cyklistikou vánì poøídit si na prvním místì válce a
                                            a po té se dovybavit ergometrem, popøípadì stacionárním kolem. Pøíštì u bude nìjakı
                                            konkrétní trénink.
                                        </div>
                                        <div class="hidetext" align="right">
                                            <button type="button" class="hidepart" style="width: 53px; height: 20px; font-size: xx-small; text-align: right; ">Skrıt</button>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div id="clanek3" class="rozbalovaciclanek">
                                        <div class="infoclanek">
                                            Autor: Rostislav Krotkı<br />
                                            Vydáno: 4.12.2011
                                        </div>
                                        <div class="uvodclanku">
                                            <h1 class="nadpish1">
                                                Pøíklad tréninku v závìru prvního pøípravného období</h1>
                                            První pøípravné období by mìlo vyvrcholit pøed vánoci, abychom mìli dostateènı èas
                                            a prostor si mezi svátky dùkladnì odpoèinout pøed stìejní objemovou zimní pøípravou.
                                            Listopadovı trénink byl lehèí, tìlo si zvykalo postupnì na tréninkovou zátì. Prosincem
                                            toto období postupnì ukonèíme a v lednu zaèíná druhé pøípravné období, ve kterém
                                            u budeme tvrdì systematicky trénovat.
                                        </div>
                                        <div class="showtext" align="right">
                                            <button type="button" class="viewpart" style="width: 67px; height: 20px; font-size: xx-small; text-align: right; ">Zobrazit</button>
                                        </div>
                                        <div class="textclanku">
                                            <h1 class="nadpish2">
                                                Trénink v prosinci</h1>
                                            V prosinci tedy vyuijeme tréninkovıch prostøedkù, o kterıch jsem psal v èlánku
                                            „Trénink v prvním pøípravném období“. Pro vìtšinu z nás je ideální tıdenní cyklus,
                                            a protoe vánoce máme letos v sobotu, pokusím se to zohlednit i v navrhovaném tréninkovém
                                            plánu. Plán sestavuji pro ambiciózního hobby cyklistu, kterı pøes tıden chodí do
                                            práce a o víkendu má více èasu.
                                            <h1 class="nadpish2">
                                                Pøíklad plánu</h1>
                                            <table>
                                                <tr>
                                                    <td>
                                                        Èt
                                                    </td>
                                                    <td>
                                                        1.12.
                                                    </td>
                                                    <td>
                                                        - Regenerace (plavání + sauna, masá, …)
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        Pá
                                                    </td>
                                                    <td>
                                                        2.12.
                                                    </td>
                                                    <td>
                                                        - Posilovna (1h) + 30min válce
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        So
                                                    </td>
                                                    <td>
                                                        3.12.
                                                    </td>
                                                    <td>
                                                        - Vytrvalost (2h – kolo nebo tùra + 30min válce)
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        Ne
                                                    </td>
                                                    <td>
                                                        4.12.
                                                    </td>
                                                    <td>
                                                        - Vytrvalost (2,5h – kolo nebo tùra + 30min válce)
                                                    </td>
                                                </tr>
                                            </table>
                                            <br />
                                            <table>
                                                <tr>
                                                    <td>
                                                        Po
                                                    </td>
                                                    <td>
                                                        5.12.
                                                    </td>
                                                    <td>
                                                        - Regenerace (plavání, sauna, masá, …)
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        Út
                                                    </td>
                                                    <td>
                                                        6.12.
                                                    </td>
                                                    <td>
                                                        - Posilovna (1h) + 30min válce
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        St
                                                    </td>
                                                    <td>
                                                        7.12.
                                                    </td>
                                                    <td>
                                                        - Tìlocvièna (1h), Bìh nebo Trenaér (ergometr, válce) (1h)
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        Èt
                                                    </td>
                                                    <td>
                                                        8.12.
                                                    </td>
                                                    <td>
                                                        - Regenerace (plavání, sauna, masá, …)
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        Pá
                                                    </td>
                                                    <td>
                                                        9.12.
                                                    </td>
                                                    <td>
                                                        - Posilovna (1h) + 30min válce
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        So
                                                    </td>
                                                    <td>
                                                        10.12.
                                                    </td>
                                                    <td>
                                                        - Vytrvalost (2,5h – kolo nebo tùra + 30min válce)
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        Ne
                                                    </td>
                                                    <td>
                                                        11.12.
                                                    </td>
                                                    <td>
                                                        - Vytrvalost (3h – kolo nebo tùra + 30min válce)
                                                    </td>
                                                </tr>
                                            </table>
                                            <br />
                                            <table>
                                                <tr>
                                                    <td>
                                                        Po
                                                    </td>
                                                    <td>
                                                        12.12.
                                                    </td>
                                                    <td>
                                                        - Regenerace (plavání, sauna, masá, …)
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        Út
                                                    </td>
                                                    <td>
                                                        13.12.
                                                    </td>
                                                    <td>
                                                        - Posilovna (1h) + 30min válce
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        St
                                                    </td>
                                                    <td>
                                                        14.12.
                                                    </td>
                                                    <td>
                                                        - Tìlocvièna (1h), Bìh nebo Trenaér (ergometr, válce) (1,5h)
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        Èt
                                                    </td>
                                                    <td>
                                                        15.12.
                                                    </td>
                                                    <td>
                                                        - Regenerace (plavání, sauna, masá, …)
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        Pá
                                                    </td>
                                                    <td>
                                                        16.12.
                                                    </td>
                                                    <td>
                                                        - Posilovna (1h) + 30min válce
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        So
                                                    </td>
                                                    <td>
                                                        17.12.
                                                    </td>
                                                    <td>
                                                        - Vytrvalost (3h – kolo nebo tùra + 30min válce)
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        Ne
                                                    </td>
                                                    <td>
                                                        18.12.
                                                    </td>
                                                    <td>
                                                        - Vytrvalost (3,5h – kolo nebo tùra + 30min válce)
                                                    </td>
                                                </tr>
                                            </table>
                                            <br />
                                            <table>
                                                <tr>
                                                    <td>
                                                        Po
                                                    </td>
                                                    <td>
                                                        19.12.
                                                    </td>
                                                    <td>
                                                        - Regenerace (plavání, sauna, masá, …)
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        Út
                                                    </td>
                                                    <td>
                                                        20.12.
                                                    </td>
                                                    <td>
                                                        - Posilovna (1h) + 30min válce
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        St
                                                    </td>
                                                    <td>
                                                        21.12.
                                                    </td>
                                                    <td>
                                                        - Tìlocvièna (1h), Bìh nebo Trenaér (ergometr, válce) (2h)
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        Èt
                                                    </td>
                                                    <td>
                                                        22.12.
                                                    </td>
                                                    <td>
                                                        - Regenerace (plavání, sauna, masá, …)
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        Pá
                                                    </td>
                                                    <td>
                                                        23.12.
                                                    </td>
                                                    <td>
                                                        - Posilovna (1h) + 30min válce
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        So
                                                    </td>
                                                    <td>
                                                        24.12.
                                                    </td>
                                                    <td>
                                                        - Volno - Vánoce
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        Ne
                                                    </td>
                                                    <td>
                                                        25.12.
                                                    </td>
                                                    <td>
                                                        - Volno + 30min válce
                                                    </td>
                                                </tr>
                                            </table>
                                            <br />
                                            <table>
                                                <tr>
                                                    <td>
                                                        Po
                                                    </td>
                                                    <td>
                                                        26.12.
                                                    </td>
                                                    <td>
                                                        - Volno
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        Út
                                                    </td>
                                                    <td>
                                                        27.12.
                                                    </td>
                                                    <td>
                                                        - Posilovna (1h) + 30min válce
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        St
                                                    </td>
                                                    <td>
                                                        27.12.
                                                    </td>
                                                    <td>
                                                        - Tìlocvièna (1h), Bìh nebo Trenaér (ergometr, válce) (1h)
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        Èt
                                                    </td>
                                                    <td>
                                                        28.12.
                                                    </td>
                                                    <td>
                                                        - Regenerace (plavání, sauna, masá, …)
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        Pá
                                                    </td>
                                                    <td>
                                                        29.12.
                                                    </td>
                                                    <td>
                                                        - Volno + 30min válce
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        So
                                                    </td>
                                                    <td>
                                                        30.12.
                                                    </td>
                                                    <td>
                                                        - Volno - Silvestr
                                                    </td>
                                                </tr>
                                            </table>
                                            <br />
                                            <table>
                                                <tr>
                                                    <td colspan="2">
                                                        <strong>Souhrn za prosinec:</strong>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        Posilovna:
                                                    </td>
                                                    <td>
                                                        8x - 8h
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        Tìlocvièna:
                                                    </td>
                                                    <td>
                                                        4x - 4h
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        Bìh nebo Trenaér:
                                                    </td>
                                                    <td>
                                                        6h
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        Vytrvalost:
                                                    </td>
                                                    <td>
                                                        16,5h
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        Válce:
                                                    </td>
                                                    <td>
                                                        8h
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        Regenerace:
                                                    </td>
                                                    <td>
                                                        8x
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <strong>Celkem:</strong>
                                                    </td>
                                                    <td>
                                                        <strong>asi 50h</strong>
                                                    </td>
                                                </tr>
                                            </table>
                                            <h1 class="nadpish2">
                                                Závìrem</h1>
                                            Tento pøíklad se dá rùznì modifikovat podle moností kadého jedince. Úmyslnì jsem
                                            zaøadil vìtší mnoství kratších tréninkù na válcích, protoe vìtšina ménì zkušenìjších
                                            cyklistù mívá problémy s technikou šlapání a válce jsou vıbornım prostøedkem na
                                            zlepšení tohoto neduhu. Navíc jsem je zaøadil po silovıch a pro cyklistu ménì pøirozenıch
                                            aktivitách na uvolnìní namoenıch svalovıch partií. Jízda by mìla bıt frekvenèní
                                            a pouze aerobní s dùrazem na techniku šlapání. Pokud jsem do jednoho dne uvedl více
                                            aktivit, mìli by bıt provádìny v poøadí, ve kterém jsem je napsal. V nìkterém dalším
                                            èlánku popíšu trénink na trenaeru. Jinak o principech tréninku budu postupnì psát
                                            v sekci “Trénink“.
                                        </div>
                                        <div class="hidetext" align="right">
                                            <button type="button" class="hidepart" style="width: 53px; height: 20px; font-size: xx-small; text-align: right; ">Skrıt</button>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div id="clanek2" class="rozbalovaciclanek">
                                        <div class="infoclanek">
                                            Autor: Rostislav Krotkı<br />
                                            Vydáno: 27.11.2011
                                        </div>
                                        <div class="uvodclanku">
                                            <h1 class="nadpish1">
                                                Trénink v posilovnì</h1>
                                            Vìtšina cyklistù si klade v zimním období otázku, jak nejefektivnìji trénovat. Posilovna
                                            je jedním ze základních tréninkovıch prostøedkù v tomto období. Ukáeme si nyní,
                                            jak nejlépe posilovnu vyuít ke zlepšení vıkonnosti. Pro cyklistu jsou v zásadì
                                            dvì monosti tréninku v posilovnì. Buï mùe zvolit takzvanı kruhovı trénink, nebo
                                            klasickı silovı trénink. Kterı nejlépe vybrat? Ukáeme si, v èem se oba typy tréninku
                                            liší a k èemu jsou dobré.
                                        </div>
                                        <div class="showtext" align="right">
                                            <button type="button" class="viewpart" style="width: 67px; height: 20px; font-size: xx-small; text-align: right; ">Zobrazit</button>
                                        </div>
                                        <div class="textclanku">
                                            <h1 class="nadpish2">
                                                Silovı kruhovı trénink</h1>
                                            Je zaloen na principu postupného procvièení celého tìla. Cviky jsou øazeny za sebou.
                                            Po docvièení jednoho cviku se pøechází bez pøestávky na cvik další. Krátká pøestávka
                                            se zaøadí po odcvièení všech cvikù v koleèku. Koleèek se absolvuje nìkolik, záleí
                                            na trénovanosti jedince. Minimálnì však alespoò 3. Poèet cvikù v jednom koleèku
                                            se pohybuje zpravidla mezi 8 a 12. Jeden cvik se cvièí 20 – 40 sekund. Následující
                                            cvik je vdy provádìn na opaènou svalovou partii, ne byl cvik pøedchozí. Ideálnì
                                            zaèínáme cvièit od støedu tìla a postupujeme ke konèetinám. Trénink je velice nároènı
                                            pro obìhovı systém, protoe se støídavì prokrvují odlišné svalové skupiny. Takto
                                            provádìnım tréninkem si vıznamnì nezvıšíte sílu, ani si nevybudujete velké svalstvo.
                                            Kruhovı trénink je vhodnı zvláštì pro formování postavy, pøi hubnutí a pøedevším
                                            k posílení obìhového systému. Proto je èasto doporuèován pro eny, pro ty co chtìjí
                                            co nejefektivnìji shodit nadbyteèná kila, nebo jako doplnìk k jinım sportùm.
                                            <h1 class="nadpish2">
                                                Klasickı silovı trénink</h1>
                                            Trénink provádìnı klasickım zpùsobem je vdy cílen na urèitou svalovou partii, které
                                            se vìnujeme dùkladnìji. Nejdøíve procvièujeme nejvìtší sval dané partie a postupnì
                                            pøecházíme ke svalùm menším. Cvièíme v sériích, kdy poèet opakování volíme v kadé
                                            sérii dle zamìøení tréninku. Podle toho, zda je zamìøen na budování objemu svalstva
                                            nebo na zvyšování síly. Trénink je vhodnı pro zdatné sportovce. Cyklista se samozøejmì
                                            bude zamìøovat hlavnì na zvyšování síly pro nìj dùleitıch svalovıch partií. Svalové
                                            partie namáhané pøi cyklistice spíše staticky je dobré hlavnì protahovat. Pøi cvièení
                                            jim nemusíme vìnovat takovou pozornost a cvièíme je spíše doplòkovì.
                                            <h1 class="nadpish2">
                                                Všeobecné informace</h1>
                                            Pøed kadım cvièením je nutné, aby byly procvièované svalové partie zahøáté a dobøe
                                            protaené. Zvıšíte tak jejich vıkon a pøedejdete pøípadnım svalovım zranìním. Pro
                                            cyklistu je vhodné pøi obou typech tréninku provádìt cviky dynamicky. Do posilovny
                                            bychom mìli pøijít relativnì odpoèatí. Není vhodné absolvovat pøedešlı den nároènìjší
                                            cyklistickı trénink a neplánovat jej ani v den, kdy jdeme do posilovny. Pøi první
                                            návštìvì posilovny je potøeba cvièit s menšími zátìemi, abychom si nepøivodili
                                            svalovou horeèku. Pøi dalších návštìvách mùeme zátìe postupnì zvyšovat. Pokud
                                            chodíme do posilovny pravidelnì, je vhodné trénink po urèité dobì obmìnit, aby nedošlo
                                            ke stagnaci tréninkového efektu. Pro cyklistu jsou vhodné 1 – 2 návštìvy posilovny
                                            tıdnì.
                                        </div>
                                        <div class="hidetext" align="right">
                                            <button type="button" class="hidepart" style="width: 53px; height: 20px; font-size: xx-small; text-align: right; ">Skrıt</button>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div id="clanek1" class="rozbalovaciclanek">
                                        <div class="infoclanek">
                                            Autor: Rostislav Krotkı<br />
                                            Vydáno: 27.11.2011
                                        </div>
                                        <div class="uvodclanku">
                                            <h1 class="nadpish1">
                                                Trénink v prvním pøípravném období</h1>
                                            Toto období slouí k zapracování organismu do tréninkového procesu. Mìlo by trvat
                                            3-4 tıdny. Intenzity jsou vesmìs nízké a dùraz je kladen pøedevším na techniku provedení.
                                            Sportovní aktivity, na které není tìlo zvyklé, je dobré provádìt s rozumem, zvláštì
                                            pak aktivity náchylnìjší na zranìní, jako jsou rùzné hry a sporty zaloené na dynamickıch
                                            pohybech. Pøed kadım cvièením je dùleité nejprve zahøát svaly nìjakım aerobním
                                            cvièením a poté se dostateènì protáhnout. Tím pøedejdeme pøípadnım svalovım zranìním.
                                            Jaké jsou nejvhodnìjší sportovní aktivity pro cyklistu v tomto pøípravném období
                                            a kolik èasu jim vìnovat, si povíme dále.
                                        </div>
                                        <div class="showtext" align="right">
                                            <button type="button" class="viewpart" style="width: 67px; height: 20px; font-size: xx-small; text-align: right; ">Zobrazit</button>
                                        </div>
                                        <div class="textclanku">
                                            <br />
                                            Sportovní aktivity rozdìlíme do tøí základních skupin, a to podle druhu zátìe.
                                            <h1 class="nadpish2">
                                                Vytrvalost</h1>
                                            U dospìlého by mìla vytrvalost v tomto období tvoøit nejvìtší èást jeho sportovních
                                            aktivit, a to asi 3/4 celkového tréninkového èasu. V pøípadì pìkného poèasí preferujeme
                                            silnièní kolo. Soustøedíme se hlavnì na techniku šlapání a správnı posed. V chladnìjším
                                            poèasí mùeme vyuít horské kolo a opìt se radìji soustøedíme na techniku jízdy,
                                            ne na samotnı vıkon. Pokud u to na kole nejde, jsou vhodnım vytrvalostním tréninkem
                                            pìší tùry. Rychlou chùzi mùeme støídat i s lehkım bìhem. Pozdìji mùe bıt trénink
                                            pouze bìeckı. Jakmile pøijde zima, je vıbornım vytrvalostním tréninkem bìh na lyích,
                                            nebo bruslení na zamrzlém rybníku.
                                            <h1 class="nadpish2">
                                                Sila</h1>
                                            V tomto období se provádí silovı trénink pøedevším v posilovnì. Protoe zaèínáme
                                            cvièit, cvièíme s menší zátìí a soustøedíme se hlavnì na správnost provádìnıch
                                            cvikù. Pokud nemáme monost navštìvovat posilovnu, mùeme ji nahradit silovìjšími
                                            vıjezdy na kole, nebo trenaeru. Nesmíme však zapomenout posilovat i ostatní svalové
                                            partie alespoò v domácích podmínkách. Zajímavou alternativou je té chùze do schodù,
                                            nebo strmého kopce. Posilování by mìlo tvoøit asi 1/6 všech sportovních aktivit.
                                            <h1 class="nadpish2">
                                                Rychlost</h1>
                                            Jedná se pøevánì o doplòkové sporty jako je fotbálek, basketbal, hokej atp. Pozdìji
                                            lze zaøadit i krátké vıbìhy do kopce. Celkovı objem by se u dospìlého mohl pohybovat
                                            kolem 1/12 celkového tréninkového èasu.<br />
                                            <br />
                                            Ani v tomto období bychom nemìli zapomínat na dostateènı spánek a regeneraci. Ta
                                            je pøi kadém sportu velmi dùleitá.
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
            <div id="tab-32" class="clasictext">
                <h2>
                    Vyèkejte...
                </h2>
                Tuto sekci pøipravujeme.
            </div>
            <div id="tab-33" class="clasictext">
                <h2>
                    Vyèkejte...
                </h2>
                Tuto sekci pøipravujeme.
            </div>
            <div id="tab-34" class="clasictext">
                <h2>
                    Vyèkejte...
                </h2>
                Tuto sekci pøipravujeme.
            </div>
            <div id="tab-35" class="clasictext">
                <h2>
                    Vyèkejte...
                </h2>
                Tuto sekci pøipravujeme.
            </div>
            <div id="tab-36">
                <table>
                    <tr>
                        <td valign="top" align="left">
                            <div class="clanek">
                                <h1 class="nadpish1">
                                    Tréninkové kempy
                                </h1>
                                Chtìli byste poznat zajímavé tréninkové destinace, zefektivnit Váš trénink, zvıšit
                                Vaši vıkonnost a nasbírat spoustu novıch informací od zkušeného profesionála? Pojeïte
                                na tréninkovı kemp!
                                <br />
                                Pro pøíznivce a èleny tımu Vysoèina cycling jsem se rozhodl zorganizovat tréninkové
                                kempy v místech, které ke svému tréninku vyuívám i já.
                                <br />
                                Kempy je momé poøádat v tìchto destinacích: <strong>Fuerteventura, Lanzarote, Gran
                                    Canaria, Tenerife, Mallorca, Kypr, Livigno.</strong>
                                <br />
                                Všechny destinace jsem osobnì navštívil, a proto Vám je mohu s klidnım svìdomím
                                doporuèit. Nabídku mohu rozšíøit dle Vašeho pøání. Pokud máte zajímavı typ na tréninkovı
                                kemp, dejte mi vìdìt, zjistím jaké jsou monosti a zváím jeho zaøazení. Má-li Vaše
                                tréninková skupina zájem o privátní kemp, je moné jej v neobsazeném termínu uspoøádat.
                                Minimální poèet pøihlášenıch zájemcù na úspornou variantu kempu je 5. Pro kemp s
                                plnım komfortem je minimum pøihlášenıch 6.
                                <h1 class="nadpish2">
                                    Zázemí tréninkového kempu ve všech destinacích<br />
                                </h1>
                                Ubytováni je vdy v dobøe zaøízenıch apartmánech.<br />
                                Apartmány disponují lonicemi pro 2 osoby.<br />
                                Souèástí apartmánového komplexu na Kanárskıch ostrovech je teplı venkovní bazén.<br />
                                Souèástí apartmánového komplexu na Mallorce a Kypru je vnitøní bazén.<br />
                                Stravu si mùete sami pøizpùsobit svım tréninkùm.<br />
                                Apartmány jsou plnì vybaveny pro vaøení a supermarket je vdy v dosahu.<br />
                                V pøípadì zájmu mohu zajistit sportovní a regeneraèní nápoje za vıhodnìjší ceny.<br />
                                Poradím Vám s tréninkem a nìkteré mohu absolvovat s Vámi.<br />
                                K dispozici mám mìøiè vıkonu powertap.<br />
                                Ve všech destinacích je moné si zapùjèit kvalitní horské i silnièní kolo.
                                <h1 class="nadpish2">
                                    Varianta plnı komfort (pøíplatek 9.999 Kè / 14 dní)
                                </h1>
                                Strava je zajištìna naším kuchaøem a je pøizpùsobena tréninkùm.<br />
                                V cenì kempu jsou sportovní regeneraèní nápoje.<br />
                                O regeneraci se postará masér. V cenì kempu je 6 masáí.<br />
                                Pomùeme Vám v pøípadì problémù na Vašem kole.<br />
                                V cenì kempu je jednodenní vılet po místech, na která se na kole nedostanete.
                                <h1 class="nadpish2">
                                    Pro koho je kemp vhodnı
                                </h1>
                                Na tréninkovı kemp mohou jet zájmci všech vıkonnostních kategorií. Pøed závaznou
                                objednávkou dostane kadı zájemce informaci o vıkonnosti ostatních úèastníkù, aby
                                si mohl ovìøit, zda je pro nìho tréninkovı kemp vhodnı. Doporuèuji, aby alespoò
                                jeden další zájmce byl podobné vıkonnosti.
                                <h1 class="nadpish2">
                                    Rady pro cestu
                                </h1>
                                Doprava na letištì je individuální. V pøípadì poadavku více zájemcù mohu zajistit
                                spoleènou dopravu.<br />
                                V cílové destinaci zajišuji dopravu z letištì do apartmánù.<br />
                                Vzhledem k mìnícím se cenám letenek je vhodné objednávat letenky s dostateènım pøedstihem,
                                proto je vhodné pøihlásit se co nejdøíve.<br />
                                Na Kanárské ostrovy je moné letìt pøímo, a to vìtšinou s <a href="http://www.nacesty.cz/"
                                    target="_blank">nìmeckımi leteckımi spoleènostmi</a>. Další moností je vyuít
                                nízkonákladovou spoleènost <a href="http://www.ryanair.com/" target="_blank">Ryanair</a>
                                a letìt z Bratislavy na Gran Canarii. Mezi ostrovy lze nejlépe cestovat se spoleèností
                                <a href="http://www.bintercanarias.com/" target="_blank">Binter Canarias</a>. Pøi
                                vèasném objednání se cena zpáteèní letenky z Bratislavy na Gran Canarii pohybuje
                                kolem 100 euro. Mezi ostrovy pak kolem 40 euro za jednosmìrnou cestu. Cena zavazadla
                                s kolem je u Ryanairu 40 euro za jednosmìrnou cestu. U nìmeckıch cestovek 50 euro.
                                U Ryanairu je však v cenì letenky pouze jedno 10kg zavazadlo s max. rozmìry 55cm
                                x 40cm x 20cm. Dá se to vyøešit tak, e ostatní vìci pøidáte do zavazadla s kolem.
                                Binter Canarias má v cenì letenky jedno kabinové zavazadlo do 6kg a 20kg zavazadlo
                                do nákladového prostoru bez omezení rozmìrù. V pøípadì zájmu Vám mohu letenky zajistit,
                                ale je nutné je uhradit pøedem. Závazná objednávka je podmínìná zaplacením zálohy
                                ve vıši 50% koncové ceny. Pokud se kempu nebudete moci zúèastnit a neseenete si
                                náhradníka, bude Vaše záloha pouita na alespoò èásteènou úhradu nákladù spojenıch
                                s Vaší neúèastí. Zbytek je nutné doplatit nejpozdìji 2 tıdny pøed odjezdem na kemp.
                                Neváhejte mì kontaktovat v pøípadì jakıchkoli nejasností.
                                <h1 class="nadpish2">
                                    Kdy a jak se pøihlásit
                                </h1>
                                Protoe chci co nejvíce vyjít vstøíct všem zájemcùm o kemp, nechávám ze zaèátku
                                datum všech kempù otevøené. Pøesné datum stanovím a na základì poadavkù vìtšiny
                                zájemcù. V pøihlašovacím formuláøi vyplòte èasové rozmezí, ve kterém se mùete tréninkového
                                kempu zúèastnit. Do poznámky lze napsat doplòující informace, popøípadì otázky nebo
                                poadavky (napøíklad na délku kempu atp). Upozoròuji Vás však, e apartmány se objednávají
                                vdy po tıdnech. Mùete sice bez problémù pøijet i o den nebo dva pozdìji, nebo
                                naopak odjet døíve, ale musíte poèítat s plnou cenou. První pøihláška na kemp je
                                nezávazná. Mùete jich poslat i více na rùzné destinace o které byste mìli zájem.
                                V okamiku, kdy se na destinaci a podobném termínu shodne více zájemcù, zašlu kadému
                                zájemci návrh termínu poøádání kempu, a to i s ohledem na cenu letenek. Komunikace
                                se zájemci pak probíhá emailem nebo telefonicky. Následuje závazná objednávka a
                                zaplacení zálohy. V tomto okamiku se ji další tréninkové kempy v tomto termínu
                                nemohou konat, a všem zájemcùm, kterıch se to tıká, zašlu informaèní zprávu o této
                                skuteènosti. Na webu bude u kempu zobrazen konkrétní termín a poèet zbıvajících
                                míst. Proto je vhodné své ádosti zasílat co nejdøíve. Maximální kapacita kempu
                                mùe bıt omezena. Záleí na obsazenosti apartmánového komplexu.
                                <h1 class="nadpish2">
                                    Doplòující informace
                                </h1>
                                Pokud máte závodní ambice a dostatek èasu absolvovat více kempù, doporuèuji jako
                                základní pøípravu vytrvalosti kemp na Fuerteventuøe, následnì kemp na Tenerife nebo
                                Gran Canarii, a jako vyvrcholení pøípravy kemp na Mallorce nebo Kypru s úèastí na
                                místních závodech. Vysokohorskı kemp v Livignu by mìl bıt zaøazen vzhledem k nadcházejícímu
                                závodnímu programu. Vhodnı bıvá v prùbìhu kvìtna jako pøíprava na vrchol sezóny,
                                a dále pak v první polovinì letních prázdnin jako pøíprava na druhou èást sezóny.
                                <br />
                                Všechny kempy by mìly bıt 14-ti denní, co podle zkušeností pokládám za optimální.
                                V pøípadì vìtšího zájmu o kratší, nebo naopak delší tréninkovı kemp, je moné jej
                                také uspoøádat. Tìší se na Vás Rostislav Krotkı.
                            </div>
                        </td>
                        <td>
                            <div style="width: 10px">
                            </div>
                        </td>
                        <td valign="top">
                            <div style="height: 380px">
                                <div id="kempyacc">
                                    <h3>
                                        Fuerteventura 2014 (leden - únor)</h3>
                                    <div class="nabidka">
                                        <div id="weatherIconFue1">
                                        </div>
                                        <div id="imgKempFuerteventura">
                                            Fuerteventura je druhım nejvìtším ostrovem Kanárskıch ostrovù. Její profil je spíše
                                            zvlnìnı a rovinatı a hodí se proto k absolvování objemového vytrvalostního tréninku.
                                            Poèasí je zde po celı rok velmi stabilní, ostatnì jako na celıch Kanárskıch ostrovech,
                                            take se nemusíte bát, e Vám tu bude zima. Je moné se tu po celı rok koupat. Apartmánovı
                                            komplex si mùete prohlédnout na fotkách zde: <a href="images/kempy/Fuerteventura/ii_cat1.jpg"
                                                title="Caleta de Fuste, Fuerteventura." style="color: #0033CC; font-weight: bold">
                                                Caleta de Fuste, Fuerteventura</a> <a href="images/kempy/Fuerteventura/ii_cat2.jpg"
                                                    title="Caleta de Fuste, Fuerteventura."></a><a href="images/kempy/Fuerteventura/ii_cat3.jpg"
                                                        title="Caleta de Fuste, Fuerteventura."></a><a href="images/kempy/Fuerteventura/ii_cat4.jpg"
                                                            title="Caleta de Fuste, Fuerteventura."></a>
                                        </div>
                                        <br />
                                        <br />
                                        <br />
                                        <div class="cena">
                                            <table align="left" width="300px">
                                                <tr>
                                                    <td align="left">
                                                        Cena ubytování: 5.499 Kè / 14 dní
                                                    </td>
                                                    <td align="right">
                                                        <input type="button" id="buttonkemp1" value="Pøihlásit" />
                                                    </td>
                                                </tr>
                                            </table>
                                        </div>
                                    </div>
                                    <h3>
                                        Lanzarote 2014 (leden - únor)</h3>
                                    <div class="nabidka">
                                        <div id="weatherIconLanz">
                                        </div>
                                        <div id="imgKempLanzarote">
                                            Pøiznám se, e je to jediná destinace, kterou jsem osobnì nenavštívil. Je to v poøadí
                                            ètvrtı nejvìtší ostrov Kanárskıch ostrovù. Profilem spíše zvlnìnı, take by se mohl
                                            hodit pro jedno z prvních cyklistickıch soustøedìní. Apartmánovı komplex si mùete
                                            prohlédnout na fotkách zde: <a href="images/kempy/Lanzarote/ii_oal1.jpg" title="Costa Teguise, Lanzarote."
                                                style="color: #0033CC; font-weight: bold">Costa Teguise, Lanzarote</a> <a href="images/kempy/Lanzarote/ii_oal2.jpg"
                                                    title="Costa Teguise, Lanzarote."></a><a href="images/kempy/Lanzarote/ii_oal3.jpg"
                                                        title="Costa Teguise, Lanzarote."></a><a href="images/kempy/Lanzarote/ii_oal4.jpg"
                                                            title="Costa Teguise, Lanzarote."></a><a href="images/kempy/Lanzarote/ii_oal5.jpg"
                                                                title="Costa Teguise, Lanzarote."></a><a href="images/kempy/Lanzarote/ii_oal6.jpg"
                                                                    title="Costa Teguise, Lanzarote."></a><a href="images/kempy/Lanzarote/ii_oal7.jpg"
                                                                        title="Costa Teguise, Lanzarote."></a><a href="images/kempy/Lanzarote/ii_oal8.jpg"
                                                                            title="Costa Teguise, Lanzarote."></a><a href="images/kempy/Lanzarote/ii_oal9.jpg"
                                                                                title="Costa Teguise, Lanzarote."></a><a href="images/kempy/Lanzarote/ii_oal10.jpg"
                                                                                    title="Costa Teguise, Lanzarote."></a>
                                        </div>
                                        <br />
                                        <br />
                                        <br />
                                        <div class="cena">
                                            <table align="left" width="300px">
                                                <tr>
                                                    <td align="left">
                                                        Cena ubytování: 8.499 Kè / 14 dní
                                                    </td>
                                                    <td align="right">
                                                        <input type="button" id="buttonkemp2" value="Pøihlásit" />
                                                    </td>
                                                </tr>
                                            </table>
                                        </div>
                                    </div>
                                    <h3>
                                        Tenerife 2014 (únor - bøezen)</h3>
                                    <div class="nabidka">
                                        <div id="weatherIconTen1">
                                        </div>
                                        <div id="imgKempTenerife">
                                            Tenerife je nejvìtším z Kanárskıch ostrovù. Profilem je velmi nároènı. Od moøe mùete
                                            vyjet do nadmoøské vıšky 2200 m.n.m. Proto jej doporuèujeme jako trénink silové
                                            vytrvalosti. Pøed tímto tréninkovım kempem je více ne vhodné bıt fyzicky dobøe
                                            pøipraven. Ostrov se Vám pak odmìní nádhernımi vıjezdy od banánovıch plantáí a
                                            do kráteru sopky. Apartmánovı komplex si mùete prohlédnout na fotkách zde: <a href="images/kempy/Tenerife/ii_sne1.jpg"
                                                title="Costa Adeje, Tenerife." style="color: #0033CC; font-weight: bold">Costa Adeje,
                                                Tenerife</a> <a href="images/kempy/Tenerife/ii_sne2.jpg" title="Costa Adeje, Tenerife.">
                                                </a><a href="images/kempy/Tenerife/ii_sne3.jpg" title="Costa Adeje, Tenerife.">
                                            </a><a href="images/kempy/Tenerife/ii_sne4.jpg" title="Costa Adeje, Tenerife."></a>
                                            <a href="images/kempy/Tenerife/ii_sne5.jpg" title="Costa Adeje, Tenerife."></a><a
                                                href="images/kempy/Tenerife/ii_sne6.jpg" title="Costa Adeje, Tenerife."></a>
                                            <a href="images/kempy/Tenerife/ii_sne7.jpg" title="Costa Adeje, Tenerife."></a><a
                                                href="images/kempy/Tenerife/ii_sne8.jpg" title="Costa Adeje, Tenerife."></a>
                                        </div>
                                        <br />
                                        <br />
                                        <br />
                                        <div class="cena">
                                            <table align="left" width="300px">
                                                <tr>
                                                    <td align="left">
                                                        Cena ubytování: 9.999 Kè / 14 dní
                                                    </td>
                                                    <td align="right">
                                                        <input type="button" id="buttonkemp3" value="Pøihlásit" />
                                                    </td>
                                                </tr>
                                            </table>
                                        </div>
                                    </div>
                                    <h3 id="kempGranCanaria">
                                        Gran Canaria 2014 (únor - bøezen)</h3>
                                    <div class="nabidka">
                                        <div id="weatherIconGC">
                                        </div>
                                        <div id="imgKempGranCanaria">
                                            Dalším z Kanárskıch ostrovù je Gran Canaria. Tøetí nejvìtší ostrov je profilem nároènı,
                                            ale dá se zde svézt i po rovnìjším úseku. Gran Canarii doporuèujeme jako trénink
                                            silové vytrvalosti, a proto je vhodnı pro zdatnìjší cyklisty. Velkou vıhodou je
                                            pøímé pravidelné letecké spojení nízkonákladovou leteckou spoleèností Ryanair z
                                            Bratislavy. Pro dobrou dostupnost bıvá ovšem problém s volnou kapacitou apartmánù
                                            v zimním a jarním období, a proto je dobré objednat dostateènì dopøedu. Apartmánovı
                                            komplex si mùete prohlédnout na fotkách zde: <a href="images/kempy/GranCanaria/ii_poa1.jpg"
                                                title="Maspalomas, Gran Canaria." style="color: #0033CC; font-weight: bold">Maspalomas,
                                                Gran Canaria</a> <a href="images/kempy/GranCanaria/ii_poa2.jpg" title="Maspalomas, Gran Canaria.">
                                                </a><a href="images/kempy/GranCanaria/ii_poa3.jpg" title="Maspalomas, Gran Canaria.">
                                                </a><a href="images/kempy/GranCanaria/ii_poa4.jpg" title="Maspalomas, Gran Canaria.">
                                                </a><a href="images/kempy/GranCanaria/ii_poa5.jpg" title="Maspalomas, Gran Canaria.">
                                                </a><a href="images/kempy/GranCanaria/ii_poa6.jpg" title="Maspalomas, Gran Canaria.">
                                                </a><a href="images/kempy/GranCanaria/ii_poa7.jpg" title="Maspalomas, Gran Canaria.">
                                                </a><a href="images/kempy/GranCanaria/ii_poa8.jpg" title="Maspalomas, Gran Canaria.">
                                                </a><a href="images/kempy/GranCanaria/ii_poa9.jpg" title="Maspalomas, Gran Canaria.">
                                                </a><a href="images/kempy/GranCanaria/ii_poa10.jpg" title="Maspalomas, Gran Canaria.">
                                                </a>
                                        </div>
                                        <br />
                                        <br />
                                        <br />
                                        <div class="cena">
                                            <table align="left" width="300px">
                                                <tr>
                                                    <td align="left">
                                                        Cena ubytování: 13.999 Kè / 14 dní
                                                    </td>
                                                    <td align="right">
                                                        <input type="button" id="buttonkemp4" value="Pøihlásit" />
                                                    </td>
                                                </tr>
                                            </table>
                                        </div>
                                    </div>
                                    <h3>
                                        Mallorca 2014 (únor - bøezen)</h3>
                                    <div class="nabidka">
                                        <div id="weatherIconMall">
                                        </div>
                                        <div id="imgKempMallorca">
                                            Mallorca, ráj cyklistù. Jezdí jich zde opravdu mnoho. Naleznete zde všechny terény,
                                            od rovin a po hory. Pøes zimní období zde panuje na naše pomìry jarní poèasí s
                                            teplotami kolem 15 stupòù. Témìø kadı víkend se zde konají cyklistické závody.
                                            Na koupání v moøi to sice není, ale oproti Kanárskım ostrovùm je Mallorca více dostupnìjší.
                                            Apartmánovı komplex si mùete prohlédnout na fotkách zde: <a href="images/kempy/Mallorca1/ii_auc1.jpg"
                                                title="Alcúdia, Mallorca." style="color: #0033CC; font-weight: bold">Alcúdia, Llucmajor,
                                                Mallorca</a> <a href="images/kempy/Mallorca1/ii_auc2.jpg" title="Alcúdia, Mallorca.">
                                                </a><a href="images/kempy/Mallorca1/ii_auc3.jpg" title="Alcúdia, Mallorca.">
                                            </a><a href="images/kempy/Mallorca1/ii_auc4.jpg" title="Alcúdia, Mallorca."></a>
                                            <a href="images/kempy/Mallorca1/ii_auc5.jpg" title="Alcúdia, Mallorca."></a><a href="images/kempy/Mallorca1/ii_auc6.jpg"
                                                title="Alcúdia, Mallorca."></a><a href="images/kempy/Mallorca1/ii_auc7.jpg" title="Alcúdia, Mallorca.">
                                                </a><a href="images/kempy/Mallorca1/ii_auc8.jpg" title="Alcúdia, Mallorca.">
                                            </a><a href="images/kempy/Mallorca1/ii_auc9.jpg" title="Alcúdia, Mallorca."></a>
                                            <a href="images/kempy/Mallorca1/ii_auc10.jpg" title="Alcúdia, Mallorca."></a><a href="images/kempy/Mallorca2/ii_mem1.jpg"
                                                title="Llucmajor, Mallorca."></a><a href="images/kempy/Mallorca2/ii_mem2.jpg" title="Llucmajor, Mallorca.">
                                                </a><a href="images/kempy/Mallorca2/ii_mem3.jpg" title="Llucmajor, Mallorca.">
                                            </a><a href="images/kempy/Mallorca2/ii_mem4.jpg" title="Llucmajor, Mallorca."></a>
                                            <a href="images/kempy/Mallorca2/ii_mem5.jpg" title="Llucmajor, Mallorca."></a><a
                                                href="images/kempy/Mallorca2/ii_mem6.jpg" title="Llucmajor, Mallorca."></a><a href="images/kempy/Mallorca2/ii_mem7.jpg"
                                                    title="Llucmajor, Mallorca."></a><a href="images/kempy/Mallorca2/ii_mem8.jpg" title="Llucmajor, Mallorca.">
                                                    </a>
                                        </div>
                                        <br />
                                        <br />
                                        <br />
                                        <div class="cena">
                                            <table align="left" width="300px">
                                                <tr>
                                                    <td align="left">
                                                        Cena ubytování: 5.999 Kè / 14 dní
                                                    </td>
                                                    <td align="right">
                                                        <input type="button" id="buttonkemp5" value="Pøihlásit" />
                                                    </td>
                                                </tr>
                                            </table>
                                        </div>
                                    </div>
                                    <h3>
                                        Kypr 2014 (únor - bøezen)</h3>
                                    <div class="nabidka">
                                        <div id="weatherIconKypr">
                                        </div>
                                        <div id="imgKempKypr">
                                            Kypr je profilem velmi podobnı Mallorce. Naleznete zde všechny terény, od rovin
                                            a po hory. Na jaøe se teploty pohybují kolem 20 stupòù. Kypr vyuívají èasto k
                                            jarnímu soustøedìní bikeøi pro mnoství prašnıch cest. Konají se zde i bikové závody.
                                            Provoz je malı a jezdí se zde vlevo. Ti otuilejší se mohou vykoupat i v moøi. Z
                                            nabídky si mùete vybrat klasicky vybavené apartmány, apartmánovı komplex je na
                                            fotkách zde: <a href="images/kempy/Kypr1/ii_pah1.jpg" title="Paphos, Cyprus, klasic."
                                                style="color: #0033CC; font-weight: bold">Paphos, Cyprus, klasic</a> <a href="images/kempy/Kypr1/ii_pah2.jpg"
                                                    title="Paphos, Cyprus, klasic."></a><a href="images/kempy/Kypr1/ii_pah3.jpg" title="Paphos, Cyprus, klasic.">
                                                    </a><a href="images/kempy/Kypr1/ii_pah4.jpg" title="Paphos, Cyprus, klasic.">
                                            </a><a href="images/kempy/Kypr1/ii_pah5.jpg" title="Paphos, Cyprus, klasic."></a>
                                            <a href="images/kempy/Kypr1/ii_pah6.jpg" title="Paphos, Cyprus, klasic."></a><a href="images/kempy/Kypr1/ii_pah7.jpg"
                                                title="Paphos, Cyprus, klasic."></a><a href="images/kempy/Kypr1/ii_pah8.jpg" title="Paphos, Cyprus, klasic.">
                                                </a><a href="images/kempy/Kypr1/ii_pah9.jpg" title="Paphos, Cyprus, klasic.">
                                            </a><a href="images/kempy/Kypr1/ii_pah10.jpg" title="Paphos, Cyprus, klasic."></a>
                                            , nebo luxusnì vybavené apartmány, na fotkách zde: <a href="images/kempy/Kypr2/ii_adh1.jpg"
                                                title="Paphos, Cyprus, luxus." style="color: #0033CC; font-weight: bold">Paphos,
                                                Cyprus, luxus</a> <a href="images/kempy/Kypr2/ii_adh2.jpg" title="Paphos, Cyprus, luxus.">
                                                </a><a href="images/kempy/Kypr2/ii_adh3.jpg" title="Paphos, Cyprus, luxus.">
                                            </a><a href="images/kempy/Kypr2/ii_adh4.jpg" title="Paphos, Cyprus, luxus."></a>
                                            <a href="images/kempy/Kypr2/ii_adh5.jpg" title="Paphos, Cyprus, luxus."></a><a href="images/kempy/Kypr2/ii_adh6.jpg"
                                                title="Paphos, Cyprus, luxus."></a><a href="images/kempy/Kypr2/ii_adh7.jpg" title="Paphos, Cyprus, luxus.">
                                                </a><a href="images/kempy/Kypr2/ii_adh8.jpg" title="Paphos, Cyprus, luxus.">
                                            </a><a href="images/kempy/Kypr2/ii_adh9.jpg" title="Paphos, Cyprus, luxus."></a>
                                            Do poznámky k pøhlášce prosím napište, kterı typ ubytování preferujete.
                                        </div>
                                        <br />
                                        <br />
                                        <br />
                                        <div class="cena">
                                            <table align="left" width="300px">
                                                <tr>
                                                    <td align="left">
                                                        Cena ubytování klasic: 5.999 Kè / 14 dní Cena ubytování luxus: 9.999 Kè / 14 dní
                                                    </td>
                                                    <td align="right">
                                                        <input type="button" id="buttonkemp6" value="Pøihlásit" />
                                                    </td>
                                                </tr>
                                            </table>
                                        </div>
                                    </div>
                                    <h3>
                                        Livigno 2014 (èervenec)</h3>
                                    <div class="nabidka">
                                        <div id="weatherIconLiv">
                                        </div>
                                        Livigno je pro mnoho sportovcù synonymem pro vysokohorskı trénink. Leí ve vıšce
                                        pøes 1800 m.n.m. Kadım rokem sem pøijídí øada vrcholovıch sportovcù naèerpat tolik
                                        potøebné èervené krvinky. Z údolí Livigna mùete vyrazit zdolávat nespoèet alpskıch
                                        passù, vèetnì tìch nejznámìjších z Gira, jako napøíklad passo Stelvio nebo passo
                                        Gavia a další.
                                        <br />
                                        <br />
                                        <br />
                                        <div class="cena">
                                            <table align="left" width="300px">
                                                <tr>
                                                    <td align="left">
                                                        Cena: - Kè / 14 dní
                                                    </td>
                                                    <td align="right">
                                                        <input type="button" id="buttonkemp7" value="Pøihlásit" />
                                                    </td>
                                                </tr>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </td>
                    </tr>
                </table>
            </div>
            <div id="tab-37">
                <table>
                    <tr>
                        <td valign="top" align="left">
                            <div class="clanek">
                                <h1 class="nadpish1">
                                    Jak funguje tréninkové poradenství?
                                </h1>
                                Tréninkové poradenství je urèené pro ty zájemce, kteøí chtìjí mít své trénování pod 
                                kontrolou zkušeného odborníka a chtìjí mít pravidelnou monost konzultovat vše s trenérem.
                                Všem ostatním rádi a zdarma poradíme na spoleèném tréninku. Systematické poradenství se 
                                skládá ze tøí základních èástí.
                                <h1 class="nadpish2">
                                    Úvodní osobní konzultace</h1>
                                Kadı dobrı trenér musí co nejlépe poznat svého svìøence. K tomu slouí úvodní seznámení.
                                <br />
                                Klient by si mìl s sebou pøivést cyklistické vybavení, které pouívá pøi svém tréninku.
                                Trenér zkontroluje správnı posed a techniku šlapání, následnì doporuèí jak nejlépe
                                pøípadné nedostatky odstranit. Pøi dlouhodobìjší spolupráci mùe bıt souèástí první
                                schùzky i test vıkonnosti. Test je pro kadého klienta individuální. Záleí na tom,
                                jakım smìrem bude trénink zamìøen. Pøi testech vyuíváme mìøiè vıkonu, a to buï
                                klientùv, nebo lze zapùjèit zadní kolo s pøístrojem powertap.
                                <br />
                                Pøi úvodní konzultaci si spoleènì stanovíme cíle, ke kterım by naše spolupráce mìla
                                vést, a jak tìchto cílù co nejefektivnìji dosáhnout. Zároveò se snaíme efektivnì
                                vyuít èasovıch moností klienta. Na základì tìchto poznatkù sestavujeme tréninkovı
                                plán.
                                <br />
                                <h1 class="nadpish2">
                                    Vyhotovení tréninkového plánu</h1>
                                Tréninkovı plán je denní itineráø s rozpisem tréninku na zvolené období. V pøípadì
                                dlouhodobìjší spolupráce se na základì konzultace sestaví nejdøíve souhrnnı plán
                                na celé objednané období a následnì se pravidelnì sestavují dílèí denní itineráøe,
                                a to na období dle naplánovanıch cílù v sezónì. Kadı plán obsahuje vysvìtlení všech
                                pojmù a pøípadnıch zkratek, obsahuje vysvìtlení jednotlivıch tréninkovıch jednotek,
                                zpùsob provedení a intenzitu. Je-li to nutné, obsahuje i názornı obrázek.<br />
                                V pøípadì dlouhodobìjší spolupráce je moné v prùbìhu objednaného období mìnit úroveò
                                slueb. Zaèáteèníkùm doporuèujeme z naší zkušenosti vyuívat, zvláštì v úvodu spolupráce,
                                úroveò slueb Advanced nebo Professional, a to z dùvodu nutnosti èastìjší konzultace
                                tréninku. Naopak sluba Basic se hodí pro zkušenìjší, kteøí nepotøebují ve zvoleném
                                období tak èasté konzultace, a nebo pro tréninkové kempy a soustøedìní, kdy není
                                moné pravidelné spojení na trenéra.
                                <h1 class="nadpish2">
                                    Hodnocení tréninku za zvolené období</h1>
                                Hodnocení tréninku je provedeno na základì zvoleného cíle tréninku, kterı byl stanoven
                                pøi úvodní, nebo prùbìnıch konzultacích. Pøi dlouhodobìjší spolupráci mùe bıt
                                souèástí hodnocení i test vıkonnosti. Aby mohlo bıt hodnocení dostateènì kvalitní,
                                je nutné, aby si klient prùbìnì vedl tréninkovı deník, do kterého pravidelnì zapisuje
                                svoje tréninkové aktivity, pøípadnì další okolnosti ovlivòující trénink. Obsahem
                                tréninkového deníku by mìly bıt i pocity z tréninku, kvalita spánku, subjektivní
                                pocity únavy. Kadı klient by mìl vlastnit pøístroj na mìøení tepové frekvence a
                                aktivnì jej vyuívat. Velkou vıhodou je i mìøiè vıkonu. Všechny tyto informace pomohou
                                ke kvalitnìjšímu zhodnocení absolvovaného tréninkového zatíení a následnému sestavení
                                tréninkového plánu na další období.
                                <br />
                                Hodnocení dostane kadı klient vypracované formou vıstupního dokumentu, ve kterém
                                budou uvedeny hlavní cíle a jejich plnìní, popøípadì vısledky testu vıkonnosti.
                                <h1 class="nadpish2">
                                    Slevy a bonusy</h1>
                                Slevy a bonusy jsou zamìøené na stálé klienty, èleny našeho klubu a dìti.
                                <br />
                                <br />
                                Sleva pro klienty, kteøí si objednají tréninkové vedení minimálnì na 3 mìsíce je
                                10%.
                                <br />
                                Sleva pro klienty, kteøí si objednají tréninkové vedení minimálnì na 6 mìsícù je
                                15%.
                                <br />
                                Sleva pro klienty, kteøí si objednají tréninkové vedení minimálnì na 1 rok je 20%.
                                <br />
                                Sleva pro èleny tımu je 10%.
                                <br />
                                <br />
                                Rádi bychom podporovali mláde, a proto pro ni máme speciální akci.
                                <br />
                                <br />
                                Jestlie si tréninkové vedení objedná rodiè, má jeho dítì vedení zdarma na stejné
                                úrovni, jakou si objednal jeho rodiè.
                                <br />
                                Pro dìti, které jsou èleny tımu, je tréninkové vedení zdarma, a to na úrovni Basic.
                                Na vyšší úrovni sleva 30%.
                                <br />
                                Pro dìti, které nejsou èleny tımu je sleva 20%.
                                <br />
                                Slevy pro dìti platí dle roèníku narození do 18-ti let.
                                <br />
                                <br />
                                Všechny slevy se sèítají.
                                <br />
                                <h1 class="nadpish2">
                                    Kdo pro vás bude pracovat?</h1>
                                Tréninkové poradenství pro vás pøipravuje zkušenı profesionál Ing. Rostislav Krotkı,
                                kterı se s vámi rád podìlí o své dlouholeté zkušenosti v oblasti cyklistického tréninku.
                                Jeho profil naleznete v sekci "Tréninkoví poradci".
                            </div>
                        </td>
                        <td>
                            <div style="width: 10px">
                            </div>
                        </td>
                        <td valign="top">
                            <div style="height: 300px;">
                                <div id="poradenstviacc">
                                    <h3>
                                        Basic</h3>
                                    <div>
                                        <h2>
                                            Základní poradenství obsahuje:</h2>
                                        Úvodní osobní konzultace.<br />
                                        Vyhotovení tréninkového plánu.<br />
                                        Rozbor dvou zvolenıch tréninkù na PC.<br />
                                        Mìsíèní zhodnocení.<br />
                                        Komunikace pøes email.
                                        <p>
                                            &nbsp;</p>
                                        <div class="cena">
                                            <table align="left" width="300px">
                                                <tr>
                                                    <td align="left">
                                                        Cena: 1.000 Kè / mìsíc
                                                    </td>
                                                    <td align="right">
                                                        <input type="button" id="buttonbasic" value="Objednat" />
                                                    </td>
                                                </tr>
                                            </table>
                                        </div>
                                    </div>
                                    <h3>
                                        Advanced</h3>
                                    <div>
                                        <h2>
                                            Rozšíøené poradenství obsahuje:</h2>
                                        Úvodní osobní konzultace.<br />
                                        Vyhotovení tréninkového plánu.<br />
                                        1x tıdnì rozbor zvoleného tréninku na PC.<br />
                                        Tıdenní hodnocení a úprava tréninkového plánu.<br />
                                        Komunikace pøes email nebo Skype.
                                        <p>
                                            &nbsp;</p>
                                        <div class="cena">
                                            <table align="left" width="300px">
                                                <tr>
                                                    <td align="left">
                                                        Cena: 1.500 Kè / mìsíc
                                                    </td>
                                                    <td align="right">
                                                        <input type="button" id="buttonadvanced" value="Objednat" />
                                                    </td>
                                                </tr>
                                            </table>
                                        </div>
                                    </div>
                                    <h3>
                                        Professional</h3>
                                    <div>
                                        <h2>
                                            Profesionální poradenství obsahuje:</h2>
                                        Úvodní osobní konzultace.<br />
                                        Vyhotovení tréninkového plánu.<br />
                                        Tıdenní hodnocení.<br />
                                        2x tıdnì rozbor zvoleného tréninku na PC.<br />
                                        Prùbìná úprava a konzultace tréninkového plánu.<br />
                                        Komunikace pøes email, Skype nebo telefon.
                                        <p>
                                            &nbsp;</p>
                                        <div class="cena">
                                            <table align="left" width="300px">
                                                <tr>
                                                    <td align="left">
                                                        Cena: 2.000 Kè / mìsíc
                                                    </td>
                                                    <td align="right">
                                                        <input type="button" id="buttonprofessional" value="Objednat" />
                                                    </td>
                                                </tr>
                                            </table>
                                        </div>
                                    </div>
                                    <h3>
                                        Personal coaching</h3>
                                    <div>
                                        <h2>
                                            Personal coaching obsahuje:</h2>
                                        Osobní konzultace tréninkù.<br />
                                        Pravidelnı trénink s klientem.<br />
                                        Tıdenní hodnocení.<br />
                                        Rozbor zvolenıch tréninkù na PC.<br />
                                        Prùbìná úprava a konzultace tréninkového plánu.<br />
                                        Komunikace pøes email, Skype nebo telefon.
                                        <p>
                                            &nbsp;</p>
                                        <div class="cena">
                                            <table align="left" width="300px">
                                                <tr>
                                                    <td align="left">
                                                        Cena: 200 Kè / hod + související náklady
                                                    </td>
                                                    <td align="right">
                                                        <input type="button" id="buttonpersonal" value="Objednat" />
                                                    </td>
                                                </tr>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </td>
                    </tr>
                </table>
            </div>
            <div id="tab-38" class="clasictext">
                <div class="clanek">
                    <table>
                        <tr>
                            <td>
                                <br />
                                <img src="images/RK.jpg" alt="" />
                            </td>
                            <td>
                                <div style="width: 10px">
                                </div>
                            </td>
                            <td valign="top" align="left">
                                <h1 class="nadpish1">
                                    Ing. Rostislav Krotkı
                                </h1>
                                <strong>Vìk:</strong> 37let<br />
                                <strong>Zkušenosti:</strong> <a href="http://www.spartaktrebic.cz/" target="_blank">
                                    TJ Tøebíè</a>, Spartak Jihlava, <a href="http://www.ajeto-cz.cz/" target="_blank">A
                                        JE TO Tøebíè</a>, <a href="http://www.favoritbrno.cz/" target="_blank">Favorit Brno</a>,
                                <a href="http://www.duklacycling.cz/" target="_blank">ASC Dukla Praha</a>, <a href="http://yogi.cz/racing/"
                                    target="_blank">Jogi Racing Ostrava</a>, <a href="http://www.duklasport.cz/" target="_blank">
                                        Dukla Liberec</a>, <a href="http://www.sparta-cycling.cz/" target="_blank">AC Sparta
                                            Praha</a><br />
                                <strong>Úspìchy:</strong> 1. místo MÈR U23 na silnici a úèast na ME, 1. místo MÈR èasovka dvojic, 2x celkovı vítìz <a href="http://www.ceskysvazcyklistiky.cz/"
                                    target="_blank">Èeského poháru</a>, 1. místo <a href="http://www.k-t-k.sk/"
                                        target="_blank">Košice-Tatry-Košice</a>, 1. místo etapa <a href="http://www.tusnadcyclingteam.com/"
                                            target="_blank">Tour of Szeklerland</a> a vítìz sprinterské soutìe, 3. místo <a href="http://vysocinatour.sweb.cz"
                                                target="_blank">Vysoèina Tour</a> a vítìz vrchaøské soutìe, 3. místo <a href="http://www.bikemagazin.sk/clanok/items/Velka-cena-Bradla-v-rukach-Kusztora.html"
                                                    target="_blank">Velká cena Bradla</a> a mnoho dalších pódiovıch umístìní.<br />
                                <strong>Trénink:</strong> V celém svém aktivním pùsobení v cyklistice jsem se snail
                                získávat informace od trenérù, zkušenìjších závodníkù, odborné literatury a dalších
                                zdrojù. Vyzkoušel jsem si na sobì spoustu tréninkovıch postupù. Takto získané zkušenosti
                                byly nìkdy podmínìny chybami, které mì však vdy posouvaly dál. Teï u vím, proè
                                synové otcù cyklistù bıvali v mládí lepší. Zkušenosti jejich otcù je posouvaly o
                                mnoho rychleji dál, protoe si nemuseli vším projít sami.<br />
                                Nyní i Vy máte monost naèerpat nové informace o cyklistice a vyuít mıch zkušeností
                                ve svùj prospìch.
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

