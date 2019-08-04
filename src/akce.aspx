<%@ Page Title="Vyso�ina Cycling - Akce" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="akce.aspx.cs" Inherits="Akce" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <meta property="og:description" content="Tento projekt je zam��en na podporu v�konnostn� cyklistiky na Vyso�in�, a to p�edev��m cyklistiky silni�n�. Na str�nce Akce naleznete informace o tr�ninkov�ch kempech a dal��ch akc�ch, kter� po��d�me." />
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
            Vypl�te pros�m v�echny �daje. Pro kontrolu bude
            kopie Va�� p�ihl�ky zasl�na i na V� email.
        </p>
        <table>
            <tr>
                <td style="width: 260px">Jm�no:
                </td>
                <td>P��jmen�:
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
                <td>Datum narozen�:
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
                        <asp:ListItem>Mlad�� ��kyn� (2004 � 2005)</asp:ListItem>
                        <asp:ListItem>Mlad�� ��ci (2004 � 2005)</asp:ListItem>
                        <asp:ListItem>Star�� ��kyn� (2002 � 2003)</asp:ListItem>
                        <asp:ListItem>Star�� ��ci (2002 � 2003)</asp:ListItem>
                        <asp:ListItem>Kadetky (2000 � 2001)</asp:ListItem>
                        <asp:ListItem>Kadeti (2000 � 2001)</asp:ListItem>
                        <asp:ListItem>Juniorky (1998 � 1999)</asp:ListItem>
                        <asp:ListItem>Junio�i (1998 � 1999)</asp:ListItem>
                        <asp:ListItem>�eny (1997 a star��)</asp:ListItem>
                        <asp:ListItem>Mu�i I. (1987 � 1997)</asp:ListItem>
                        <asp:ListItem>Mu�i II. (1977 � 1986)</asp:ListItem>
                        <asp:ListItem>Mu�i III. (1967 � 1976)</asp:ListItem>
                        <asp:ListItem>Mu�i IV. (1966 a star��)</asp:ListItem>
                        <asp:ListItem>Mu�i P��hoz� (1967 � 1997)</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>Klub (pokud jste �lenem n�jak�ho klubu):
                </td>
                <td>��slo licence (pokud jste dr�itelem licence):
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
            Vypl�te pros�m v�echny �daje. Pro kontrolu bude
            kopie Va�� p�ihl�ky zasl�na i na V� email.
        </p>
        <table>
            <tr>
                <td style="width: 260px">Jm�no: *
                </td>
                <td>P��jmen�: *
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
                <td>Datum narozen�: *
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
                        <asp:ListItem>D�ti do 6 let (2010 a mlad��)</asp:ListItem>
                        <asp:ListItem>D�ti do 10 let (2006 � 2009)</asp:ListItem>
                        <asp:ListItem>Mlad�� ��kyn� (2004 � 2005)</asp:ListItem>
                        <asp:ListItem>Mlad�� ��ci (2004 � 2005)</asp:ListItem>
                        <asp:ListItem>Star�� ��kyn� (2002 � 2003)</asp:ListItem>
                        <asp:ListItem>Star�� ��ci (2002 � 2003)</asp:ListItem>
                        <asp:ListItem>Kadetky (2000 � 2001)</asp:ListItem>
                        <asp:ListItem>Kadeti (2000 � 2001)</asp:ListItem>
                        <asp:ListItem>Juniorky (1998 � 1999)</asp:ListItem>
                        <asp:ListItem>Junio�i (1998 � 1999)</asp:ListItem>
                        <asp:ListItem>�eny (1997 a star��)</asp:ListItem>  
                        <asp:ListItem>Mu�i U23 a Elite (1997 a star��) � licence</asp:ListItem>
                        <asp:ListItem>Mu�i hobby - 110km (1997 a star��)</asp:ListItem>
                        <asp:ListItem>Mu�i hobby 19-44let - 74km (1972 - 1997)</asp:ListItem>
                        <asp:ListItem>Mu�i hobby 45-59let - 74km (1957 � 1971)</asp:ListItem>
                        <asp:ListItem>Mu�i hobby 60+ - 74km (1956 a star��)</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>Klub (pokud jste �lenem n�jak�ho klubu):
                </td>
                <td>��slo a UCI k�d licence (pokud jste dr�itelem):
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
                <td colspan="2">Adresa (uve�te kraj Vyso�ina, pokud chcete z�vodit o Mistra kraje): *
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
                <li id="Li51"><a href="#tab-51">Po��d�me</a></li>
                <li id="Li52"><a href="#tab-52">Vyso�ina Cycling Cup</a></li>
                <li id="Li53"><a href="#tab-53">Silni�n� z�vody na Vyso�in�</a></li>
                <li id="Li54"><a href="#tab-54">MTB z�vody na Vyso�in�</a></li>
                <li id="Li55"><a href="#tab-55">Ostatn� cyklistick� akce na Vyso�in�</a></li>
                <li id="Li56"><a href="#tab-56">�l�nky</a></li>
                <li id="Li57"><a href="#tab-57">Fotogalerie</a></li>
            </ul>
            <div id="tab-51" class="clasictext"> 
                <div class="clanek">
                    <h1 style="text-align: center; color: #0066CC">Dukovansk� okruhy
                    </h1>
                    <div style="font-size: small; font-weight: bold; font-style: italic; color: #666666; text-align: justify; padding-right: 20px; padding-bottom: 50px;">
                        T�m Vyso�ina Cycling po��d� z�vod Dukovansk� okruhy od roku 2015, kdy jej p�evzalo od p�vodn�ho po�adatele. Z�vod
                        se py�n� ji� dlouholetou tradic�.<br />
      Atraktivn� tra� vede v okol� Jadern� elektr�rny Dukovany. Z�vod je vyps�n pro v�echny v�kov� kategeorie v�ech v�konnost� v�etn�
      z�vodn�k� s licenc� a je otev�en pro v�echny startuj�c� ze v�ech kout� republiky i p�ilehl�ch st�t�.
                <br />
                <br />
                        <h2 style="text-align: center; color: #0066CC">Podrobnosti k z�vodu naleznete na str�nce 
                            <a href="/dukovanske-okruhy">
                            <p style="color: #FF3300">Dukovansk� okruhy 2017</p>
                    </h2>

                        </div>
                </div> 
                <br />
                <div class="clanek">
                    <h1 style="text-align: center; color: #0066CC">Vyso�ina Cycling MTB T�eb�� 2016
                    </h1>
                    <!--<h2 style="text-align: center; color: #0066CC">
                        Z�vod je sou��st� seri�lu <a href="http://www.vysocinamtbcup.cz/" target="_blank">
                            <p style="color: #009933">ECOREM Vyso�ina MTB CUP 2015</p>
                        </a>
                    </h2>-->
                    <div style="font-size: small; font-weight: bold; font-style: italic; color: #666666;">
                        Zveme v�echny na 4. ro�n�k MTB cross country v T�eb��i. Tento rok se bude z�vod konat stejn�
                        jako v minul�m roce na louce pod Kostel��kem, kter� se n�m osv�d�ila jako p��jemn� a zaj�mav�
                        m�sto v p��rod� a p�itom ve m�st�.<br />
                        Trasa op�t nebude extr�mn� n�ro�n� a bude tvo�ena i s ohledem na m�n� technicky vybaven�
                        jezdce. Z�stane �lenit� a zaj�mav�. Povede po cest�ch a stezk�ch v Libu�in� �dol� a zavede
                        z�vodn�ky na atraktivn� m�sto v okol� Kosteli�ku, kter� sk�t� n�dhern� v�hled na T�eb��.<br />
                        Term�n z�vodu p�esouv�me na podzimn� term�n, abychom na z�vod p�ivedli v�t�� mno�stv� m�stn� ml�de�e,
                        kter� n�m na startu v pr�zdninov�m term�nu chyb�la. Kategorie z�stanou jako v minul�ch ro�n�c�ch,
                        krat�� pro p��choz�, kte�� by standartn� tra� obt�n� zvl�dali. Startovn� 150K� pro p�edem
                        p�ihl�en�, 200K� pro ty kte�� n�m p�id�laj� v�ce pr�ce v den z�vodu a vypln� p�ihl�ku a�
                        na m�st�. Ml�de� 50K�. P�ihl�ky proto zas�lejte zav�as. Vyu�ijte formul�� pro p�ihl�ku n�e.<br />
                        Startovat se op�t bude ve vln�ch podle d�lky z�vodu, viz. propozice. Doporu�ujeme si
                        p�ed z�vodem projet tra�. Pro naj�d�n� bude tra� p�ipravena t�den p�ed z�vodem.
                        D�vejte v�ak pozor na chodce, kte�� se mohou po trati pohybovat.
                        V���me, �e i letos mezi ml�de�� objev�me nov� talenty a z�jemce o cyklistiku.
                        <br />
                        <br />
                    </div>
                    <div>
                        <table>
                            <tr>
                                <td style="color: #0033CC; font-weight: bold;">Term�n:
                                </td>
                                <td style="color: #FF3300">Z��� nebo ��jen 2016
                                </td>
                                <td align="right">
                                    <input type="button" id="buttonMTBZavod" value="Vyplnit p�ihl�ku 2016" />
                                </td>
                            </tr>
                            <tr>
                                <td style="color: #0033CC; font-weight: bold;">Typ z�vodu:
                                </td>
                                <td style="color: #FF3300">MTB cross country
                                </td>
                            </tr>
                            <tr>
                                <td style="color: #0033CC; font-weight: bold;">P�ihl�ky:
                                </td>
                                <td><a style="color: #FF3300" href="mailto:mtb@vysocinacycling.cz">mtb(zavin��)vysocinacycling.cz</a>
                                </td>
                            </tr>
                            <tr>
                                <td style="color: #0033CC; font-weight: bold;">Propozice 2015:
                                </td>
                                <td><a style="color: #FF3300" href="files/PropoziceVCmtb2015.pdf" onclick="_gaq.push(['_trackEvent','PDF', 'View', 'Vyso�ina Cycling MTB']);"
                                    target="_blank">PropoziceVCmtb2015.pdf</a>
                                </td>
                            </tr>  
                            <tr>
                                <td style="color: #0033CC; font-weight: bold;">
                                </td>
                            </tr>
                            <tr>
                                <td style="color: #0033CC; font-weight: bold;">V�sledky 2013:
                                </td>
                                <td><a style="color: #FF3300" href="files/V�sledky-Vyso�inaCyclingMTBT�eb��2013.pdf"
                                    onclick="_gaq.push(['_trackEvent','PDF', 'View', 'V�sledky Vyso�ina Cycling MTB T�eb�� 2013']);"
                                    target="_blank">V�sledky-Vyso�inaCyclingMTBT�eb��2013.pdf</a>
                                </td>
                            </tr>
                            <tr>
                                <td style="color: #0033CC; font-weight: bold;">V�sledky 2014:
                                </td>
                                <td><a style="color: #FF3300" href="files/Vysledky-VysocinaCyclingMTBTrebic2014.pdf"
                                    onclick="_gaq.push(['_trackEvent','PDF', 'View', 'V�sledky Vyso�ina Cycling MTB T�eb�� 2014']);"
                                    target="_blank">V�sledky-Vyso�inaCyclingMTBT�eb��2014.pdf</a>
                                </td>
                            </tr>  
                            <tr>
                                <td style="color: #0033CC; font-weight: bold;">V�sledky 2015:
                                </td>
                                <td><a style="color: #FF3300" href="files/VysledkyVCmtb2015.pdf"
                                    onclick="_gaq.push(['_trackEvent','PDF', 'View', 'V�sledky Vyso�ina Cycling MTB T�eb�� 2015']);"
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
                        V roce 2016 pokra�uje seri�l MTB z�vod� pod n�zvem <a href="http://www.vysocinamtbcup.cz/"
                            target="_blank" style="color: #008000;">Ecorem Vyso�ina MTB CUP</a>. M��ete se op�t t�it
                        na z�vody v kr�sn�m prost�ed� Vyso�iny. Organiz�to�i slibuj� n�kter� novinky.
                        Zveme v�echny bikery a zvl᚝ ml�de�, pro kterou je tento
                        seri�l p�edev��m po��d�n, aby se i tento rok z��astnili.
                    </div>
                    <br />
                    <div class="clanek" style="color: #990000">
                        <br />
                        V roce 2013 vznik� seri�l MTB z�vod� pod n�zvem <a href="http://www.vysocinamtbcup.cz/"
                            target="_blank" style="color: #008000;">Vyso�ina MTB CUP</a>, kter� nahrazuje
                        p�vodn� Vyso�ina Cycling Cup - MTB. Hlavn� novinkou je mo�nost startovat na p�kn�ch
                        z�vodech v prost�ed� Vyso�iny s n�zk�m startovn�m a mo�nost� p�ihl�sit se dop�edu
                        na cel� seri�l za zv�hodn�n�ch podm�nek. Trat� p�ipravuj� vesm�s b�val�, nebo
                        sou�asn� z�vodn�ci s ohledem na m�n� zku�en�j�� jezdce. Sout� je zam��en� i na 
                        ml�de�. V celkov�m po�ad� se budou rozd�lovat ve v�ech vypsan�ch kategori�ch p�kn�
                        finan�n� a v�cn� ceny. Hlavn�m c�lem seri�lu je podpora cyklistiky na Vyso�in�.
                        <br />
                        <br />
                        V silni�n� ��sti sout�e jsme se rozhodli vyhl�sit nejlep�� z�vodn�ky Vyso�iny
                        podle v�sledk� v pr�b�hu cel�ho roku. Z nominovan�ch z�vodn�k� vyhl�s� odborn�
                        komise nejlep�� z�vodn�ky z �ad ml�de�e a dosp�l�ch. Talent Vyso�iny se bude
                        vyhla�ovat v kategori�ch nejlep�� kadet, kadetka, junior, juniorka. Mezi dosp�l�mi
                        bude vyhl�ena nejlep�� �ena a 3 nejlep�� mu�i.
                    </div>
                    <img style="padding-top: 20px; padding-bottom: 20px; padding-left: 300px; "src="images/Logo_VCC.png"
                        alt="Logo Vyso�ina Cycling Cup" border="none" />
                    <h2>
                        Sout� o nejlep��ho cyklistu z Vyso�iny 2012
                    </h2>
                    V r�mci podpory cyklistiky na Vyso�in� vyhla�ujeme ve spolupr�ci s po�adateli z�vod� sout� o nejlep��ho cyklistu 
                    z Vyso�iny. Jedn� se o celoro�n� sout� biker� i silni����. Do sout�e se budou po��tat pouze z�vody konan� na Vyso�in�. 
                    V t�chto z�vodech vyhl�s�me a odm�n�me nejlep��ho z�vodn�ka z Vyso�iny a sou�asn� budeme sestavovat bodov� �eb���ek.
                    V posledn�m z�vod� vyhl�s�me 3 z�vodn�ky s nejvy���m po�tem bod� v kategorii Biker a Silni���.
                    <h2>
                        Bodov� hodnocen�
                    </h2>
                    Hodnotit se bude hlavn� z�vod bez rozd�lu kategori�. Body z�sk� 30 nejlep��ch z�vodn�k� z Vyso�iny od 30 bod� po 1 bod. Pokud 
                    bude na startu z�vodu, z�vodn�k� z Vyso�iny m�n� ne� 30, z�sk� prvn� z�vodn�k z Vyso�iny pouze tolik bod�, kolik bude z�vodn�k� 
                    z Vyso�iny na startu. Aby se do v�sledk� z�vodu prom�tla i kvalita startovn�ho pole, p�i�te se je�t� k t�mto bod�m hodnocen� 30 
                    nejlep��ch bez rozd�lu p��slu�nosti kraje, op�t od 30 bod� po 1 bod. Pokud bude na startu z�vodu m�n� ne� 30 z�vodn�k�, z�sk� 
                    prvn� z�vodn�k pouze tolik bod�, kolik bude z�vodn�k� na startu. P�i shodnosti bod� v celkov�m po�ad� sout�e rozhoduje v�t�� 
                    po�et lep��ch um�st�n�. Do celkov�ho hodnocen� se nebude po��tat z�vod s nejmen��m po�tem z�skan�ch bod�. P�id�lov�n� bod� 
                    demonstruje n�sleduj�c� p��klad. Um�st�-li se nap��klad z�vodn�k z Vyso�iny v z�vod� celkov� na 5.m�st� a sou�asn� bude prvn� 
                    ze z�vodn�k� z Vyso�iny a postav�-li se na start celkem 40 z�vodn�ku z nich� bude 20 z Vyso�iny, z�sk� z�vodn�k 46 bod� (20+26).
                    <br />
                    V p��pad�, �e se v r�mci jednoho z�vodu budou zapo��t�vat v�sledky ze dvou tras, bude se u krat�� trasy hodnotit pouze 20 nejlep��ch
                    od 20 bod� po 1 bod, jinak z�sob hodnocen� z�st�v� stejn�.
                    <br />
                    U z�vod� na silnici bude u vybran�ch z�vod� (�esk� poh�r v Jihlav� a etapov� z�vod Vyso�ina Tour) pou�it koeficient, aby se do 
                    bodov�ho hodnocen� prom�tla l�pe kvalita z�vodu. T�mto koeficientem se vyn�sob� pouze body 30 nejlep��ch bez rod�lu p��slu�nosti kraje.
                    P�i m�n� jak 100 z�vodn�c�ch na startu bude m�t tento koeficient hodnotu 2, p�i v�ce jak 100 z�vodn�c�ch na startu bude m�t hodnotu 3.
                    <h2>
                        Z�vody za�azen� do sout�e
                    </h2>
                    <h3>
                        Vyso�ina Cycling Cup - MTB
                    </h3>
                    <table>
                        <tr style="font-weight: bold">
                            <td width="40px">
                                Datum:
                            </td>
                            <td style="width: 20px">
                            </td>
                            <td style="width: 600px">
                                N�zev:
                            </td>
                            <td>
                                Pr�b�n� v�sledky:
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
                                <a href="files\Vyso�inaCyclingCup_MTB_1zavod.pdf" target="_blank" style="text-decoration: underline; cursor: pointer">hodnocen�</a>
                            </td>
                        </tr>
                        <tr style="font-style: italic; font-weight: bold;">
                            <td>
                                06.05.2012
                            </td>
                            <td>
                            </td>
                            <td>
                                �EZ MTB maraton
                            </td>
                            <td>
                                <a href="files\Vyso�inaCyclingCup_MTB_2zavod.pdf" target="_blank" style="text-decoration: underline; cursor: pointer">hodnocen�</a>
                            </td>
                        </tr>
                        <tr style="font-style: italic; font-weight: bold;">
                            <td>
                                26.05.2012
                            </td>
                            <td>
                            </td>
                            <td>
                                Je�ek Pell's bike maraton Kn�ice
                            </td>
                            <td>
                                <a href="files\Vyso�inaCyclingCup_MTB_3zavod.pdf" target="_blank" style="text-decoration: underline; cursor: pointer">hodnocen�</a>
                            </td>
                        </tr>
                        <tr style="font-style: italic; font-weight: bold;">
                            <td>
                                09.06.2012
                            </td>
                            <td>
                            </td>
                            <td>
                                O �tambersk�ho kr�le
                            </td>
                            <td>
                                <a href="files\Vyso�inaCyclingCup_MTB_4zavod.pdf" target="_blank" style="text-decoration: underline; cursor: pointer">hodnocen�</a>
                            </td>
                        </tr>
                        <tr style="font-style: italic; font-weight: bold;">
                            <td>
                                07.07.2012
                            </td>
                            <td>
                            </td>
                            <td>
                                Cannondale Kamenick� maraton
                            </td>
                            <td>
                                <a href="files\Vyso�inaCyclingCup_MTB_5zavod.pdf" target="_blank" style="text-decoration: underline; cursor: pointer">hodnocen�</a>
                            </td>
                        </tr>
                        <tr style="font-style: italic; font-weight: bold;">
                            <td>
                                14.07.2012
                            </td>
                            <td>
                            </td>
                            <td>
                                P�es 3 vrchy Vyso�iny
                            </td>
                            <td>
                                <a href="files\Vyso�inaCyclingCup_MTB_6zavod.pdf" target="_blank" style="text-decoration: underline; cursor: pointer">hodnocen�</a>
                            </td>
                        </tr>
                        <tr style="font-style: italic; font-weight: bold;">
                            <td>
                                18.08.2012
                            </td>
                            <td>
                            </td>
                            <td>
                                AVG N�m욝sk� maraton
                            </td>
                            <td>
                                <a href="files\Vyso�inaCyclingCup_MTB_7zavod.pdf" target="_blank" style="text-decoration: underline; cursor: pointer">hodnocen�</a>
                            </td>
                        </tr>
                        <tr style="font-style: italic; font-weight: bold;">
                            <td>
                                08.09.2012
                            </td>
                            <td>
                            </td>
                            <td>
                                Ryn�reck� bejkovna - Fin�le - vyhl�en� celkov�ch v�sledk� Vyso�ina Cycling Cup
                            </td>
                            <td>
                                <a href="files\Vyso�inaCyclingCup_MTB_8zavod.pdf" target="_blank" style="text-decoration: underline; cursor: pointer; color: #CC3300;">hodnocen�</a>
                            </td>
                        </tr>
                    </table>
                    <h3>
                        Vyso�ina Cycling Cup - Silnice
                    </h3>
                    <table>
                        <tr style="font-weight: bold">
                            <td width="40px">
                                Datum:
                            </td>
                            <td style="width: 20px">
                            </td>
                            <td width="600px">
                                N�zev:
                            </td>
                            <td>
                                Pr�b�n� v�sledky:
                            </td>
                        </tr>
                        <tr style="font-style: italic; font-weight: bold">
                            <td>
                                21.04.2012
                            </td>
                            <td>
                            </td>
                            <td>
                                Dukovansk� okruhy - silnice
                            </td>
                            <td>
                                <a href="files\Vyso�inaCyclingCup_Silnice_2z�vody.pdf" target="_blank" style="text-decoration: underline; cursor: pointer">hodnocen�</a>
                            </td>
                        </tr>
                        <tr style="font-style: italic; font-weight: bold">
                            <td>
                                21.04.2012
                            </td>
                            <td>
                            </td>
                            <td>
                                Dukovansk� okruhy - �asovka
                            </td>
                            <td>
                                <a href="files\Vyso�inaCyclingCup_Silnice_2z�vody.pdf" target="_blank" style="text-decoration: underline; cursor: pointer">hodnocen�</a>
                            </td>
                        </tr>
                        <tr style="font-style: italic; font-weight: bold">
                            <td>
                                16.06.2012
                            </td>
                            <td>
                            </td>
                            <td>
                                Zlat� kolo Vyso�iny - v�echny trat�
                            </td>
                            <td>
                                <a href="files\Vyso�inaCyclingCup_Silnice_5z�vod.pdf" target="_blank" style="text-decoration: underline; cursor: pointer">hodnocen�</a>
                            </td>
                        </tr>
                        <tr style="font-style: italic; font-weight: bold">
                            <td>
                                07.07.2012
                            </td>
                            <td>
                            </td>
                            <td>
                                �esk� poh�r Jihlava
                            </td>
                            <td>
                                <a href="files\Vyso�inaCyclingCup_Silnice_6z�vod.pdf" target="_blank" style="text-decoration: underline; cursor: pointer">hodnocen�</a>
                            </td>
                        </tr>
                        <tr style="font-style: italic; font-weight: bold">
                            <td>
                                02.08.2012
                            </td>
                            <td>
                            </td>
                            <td>
                                Vyso�ina Tour - etapy
                            </td>
                            <td>
                                <a href="files\Vyso�inaCyclingCup_Silnice_11z�vod.pdf" target="_blank" style="text-decoration: underline; cursor: pointer">hodnocen�</a>
                            </td>
                        </tr>
                        <tr style="font-style: italic; font-weight: bold">
                            <td>
                                28.09.2012
                            </td>
                            <td>
                            </td>
                            <td>
                                Tryskem na Klu�ovskou horu - Fin�le - vyhl�en� celkov�ch v�sledk� Vyso�ina Cycling Cup
                            </td>
                            <td>
                                <a href="files\Vyso�inaCyclingCup_Silnice_12z�vod.pdf" target="_blank" style="text-decoration: underline; cursor: pointer; color: #CC3300;">hodnocen�</a>
                            </td>
                        </tr>
                    </table>
                    <br />
                    <br />
                    Do sout�e lze za�adit i dal�� z�vody. Mus� b�t v�ak za�azeny a zve�ejn�ny na t�chto
                    str�nk�ch nejpozd�ji 14 dn� p�ed kon�n�m z�vodu.
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
                                        Pros�me po�adatele, aby n�m zas�lali informace k dal��m silni�n�m z�vod�m na Vyso�in�.
                                        D�kujeme.
                                    </div>
                                </li>
                                <li>
                                    <div class="clanek">
                                        <h2>
                                            Velk� B�te� - Brno - Velk� B�te�
                                        </h2>
                                        <div>
                                            �esk� poh�r v silni�n� cyklistice - �esk� jarn� klasika. 
                                            <br />
                                            <br />
                                        </div>
                                        <div>
                                            <table>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">
                                                        Term�n:
                                                    </td>
                                                    <td style="color: #FF3300">
                                                        2.4.2016
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">
                                                        Typ z�vodu:
                                                    </td>
                                                    <td style="color: #FF3300">
                                                        Silni�n�
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">
                                                        Startuj�:
                                                    </td>
                                                    <td style="color: #FF3300">
                                                        Mu�i Elite a U23
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">
                                                        Web po�adatele:
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
                                        <h2>K�i�anovsk� pades�tka - v roce 2015 zru�eno
                                        </h2>
                                        <div>
                                            Amat�rsk� cyklistick� z�vod v okol� K�i�anova na Vyso�in�, vhodn� pro v�echny typy
                                            kol.
                                            <br />
                                            <br />
                                        </div>
                                        <div>
                                            <table>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">Term�n:
                                                    </td>
                                                    <td style="color: #FF3300">Nezn�m�
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">Typ z�vodu:
                                                    </td>
                                                    <td style="color: #FF3300">Silni�n� z�vod
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">Startuj�:
                                                    </td>
                                                    <td style="color: #FF3300">V�echny kategorie (registovan� i neregistrovan�)
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">Web po�adatele:
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
                                            Dukovansk� okruhy
                                        </h2>
                                        <div>
                                            Silni�n� z�vod v okol� Jadern� elektr�rny Dukovany. Tra� vede turisticky atraktivn�m
                                            prost�ed�m kolem Dale�ick� p�ehrady, rozhledny Babylon a mohelensk� Hadcovy stepi.
                                            <br />
                                            <br />
                                        </div>
                                        <div>
                                            <table>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">
                                                        Term�n:
                                                    </td>
                                                    <td style="color: #FF3300">
                                                        23.4.2016
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">
                                                        Typ z�vodu:
                                                    </td>
                                                    <td style="color: #FF3300">
                                                        Silni�n� z�vod
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">
                                                        Startuj�:
                                                    </td>
                                                    <td style="color: #FF3300">
                                                        V�echny kategorie
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">
                                                        Web po�adatele:
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
                                        <h2>VyKing - kr�l Vyso�iny
                                        </h2>
                                        <div>
                                            Amat�rsk� silni�n� cyklistick� z�vod se startem a c�lem na z�me�ku Karl�tejn u Svratky na Vyso�in�. Tra� 100km a 50km.
                                            <br />
                                            <br />
                                        </div>
                                        <div>
                                            <table>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">Term�n:
                                                    </td>
                                                    <td style="color: #FF3300">18.6.2016
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">Typ z�vodu:
                                                    </td>
                                                    <td style="color: #FF3300">Silni�n� z�vod
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">Startuj�:
                                                    </td>
                                                    <td style="color: #FF3300">V�echny kategorie
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">Web po�adatele:
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
                                            Zlat� kolo Vyso�iny
                                        </h2>
                                        <div>
                                            Silni�n� maraton, kter� V�s provede nejkr�sn�j�imi kopci na Vyso�in�. Maraton startuje
                                            v obci Ruda.
                                            <br />
                                            <br />
                                        </div>
                                        <div>
                                            <table>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">
                                                        Term�n:
                                                    </td>
                                                    <td style="color: #FF3300">
                                                        18.6.2016
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">
                                                        Typ z�vodu:
                                                    </td>
                                                    <td style="color: #FF3300">
                                                        Silni�n� maraton
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">
                                                        Startuj�:
                                                    </td>
                                                    <td style="color: #FF3300">
                                                        Neregistrovan�
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">
                                                        Web po�adatele:
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
                                        <h2>���rsk� Liga Mistr� - �asovka
                                        </h2>
                                        <div>
                                            Silni�n� �asovka ve ���ru nad S�zavou.
                                            <br />
                                            <br />
                                        </div>
                                        <div>
                                            <table>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">Term�n:
                                                    </td>
                                                    <td style="color: #FF3300">26.6.2016
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">Typ z�vodu:
                                                    </td>
                                                    <td style="color: #FF3300">Silni�n�
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">Startuj�:
                                                    </td>
                                                    <td style="color: #FF3300">V�echny kategorie
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">Web po�adatele:
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
                                            Amat�rsk� silni�n� cyklistick� z�vod se startem a c�lem v obci Meziklas� u Doln�ho
                                            M�sta nedaleko Sv�tl� nad S�zavou. Na trase je vyps�na vrcha�sk� pr�mie na Podiv�nsk�m
                                            kopci.
                                            <br />
                                            <br />
                                        </div>
                                        <div>
                                            <table>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">
                                                        Term�n:
                                                    </td>
                                                    <td style="color: #FF3300">
                                                        16.7.2016
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">
                                                        Typ z�vodu:
                                                    </td>
                                                    <td style="color: #FF3300">
                                                        Silni�n�, amat�rsk�
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">
                                                        Startuj�:
                                                    </td>
                                                    <td style="color: #FF3300">
                                                        V�echny kategorie
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">
                                                        Web po�adatele:
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
                                        <h2>Vyso�ina 2015
                                        </h2>
                                        <div>
                                            Silni�n� etapov� z�vod s mezin�rodn� ��ast�. Etapy startuj� v Byst�ici nad Pern�tejnem, Poli�ce a P�ibyslavi.
                                            <br />
                                            <br />
                                        </div>
                                        <div>
                                            <table>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">Term�n:
                                                    </td>
                                                    <td style="color: #FF3300">4.8.2016 - 7.8.2016
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">Typ z�vodu:
                                                    </td>
                                                    <td style="color: #FF3300">Silni�n�, Etapov�
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">Startuj�:
                                                    </td>
                                                    <td style="color: #FF3300">Mu�i Elite a U23
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">Web po�adatele:
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
                                        <h2>���rsk� Liga Mistr�
                                        </h2>
                                        <div>
                                            Silni�n� z�vod s d�lkou 63km. Tra�: ���r - Svratka - Sn�n� - NMNM - Lhotka - Vlachovice.
                                            <br />
                                            <br />
                                        </div>
                                        <div>
                                            <table>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">Term�n:
                                                    </td>
                                                    <td style="color: #FF3300">28.8.2016
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">Typ z�vodu:
                                                    </td>
                                                    <td style="color: #FF3300">Silni�n�
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">Startuj�:
                                                    </td>
                                                    <td style="color: #FF3300">V�echny kategorie
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">Web po�adatele:
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
                                        <h2>�asovka do V�covsk�ch vrch�
                                        </h2>
                                        <div>
                                            16. ro�n�k �asovky do vrchu na trase Jimramov - Odranec, d�lka 10km s p�ev��en�m 300m.
                                            Prezentace v kulturn�m dom� v Odranci od 12:00 do 13:00. Start od Provozovny �BISTRO�
                                            v Jimramov� od 14:30.
                                            <br />
                                            <br />
                                        </div>
                                        <div>
                                            <table>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">Term�n:
                                                    </td>
                                                    <td style="color: #FF3300">5.9.2015
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">Typ z�vodu:
                                                    </td>
                                                    <td style="color: #FF3300">�asovka do vrchu
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">Startuj�:
                                                    </td>
                                                    <td style="color: #FF3300">V�echny kategorie
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">Web po�adatele:
                                                    </td>
                                                    <td style="color: #FF3300">
                                                        <a href=https://www.facebook.com/groups/131522306939156/?fref=ts"
                                                            target="_blank" style="cursor: pointer">Facebook - TJ V�cov</a>
                                                    </td>
                                                </tr>
                                            </table>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="clanek">
                                        <h2>Tour de Ok��ky
                                        </h2>
                                        <div>
                                            �asovka do vrchu, kter� je sou��st� celoro�n� v�estrann� sportovn� sout�e Ok��sk�
                                            Univerz�l. Tento rok vede trasa z P�ibyslavic p�es obec ��hal�n, d�le na kopec k
                                            silnici ��slo II/351.
                                            <br />
                                            <br />
                                        </div>
                                        <div>
                                            <table>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">Term�n:
                                                    </td>
                                                    <td style="color: #FF3300">20.9.2015
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">Typ z�vodu:
                                                    </td>
                                                    <td style="color: #FF3300">�asovka do vrchu
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">Startuj�:
                                                    </td>
                                                    <td style="color: #FF3300">V�echny kategorie
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">Web po�adatele:
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
                                            Tryskem na Klu�ovskou horu
                                        </h2>
                                        <div>
                                            �asovka do vrchu se startem u T�eb��e v obci St��te� a c�lem na Klu�ovsk� ho�e.
                                            <br />
                                            <br />
                                        </div>
                                        <div>
                                            <table>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">
                                                        Term�n:
                                                    </td>
                                                    <td style="color: #FF3300">
                                                        28.9.2016
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">
                                                        Typ z�vodu:
                                                    </td>
                                                    <td style="color: #FF3300">
                                                        �asovka do vrchu
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">
                                                        Startuj�:
                                                    </td>
                                                    <td style="color: #FF3300">
                                                        V�echny kategorie
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">
                                                        Web po�adatele:
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
                                        Pros�me po�adatele, aby n�m zas�lali informace k dal��m MTB z�vod�m na Vyso�in�.
                                        D�kujeme.
                                    </div>
                                </li>
                                <li>
                                    <div class="clanek">
                                        <h2>
                                            Okolo Zudova vrchu - <a href="http://www.vysocinamtbcup.cz/" target="_blank" style="color: #008000;">Vyso�ina MTB CUP</a>
                                        </h2>
                                        <div class="MTBzavody">
                                            <a href="images/Foto/OkoloZudovaVrchu.jpg" title="Okolo Zudova vrchu">
                                                <img style="float: left; padding-right: 10px; padding-bottom: 10px;" src="images/Foto/thumb_OkoloZudovaVrchu.jpg"
                                                    alt="O �tambersk�ho kr�le" border="none" /></a>
                                        </div>
                                        <div>
                                            �tafetov� MTB z�vod z Lov�t�na okolo Zudova vrchu p�es Batelov zp�t do Lov�t�na.
                                            <br />
                                            <br />
                                        </div>
                                        <div>
                                            <table>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">
                                                        Term�n:
                                                    </td>
                                                    <td style="color: #FF3300">
                                                        11.4.2015
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">
                                                        Typ z�vodu:
                                                    </td>
                                                    <td style="color: #FF3300">
                                                        MTB �tafetov�
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">
                                                        Startuj�:
                                                    </td>
                                                    <td style="color: #FF3300">
                                                        V�echny kategorie
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">
                                                        Web po�adatele:
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
                                        <h2>MTB O putovn� poh�r Barchanu - <a href="http://www.vysocinamtbcup.cz/" target="_blank"
                                            style="color: #008000;">Vyso�ina MTB CUP</a>
                                        </h2>
                                        <div>
                                            Z�vod horsk�ch kol, kter� se jede v Jemnici. V�echny trasy vedou po lesn�ch cest�ch
                                            v M�stsk�m lese a p�ilehl�m okol�. D�lka trasy je cca 44 km (2 kola po 22 km).
                                            <br />
                                            <br />
                                        </div>
                                        <div>
                                            <table>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">Term�n:
                                                    </td>
                                                    <td style="color: #FF3300">2.5.2015
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">Typ z�vodu:
                                                    </td>
                                                    <td style="color: #FF3300">Mistrovstv� Kraje VYSO�INA XCM
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">Startuj�:
                                                    </td>
                                                    <td style="color: #FF3300">V�echny kategorie
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">Web po�adatele:
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
                                        <h2>O �tambersk�ho kr�le - <a href="http://www.vysocinamtbcup.cz/" target="_blank"
                                            style="color: #008000;">Vyso�ina MTB CUP</a>
                                        </h2>
                                        <div>
                                            <div class="MTBzavody">
                                                <a href="images/Foto/plakat_O_Stamberskeho_Krale.jpg" title="O �tambersk�ho kr�le">
                                                    <img style="float: left; padding-right: 10px; padding-bottom: 10px;" src="images/Foto/thumb_plakat_O_Stamberskeho_Krale.jpg"
                                                        alt="O �tambersk�ho kr�le" border="none" /></a>
                                            </div>
                                            <div>
                                                XC se startem ve Lhotce u Tel�e. Tra� z�vodu vede p�ev�n� po lesn�ch cest�ch v
                                                okol� obce Lhotka. 
                                                D�lka okruhu je 4km, p�ev��en� 170 m. Start a c�l u Penzionu pod �tamberkem.
                                                <br />
                                                <br />
                                            </div>
                                        </div>
                                        <div>
                                            <table>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">Term�n:
                                                    </td>
                                                    <td style="color: #FF3300">8.5.2015
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">Typ z�vodu:
                                                    </td>
                                                    <td style="color: #FF3300">MTB cross country
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">Startuj�:
                                                    </td>
                                                    <td style="color: #FF3300">V�echny kategorie
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">Web po�adatele:
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
                                            Jihlavsk� 24 MTB
                                        </h2>
                                        <div>
                                            <div class="MTBzavody">
                                                <a href="images/Foto/plakat-cerveny-stoj-2012_600px.jpg" title="Jihlavsk� 24 MTB">
                                                    <img style="float: left; padding-right: 10px; padding-bottom: 10px;" src="images/Foto/thumb_plakat-cerveny-stoj-2012.jpg"
                                                        alt="Jihlavsk� 24 MTB" border="none" /></a>
                                            </div>
                                            <div>
                                                Z�vod se jede na 9,5km okruhu v Jihlav� s p�ev��en�m 220m a je po��d�n jako MISTROVSTV�
                                                �ESK� REPUBLIKY 24 HODIN MTB, MISTROVSTV� �ESK� REPUBLIKY 12 HODIN MTB a MISTROVSTV�
                                                ST�EDN�CH �KOL 6 HODIN MTB.
                                                <br />
                                                <br />
                                            </div>
                                        </div>
                                        <div>
                                            <table>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">
                                                        Term�n:
                                                    </td>
                                                    <td style="color: #FF3300">
                                                        16.5.2015 - 17.5.2015
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">
                                                        Typ z�vodu:
                                                    </td>
                                                    <td style="color: #FF3300">
                                                        MTB maraton
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">
                                                        Startuj�:
                                                    </td>
                                                    <td style="color: #FF3300">
                                                        Mu�i, �eny, mix, studenti st�edn�ch �kol, podrobnosti na webu po�adatele
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">
                                                        Web po�adatele:
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
                                        <h2>�EZ MTB maraton
                                        </h2>
                                        <div>
                                            <div class="MTBzavody">
                                                <a href="images/Foto/plakat_CEZMTB_2013.jpg" title="�EZ MTB maraton">
                                                    <img style="float: left; padding-right: 10px; padding-bottom: 10px;" src="images/Foto/thumb_plakat_CEZMTB_2013.jpg"
                                                        alt="�EZ MTB maraton" border="none" /></a>
                                            </div>
                                            <div>
                                                Nab�z�me V�m pohodovou trasu P��rodn�m parkem T�eb��sko, kter� vede zvln�nou, �lenitou
                                                a harmonicky vyv�enou krajinou po zna�en�ch cykloturistick�ch cest�ch.
                                                <br />
                                                <br />
                                            </div>
                                        </div>
                                        <div>
                                            <table>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">Term�n:
                                                    </td>
                                                    <td style="color: #FF3300">17.5.2015
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">Typ z�vodu:
                                                    </td>
                                                    <td style="color: #FF3300">MTB maraton
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">Startuj�:
                                                    </td>
                                                    <td style="color: #FF3300">V�echny kategorie
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">Web po�adatele:
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
                                        <h2>Birell Bike Vyso�ina Maraton
                                        </h2>
                                        <div>
                                            Trasa v okol� Nov�ho M�sta na Morav� s c�lem na Harusov� kopci.
                                            <br />
                                            <br />
                                        </div>
                                        <div>
                                            <table>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">Term�n:
                                                    </td>
                                                    <td style="color: #FF3300">23.5.2015
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">Typ z�vodu:
                                                    </td>
                                                    <td style="color: #FF3300">MTB maraton
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">Startuj�:
                                                    </td>
                                                    <td style="color: #FF3300">V�echny kategorie
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">Web po�adatele:
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
                                        <h2>MTB �e��nek - <a href="http://www.vysocinamtbcup.cz/" target="_blank"
                                            style="color: #008000;">Vyso�ina MTB CUP</a>
                                        </h2>
                                        <div>
                                            <div>
                                                XC v atraktivn�m prost�ed� na �e��nku u Kostelce u Jihlavy.
                                                <br />
                                                <br />
                                            </div>
                                        </div>
                                        <div>
                                            <table>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">Term�n:
                                                    </td>
                                                    <td style="color: #FF3300">6.6.2015
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">Typ z�vodu:
                                                    </td>
                                                    <td style="color: #FF3300">MTB cross country
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">Startuj�:
                                                    </td>
                                                    <td style="color: #FF3300">V�echny kategorie
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">Web po�adatele:
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
                                            Cannondale Kamenick� maraton
                                        </h2>
                                        <div>
                                            Tra� je st�edn� obt�n�, vhodn� pro aktivn� ��astn�ky z�vod� i pro p��choz�, jede
                                            se p�ev�n� lesn�m komplexem Troj�k, p�eva�uj� lesn� a poln� cesty z ��sti asfalt.
                                            <br />
                                            <br />
                                        </div>
                                        <div>
                                            <table>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">
                                                        Term�n:
                                                    </td>
                                                    <td style="color: #FF3300">
                                                        27.6.2015
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">
                                                        Typ z�vodu:
                                                    </td>
                                                    <td style="color: #FF3300">
                                                        MTB maraton
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">
                                                        Startuj�:
                                                    </td>
                                                    <td style="color: #FF3300">
                                                        V�echny kategorie
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">
                                                        Web po�adatele:
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
                                        <h2>Vyso�ina Cycling MTB T�eb�� - <a href="http://www.vysocinamtbcup.cz/" target="_blank"
                                            style="color: #008000;">Vyso�ina MTB CUP</a>
                                        </h2>
                                        <div>
                                            Trasa se startem a c�lem v are�lu star� borovinsk� tov�rny vede po stezk�ch v Libu�in�
                                            �dol�.
                                            <br />
                                            <br />
                                        </div>
                                        <div>
                                            <table>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">Term�n:
                                                    </td>
                                                    <td style="color: #FF3300">4.7.2015
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">Typ z�vodu:
                                                    </td>
                                                    <td style="color: #FF3300">MTB cross country
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">Startuj�:
                                                    </td>
                                                    <td style="color: #FF3300">V�echny kategorie
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">Web po�adatele:
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
                                        <h2>P�es 3 vrchy Vyso�iny
                                        </h2>
                                        <div>
                                            Trasa vede p�es t�i nejvy��� body v okol� Horn� Cerekve, p�es Javo�ici, �e��nek
                                            a K�eme�n�k.
                                            <br />
                                            <br />
                                        </div>
                                        <div>
                                            <table>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">Term�n:
                                                    </td>
                                                    <td style="color: #FF3300">11.7.2015
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">Typ z�vodu:
                                                    </td>
                                                    <td style="color: #FF3300">MTB maraton
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">Startuj�:
                                                    </td>
                                                    <td style="color: #FF3300">V�echny kategorie
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">Web po�adatele:
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
                                        <h2>Cyklistick� z�vod kolem Vlasenice - <a href="http://www.vysocinamtbcup.cz/" target="_blank"
                                            style="color: #008000;">Vyso�ina MTB CUP</a>
                                        </h2>
                                        <div>
                                            Jak u� s�m n�zev z�vodu napov�d�, trasa vede v okol� obce Vlasenice pobl� Kamenice
                                            nad Lipou.
                                            <br />
                                            <br />
                                        </div>
                                        <div>
                                            <table>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">Term�n:
                                                    </td>
                                                    <td style="color: #FF3300">18.7.2015
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">Typ z�vodu:
                                                    </td>
                                                    <td style="color: #FF3300">MTB maraton
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">Startuj�:
                                                    </td>
                                                    <td style="color: #FF3300">V�echny kategorie
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">Web po�adatele:
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
                                            AVG N�m욝sk� cyklomaraton
                                        </h2>
                                        <div>
                                            Trasa vede v okol� N�m�t� nad Oslavou a Dale�ick� p�ehrady.
                                            <br />
                                            <br />
                                        </div>
                                        <div>
                                            <table>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">
                                                        Term�n:
                                                    </td>
                                                    <td style="color: #FF3300">
                                                        16.8.2014
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">
                                                        Typ z�vodu:
                                                    </td>
                                                    <td style="color: #FF3300">
                                                        MTB maraton
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">
                                                        Startuj�:
                                                    </td>
                                                    <td style="color: #FF3300">
                                                        V�echny kategorie
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">
                                                        Web po�adatele:
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
                                        <h2>Bike maraton Kn�ice - <a href="http://www.vysocinamtbcup.cz/" target="_blank"
                                            style="color: #008000;">Vyso�ina MTB CUP</a>
                                        </h2>
                                        <div>
                                            Pohodov� z�vod pro p��znivce horsk�ch kol, kte�� si cht�j� zm��it s�ly s ostatn�mi,
                                            vede kr�snou krajinou Vyso�iny p�ev�n� po poln�ch a lesn�ch cest�ch s minim�ln�m
                                            k��en�m silnic s celkov�m p�ev��en�m 750m a d�lkou 50km (hlavn� z�vod).
                                            <br />
                                            <br />
                                        </div>
                                        <div>
                                            <table>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">Term�n:
                                                    </td>
                                                    <td style="color: #FF3300">12.9.2015
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">Typ z�vodu:
                                                    </td>
                                                    <td style="color: #FF3300">MTB maraton
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">Startuj�:
                                                    </td>
                                                    <td style="color: #FF3300">V�echny kategorie
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">Web po�adatele:
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
                                            MTB Vystrkovsk� 250
                                        </h2>
                                        <div>
                                            Jde o �tafetu dvojic na horsk�ch kolech po dobu 120 minut po vyzna�en� p�ibli�n�
                                            6km dlouh� trati. Z�vod je sou��st� poh�ru Triatlet Humpolecka.
                                            <br />
                                            <br />
                                        </div>
                                        <div>
                                            <table>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">
                                                        Term�n:
                                                    </td>
                                                    <td style="color: #FF3300">
                                                        6.9.2014
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">
                                                        Typ z�vodu:
                                                    </td>
                                                    <td style="color: #FF3300">
                                                        MTB z�vod dvojic
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">
                                                        Startuj�:
                                                    </td>
                                                    <td style="color: #FF3300">
                                                        V�echny kategorie
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">
                                                        Web po�adatele:
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
                                            Ryn�reck� bejkovna - <a href="http://www.vysocinamtbcup.cz/" target="_blank"
                                            style="color: #008000;">Vyso�ina MTB CUP</a>
                                        </h2>
                                        <div>
                                            MTB cross country z�vod v okol� obce Ryn�rec u Pelh�imova.
                                            <br />
                                            <br />
                                        </div>
                                        <div>
                                            <table>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">
                                                        Term�n:
                                                    </td>
                                                    <td style="color: #FF3300">
                                                        19.9.2015
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">
                                                        Typ z�vodu:
                                                    </td>
                                                    <td style="color: #FF3300">
                                                        Mistrovstv� Kraje VYSO�INA XCO
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">
                                                        Startuj�:
                                                    </td>
                                                    <td style="color: #FF3300">
                                                        V�echny kategorie
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">
                                                        Web po�adatele:
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
                                        <h2>Velk� cena Faj��ku
                                        </h2>
                                        <div>
                                            Velk� d�tsk� cena Faj��ku - tradi�n� z�vod pro nejmen��, mal� a v�t�� d�ti s bohatou
                                            tombolou. Tra� je situov�na do are�lu sjezdovky na Fajtov� kopci u Velk�ho Mezi����.
                                            <br />
                                            <br />
                                        </div>
                                        <div>
                                            <table>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">Term�n:
                                                    </td>
                                                    <td style="color: #FF3300">22.6.2014
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">Typ z�vodu:
                                                    </td>
                                                    <td style="color: #FF3300">MTB cross country + sprint maraton
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">Startuj�:
                                                    </td>
                                                    <td style="color: #FF3300">V�echny kategorie
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">Web po�adatele:
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
                                            Jihlavsk� 24 KM
                                        </h2>
                                        <div>
                                            24 km v okol� Zborn�.
                                            <br />
                                            <br />
                                        </div>
                                        <div>
                                            <table>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">Term�n:
                                                    </td>
                                                    <td style="color: #FF3300">27.9.2014
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">Typ z�vodu:
                                                    </td>
                                                    <td style="color: #FF3300">MTB maraton
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">Startuj�:
                                                    </td>
                                                    <td style="color: #FF3300">V�echny kategorie
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">Web po�adatele:
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
                                        <h2>Humpoleck� 50
                                        </h2>
                                        <div>
                                            26 km okruh v okol� Humpolce. Mu�i absolvuj� 2 okruhy. Samotn� okruh startuje u
                                            humpoleck� ryb�rny. V��lapem se z�vodn�k dostane k dominant� m�sta, z��cenin� hradu
                                            Orl�k, a d�le pokra�uje pr�jezdem m�sta k obci Hn�vkovice, kde za vesnic� odbo�uje
                                            k rekrea�n� oblasti Valcha... Rychl� technick� sjezdy zde budou pro zavodn�ky zajist�
                                            lah�dkou.
                                            <br />
                                            <br />
                                        </div>
                                        <div>
                                            <table>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">Term�n:
                                                    </td>
                                                    <td style="color: #FF3300">27.9.2014
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">Typ z�vodu:
                                                    </td>
                                                    <td style="color: #FF3300">MTB maraton
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">Startuj�:
                                                    </td>
                                                    <td style="color: #FF3300">V�echny kategorie
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">Web po�adatele:
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
                                        <h2>SCOTT Kriterium horsk�ch kol Pelh�imov �Setk�n� mistr��
                                        </h2>
                                        <div>
                                            Okruh v centru m�sta o d�lce cca 1 km, veden� kolem n�m�st� a po p�ilehl�ch komunikac�ch,
                                            technicky n�ro�n�,
                                            <br />
                                            <br />
                                        </div>
                                        <div>
                                            <table>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">Term�n:
                                                    </td>
                                                    <td style="color: #FF3300">11.9.2013
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">Typ z�vodu:
                                                    </td>
                                                    <td style="color: #FF3300">MTB kriterium
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">Startuj�:
                                                    </td>
                                                    <td style="color: #FF3300">V�echny kategorie
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">Web po�adatele:
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
                                            Cyklo�vih okolo Rok�tejna
                                        </h2>
                                        <div>
                                            Ve�ejn� z�vod na horsk�ch kolech v obci St��ov u Brtnice, kter� se jede v okol� z��ceniny hradu Rok�tejn.
                                            <br />
                                            <br />
                                        </div>
                                        <div>
                                            <table>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">
                                                        Term�n:
                                                    </td>
                                                    <td style="color: #FF3300">
                                                        ...
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">
                                                        Typ z�vodu:
                                                    </td>
                                                    <td style="color: #FF3300">
                                                        MTB cross country
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">
                                                        Startuj�:
                                                    </td>
                                                    <td style="color: #FF3300">
                                                        V�echny kategorie
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">
                                                        Web po�adatele:
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
                                            Ve�ejn� z�vod na horsk�ch kolech ve ���ru nad S�zavou.
                                            <br />
                                            <br />
                                        </div>
                                        <div>
                                            <table>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">
                                                        Term�n:
                                                    </td>
                                                    <td style="color: #FF3300">
                                                        14.12.2013
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">
                                                        Typ z�vodu:
                                                    </td>
                                                    <td style="color: #FF3300">
                                                        MTB cross country
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">
                                                        Startuj�:
                                                    </td>
                                                    <td style="color: #FF3300">
                                                        V�echny kategorie
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">
                                                        Web po�adatele:
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
                                        Pros�me po�adatele, aby n�m zas�lali informace k dal��m cyklistick�m akc�m na Vyso�in�.
                                        D�kujeme.
                                    </div>
                                </li>
                                <li>
                                    <div class="clanek">
                                        <h2>
                                            K��em kr�em Vyso�inou na kole
                                        </h2>
                                        <div>
                                            <div id="raceImage">
                                                <img style="float: left; padding-right: 10px; padding-bottom: 10px;" src="images/Foto/logoKkVNaKole.gif"
                                                        alt="K��em kr�em Vyso�inou na kole" border="none" />
                                            </div>
                                            <div>
                                                Leto�n� �est� ro�n�k akce "K��em kr�em Vyso�inou na kole 2013" prob�hne ve dnech
                                                28.6. - 5.7.2013. Pl�nujeme tradi�n� start z Masarykova n�m�st� v Jihlav� (28.6.2013)
                                                a dojezd do Akciov�ho pivovaru Dale�ice (5.7.2013).<br />
                                                Tra�: 28.6.2013 Jihlava - Luka nad Jihlavou - Brtnice -Opatov - T�e�� (61,2 km)
                                                29.6.2013 T�e�� - Kostelec - Hut� - Nov� Rychnov - K�eme�n�k - Pelh�imov (44 km)
                                                30.6.2013 Pelh�imov - Prose� - Obo�i�t� - Vl�senice - Drbohlavy - Bo�ejov - K�men
                                                - Pacov (45,7 km) 1.7.2013 Pacov - Cetoraz - Obrata� - �ernovice - Mnich - Kamenice
                                                nad Lipou (42,2 km) 2.7.2013 Kamenice nad Lipou - �astrov - Ctibo� - Met�nov - Rodinov
                                                - �irovnice (43,2 km) 3.7.2013 �irovnice - Po��tky - Svat� Kate�ina - Jihl�vka -
                                                Kali�t� - Javo�ice - M�chova sk�la - Lhotka - ��stkovice - Tel� (42,6
                                                km) 4.7.2013 Tel� - Rozs��ky - Opatov - P�ed�n - Pokojovice - Petrovice - Sokol�
                                                - T�eb�� (57,3 km) 5.7.2013 T�eb�� - N�rame� - Ocmanice - Hartv�kovice - Kramol�n
                                                - Dale�ice (50,6 km)
                                                <br />
                                                <br />
                                            </div>
                                        </div>
                                        <div>
                                            <table>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">
                                                        Term�n:
                                                    </td>
                                                    <td style="color: #FF3300">
                                                        28.6.2013 - 5.7.2013
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">
                                                        Web po�adatele:
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
                                            HAIBIKE BIKE SRAZ NA VYSO�IN�
                                        </h2>
                                        <div>
                                            <div id="raceImage1">
                                                <a href="images/Foto/letak_2014-1200ZM.jpg" title="HAIBIKE BIKE SRAZ NA VYSO�IN�">
                                                    <img style="float: left; padding-right: 10px; padding-bottom: 10px;" src="images/Foto/thumb_Letak_BS_2012.jpg"
                                                        alt="HAIBIKE BIKE SRAZ NA VYSO�IN�" border="none" /></a>
                                            </div>
                                            <div>
                                                Idea na�ich Bike Sraz� je st�le stejn�. Sna��me se o v�kendov� setk�n� lid�, je�
                                                horsk� kolo v�e poutem  nejpevn�j��m. Tato bajkov� setk�n� se odehr�vaj� na pozad�
                                                vyj�d�k v m�sty krut� ale i romantick�, �lov�kem zkrocen�, ale i  panensk�, kr�sn�
                                                a je�t� kr�sn�j�� p��rod� �eskomoravsk� Vrchoviny. Na sv� si p�ijdou i vyznava�i
                                                lahodn�ch mok� p�i spole�n�m ve�ern�m bajkov�m ve�eru. Posezen� slou�� ke sbl�en�
                                                a v�bec v�eobecn�mu potlachu v�ech ��astn�k�. Hlavn�m c�lem je sraz bajker�, p��telsk�
                                                svezen� a pobaven� se. Po sv�tov�m poh�ru MTB Merida Bike Vyso�in� se jedn� o druhou
                                                mo�nost jak poznat zdej�� ter�ny. Pr�v� d�ky tomu, �e se nejedn� o z�vod, m��ete si
                                                vychutnat zdej�� ter�n naplno. Dal�� informace o programu naleznete v propozic�ch.
                                                <br />
                                                <br />
                                            </div>
                                        </div>
                                        <div>
                                            <table>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">
                                                        Term�n:
                                                    </td>
                                                    <td style="color: #FF3300">
                                                        17.7.2015 - 19.7.2015
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">
                                                        Web po�adatele:
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
                                            Na kole d�tem Vyso�inou
                                        </h2>
                                        <div>
                                            <div>
                                                <img style="float: left; padding-right: 10px; padding-bottom: 10px;" src="images/Foto/thumb_NaKoleDetemVysocinou.jpg"
                                                    alt="Na kole d�tem Vyso�inou" border="none" />
                                            </div>
                                            <div>
                                                Stejn� jako loni, i v leto�n�m roce po��d�me dobro�innou cykloj�zdu Na kole d�tem
                                                Vyso�inou. Leto�n� ro�n�k se uskute�n� v sobotu, 7. z��� 2013. Start pelotonu je
                                                na n�m�st� Zachari�e z Hradce v Tel�i v 10:00, platba dobrovoln�ho startovn�ho
                                                bude prob�hat od 8:30. V �ele pelotonu pojede mistr sv�ta v j�zd� na vysok�m kole,
                                                pan Josef Zimov��k.
                                                <br />
                                                Z�titu nad projektem p�evzali: RNDr. Milo� Vystr�il - sen�tora volebn�ho obvodu
                                                52 (okres Jihlava, Da�icko a Slavonicko) Ing. Tom� �karyd - �len Rady Kraje Vyso�ina
                                                Ing. Jaroslav Vymazal - prim�tor m�sta Jihlavy Mgr. Roman Fabe� - starosta m�sta
                                                Tel�e.
                                                <br />
                                                Celkov� d�lka trasy je cca 73 km, jej� podrobn� popis naleznete zde: http://www.nakoledetemvysocinou.cz/trasa-cyklojizdy/.
                                                <br />
                                                I v leto�n�m roce je startovn� dobrovoln�. V�t�ek ze startovn�ho a ze sponzorsk�ch
                                                dar� bude v�nov�n na podporu onkologicky nemocn�ch d�t�. Polovina v�t�ku bude v�nov�na
                                                nada�n�mu fondu Na kole d�tem, kter� prost�edky pou�ije na financov�n� rekondi�n�ch
                                                pobyt� onkologicky nemocn�ch d�t�. Druh� polovina pak p�ipadne pediatrick�mu odd�len�
                                                Nemocnice Jihlava, kter� z vybran� ��stky po��d� pulsn� oxymetr HOYER, p��stroj
                                                na m��en� tepov� frekvence a procenta kysl�ku v krvi.
                                                <br />
                                                Proto�e jsou mezi ��astn�ky i cyklist� z Jihlavy a okol�, cht�li bychom jim vyj�t
                                                vst��c a usnadnit jim dopravu do Tel�e a zp�t. Pro z�jemce nab�z�me mo�nost autobusov�
                                                p�epravy. Kapacita autobusu je omezen�, 49 osob na sezen�, 30 kol do vleku. Vzhledem
                                                k tomu, �e m�me na organizaci cykloj�zdy omezen� finan�n� prost�edky, jednalo by
                                                se o slu�bu placenou, a to ve v��i 70 K� za 1 cestu (v�. p�epravy kola). Pokud byste
                                                o danou slu�bu m�li z�jem, nahlaste se, pros�m, bu� na tel.�. 775195135 nebo na
                                                emailu nakoledetemvysocinou@seznam.cz.
                                                <br />
                                                Mezi ty, kte�� se rozhodli na�i akci podpo�it pat�� i hudebn� skupiny Indienami
                                                a ROS3S, kter� po p��jezdu pelotonu zp�t do Tel�e zahraj� na tel�sk�m n�m�st�. Bez
                                                n�roku na honor��! Vstupn� je zdarma, na m�st� bude mo�nost dobrovoln� p�isp�t na
                                                onkologicky nemocn� d�ti do na�� kasi�ky. V�t�ek z cel� akce bude p�ed�n z�stupc�m
                                                nada�n�ho fondu a pediatrick�ho odd�len� v z�v�ru koncertu. Krom� koncertu prob�hne
                                                tak� p�edn�ka pana Josefa Zimov��ka o �innosti jeho nada�n�ho fondu a jeho zku�enostech
                                                s j�zdou na vysok�m kole. Registrace na cykloj�zdu je mo�n� do 1.9.2012. Nen� povinn�,
                                                ale doporu�en� - registrov�n�m si zajist�te ob�erstven� na trase a nav�c budete
                                                za�azeni do slosov�n� o v�cn� ceny, kter� prob�hne po p��jezdu na n�m�st� v Tel�i.
                                                Registrovat se m��ete zde: http://www.nakoledetemvysocinou.cz/registrace2/.
                                                <br />
                                                Douf�me, �e se n�m v leto�n�m roce poda�� oslovit je�t� v�ce ��astn�k� a s jejich
                                                pomoc� vybereme vy��� finan�n� p��sp�vek ne� loni, kdy se za pomoci 150 ��astn�k�
                                                a sponzor� poda�ilo vybrat 40 910 K�. Budeme r�di, pokud zv��te ��ast na na�em
                                                projektu a p��padn� p�izvete i Va�e p��tele a zn�m�.
                                                <br />
                                                Za organiza�n� t�m, Lucie Doanov� CoDoMa, o.s. 775195135 www.nakoledetemvysocinou.cz
                                                <br />
                                                <br />
                                            </div>
                                        </div>
                                        <div>
                                            <table>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">
                                                        Term�n:
                                                    </td>
                                                    <td style="color: #FF3300">
                                                        6.9.2014
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #0033CC; font-weight: bold;">
                                                        Web po�adatele:
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
                                            Autor: Ivo Fi�er<br />
                                            Vyd�no: 21.8.2013
                                        </div>
                                        <div class="uvodclanku">
                                            <h1 class="nadpish1">���rsk� Pilman 2012
                                            </h1>
                                            Ve Vyso�ina Cycling existuje i mal� triatlonov� sekce, do kter� pat�� jeden ost�ej��
                                            z�vodn�k Du�an Proch�zka a j� jako d�lkoplaz a jeho fanou�ek:-). Ros�a Krotk� mi
                                            ze star�ho p��telstv� umo�nil vozit i t�mov� dres - jestli v n�m ale zved�m presti�
                                            t�mu, to u� je jin� ot�zka:-)
                                        </div>
                                        <div class="showtext" align="right">
                                            <button type="button" class="viewpart" style="width: 67px; height: 20px; font-size: xx-small;
                                                text-align: right;">Zobrazit</button>
                                        </div>
                                        <div class="textclanku">
                                            <br />
                                            Nicm�n� co nen� v noh�ch, m��e b�t zase v hlav� nebo aspo� na jazyku a proto jsem
                                            se chopil p��le�itosti a pod z�minkou vlastn�ho zran�n� a propadl�ho startovn�ho
                                            (co� je v triatlonu trochu v�t�� polo�ka ne� jinde) nal�kal v minul�m roce do ���ru
                                            dva skute�n� dravce z Jihlavy, a spol�hal na to, �e s jejich pomoc� se bude z�vodit
                                            l�p. No a co se d�lo potom, to nem�lo obdoby a Vy se to hned dozv�te.<br />
                                            <br />
                                            Za n� t�m nastoupil Vl��a Rychetsk�, v�born� silni��� z�vod�c� v masters, kter�
                                            pat�� k nejlep��m v republice. Pro b�h jsem vyt�hl z ruk�vu Vl��u Srba, kter� mus�
                                            v�echny z�vody b�hat s�m, proto�e ostatn�m v�dycky ute�e... no a na plav�n�, tam
                                            se zas ned� tolik zkazit, tak to jsem si nechal pro sebe:-)<br />
                                            <br />
                                            Individu�ln� z�vodn�ci, kter�ch byla v�t�ina, m�li p�ed �tafetami 15 min. n�skok
                                            - tak jsem si ��kal, kone�n� m� nebude ml�tit 100 lid� po hlav� a uk�u jim za�
                                            je toho loket:-) Jen�e se rychle uk�zalo, �e ostatn� asi chodili na baz�n �ast�ji
                                            a za�ali se mi ztr�cet v d�li...a aby to nebylo v�echno, p�ehnali se kolem m� prvn�
                                            hv�zdy hlavn�ho z�vodu mu��...a tak jako klesaly ke dnu moje nohy, za�ala klesat
                                            i moje n�lada...<br />
                                            <br />
                                            Ale pak to p�i�lo - �elo z�vodu se vy��tilo z vody a sv�m dupotem a odl�taj�c�mi
                                            kapkami vody probudilo Vl��u Srba, kter� do t� doby spokojen� pod�imoval v tr�v�
                                            na b�ehu. Uvid�l moji ztr�tu rovnaj�c� se d�lce Titaniku, s rozb�hem sko�il do jezera,
                                            voda se za�ala va�it a n�skok prvn� �tafety rychle mizel, z Titaniku se stal remork�r
                                            a potom mo�n� tak jednom�stn� kajak... j� u� jsem tam byl v podstat� zbyte�n�, tak
                                            jsem se alespo� rozhodl pro u�ite�nou �innost a obt�oval sle�ny ze sponzorsk� �tafety
                                            Fordu:-)<br />
                                            <br />
                                            Potom v�b�h z depa a tam u� �ekal nekompromisn� Vl��a Rychetsk�, kter� se rozhodl
                                            prov��it, co ti triatlonisti na sv�ch �asovk��sk�ch speci�lech vlastn� um�. Popravd�,
                                            ten n�skok z vody m�li dost zna�nej, tak�e p�ed Vl��ou bylo mo�n� 50, mo�n� 80 nebo
                                            100 triatlonist�, v �ele s d��v�j��m v�t�zem sv�tov�ch poh�r� Martinem Kr��vkem.
                                            Kl�tili se na sv�ch stroj�ch, fun�li do kopc�, potili se, d�eli... Ale bylo jim
                                            to houby platn�, jednoho po druh�m je m�jel cyklista bez speci�ln�ho vybaven�, zato
                                            s perfektn� technikou j�zdy a dynamitem v noh�ch. Tempem, kter� se rovnalo tomu
                                            v elit� a na �pi�ce z�vodu, proj�d�l startovn�m polem jako n�� m�slem, sm�rem vp�ed.
                                            Ostatn� �tafety zat�m netu�ily, co se d�je, a� o mnoho pozd�ji jim do�lo, �e b�hem
                                            cyklistick� ��sti se v�echny posunuly na druh� a dal�� m�sta:-) To, �e se jejich
                                            �lenov� st��dali po ka�d�m kole (3x31km) bylo vlastn� u� �pln� jedno... <br />
                                            <br />
                                            Triatlonov� reprezentace v boji o mistrovsk� titul ov�em jela tak� rychle a i kdy�
                                            mnoho des�tek triatlonist� padlo Vl��ovi R. za ob�, st�le zbylo je�t� asi 30 nejlep��ch,
                                            kte�� se, nic zl�ho netu�e, vydali na b�eckou ��st. Fanynky tleskaly Kr��vkovi
                                            i slovensk�mu Karlu D�alajovi, ale jen do t� doby, ne� jim n�hl� z�van v�tru fouknul
                                            vlasy do o��... kdy� si je op�t odhrnuly, muselo se jim zd�t, �e vid� ducha, kter�
                                            jen tak pro z�bavu let� mezi unaven�mi triatlonisty. Nicm�n� to nebyl ��dn� p��zrak,
                                            to si jen Vl��a p�estal p�skat na st�blo tr�vy a po p�edchoz� mal� plaveck� rozcvi�ce
                                            se pustil do z�vodu naplno. Dlu�no ��ci, �e p�ihl�ej�c� ani organiz�to�i v�bec
                                            netu�ili, �e jim n�kdo m��e tak rychle b�et po trati -pomocn�k�m na ob�erstvovac�
                                            stanici padaly kel�mky z rukou, star�� lid� sotva uskakovali, babi�ky nev���cn�
                                            kroutily hlavami a jejich vnu�ky h�zely podprsenkami...:-) Jestli se Vl��a n�kter�m
                                            z nich stihl v lesn� ��sti okruhu i podepsat, jsem se vlastn� ani neptal a z�stane
                                            to zahaleno tajemstv�m... Konkuren�n� �tafety u� tak� pochopily, �e maj� probl�m
                                            a �e jim asi n�co uniklo:-) Triatlonov� soupe�i z on� elitn� t�ic�tky se zamra�ili
                                            a p�idali do kroku (tedy ti m�n� moud��), ti rozumn�j�� si dali rad�ji dva pl�tky
                                            melounu nav�c, proto�e museli m�t spr�vn� dojem, �e asi nen� jejich den.... <br />
                                            <br />
                                            A� teda na toho Kr��vka s D�alajem a je�t� asi dal�� t�i, kte�� (a m��ou za to pod�kovat
                                            hlavn� mn�:-)) m�li takov� n�skok, �e by to neseb�hl ani Kenenissa Bekele, Tanui,
                                            Kiptanui, Lagat ani nikdo jin�. A je to tak dob�e, proto�e c�lov� p�ska pat�� absolutn�mu
                                            v�t�zi (m� dalo zabrat i t�ch posledn�ch 50 metr�, kter� jsme b�eli spole�n� do
                                            c�le).<br />
                                            <br />
                                            Je�t� jednou d�ky Vl��ovi and Vl��ovi za kr�sn� sportovn� z�itek, reprezentaci
                                            klubu a speci�ln� ode mne za mo�nost pozdravit v�echny soupe�e i div�ky ze sch�dku,
                                            na kter�m je naps�no ��slo 1.<br />
                                            <br />
                                            Za triatlonovou sekci Vyso�ina Cycling<br />
                                            <br />
                                            Ivo� Fi�er
                                        </div>
                                        <div class="hidetext" align="right">
                                            <button type="button" class="hidepart" style="width: 53px; height: 20px; font-size: xx-small;
                                                text-align: right;">Skr�t</button>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div id="clanek12" class="rozbalovaciclanek">
                                        <div class="infoclanek">
                                            Autor: Rostislav Krotk�<br />
                                            Vyd�no: 12.6.2012
                                        </div>
                                        <div class="uvodclanku">
                                            <h1 class="nadpish1">
                                                Etapov� z�vod An Post R�s m�ma o�ima aneb taktika boje v Irsku</h1>
                                            S t�mem Sparty jsme v kv�tnu absolvovali etapov� z�vod okolo Irska. Etapov� z�vod
                                            s n�zvem An Post R�s je za�azen do kategorie 2.2 evropsk�ho kalend��e. Specifikou
                                            tohoto z�vodu je, �e zde startuj� pouze p�ti�lenn� t�my, co� na jednu stranu klade
                                            mnohem v�t�� n�roky na kvalitn� t�movou spolupr�ci a na druh� stran� d�l� z�vod
                                            zaj�mav�j��m, proto�e ho nem��e jednodu�e ovl�dnout jeden siln� t�m.
                                        </div>
                                        <div class="showtext" align="right">
                                            <button type="button" class="viewpart" style="width: 67px; height: 20px; font-size: xx-small; text-align: right; ">Zobrazit</button>
                                        </div>
                                        <div class="textclanku">
                                            <h1 class="nadpish2">
                                                Ur�en� leadera</h1>
                                            Z�vod je slo�en z osmi etap. D�kladn� prostudov�n� etap p�ed samotn�m z�vodem bylo
                                            velmi d�le�it� ke stanoven� taktiky a ur�en� leadera. Ji� p�ed z�vodem jsme vyhodnotili
                                            jako rozhoduj�c� 5. etapu, kter� m�la asi 15km p�ed c�lem strm� stoup�n� na vrcha�skou
                                            pr�mii se sklonem p�esahuj�c�m m�sty 20%. Role leadera proto jednozna�n� padla na
                                            Martina Hunala.
                                            <h1 class="nadpish2">
                                                P��prava p�ed startem</h1>
                                            Abychom neponechali nic n�hod�, rozhodli jsme se s Martinem cestovat do Irska letecky,
                                            p�esto�e zbytek t�mu cestoval autem. Martin byl u� p�ed startem v dobr� form� a
                                            nebylo by rozumn� p�ivodit �navu dlouh�m cestov�n�m. Samoz�ejmost� byly mas�e a
                                            kvalitn� odpo�inek p�ed n�ro�n�m z�vodem. Na z�vod jsme odcestovali 2 dny p�ed startem,
                                            abychom se dob�e aklimatizovali na m�stn� podm�nky. Na start se postavilo 35 p�ti�lenn�ch
                                            t�m�, tedy 175 startuj�c�ch.
                                            <h1 class="nadpish2">
                                                1. etapa</h1>
                                            V �vodn� etap� jsme m�li za �kol pohl�dat, aby neodjela ��dn� siln� skupina, ve
                                            kter� bychom nem�li zastoupen�, a kter� by si mohla vytvo�it nebezpe�n� n�skok.
                                            To se n�m poda�ilo a do c�le spurtovalo prakticky cel� hlavn� pole. Odsko�en� �estice
                                            m�la n�skok 6 sekund. Ze spar�an� jsem byl v c�li nejl�pe, des�t� v hlavn�m poli,
                                            celkov� 16. m�sto. Jirka Nesveda 22. m�sto, Martin Hunal 25. m�sto. Martin bral
                                            nav�c 2 bonifika�n� sekundy na pr�mi�ch, kter� se pozd�ji uk�zaly jako velmi cenn�.
                                            <h1 class="nadpish2">
                                                2. etapa</h1>
                                            Druh� etapa m�la v �vodu podobn� pr�b�h jako ta prvn�. N�stup st��dal n�stup, ale
                                            nikomu se odjet nepoda�ilo. A� zhruba na 50km v okam�iku, kdy peloton najel na �zkou
                                            silnici, bal�k najednou zastavil a vep�edu se utvo�ila skupina, v n� m�la v�t�ina
                                            siln�ch t�m� jednoho sv�ho z�stupce. Tento okam�ik jsme jako t�m zazdili, proto�e
                                            jsme se v t� chv�li ob�erstvovali. Chv�li jsme �ekali, jestli se tempa neujme n�jak�
                                            jin� t�m, kter� vep�edu nem� sv�ho z�stupce, ale ��dn� takov� se nena�el. N�skok
                                            nebezpe�n� rostl a Martin za��nal b�t nerv�zn�. Nebylo u� na co �ekat, a tak jsem
                                            najel dop�edu a za�al tahat. Z�hy se p�idal cel� t�m a za�ali jsme pracovat pro
                                            Martina. Na�e tempo ale nebylo zprvu p��li� v�razn� a n�skok odjet� skupiny se nezmen�oval,
                                            sp�e naopak, st�le m�rn� rostl a� ke �ty�em minut�m. Proto se k n�m p�idal i dal��
                                            siln� t�m, kter� vep�edu nem�l sv�ho z�stupce, francouzsk� AVC Aix En Provence.
                                            Nejd��ve s n�mi tahal pouze jeden jejich z�vodn�k, ale pozd�ji se p�idali i dal��.
                                            N�skok odjet� skupiny se za�al sni�ovat. Posledn�ch 20km p�ed c�lem n�s �ekal zvln�n�
                                            ter�n a 3 horsk� pr�mie 3. kategorie. Tady se p�idali i ostatn� Francouzi a n�skok
                                            za�al rychle klesat. Vep�edu jsem z�stal s Francouzi tahat u� jen s�m. Martin si
                                            hl�dal sv� soupe�e pro p��pad, �e by cht�l n�kdo za�to�it. N�skok odjet� skupiny
                                            se n�m nakonec �pln� zlikvidovat nepoda�ilo, ale 28 sekund ztr�ty na sedmi�lennou
                                            skupinu nemohlo m�t na celkov� v�voj z�vodu rozhoduj�c� vliv. I po n�ro�n�m celodenn�m
                                            tah�n� na �pici se mi nakonec v z�v�ru etapy poda�ilo prosadit na 20. m�sto na c�lov�
                                            p�sce. Martin Hunal dojel na 35. m�st�. Do c�le dorazilo asi �edes�ti�lenn� hlavn�
                                            pole.
                                            <h1 class="nadpish2">
                                                3. etapa</h1>
                                            R�no p�ed startem jsme si ��kali, �e u� se n�m nesm� st�t to, co v p�edchoz� etap�.
                                            Nav�c byly na programu prvn� v�t�� kopce, tak�e p��le�itost pro Martina potvrdit
                                            roli leadera. V�ichni se trochu prvn�ch v�t��ch kopc� ob�vali, co� zap���inilo i
                                            lehkou nervozitu v bal�ku. Tato nervozita m�la za n�sledek n�kolik nep��jemn�ch
                                            p�d�. Prvn� p�i�el asi 75km na �zk� silnici p�ed prvn� vrcha�skou pr�mi� 3. kategorie.
                                            Na�t�st� jsme s Martinem jeli vep�edu. Trochu se zpomalilo, aby se peloton po p�du
                                            znovu spojil. Toho vyu�ila �tve�ice z�vodn�k�, kter� si za�ala budovat n�skok. Po
                                            n�jezdu do dal��ho kopce, na n�m� byla pr�mie 2. kategorie, se pole za�alo trhat
                                            a za�alo se ost�e z�vodit. Z�vodilo se i z kopce a p�i�el dal�� p�d, kde z�stal
                                            i jeden z p�edpokl�dan�ch leader� dom�c�ho t�mu. Vep�edu z�stala ji� jen dvojice
                                            a bal�k loaj�ln� op�t zpomalil a �ekalo se, ne� se z�vodn�ci dostanou po p�du zp�t.
                                            N�sleduj�c� vrcha�sk� pr�mie se proto jela jen zlehka. Martin si na n� dojel pro
                                            3. m�sto. Za pr�mi� se v�e sjelo, a proto�e vep�edu odjet� z�vodn�ci d�ky p�d�m
                                            v bal�ku z�skali velk� n�skok a do c�le nebylo ji� daleko, asi 30km, na �pici za�ali
                                            jet z�vodn�ci z dom�c�ho t�mu An Post Sean Kelly. Vinou chyby n�kter�ho ze z�vodn�k�
                                            ale do�lo op�t k dal��mu p�du, kter� rozd�lil hlavn� pole na dv� skupiny. Nyn� se
                                            u� ne�ekalo. Vzadu z�stal ve �lut�m jedouc� �v�car, dom�c� t�m asi vyc�til �anci
                                            a skupiny se za�aly nah�n�t. Na�t�st� Martin byl c �eln� skupin� s Ondrou P�vkem,
                                            tak�e jsem nechal ve�kerou aktivitu na ostatn�ch. Skupiny se nakonec asi 10km p�ed
                                            c�lem sjely. Byli dojeti i uprchl�ci a tak spurtoval cel� bal�k. Martin byl relativn�
                                            v pohod�. Poda�ilo se mu dostat do spurtu na v�hodnou pozici a na p�sce z toho bylo
                                            p�kn� 6. m�sto v etap�. J� dojel ve stejn�m �ase na 26. m�st�. P�esto�e bylo v etap�
                                            n�kolik p�d�, na�t�st� se nikdo z na�eho t�mu do ��dn�ho nep�ipletl a mohli jsme
                                            se v�ichni v klidu p�ipravovat na dal�� den.
                                            <h1 class="nadpish2">
                                                4. etapa</h1>
                                            P�dy v p�edchoz� etap� n�s trochu vystra�ily, nav�c to vypadalo, �e 4. etapa bude
                                            velmi v�trn�, tak�e jasn� pl�n byl, pohybovat se st�le co nejv�ce vep�edu a sj�d�t
                                            p��padn� �toky. To se n�m v podstat� da�ilo, cel� t�m fungoval a ��dn� siln� skupin�
                                            se odjet nepoda�ilo. Hlavn� pole se na v�tru sice siln� zredukovalo, ale rozhodovalo
                                            se a� v z�v�ru. Tady ov�em p�i�la na�e slab�� chvilka. Asi 5km p�ed c�lem se krajina
                                            n�hle otev�ela a za�al foukat velmi siln� bo�n� v�tr. V t� chv�li jsme s Martinem
                                            nem�li nejlep�� pozici, skupina se nat�hla a my se sna�ili dostat co nejrychleji
                                            dop�edu. Jel se terez�n na doraz a skupina se za�ala trhat. Poda�ilo se n�m dostat
                                            na hranici prvn� dvac�tky, ale d�l u� to ne�lo. Martin nakonec obsadil 22. m�sto,
                                            ale bohu�el ztratil 12 sekund na prvn�ho. J� dojel 36. Po z�vod� se uk�zalo, �e
                                            men�� ztr�ta v t�to etap� mohla m�t velk� vliv na Martin�v celkov� v�sledek a Martin
                                            mohl j�t pozd�ji klidn� i do �lut�ho dresu.
                                            <h1 class="nadpish2">
                                                5. etapa</h1>
                                            Tuto etapu jsme p�ed z�vodem vyhodnotili jako kl��ovou a cel� z�vod sm�rovali p�edev��m
                                            k n�. V t�to etap� se m�ly projevit Martinovy kvality ve strm�ch kopc�ch. �vod etapy
                                            byl rychl�, v podstat� jako i v p�edchoz�ch dnech. Nebezpe�n� n�stupy se n�m da�ilo
                                            eliminovat. V�born� pracovali Ondra P�vek s Jirkou Nesvedou. V prvn� ��sti etapy
                                            byly na programu dv� vrcha�sk� pr�mie 3. kategorie, kde si Martin p�ipsal 3. a 2.
                                            m�sto, pak n�sledovalo rovinat�j��ch 30km p�ed z�v�re�n�mi p�ti vrcha�sk�mi pr�miemi,
                                            z nich� ta p�edposledn� 1. kategorie m�la rozhodnout. V t�to rovinat�j�� pas�i
                                            se poda�ilo odjet �esti�lenn� skupin�, kter� si vytvo�ila asi dvouminutov� n�skok.
                                            10km p�ed fin�lov�mi kopci dovezl mn� a Martinovi Jirka Nesveda pit� a dot�hl n�s
                                            na �pici bal�ku. V tom okam�iku se na �pici zrychlilo a Jirku napadlo, �e n�s zkus�
                                            odpojit. Bylo t�sn� po ob�erstvova�ce, bal�k lehce zpomalil a my se najednou ocitli
                                            v �niku. S n�mi tam byl i �lut� �v�car, leader z�vodu, kter� m�l tak� z�jem jet.
                                            Pochopil jsem, �e je to �ance, jak Martinovi u�et�it s�ly p�ed rozhoduj�c�m kopcem.
                                            Domluvili jsme se, a� se jen veze, a j� se sna�il aktivn� tahat, aby byl n� n�skok
                                            p�ed kopci co nejv�t��. To se da�ilo, z�jem tahat jsme sice m�li pouze �ty�i, ale
                                            v tu chv�li to sta�ilo. Po najet� do prvn�ch kopc� jsme p�ed sebou spat�ili prvn�
                                            odjetou skupinu, kterou se n�m poda�ilo z�hy sjet. Z t�to skupiny se v�ak je�t�
                                            p�ed t�m odpoutal francouzsk� z�vodn�k Rostollan. Jakmile jsme skupinu sjeli, nem�l
                                            nikdo z�jem jet. ��dn� t�m nem�l vep�edu sv�ho leadera, pouze my Martina a �v�ca�i
                                            ve �lut�m jedouc�ho Langa. �ekl jsem Martinovi, a� se rad�ji st�le �et�� a tahal
                                            jsem v podstat� pouze s Langem. Martin v�dy jel jen na vrcha�skou pr�mii. Bylo tedy
                                            jen ot�zkou, kdy n�s bal�k sjede. V bal�ku se ov�em muselo z�konit� zrychlit a leade�i
                                            ostatn�ch t�m� se nemohli moc �et�it, to byla na�e v�hoda. Martin byl st�le relativn�
                                            odpo�at� a p�ipraven� na rozhoduj�c� stoup�n� na vrcha�skou pr�mii 1. kategorie.
                                            Bal�k n�s nakonec sjel asi 3km p�ed za��tkem kopce. J� u� toho m�l docela dost,
                                            tak jsem se sna�il si je�t� t�ch p�r kilometr� alespo� trochu odpo�inout. Te� u�
                                            to bylo jen na Martinovi. Martin najel do kopce vep�edu a hl�dal si s p�ehledem
                                            sv� soupe�e. Nahoru na kopec nakonec vyjel �tvrt� z hlavn� skupiny, a po sjezdu
                                            z kopce, kter� byl strm� stejn� jako v�jezd (po nerovn� silnici, na�t�st� p��m�
                                            bez zat��ek se dol� �let�lo� rychlost� t�m�� 100km/h) se vep�edu vytvo�ila vedouc�
                                            �tve�ice dvou �v�car�, Martina a dom�c�ho z�vodn�ka t�mu An Post Sean Kelly. Jelo
                                            se nadoraz a posledn� zmi�ovan� odpadl. �pln� vep�edu v�ak st�le je�t� jel osamocen�
                                            Francouz. Skupinka se k n�mu rychle p�ibli�ovala, ale on sv�j n�skok v c�li s vyp�t�m
                                            sil uh�jil, i kdy� jen o pouh�ch 9 sekund. Druh� dospurtoval Martin p�ed ob�ma �v�cary.
                                            Do celkov�ho veden� se t�mto dostal op�t z�vodn�k �v�carsk�ho t�mu Atlas Jakroo,
                                            nyn� Nicolas Baldo. Na druh� m�sto posko�il v�t�z etapy Francouz Rostollan a Martin
                                            se posunul na 3. pozici pouze se ztr�tou 7 sekund na prvn�ho. Nyn� Martina trochu
                                            mrzelo t�ch 12 sekund z p�edchoz�ho dne. Na druhou stranu �tvrt� v po�ad� ztr�cel
                                            na Martina pouhou sekundu, tak�e dvousekundov� bonifikace z prvn� etapy p�i�la vhod.
                                            V tomto z�vod� prost� nakonec rozhodovaly jen sekundy. J� dorazil do c�le se ztr�tou
                                            necel�ch dvou minut na 36. m�st�.
                                            <h1 class="nadpish2">
                                                6. etapa</h1>
                                            Tato etapa mohla je�t� zam�chat po�ad�m, byla tak� dost kopcovit�, i kdy� ten nejv�t��
                                            kopec byl je�t� daleko p�ed c�lem. Ka�dop�dn� dom�c� t�m An Post Sean Kelly byl
                                            p�ipraven �to�it, proto�e p�edchoz� etapa jim nevy�la �pln� podle p�edstav. Ka�dop�dn�
                                            na��m z�m�rem bylo hl�dat Martinovu pozici a nepustit do �niku ��dnou silnou skupinu,
                                            kter� by mohla Martina ohro�ovat. V prvn� ��sti z�vodu se o to staral p�edev��m
                                            Jirka Nesveda a Dan Vejmelka. M�li za �kol dr�et vysok� tempo hlavn�ho pole. Bohu�el
                                            tato etapa m�la ji� na 60km vrcha�skou pr�mii 2. kategorie, kter� se jim stala osudn�
                                            a vep�edu jsme s Martinem z�stali jen j� a Ondra P�vek. Martin byl na pr�mii 2.
                                            a u� v�d�l, �e bojuje o dres nejlep��ho vrcha�e. M�l ov�em velmi zdatn�ho soupe�e,
                                            tmav�ho Angli�ana Clarka, kter� ho v�t�inou na pr�mi�ch porazil. Podle p�edpoklad�
                                            se u� na t�to pr�mii za�alo �to�it. �elo jsme si ale pohl�dali a sm��ovali na�e
                                            sna�en� k vrcha�sk� pr�mii 1. kategorie na 102km. I p�es �etn� sj�d�n� n�stup�,
                                            kter� bylo ve dvou n�ro�n�j��, se n�m poda�ilo pohl�dat soupe�e a Martin mohl v
                                            kopci prok�zat sv� kvality. Nahoru vyjel druh� op�t za Clarkem a za�alo mu b�t jasn�,
                                            �e ve vrcha��ch z nejv�t�� pravd�podobnost� nevyhraje. Na kopci se na �ele utvo�ila
                                            asi dvaceti�lenn� skupina, do kter� jsem si po n�kolika kilometrech dojel je�t�
                                            i j� spolu s n�kolika dal��mi jezdci. Ondra bohu�el z�stal vzadu, tak�e p��padn�
                                            pomoc Martinovi z�stala ji� pouze na m�. P�ed c�lem n�s �ekaly je�t� 2 pr�mie 2.
                                            kategorie na 118km a 124km. C�til jsem, �e v kopci u� Martinovi nebudu schopn� nijak
                                            pomoci, tak jsem se alespo� sna�il, aby mu p�ed nimi nic neodjelo, co� se poda�ilo.
                                            Do p�edposledn�ho kopce najela prvn� skupina kompaktn�. Martin si soupe�e ohl�dal
                                            a j� jsem s vyp�t�m posledn�ch sil oba kopce tak� p�ejel. T�sn� p�ed c�lem, v�bornou
                                            taktickou prac� �v�car�, poodjel ve �lut�m jedouc� Baldo a o 10s si zv��il n�skok
                                            p�ed sv�mi soupe�i. Martin dospurtoval na 13. m�st� a j� na 16. m�st�. V celkov�m
                                            po�ad� se na �ele nic z�sadn�ho nezm�nilo, Martin z�stal 3., pouze j� se posunul
                                            o p�r pozic na 19. m�sto.
                                            <h1 class="nadpish2">
                                                7. etapa</h1>
                                            P�ed etapou jsme m�li jedin� c�l, h�jit Martinovo postaven�, a v c�li etapy se pokusit
                                            slu�n� spurtovat. S druh�mi Francouzi a prvn�mi �v�cary jsme se domluvili, �e ka�d�
                                            t�m d� 2 z�vodn�ky, aby ur�ovali tempo. Ide�ln� bude nechat odjet skupinu, kter�
                                            n�s nebude ohro�ovat a dr�et za n� p�ijateln� odstup. Tato strategie n�m vy�la v�born�
                                            p�esn� podle pl�nu. Jirka Nesveda s Danem Vejmelkou tahali ze za��tku, v z�v�ru,
                                            kdy� u� jim nezb�valy s�ly, je postupn� nahradil Ondra P�vek a potom i j�. Odjetou
                                            skupinu jsme p�ed c�lem sjeli. N�kolik kilometr� p�ed c�lem je�t� odsko�ili 2 jezdci,
                                            kte�� nikoho v �ele neohro�ovali. Z�v�r byl trochu nerv�zn� a neb�t n�kolika p�d�,
                                            byli by p�ed c�lem sjeti. Takto p�ijeli 12s p�ed hlavn�m polem. Do jednoho p�du
                                            se bohu�el p�ipletl i Ondra, Martin na�t�st� zvl�dl v�e bez probl�m�. J� jsem se
                                            soust�edil na spurt. P�ed posledn� zat��kou p�ed c�lem jsem nastoupil a do c�le
                                            dospurtoval na 7. m�st�. Martin byl 29.
                                            <h1 class="nadpish2">
                                                8. etapa</h1>
                                            V posledn� etap� jsme m�li stejnou taktiku, jako v t� p�edchoz�. Op�t jsme nechali
                                            odjet skupinu a ud�vali spolu s Francouzi a �v�cary tempo. V z�v�ru etapy n�s v�ak
                                            �ekaly okruhy a 3 vrcha�sk� pr�mie 3. kategorie, kter� je�t� nab�zely �anci n�co
                                            zm�nit, proto�e rozestupy na �pici v celkov�m po�ad� nebyly velk�. Skupinu jsme
                                            na okruz�ch sjeli a za�alo se z�vodit. Sna�il jsem se m�t Martina po��d na o��ch,
                                            abych mohl v p��pad� n�jak�ch probl�m� rychle reagovat. Vedouc� �v�ca�i si v�ak
                                            sv� v�t�zstv� bez v�t��ch probl�m� uhl�dali, a v kopci jeli takov� tempo, ze kter�ho
                                            nebyl schopn� nikdo odjet. Martin se za nimi pohyboval s p�ehledem, a tak v�e sm��ovalo
                                            k c�lov�mu spurtu. Ten byl trochu nebezpe�n�, p�edch�zela mu s�rie zat��ek, podjezd,
                                            obrubn�ky, ale na�t�st� se nic nestalo. Dojeli jsme s Martinem na 15. a 16. m�st�
                                            a radovali se, �e se n�m poda�ilo uh�jit Martinovo celkov� 3. m�sto. Ve vrcha�sk�
                                            sout�i skon�il Martin na 2. m�st�.
                                            <h1 class="nadpish2">
                                                Z�v�rem</h1>
                                            N� t�m p�edvedl v Irsku v�bornou t�movou spolupr�ci, kter� vedla ke k��en�mu v�sledku.
                                            Martin zhodnotil z�vod se slovy: �Hodn� lidi si mysl�, �e jsem si v�sledek vyjel
                                            s�m, ale tak to nen�. Neb�t cel�ho p�ti�lenn�ho t�mu, se kter�m jsme tady startovali,
                                            tak by se n�m to nepovedlo. V�em kluk�m jsem ka�d� den za jejich pr�ci pod�koval.
                                            Odvedli velk� kus dobr� pr�ce." I ostatn� kluci byli spokojeni, �e jejich �sil�
                                            dok�zal Martin zhodnotit kvalitn�m v�sledkem. Martina je zase pot�eba pochv�lit,
                                            �e unesl zodpov�dnost za v�sledek t�mu, kter� na n�j cel� z�vod pracoval a dok�zal
                                            prodat sv� schopnosti v rozhoduj�c�ch okam�ic�ch.
                                            <br />
                                            Dobr� pocit mohou m�t i cyklist� z Vyso�iny, proto�e Martin i j� zde �ijeme a r�di
                                            ji reprezentujeme. Martin za��nal na biku, tak�e v jeho v�sledku mohou naj�t inspiraci
                                            i mlad� bike�i, kter�ch je v sou�asnosti na Vyso�in� mnohem v�c ne� silni����.
                                        </div>
                                        <div class="hidetext" align="right">
                                            <button type="button" class="hidepart" style="width: 53px; height: 20px; font-size: xx-small; text-align: right; ">Skr�t</button>
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
                                <a href="images/photos/imageTen01.jpg" title="Cesta na �pat� Pico del Teide, pod mraky �dol� Orotavy.">
                                    <img src="images/photos/thumb_imageTen01.jpg" alt="Tenerife" /></a> <a href="images/photos/imageTen02.jpg"
                                        title="Pico del Teide z v�chodn� strany.">
                                        <img src="images/photos/thumb_imageTen02.jpg" alt="Tenerife" /></a> <a href="images/photos/imageTen03.jpg"
                                            title="Pohled do kr�teru.">
                                            <img src="images/photos/thumb_imageTen03.jpg" alt="Tenerife" /></a>
                                <a href="images/photos/imageTen04.jpg" title="Pico del Teide z kr�teru.">
                                    <img src="images/photos/thumb_imageTen04.jpg" alt="Tenerife" /></a>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div id="album-Fuerteventura2011" class="clanek">
                                <h3>
                                    Fuerteventura 2011</h3>
                                <a href="images/photos/imageFue01.jpg" title="Nad Betancuri�.">
                                    <img src="images/photos/thumb_imageFue01.jpg" alt="Fuerteventura" /></a> <a href="images/photos/imageFue02.jpg"
                                        title="Antigua.">
                                        <img src="images/photos/thumb_imageFue02.jpg" alt="Fuerteventura" /></a>
                                <a href="images/photos/imageFue03.jpg" title="Pole s Aloe Vera.">
                                    <img src="images/photos/thumb_imageFue03.jpg" alt="Fuerteventura" /></a> <a href="images/photos/imageFue04.jpg"
                                        title="Pohled na hory u m�sta Cotillo.">
                                        <img src="images/photos/thumb_imageFue04.jpg" alt="Fuerteventura" /></a>
                                <a href="images/photos/imageFue05.jpg" title="Pl� Sotavento.">
                                    <img src="images/photos/thumb_imageFue05.jpg" alt="Fuerteventura" /></a> <a href="images/photos/imageFue06.jpg"
                                        title="Pl� Cofete.">
                                        <img src="images/photos/thumb_imageFue06.jpg" alt="Fuerteventura" /></a>
                                <a href="images/photos/imageFue07.jpg" title="Pl� Cofete.">
                                    <img src="images/photos/thumb_imageFue07.jpg" alt="Fuerteventura" /></a> <a href="images/photos/imageFue08.jpg"
                                        title="Pl� Cofete.">
                                        <img src="images/photos/thumb_imageFue08.jpg" alt="Fuerteventura" /></a>
                                <a href="images/photos/imageFue09.jpg" title="P�se�n� duny u Corraleja.">
                                    <img src="images/photos/thumb_imageFue09.jpg" alt="Fuerteventura" /></a>
                            </div>
                        </td>
                    </tr>
                </table>
            </div>
        </div>
    </div>
</asp:Content>

