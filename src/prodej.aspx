<%@ Page Title="Vyso�ina Cycling - Prodej" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="prodej.aspx.cs" Inherits="Prodej" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <meta property="og:description" content="Tento projekt je zam��en na podporu v�konnostn� cyklistiky na Vyso�in�, a to p�edev��m cyklistiky silni�n�. Na str�nce Prodej maj� mo�nost �lenov� a p��znivci t�mu zve�ej�ovat sv� inzer�ty. Naleznete zde i fanshop." />
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
                    Podm�nky inzerce</h2>
                V bazaru maj� mo�nost inzerovat pouze registrovan� �lenov� a p��znivci t�mu.
                <h2>
                    Nab�dka</h2>
                <!-- <table>
                    <tr>
                        <td>
                            <ul class="paging3">
                                <li>
                                    <div class="clanek">
                                        <div class="infoclanek">
                                            Aktualizov�no: 6.2.2012
                                        </div>
                                        <div class="inzerceImage">
                                            <a href="images/inzerce/roubaix1.jpg" title="Specialized Roubaix SL2">
                                                <img style="float: left; padding-right: 10px" src="images/inzerce/thumb_roubaix1.jpg"
                                                    alt="Specialized Roubaix SL2" border="none" /></a>
                                            <h1 class="nadpish1">
                                                Specialized Roubaix SL2
                                            </h1>
                                            Prod�m silni�n� kolo Specialized Roubaix SL2 model 2009, velikost 54. Sada Sram
                                            Force. Najeto 20tis. Bez kol.
                                            <br />
                                            <br />
                                        </div>
                                        <div>
                                            <table>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">
                                                        Navrhovan� cena:
                                                    </td>
                                                    <td style="color: #FF3300">
                                                        34.000 K�
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">
                                                        Kontakt:
                                                    </td>
                                                    <td style="color: #FF3300">
                                                        krotkyr (zavin��) post.cz
                                                    </td>
                                                </tr>
                                            </table>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="clanek">
                                        <div class="infoclanek">
                                            Aktualizov�no: 6.2.2013
                                        </div>
                                        <div class="inzerceImage">
                                            <a href="images/inzerce/tarmac1.jpg" title="Specialized Tarmac SL3">
                                                <img style="float: left; padding-right: 10px" src="images/inzerce/thumb_tarmac1.jpg"
                                                    alt="Specialized Tarmac SL3" border="none" /></a>
                                            <h1 class="nadpish1">
                                                Specialized Tarmac SL3
                                            </h1>
                                            Prod�m Specialized S-Works Tarmac SL3, sada Sram Force, dopl�ky Specialized, velikost
                                            54, v�born� stav. Najeto 10tis. Bez kol.
                                            <br />
                                            <br />
                                        </div>
                                        <div>
                                            <table>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">
                                                        Navrhovan� cena:
                                                    </td>
                                                    <td style="color: #FF3300">
                                                        42.000 K�
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">
                                                        Kontakt:
                                                    </td>
                                                    <td style="color: #FF3300">
                                                        krotkyr (zavin��) post.cz
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
                    Nab�dka dres� v t�mov�ch barv�ch. Pro �leny a p��znivce na�eho t�mu zv�hodn�n� cena.</h3>
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
                                                Dres kr�tk� ruk�v ELITE 18 | Spinn
                                            </h1>
                                            Profesion�ln� letn� cyklistick� dres s kr�tk�m ruk�vem | s�ovan� boky pro lep��
                                            tepeln� komfort + ruk�vy z elastick�ho materi�lu | dlouh� zip pro pohodln� obl�k�n�
                                            | trojd�ln� kapsa na zadn�m d�le + mal� kapsa na zip (mobil, kl��e, pen�ze) | reflexn�
                                            paspule na zadn�m d�lu | silikonov� guma na doln�m okraji zabra�uje ne��douc�mu
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
                                                        1.490 K�
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">
                                                        Cena pro �lena:
                                                    </td>
                                                    <td style="color: #FF3300">
                                                        1.340 K�
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
                                                Dres dlouh� ruk�v RACE 02 | PICCOLO thermo
                                            </h1>
                                            Profesion�ln� dres s dlouh�m ruk�vem ze zateplen�ho materi�lu PICOLLO Thermo | dlouh�
                                            zip pro pohodln� obl�k�n� | 3 kapsy na zadn�m d�lu + mal� na zip | reflexn� prvky
                                            pro zv��en� bezpe�nosti.
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
                                                        1.750 K�
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">
                                                        Cena pro �lena:
                                                    </td>
                                                    <td style="color: #FF3300">
                                                        1.580 K�
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
                                                Vesta RACE 01 | Gamex / s�
                                            </h1>
                                            Lehk� vesta z materi�lu GAMEX karo spole�n� s anatomick�m st�ihem vytv��� velmi
                                            lehkou, skladnou a funk�n� v�trovku | velmi skladn� pro um�st�n� v zadn� kapse
                                            a dost velk�, aby poskytla ochranu proti nep��jemn�mu v�tru | reflexn� prvky pro
                                            vy��� bezpe�nost.
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
                                                        1.520 K�
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">
                                                        Cena pro �lena:
                                                    </td>
                                                    <td style="color: #FF3300">
                                                        1.360 K�
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
                                                Kra�asy T-Sport ELITE-OMEGA 02 | Lycra POWER / �le s�
                                            </h1>
                                            Kra�asy ELITE jsou ur�en� pro profesion�ln� a z�vodn� cyklistiku | �pi�kov� materi�ly
                                            a v�jime�n� zpracov�n� st�ihu zaji��uj� optim�ln� svalovou kompresi a vynikaj�c�
                                            aerodynamiku | sedlo CARBONIUM pou�it� je to nejlep�� co lze pro profesion�ln� cyklistiku
                                            nab�dnout | s�ovan� �le zvy�uj� prody�nost a odvod potu do vrchn�ch vrstev | spodn�
                                            okraj nohavic zakon�en silikonovou gumou.
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
                                                        1.790 K�
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">
                                                        Cena pro �lena:
                                                    </td>
                                                    <td style="color: #FF3300">
                                                        1.620 K�
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
                                                T-�ap�ky ELITE-OMEGA 11 | ROUBAIX / �le s�
                                            </h1>
                                            Profesion�ln� cyklistick� �ap�ky se �lemi ze zateplen�ho/po�esan�ho materi�lu Roubaix
                                            pro chladn� dny | reflexn� prvky pro lep�� bezpe�nost.
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
                                                        1.640 K�
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">
                                                        Cena pro �lena:
                                                    </td>
                                                    <td style="color: #FF3300">
                                                        1.480 K�
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
                                                N�vleky na RUCE ACTIVE 01 | ROUBAIX
                                            </h1>
                                            N�vleky na ruce ze zateplen�ho materi�lu ROUBAIX | dopln�k pro chladn� po�as� |
                                            vhodn� p�i zm�n�ch teploty | silikonov� guma zamezuj�c� posunu.
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
                                                        440 K�
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">
                                                        Cena pro �lena:
                                                    </td>
                                                    <td style="color: #FF3300">
                                                        400 K�
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
                                                N�vleky na NOHY ACTIVE 01 | ROUBAIX
                                            </h1>
                                            N�vleky na nohy ze zateplen�ho materi�lu ROUBAIX | dopln�k pro chladn� po�as� |
                                            vhodn� p�i zm�n�ch teploty | silikonov� guma zamezuj�c� posunu.
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
                                                        540 K�
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">
                                                        Cena pro �lena:
                                                    </td>
                                                    <td style="color: #FF3300">
                                                        490 K�
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
                                                N�vleky na KOLENA ACTIVE 01 | ROUBAIX
                                            </h1>
                                            N�vleky na kolena ze zateplen�ho materi�lu ROUBAIX | dopln�k pro chladn� po�as�
                                            | vhodn� p�i zm�n�ch teploty | silikonov� guma zamezuj�c� posunu.
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
                                                        440 K�
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">
                                                        Cena pro �lena:
                                                    </td>
                                                    <td style="color: #FF3300">
                                                        400 K�
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
                                                Letn� rukavice PRO 03 | Lycra
                                            </h1>
                                            Ru�n� �it� lehk� letn� rukavi�ky s antivibra�n�m gelem na ochranu dlan� | elastick�
                                            h�bet z prody�n� a chladiv� LYCRY | speci�ln� aerodynamick� st�ih.
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
                                                        350 K�
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">
                                                        Cena pro �lena:
                                                    </td>
                                                    <td style="color: #FF3300">
                                                        320 K�
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
                                                N�vleky na TRETRY
                                            </h1>
                                            Elastick� z n�vleky na TRETRY z prody�n� LYCRY | speci�ln� aerodynamick� st�ih.
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
                                                        220 K�
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">
                                                        Cena pro �lena:
                                                    </td>
                                                    <td style="color: #FF3300">
                                                        200 K�
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
                                                Pono�ky MOOSE Vyso�ina Cycling
                                            </h1>
                                            Profesion�ln� pono�ka zejm�na pro silni�n� cyklistiku. V nab�dce dv� velikosti S/M a L/XL.
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
                                                        70 K�
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">
                                                        Cena pro �lena:
                                                    </td>
                                                    <td style="color: #FF3300">
                                                        60 K�
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

