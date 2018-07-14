<%@ Page Title="VysoËina Cycling - Prodej" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="prodej.aspx.cs" Inherits="Prodej" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <meta property="og:description" content="Tento projekt je zamÏ¯en na podporu v˝konnostnÌ cyklistiky na VysoËinÏ, a to p¯edevöÌm cyklistiky silniËnÌ. Na str·nce Prodej majÌ moûnost ËlenovÈ a p¯Ìznivci t˝mu zve¯ejÚovat svÈ inzer·ty. Naleznete zde i fanshop." />
    <meta property="og:image" content="http://www.vysocinacycling.cz/images/logo_Facebook.png" />
    <script type="text/javascript">
        $(window).load(function () {
            $("#baner6").nivoSlider({ animSpeed: 1000, pauseTime: 5000, controlNav: false, directionNav: false, keyboardNav: false, effect: "fade" });
        });
    </script>

    <script type="text/javascript">
        $(document).ready(function () {
            SiteProdejReady();
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <div id="pageProdejContent">
        <div id="baner6" class="nivoSlider">
            <img id="img1" alt="Baner" src="images/Banery/VC_banner_12.jpg" />
            <img id="img2" alt="Baner" src="images/Banery/VC_banner_06.jpg" />
            <img id="img3" alt="Baner" src="images/Banery/VC_banner_04.jpg" />
        </div>
        <div id="prodejtabs">
            <ul>
                <li id="Li61"><a href="#tab-61">Bazar</a></li>
                <li id="Li62"><a href="#tab-62">Fan-shop</a></li>
            </ul>
            <div id="tab-61" class="clasictext">
                <h2>
                    PodmÌnky inzerce</h2>
                V bazaru majÌ moûnost inzerovat pouze registrovanÌ ËlenovÈ a p¯Ìznivci t˝mu.
                <h2>
                    NabÌdka</h2>
                <!-- <table>
                    <tr>
                        <td>
                            <ul class="paging3">
                                <li>
                                    <div class="clanek">
                                        <div class="infoclanek">
                                            Aktualizov·no: 6.2.2012
                                        </div>
                                        <div class="inzerceImage">
                                            <a href="images/inzerce/roubaix1.jpg" title="Specialized Roubaix SL2">
                                                <img style="float: left; padding-right: 10px" src="images/inzerce/thumb_roubaix1.jpg"
                                                    alt="Specialized Roubaix SL2" border="none" /></a>
                                            <h1 class="nadpish1">
                                                Specialized Roubaix SL2
                                            </h1>
                                            Prod·m silniËnÌ kolo Specialized Roubaix SL2 model 2009, velikost 54. Sada Sram
                                            Force. Najeto 20tis. Bez kol.
                                            <br />
                                            <br />
                                        </div>
                                        <div>
                                            <table>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">
                                                        Navrhovan· cena:
                                                    </td>
                                                    <td style="color: #FF3300">
                                                        34.000 KË
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">
                                                        Kontakt:
                                                    </td>
                                                    <td style="color: #FF3300">
                                                        krotkyr (zavin·Ë) post.cz
                                                    </td>
                                                </tr>
                                            </table>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="clanek">
                                        <div class="infoclanek">
                                            Aktualizov·no: 6.2.2013
                                        </div>
                                        <div class="inzerceImage">
                                            <a href="images/inzerce/tarmac1.jpg" title="Specialized Tarmac SL3">
                                                <img style="float: left; padding-right: 10px" src="images/inzerce/thumb_tarmac1.jpg"
                                                    alt="Specialized Tarmac SL3" border="none" /></a>
                                            <h1 class="nadpish1">
                                                Specialized Tarmac SL3
                                            </h1>
                                            Prod·m Specialized S-Works Tarmac SL3, sada Sram Force, doplÚky Specialized, velikost
                                            54, v˝born˝ stav. Najeto 10tis. Bez kol.
                                            <br />
                                            <br />
                                        </div>
                                        <div>
                                            <table>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">
                                                        Navrhovan· cena:
                                                    </td>
                                                    <td style="color: #FF3300">
                                                        42.000 KË
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">
                                                        Kontakt:
                                                    </td>
                                                    <td style="color: #FF3300">
                                                        krotkyr (zavin·Ë) post.cz
                                                    </td>
                                                </tr>
                                            </table>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </td>
                    </tr>
                </table>  -->
            </div>
            <div id="tab-62" class="clasictext">
                <h3 align="center">
                    NabÌdka dres˘ v t˝mov˝ch barv·ch. Pro Ëleny a p¯Ìznivce naöeho t˝mu zv˝hodnÏn· cena.</h3>
                <table>
                    <tr>
                        <td>
                            <ul class="paging8">
                                <li>
                                    <div class="clanek">
                                        <div class="inzerceImage">
                                            <img style="float: left; padding-right: 10px" src="images/inzerce/no-picture.png"
                                                alt="Dres" border="none" />
                                            <h1 class="nadpish1">
                                                Dres kr·tk˝ ruk·v ELITE 18 | Spinn
                                            </h1>
                                            Profesion·lnÌ letnÌ cyklistick˝ dres s kr·tk˝m ruk·vem | sÌùovanÈ boky pro lepöÌ
                                            tepeln˝ komfort + ruk·vy z elastickÈho materi·lu | dlouh˝ zip pro pohodlnÈ oblÈk·nÌ
                                            | trojdÌln· kapsa na zadnÌm dÌle + mal· kapsa na zip (mobil, klÌËe, penÌze) | reflexnÌ
                                            paspule na zadnÌm dÌlu | silikonov· guma na dolnÌm okraji zabraÚuje neû·doucÌmu
                                            posunu.
                                            <br />
                                            <br />
                                        </div>
                                        <div>
                                            <table>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">
                                                        Cena:
                                                    </td>
                                                    <td style="color: #CC3300">
                                                        1.490 KË
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">
                                                        Cena pro Ëlena:
                                                    </td>
                                                    <td style="color: #FF3300">
                                                        1.340 KË
                                                    </td>
                                                </tr>
                                            </table>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="clanek">
                                        <div class="inzerceImage">
                                            <img style="float: left; padding-right: 10px" src="images/inzerce/no-picture.png"
                                                alt="Dres" border="none" />
                                            <h1 class="nadpish1">
                                                Dres dlouh˝ ruk·v RACE 02 | PICCOLO thermo
                                            </h1>
                                            Profesion·lnÌ dres s dlouh˝m ruk·vem ze zateplenÈho materi·lu PICOLLO Thermo | dlouh˝
                                            zip pro pohodlnÈ oblÈk·nÌ | 3 kapsy na zadnÌm dÌlu + mal· na zip | reflexnÌ prvky
                                            pro zv˝öenÌ bezpeËnosti.
                                            <br />
                                            <br />
                                        </div>
                                        <div>
                                            <table>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">
                                                        Cena:
                                                    </td>
                                                    <td style="color: #CC3300">
                                                        1.750 KË
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">
                                                        Cena pro Ëlena:
                                                    </td>
                                                    <td style="color: #FF3300">
                                                        1.580 KË
                                                    </td>
                                                </tr>
                                            </table>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="clanek">
                                        <div class="inzerceImage">
                                            <img style="float: left; padding-right: 10px" src="images/inzerce/no-picture.png"
                                                alt="Dres" border="none" />
                                            <h1 class="nadpish1">
                                                Vesta RACE 01 | Gamex / sÌù
                                            </h1>
                                            Lehk· vesta z materi·lu GAMEX karo spoleËnÏ s anatomick˝m st¯ihem vytv·¯Ì velmi
                                            lehkou, skladnou a funkËnÌ vÏtrovku | velmi skladn· pro umÌstÏnÌ v zadnÌ kapse
                                            a dost velk·, aby poskytla ochranu proti nep¯ÌjemnÈmu vÏtru | reflexnÌ prvky pro
                                            vyööÌ bezpeËnost.
                                            <br />
                                            <br />
                                        </div>
                                        <div>
                                            <table>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">
                                                        Cena:
                                                    </td>
                                                    <td style="color: #CC3300">
                                                        1.520 KË
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">
                                                        Cena pro Ëlena:
                                                    </td>
                                                    <td style="color: #FF3300">
                                                        1.360 KË
                                                    </td>
                                                </tr>
                                            </table>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="clanek">
                                        <div class="inzerceImage">
                                            <img style="float: left; padding-right: 10px" src="images/inzerce/no-picture.png"
                                                alt="Dres" border="none" />
                                            <h1 class="nadpish1">
                                                Kraùasy T-Sport ELITE-OMEGA 02 | Lycra POWER / öle sÌù
                                            </h1>
                                            Kraùasy ELITE jsou urËenÈ pro profesion·lnÌ a z·vodnÌ cyklistiku | öpiËkovÈ materi·ly
                                            a v˝jimeËnÈ zpracov·nÌ st¯ihu zajiöùujÌ optim·lnÌ svalovou kompresi a vynikajÌcÌ
                                            aerodynamiku | sedlo CARBONIUM pouûitÈ je to nejlepöÌ co lze pro profesion·lnÌ cyklistiku
                                            nabÌdnout | sÌùovanÈ öle zvyöujÌ prodyönost a odvod potu do vrchnÌch vrstev | spodnÌ
                                            okraj nohavic zakonËen silikonovou gumou.
                                            <br />
                                            <br />
                                        </div>
                                        <div>
                                            <table>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">
                                                        Cena:
                                                    </td>
                                                    <td style="color: #CC3300">
                                                        1.790 KË
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">
                                                        Cena pro Ëlena:
                                                    </td>
                                                    <td style="color: #FF3300">
                                                        1.620 KË
                                                    </td>
                                                </tr>
                                            </table>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="clanek">
                                        <div class="inzerceImage">
                                            <img style="float: left; padding-right: 10px" src="images/inzerce/no-picture.png"
                                                alt="Dres" border="none" />
                                            <h1 class="nadpish1">
                                                T-»ap·ky ELITE-OMEGA 11 | ROUBAIX / öle sÌù
                                            </h1>
                                            Profesion·lnÌ cyklistickÈ Ëap·ky se ölemi ze zateplenÈho/poËesanÈho materi·lu Roubaix
                                            pro chladnÈ dny | reflexnÌ prvky pro lepöÌ bezpeËnost.
                                            <br />
                                            <br />
                                        </div>
                                        <div>
                                            <table>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">
                                                        Cena:
                                                    </td>
                                                    <td style="color: #CC3300">
                                                        1.640 KË
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">
                                                        Cena pro Ëlena:
                                                    </td>
                                                    <td style="color: #FF3300">
                                                        1.480 KË
                                                    </td>
                                                </tr>
                                            </table>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="clanek">
                                        <div class="inzerceImage">
                                            <img style="float: left; padding-right: 10px" src="images/inzerce/no-picture.png"
                                                alt="Dres" border="none" />
                                            <h1 class="nadpish1">
                                                N·vleky na RUCE ACTIVE 01 | ROUBAIX
                                            </h1>
                                            N·vleky na ruce ze zateplenÈho materi·lu ROUBAIX | doplnÏk pro chladnÈ poËasÌ |
                                            vhodnÈ p¯i zmÏn·ch teploty | silikonov· guma zamezujÌcÌ posunu.
                                            <br />
                                            <br />
                                        </div>
                                        <div>
                                            <table>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">
                                                        Cena:
                                                    </td>
                                                    <td style="color: #CC3300">
                                                        440 KË
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">
                                                        Cena pro Ëlena:
                                                    </td>
                                                    <td style="color: #FF3300">
                                                        400 KË
                                                    </td>
                                                </tr>
                                            </table>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="clanek">
                                        <div class="inzerceImage">
                                            <img style="float: left; padding-right: 10px" src="images/inzerce/no-picture.png"
                                                alt="Dres" border="none" />
                                            <h1 class="nadpish1">
                                                N·vleky na NOHY ACTIVE 01 | ROUBAIX
                                            </h1>
                                            N·vleky na nohy ze zateplenÈho materi·lu ROUBAIX | doplnÏk pro chladnÈ poËasÌ |
                                            vhodnÈ p¯i zmÏn·ch teploty | silikonov· guma zamezujÌcÌ posunu.
                                            <br />
                                            <br />
                                        </div>
                                        <div>
                                            <table>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">
                                                        Cena:
                                                    </td>
                                                    <td style="color: #CC3300">
                                                        540 KË
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">
                                                        Cena pro Ëlena:
                                                    </td>
                                                    <td style="color: #FF3300">
                                                        490 KË
                                                    </td>
                                                </tr>
                                            </table>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="clanek">
                                        <div class="inzerceImage">
                                            <img style="float: left; padding-right: 10px" src="images/inzerce/no-picture.png"
                                                alt="Dres" border="none" />
                                            <h1 class="nadpish1">
                                                N·vleky na KOLENA ACTIVE 01 | ROUBAIX
                                            </h1>
                                            N·vleky na kolena ze zateplenÈho materi·lu ROUBAIX | doplnÏk pro chladnÈ poËasÌ
                                            | vhodnÈ p¯i zmÏn·ch teploty | silikonov· guma zamezujÌcÌ posunu.
                                            <br />
                                            <br />
                                        </div>
                                        <div>
                                            <table>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">
                                                        Cena:
                                                    </td>
                                                    <td style="color: #CC3300">
                                                        440 KË
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">
                                                        Cena pro Ëlena:
                                                    </td>
                                                    <td style="color: #FF3300">
                                                        400 KË
                                                    </td>
                                                </tr>
                                            </table>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="clanek">
                                        <div class="inzerceImage">
                                            <img style="float: left; padding-right: 10px" src="images/inzerce/no-picture.png"
                                                alt="Dres" border="none" />
                                            <h1 class="nadpish1">
                                                LetnÌ rukavice PRO 03 | Lycra
                                            </h1>
                                            RuËnÏ öitÈ lehkÈ letnÌ rukaviËky s antivibraËnÌm gelem na ochranu dlanÏ | elastick˝
                                            h¯bet z prodyönÈ a chladivÈ LYCRY | speci·lnÌ aerodynamick˝ st¯ih.
                                            <br />
                                            <br />
                                        </div>
                                        <div>
                                            <table>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">
                                                        Cena:
                                                    </td>
                                                    <td style="color: #CC3300">
                                                        350 KË
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">
                                                        Cena pro Ëlena:
                                                    </td>
                                                    <td style="color: #FF3300">
                                                        320 KË
                                                    </td>
                                                </tr>
                                            </table>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="clanek">
                                        <div class="inzerceImage">
                                            <img style="float: left; padding-right: 10px" src="images/inzerce/no-picture.png"
                                                alt="Dres" border="none" />
                                            <h1 class="nadpish1">
                                                N·vleky na TRETRY
                                            </h1>
                                            ElastickÈ z n·vleky na TRETRY z prodyönÈ LYCRY | speci·lnÌ aerodynamick˝ st¯ih.
                                            <br />
                                            <br />
                                        </div>
                                        <div>
                                            <table>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">
                                                        Cena:
                                                    </td>
                                                    <td style="color: #CC3300">
                                                        220 KË
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">
                                                        Cena pro Ëlena:
                                                    </td>
                                                    <td style="color: #FF3300">
                                                        200 KË
                                                    </td>
                                                </tr>
                                            </table>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="clanek">
                                        <div class="inzerceImage">
                                            <img style="float: left; padding-right: 10px" src="images/inzerce/no-picture.png"
                                                alt="Dres" border="none" />
                                            <h1 class="nadpish1">
                                                Ponoûky MOOSE VysoËina Cycling
                                            </h1>
                                            Profesion·lnÌ ponoûka zejmÈna pro silniËnÌ cyklistiku. V nabÌdce dvÏ velikosti S/M a L/XL.
                                            <br />
                                            <br />
                                        </div>
                                        <div>
                                            <table>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">
                                                        Cena:
                                                    </td>
                                                    <td style="color: #CC3300">
                                                        70 KË
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">
                                                        Cena pro Ëlena:
                                                    </td>
                                                    <td style="color: #FF3300">
                                                        60 KË
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
        </div>
    </div>
</asp:Content>

