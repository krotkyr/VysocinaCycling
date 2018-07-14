<%@ Page Title="Vyso�ina Cycling - Tr�nink" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="trenink.aspx.cs" Inherits="Trenink" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <meta property="og:description" content="Tento projekt je zam��en na podporu v�konnostn� cyklistiky na Vyso�in�, a to p�edev��m cyklistiky silni�n�. Na str�nce Tr�nink naleznete informace a �l�nky o cyklistick�m tr�ninku. Naleznete zde i mo�nost tr�ninkov�ho poradenstv�." />
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
            Vypl�te pros�m kontaktn� �daje. Spoj�me se s V�mi co nejd��ve. Pro kontrolu bude
            kopie Va�� p�ihl�ky zasl�na i na V� email.</p>
        <table>
            <tr>
                <td style="width: 80px">
                    Jm�no:
                </td>
                <td style="width: 200px">
                    <asp:TextBox ID="TextBoxPKempJmeno" runat="server" TextMode="SingleLine" style="width:140px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 80px">
                    �rove�:
                </td>
                <td style="width: 200px">
                    <asp:DropDownList ID="DropDownListPKempUroven" runat="server" style="width:145px">
                        <asp:ListItem>Rekrea�n� jezdec</asp:ListItem>
                        <asp:ListItem>Hobby jezdec</asp:ListItem>
                        <asp:ListItem>Aktivn� z�vodn�k</asp:ListItem>
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
                    M�m z�jem o:
                </td>
                <td style="width: 200px">
                    <asp:DropDownList ID="DropDownListPKempTyp" runat="server" style="width:145px">
                        <asp:ListItem>�spornou variantu</asp:ListItem>
                        <asp:ListItem>Pln� komfort</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td style="width: 80px">
                    Pozn�mka:
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
            Vypl�te pros�m kontaktn� �daje. Spoj�me se s V�mi co nejd��ve. Pro kontrolu bude
            kopie Va�� p�ihl�ky zasl�na i na V� email.</p>
        <table>
            <tr>
                <td style="width: 80px;">
                    Jm�no:
                </td>
                <td style="width: 200px">
                    <asp:TextBox ID="TextBoxKempJmeno" runat="server" TextMode="SingleLine" style="width:140px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 80px">
                    �rove�:
                </td>
                <td style="width: 200px">
                    <asp:DropDownList ID="DropDownListKempUroven" runat="server" style="width:145px">
                        <asp:ListItem>Rekrea�n� jezdec</asp:ListItem>
                        <asp:ListItem>Hobby jezdec</asp:ListItem>
                        <asp:ListItem>Aktivn� z�vodn�k</asp:ListItem>
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
                    M�m z�jem o:
                </td>
                <td style="width: 200px">
                    <asp:DropDownList ID="DropDownListKempTyp" runat="server" style="width:145px">
                        <asp:ListItem>�spornou variantu</asp:ListItem>
                        <asp:ListItem>Pln� komfort</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td style="width: 80px">
                    Pozn�mka:
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
            Vypl�te pros�m kontaktn� �daje. Spoj�me se s V�mi co nejd��ve. Pro kontrolu bude kopie Va�� ��dosti zasl�na i na V� email.</p>
        <table>
            <tr>
                <td style="width: 50px">
                    Jm�no:
                </td>
                <td style="width: 200px">
                    <asp:TextBox ID="TextBoxZadostJmeno" runat="server" TextMode="SingleLine" style="width:140px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 50px">
                    Obdob�:
                </td>
                <td style="width: 200px">
                    <asp:DropDownList ID="DropDownListZadostObdobi" runat="server" style="width:145px">
                        <asp:ListItem>1 m�s�c</asp:ListItem>
                        <asp:ListItem>2 m�s�ce</asp:ListItem>
                        <asp:ListItem>3 m�s�ce</asp:ListItem>
                        <asp:ListItem>4 m�s�ce</asp:ListItem>
                        <asp:ListItem>5 m�s�c�</asp:ListItem>
                        <asp:ListItem>6 m�s�c�</asp:ListItem>
                        <asp:ListItem>7 m�s�c�</asp:ListItem>
                        <asp:ListItem>8 m�s�c�</asp:ListItem>
                        <asp:ListItem>9 m�s�c�</asp:ListItem>
                        <asp:ListItem>10 m�s�c�</asp:ListItem>
                        <asp:ListItem>11 m�s�c�</asp:ListItem>
                        <asp:ListItem>1 rok</asp:ListItem>
                        <asp:ListItem>Tr�ninkov� kemp</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td style="width: 50px">
                    �rove�:
                </td>
                <td style="width: 200px">
                    <asp:DropDownList ID="DropDownListZadostUroven" runat="server" style="width:145px">
                        <asp:ListItem>Rekrea�n� jezdec</asp:ListItem>
                        <asp:ListItem>Hobby jezdec</asp:ListItem>
                        <asp:ListItem>Aktivn� z�vodn�k</asp:ListItem>
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
                <li id="Li31"><a href="#tab-31">�l�nky</a></li>
                <li id="Li32"><a href="#tab-32">Testy</a></li>
                <li id="Li33"><a href="#tab-33">Z�kladn� principy tr�ninku</a></li>
                <li id="Li34"><a href="#tab-34">Fyziologie</a></li>
                <li id="Li35"><a href="#tab-35">Speci�ln� tr�nink</a></li>
                <li id="Li36"><a href="#tab-36">Tr�ninkov� kempy</a></li>
                <li id="Li37"><a href="#tab-37">Poradenstv�</a></li>
                <li id="Li38"><a href="#tab-38">Tr�ninkov� poradci</a></li>
            </ul>
            <div id="tab-31">
                <table>
                    <tr>
                        <td>
                            <ul class="paging2">
                                <li>
                                    <div id="clanek6" class="rozbalovaciclanek">
                                        <div class="infoclanek">
                                            Autor: Rostislav Krotk�<br />
                                            Vyd�no: 27.5.2013
                                        </div>
                                        <div class="uvodclanku">
                                            <h1 class="nadpish1">Stre�ink v cyklistice</h1>
                                            Protahovac� cvi�en� (stre�ink) je d�le�it�m dopl�kem v drtiv� v�t�in� sportovn�ch
                                            odv�tv�. Ani cyklistika nen� v�jimkou. Cyklistika nav�c jednostrann� zat�uje n�kter�
                                            svalov� partie, ��m� doch�z� ke zkr�cen� sval� a svalov� dysbalanci. To m� �asto
                                            za n�sledek vadn� dr�en� t�la, kter� m��e �asem vy�stit v r�zn� probl�my a bolesti.
                                            Stre�ink dok�e toto z velk� ��sti eliminovat. Uvoln�n� svaly l�pe regeneruj� a
                                            vzhledem k v�t��mu rozsahu jsou schopny podat i vy��� v�kon. Z prota�en�ch sval�
                                            se rychleji a l�pe odplavuj� �kodliv� l�tky a svaly jsou m�n� n�chyln� ke k�e��m.
                                            Z t�chto d�vod� by se stre�ink m�l st�t samoz�ejmou sou��st� ka�d�ho tr�ninku.
                                        </div>
                                        <div class="showtext" align="right">
                                            <button type="button" class="viewpart" style="width: 67px; height: 20px; font-size: xx-small;
                                                text-align: right;">Zobrazit</button>
                                        </div>
                                        <div class="textclanku">
                                            <h1 class="nadpish2">Stre�ink p�ed tr�ninkem</h1>
                                            Zapamatujte si, �e nikdy se nesna��me protahovat studen� svaly. V�dy je nutn� svaly
                                            nejprve zah��t a po t� je protahovat. V opa�n�m p��pad� se vystavujeme velk�mu riziku
                                            po�kozen� sval�. N�kte�� odborn�ci dokonce protahov�n� p�ed v�konem nedoporu�uj�.
                                            M�j n�zor je protahovat, ale a� po dostate�n�m zah��t�. V p��pad� cyklistick�ho
                                            tr�ninku nap��klad po 15-ti minut�ch rozjet� zastavit a prot�hnout se. Nep�eh�n�jte
                                            to s protahov�n�m do krajn�ch poloh, pouze do lehk�ho pnut�.
                                            <h1 class="nadpish2">Stre�ink v pr�b�hu tr�ninku</h1>
                                            P�i cyklistick�m tr�ninku na stre�ink v�t�inou prostoru moc nen�, ale m��ete vyu��t
                                            malou zast�vku, nebo se prot�hnout p��mo za j�zdy. Pr�b�n� prota�en� je vhodn�
                                            zejm�na p�i kompenza�n�m tr�ninku den po z�vod�, kdy jsou svaly v�ce unaven� a�
                                            zata�en�. V tomto p��pad� je vhodn� si zast�vky na prota�en� ud�lat. Op�t to nep�eh�n�me
                                            s krajn�mi polohami.
                                            <h1 class="nadpish2">Stre�ink po tr�ninku nebo z�vod�</h1>
                                            Asi nejd�le�it�j�� �as pro stre�ink. ��m v�ce jsou svaly unaven�, t�m del�� �as
                                            je nutn� v�novat protahov�n�. Nejv�t�� efekt m� stre�ink p��mo po koupeli, kdy je
                                            t�lo rozeh��t� a svaly relativn� uvoln�n�. V tuto dobu vyu�ijeme stre�ink pro rychlej��
                                            regeneraci a odplaven� odpadn�ch l�tek ze sval�. S�rii cvik� m��eme opakovat i v�cekr�t.
                                            P�i n�sleduj�c�ch opakov�n�ch se dost�v�me postupn� do krajn�ch poloh. Pro v�t��
                                            efekt m��eme protahovac� cvi�en� s n�kolikahodinov�m odstupem znovu zopakovat. Pokud
                                            m�te napl�nov�nu mas�, je vhodn� se prot�hnout je�t� p�ed mas��.
                                            <h1 class="nadpish2">Pravidla protahov�n�</h1>
                                            Protahovan� svaly mus� b�t zah��t�.<br />
                                            Cviky prov�d�me plynule bez kmit�.<br />
                                            Db�me na spr�vn� proveden� cvik�.<br />
                                            Krajn� poloha nesm� bolet.<br />
                                            Zam��ujeme se p�edev��m na svaly, kter� jsou nejv�ce nam�han�, ale neopom�j�me i
                                            ostatn�.<br />
                                            ��m v�ce jsou svaly unaven� z p�edchoz�ch tr�nink�, t�m v�ce �asu je pot�eba v�novat
                                            jejich prota�en�.
                                            <h1 class="nadpish2">Cviky</h1>
                                            Na n�sleduj�c�ch obr�zc�ch jsem pro v�s p�ipravil s�rie cvik�, kter� m��ete prov�d�t
                                            p�i tr�ninku s oporou kola a cviky, kter� jsou sp�e vhodn� na doma.<br />
                                            <br />
                                            <div id="strecink">
                                                <a href="images/clanky/Cviky-kolo.jpg" title="Protahovac� cviky s oporou kola">
                                                    <img src="images/clanky/thumb_Cviky-kolo.jpg" alt="Stre�ink" /></a>
                                                <a href="images/clanky/Cviky1.jpg" title="S�rie protahovac�ch cvik� - 1.��st">
                                                    <img src="images/clanky/thumb_Cviky1.jpg" alt="Stre�ink" /></a>
                                                <a href="images/clanky/Cviky2.jpg" title="S�rie protahovac�ch cvik� - 2.��st">
                                                    <img src="images/clanky/thumb_Cviky2.jpg" alt="Stre�ink" /></a>
                                            </div>
                                            <h1 class="nadpish2">Z�v�rem</h1>
                                            Za�ad�te-li stre�ink do tr�ninku jako jeho samoz�ejmou sou��st, budete z n�j bezesporu
                                            profitovat. Pokud si na n�j zvyknete a budete-li jej prov�d�t pravideln�, pom��e
                                            v�m posunout va�i v�konnostn� hranici zase o n�co v��.
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
                                            Vyd�no: 11.4.2012
                                        </div>
                                        <div class="uvodclanku">
                                            <h1 class="nadpish1">
                                                Compex - podpora regenerace</h1>
                                            Compex lze jednodu�e charakterizovat jako elektro-stimula�n� p��stroj, kter� pom�h� c�tit 
                                            se l�pe. Spojuje v sob� mno�stv� funkc� z oblasti rehabilitace, regenerace a mas��, �levy 
                                            od bolesti, zah��vac�ch cvi�en�, posilovac�ch a protahovac�ch cvi�en�, kondi�n�ch a fitness 
                                            program�, Ocen� jej nejen sportovci, ale i lid� v rekonvalescenci po r�zn�ch zran�n�ch nebo 
                                            �eny, kter� cht�j� zefektivnit sv� sna�en� p�i tvarov�n� postavy.
                                        </div>
                                        <div class="showtext" align="right">
                                            <button type="button" class="viewpart" style="width: 67px; height: 20px; font-size: xx-small; text-align: right; ">Zobrazit</button>
                                        </div>
                                        <div class="textclanku"><h1 class="nadpish2">
                                                Jak Compex funguje</h1>
                                            Compex je zalo�en na �ty�ech p�rech elektrod, kter� se nalep� na stimulovan� svaly. Abychom 
                                            zv��ili ��inky elektrostimulace, m��eme vyu��t ukazatel motorick�ho bodu, kter� n�m pom��e 
                                            p�esn� nal�zt spr�vnou pozici elektrod. Pokud vlastn�te p��stroj s MI senzorem (muscle 
                                            intelligence senzor), dojde v prvn� f�zi elektrostimula�n�ho programu k oskenov�n� 
                                            stimulovan�ho svalu. Na z�klad� tohoto m��en� zobraz� Compex nap��klad vhodn� rozmez� 
                                            intenzit, nebo dal�� parametry svalu podle spu�t�n�ho programu. MI senzor nab�z� funkce 
                                            MI-SCAN, MI-RANGE, MI-TENS a MI-ACTION. Elektrick� impulsy stahuj� a uvol�uj� stimulovan� 
                                            sval v p�esn� definovan�ch intervalech a intenzit�, kterou si sami m��ete regulovat. V�e 
                                            op�t z�vis� na spu�t�n�m programu a stimulovan�m svalu. Ka�d� program m� sv� doporu�en� 
                                            pozice elektrod a svou stanovenou d�lku. Jakmile skon��, p��stroj ozn�m� tuto skute�nost 
                                            zvukov�m sign�lem.
                                            <h1 class="nadpish2">
                                                Compex jako regenera�n� pom�cka ve sportu</h1>
                                            Pro v�t�inu sportovc� m� Compex nejv�t�� p��nos p�i podpo�e regenerace a uvoln�n� namo�en�ch 
                                            sval�. U cyklist� se jedn� p�edev��m o stehenn� svaly, l�tkov� sval, h���ov� sval a z�dov� 
                                            svaly. V�echny tyto svaly lze stimulovat p��strojem Compex, co� napom�h� jejich uvoln�n� 
                                            a rychlej�� regeneraci, pop��pad� �lev� od bolesti. P��stroj obsahuje n�kolik program� 
                                            pro regeneraci. Ten nejpou��van�j�� je bezesporu program aktivn� regenerace, kter� s�m 
                                            nejv�ce vyu��v�m. Pracuje na principu prot�ep�n� sval�, kdy se frekvence stah� postupn� 
                                            sni�uje a z�rove� se zvy�uje intenzita impuls�. Tento program trv� asi 24 minut a po 
                                            ukon�en� je vhodn� prov�st je�t� pro zv��en� jeho efektu protahovac� cvi�en�.
                                            <h1 class="nadpish2">
                                                Compex a jeho tr�ninkov� programy</h1>
                                            Compex lze vyu��t i jako dopln�k k tr�ninku. Nab�z� programy jak na zlep�en� sily, tak na 
                                            zv��en� vytrvalosti. U t�chto program� se doporu�uje zv��it intenzitu impulz� na maxim�ln� 
                                            snesitelnou �rove�, aby bylo zapojeno co mo�n� nejv�ce svalov�ch vl�ken a tr�nink byl tak 
                                            maxim�ln� efektivn�. Posilovac� tr�ninky vyu��vaj� ve velk� m��e hlavn� hendikepovan� 
                                            sportovci, nebo lid� po zran�n�, kte�� pot�ebuj� pos�lit svaly, kter� nejsou schopni 
                                            zat�it p�irozen�m pohybem a je u nich nebezpe�� atrofie.
                                            <h1 class="nadpish2">
                                                Osobn� zku�enosti</h1>
                                            Sv� zku�enosti jsem z�skal s modelem Compex Performance, kter� je ur�en� p�ev�n� pro 
                                            sportovce a cyklisty. Kdy� jsem za�al Compex vyu��vat, m�l jsem m�rn� obavy, jak�m 
                                            zp�sobem budu sn�et elektrick� impulsy. Mus�m p�iznat, �e mi to zprvu nebylo moc 
                                            p��jemn� a proto jsem si rad�ji nastavoval ni��� hodnoty intenzity impuls� a to na 
                                            spodn� hranici rozmez� stanoven�ho MI senzorem. Postupn� jsem si ale zvykal a nyn� 
                                            nem�m probl�m se pohybovat uprost�ed stanoven�ho p�sma. <br />
                                            P�i prvn�ch procedur�ch jsem si poctiv� hledal pozice elektrod pomoc� ukazatele motorick�ho 
                                            bodu, co� docela prodlu�ovalo cel� pr�b�h mas�e. Po n�kolika zapojen�ch v�ak �lov�k zjist�, 
                                            kam elektrody nalepit a to i v p��pad� r�zn�ch svalov�ch skupin, co� velmi urychluje pr�b�h 
                                            p��pravy na mas�. Compex pou��v�m p�ev�n� na mas� stehenn�ch sval�, l�tkov�ch sval� a 
                                            n�kdy i h��d�. Nejl�pe reaguj� stehenn� svaly a na jejich stimulaci sta�� nejmen�� 
                                            intenzita impuls�. Nejh��e mi reaguj� l�tkov� svaly, co� je dle m�ho m�n�n� zp�sobeno t�m, 
                                            �e mi l�tka �asto nat�kaj�. Mo�n� by se hodil i jin� program, kter� ov�em model 
                                            Performance neobsahuje.
                                            <h1 class="nadpish2">
                                                Jak� model vybrat</h1>
                                            Cenov� politika v�robce je takov�, �e vybavil sv� modely r�zn�mi programy dle zam��en� 
                                            p��stroje a pokud chcete vyu��vat i programy ostatn�ch p��stroj�, je nejv�hodn�j�� n�kup 
                                            modelu Copmpex Wireless, kter� krom toho, �e umo��uje nahr�n� jak�hokoli elektrostimula�n�ho 
                                            programu ze v�ech dostupn�ch model�, m� i spoustu dal��ch vymo�enost�, v�etn� bezdr�tov� 
                                            komunikace s ovl�dac� jednotkou, nebo MI senzoru na v�ech elektrod�ch. Z t�chto d�vod� 
                                            bych doporu�il p�i n�kupu zv�it, zda Compex bude vyu��vat v�ce lid� (nap��klad cel� rodina), 
                                            nebo bude vyu��v�n pouze k jednomu ��elu a na z�klad� toho vybrat odpov�daj�c� model.
                                            <h1 class="nadpish2">
                                                Z�v�rem</h1>
                                            Compex se mi za dobu u��v�n� velmi osv�d�il a pom�h� mi hlavn� v situac�ch, kdy nen� mo�nost 
                                            vyu��t klasick� mas�e. Ale i p�i mo�nosti mas�e ho beru jako v�born� dopln�k. Pokud si 
                                            p�iprav�m p�ed mas�� svaly za pomoc� Compexu, je pak klasick� mas� o mnoho ��inn�j��. 
                                            Velmi dobr� v�sledky jsem pozoroval p�i jarn�m soust�ed�n�, kdy mi mas�r potvrdil, �e moje 
                                            svaly jsou v o mnoho lep��m stavu, ne� kdy� jsem Compex nepou��val. Lep�� a rychlej�� 
                                            regenerace znamen� mo�nost v�ce tr�novat a t�m doc�lit i vy��� v�konnosti. C�t�m, �e mi v 
                                            tom Compex m��e pomoci.
                                        </div>
                                        <div class="hidetext" align="right">
                                            <button type="button" class="hidepart" style="width: 53px; height: 20px; font-size: xx-small; text-align: right; ">Skr�t</button>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div id="clanek11" class="rozbalovaciclanek">
                                        <div class="infoclanek">
                                            Autor: Rostislav Krotk�<br />
                                            Vyd�no: 11.3.2012
                                        </div>
                                        <div class="uvodclanku">
                                            <h1 class="nadpish1">
                                                Intenzivn� ��st objemov�ho p��pravn�ho obdob�</h1>
                                            Pokud m�te absolvov�n blog z�kladn� vytrvalosti, m��ete p�ej�t na ��st p��pravy, ve kter� 
                                            za�nete za�azovat intenzity. Vzhledem k tomu, �e se po��d nach�z�me v p��pravn�m obdob�, 
                                            je tr�nink st�le objemov�ho charakteru. O to n�ro�n�j�� je za�azen� intenzit tak, aby 
                                            nedo�lo k p�etr�nov�n� a intenzivn� tr�nink m�l pro n�s pozitivn� efekt. Z tohoto d�vodu 
                                            nemus� tento tr�nink tvo�it st�ejn� ��st tr�ninkov� jednotky. Ta by m�la b�t st�le 
                                            zalo�ena na vytrvalosti a intenzity by m�ly b�t vlo�eny s p�im��enou d�lkou trv�n� a 
                                            spr�vn�m na�asov�n�m. V�dy z�le�� na tr�novanosti ka�d�ho jedince.
                                        </div>
                                        <div class="showtext" align="right">
                                            <button type="button" class="viewpart" style="width: 67px; height: 20px; font-size: xx-small; text-align: right; ">Zobrazit</button>
                                        </div>
                                        <div class="textclanku"><h1 class="nadpish2">
                                                Co vn�mat jako intenzitu</h1>
                                            Intenzita v objemov� p��prav� je ka�d� ��st tr�ninkov� jednotky, kdy se pohybujeme v 
                                            oblasti nad aerobn�m prahem. Aerobn� pr�h je stav organismu, kdy t�lo za��n� p�ech�zet 
                                            z tukov�ho metabolismu na cukry. ��m tr�novan�j�� sportovec, t�m bl�e je tento pr�h 
                                            k prahu anaerobn�mu. 
                                            <h1 class="nadpish2">
                                                Kdy za�adit intenzity</h1>
                                            Abychom dos�hli maxim�ln�ho tr�ninkov�ho efektu, je nutn� za�azovat intenzity v prvn�ch 
                                            tr�ninc�ch tr�ninkov�ho cyklu, kdy je t�lo je�t� relativn� odpo�at�. Posledn� tr�ninky 
                                            v cyklu ji� absolvujeme pouze ve vytrvalostn�m re�imu. V r�mci tr�ninkov� jednotky 
                                            za�azujeme intenzity po d�kladn�m rozjet� v prvn� ��sti tr�ninku. Zvl�t� v objemov� 
                                            p��prav� m��e b�t rozjet� del��, proto�e t�lu trv� mnohem d�le, ne� se pln� adaptuje 
                                            na z�t�. Po�et a d�lka intenzit jsou z�visl� na tr�novanosti ka�d�ho jedince.
                                            <h1 class="nadpish2">
                                                Jak� intenzity za�adit</h1>
                                            V p��pravn�m obdob� m��eme za�adit n�kolik typ� intenzit, kter� jsou vhodn� kombinovat 
                                            s vytrvalostn�m tr�ninkem. V prvn� �ad� je to silov� tr�nink n�zkou, nebo st�edn� 
                                            frekvenc� �lap�n�. Tento tr�nink je velmi n�ro�n� a je vhodn� jej za�adit ihned po 
                                            d�kladn�m rozjet� v prvn� ��sti tr�ninkov� jednotky a b�t p�ed n�m co nejl�pe odpo�at�. 
                                            Dal��m vhodn�m tr�ninkem v p��pravn�m obdob� je tr�nink motoriky �lap�n�. Je to j�zda 
                                            vysokou frekvenc� �lap�n� kolem 110 ot/min trvaj�c� 1h - 2h. Tento tr�nink je vhodn� 
                                            za�adit nejl�pe na konec tr�ninkov� jednotky. Po n�m n�sleduje pouze vyjet�. Zvl�t� 
                                            �vodn� tr�ninky jsou velmi n�ro�n� a je pot�eba jej za�adit op�t mezi prvn� v 
                                            tr�ninkov�m cyklu.  Mezi intenzity v objemov� p��prav� lze za�adit tak� �seky na 
                                            �pici ve skupin�, kter� se odehr�vaj� mezi aerobn�m a anaerobn�m prahem. Dal�� 
                                            d�le�itou intenzitou jsou spurty na konci ka�d�ho tr�ninku, kter� maj� i kompenza�n� 
                                            efekt. C�len� tr�nink na �rovni anaerobn�ho prahu bych v t�to f�zi p��pravy zat�m 
                                            nedoporu�oval a rad�ji jej za�adil a� po d�kladn�j��m odpo�inku v obdob� t�sn� p�ed 
                                            prvn�mi z�vody.
                                            <h1 class="nadpish2">
                                                Jak�m zp�sobem kombinovat intenzity</h1>
                                            Ide�ln�m z�kladem tr�ninku v tomto obdob� je tr�nink ve skupin� s intenzitami na �pici, 
                                            nebo tr�nink v kopcovit�m ter�nu se st�edn� dlouh�mi kopci. Oba typy tr�ninku jsou 
                                            intervalov�ho charakteru s �seky lehce nad hranic� aerobn�ho prahu. K ob�ma typ�m 
                                            tr�nink� lze v prvn�ch jednotk�ch ka�d�ho tr�ninkov�ho cyklu p�idat silov� tr�nink a 
                                            v�dy na z�v�r spurty. Tr�nink motoriky �lap�n� je vhodn� tr�novat individu�ln�, nebo 
                                            v mal� skupince a je vhodn� si naj�t rovinat� profil. Kombinovat lze s leh��m z�kladn�m 
                                            tr�ninkem a je vhodn� jej absolvovat jako prvn� v tr�ninkov�m cyklu. V r�mci cel� 
                                            t��t�denn� intenzivn� objemov� ��sti nejprve postupn� intenzity p�id�v�me a v z�v�ru 
                                            p�ech�z�me zp�t do vytrvalosti.
                                            <h1 class="nadpish2">
                                                Z�v�rem</h1>
                                            Intenzivn� ��st objemov� p��pravy na kole je nejn�ro�n�j��m obdob�m cel� p��pravy a 
                                            je nutn� ji v�novat n�le�itou pozornost, nepodcenit regeneraci, poctiv� prov�d�t 
                                            protahovac� cvi�en�, vyu��t mas�� a soust�edit se i na kvalitn� stravu a pop��pad� 
                                            vyu��t i vitaminov�ch a potravinov�ch dopl�k�. Jen tak z n� vyt��te maximum.
                                        </div>
                                        <div class="hidetext" align="right">
                                            <button type="button" class="hidepart" style="width: 53px; height: 20px; font-size: xx-small; text-align: right; ">Skr�t</button>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div id="clanek10" class="rozbalovaciclanek">
                                        <div class="infoclanek">
                                            Autor: Rostislav Krotk�<br />
                                            Vyd�no: 25.2.2012
                                        </div>
                                        <div class="uvodclanku">
                                            <h1 class="nadpish1">
                                                Wattmetr v p��pravn�m obdob�  - vytrvalost</h1>
                                            Proto�e u� 5 let pou��v�m wattmetr PowerTap jako nepostradatelnou tr�ninkovou pom�cku, 
                                            cht�l bych v n�kter�ch �l�nc�ch uk�zat, jak jej nejl�pe vyu��t a popsat moje zku�enosti 
                                            a re�ln� vyu�it� v r�zn�ch typech tr�nink�. I v p��pravn�m obdob� p�ed sez�nou lze wattmetr 
                                            s v�hodou vyu��vat a to nejen ve speci�ln�ch tr�ninkov�ch jednotk�ch. V dal�� ��st� se v�m 
                                            pokus�m vysv�tlit jak.
                                        </div>
                                        <div class="showtext" align="right">
                                            <button type="button" class="viewpart" style="width: 67px; height: 20px; font-size: xx-small; text-align: right; ">Zobrazit</button>
                                        </div>
                                        <div class="textclanku"><h1 class="nadpish2">
                                                Nepodce�ujte v�znam tepov� frekvence</h1>
                                            Na �vod bych cht�l p�ipomenout jednu d�le�itou informaci, watty ud�vaj� okam�itou hodnotu 
                                            va�eho vynalo�en�ho v�konu, ale tepov� frekvence je odezvou na aktu�ln� stav organismu, 
                                            i kdy� m� ur�it� zpo�d�n�. P�i vytrvalostn�m v�konu nen� toto zpo�d�n� p��li� podstatn� a 
                                            stav organismu je p�i tomto dlouhodob�m zat�en� o mnoho d�le�it�j�� ne� okam�it� v�kon. 
                                            ��dit se proto pouze hodnotou, kterou ud�v� v� wattmetr, nen� p��li� vhodn�. Pro� ale v 
                                            tom p��pad� m��it watty? Odpov�� je jednoduch�, abyste um�li ��dit kvalitu a d�lku tr�ninku.
                                            <h1 class="nadpish2">
                                                Vytrvalostn� tr�nink s wattmetrem</h1>
                                            V�ichni v�me, �e je d�le�it� za��nat s krat��mi vytrvalostn�mi tr�ninky a postupn� je 
                                            prodlu�ovat, aby se t�lo postupn� adaptovalo na vytrvalostn� z�t�. M�lokdo ov�em v�, 
                                            jak dlouh� tr�nink je pro n�j ide�ln�. Pomoci n�m m��e pr�v� m��en� v�konu a tepov� 
                                            frekvence. U tr�novan�ho sportovce m� jeho v�kon n�sleduj�c� pr�b�h, v prvn� f�zi se 
                                            t�lo adaptuje, to znamen�, �e kles� tepov� frekvence a stoup� v�kon, v druh� f�z� se 
                                            tyto dv� veli�iny stabilizuj� a v posledn� f�zi za��n� v�kon klesat, p�esto�e tepov� 
                                            frekvence se st�le dr�� na vy��� hodnot�. Pokud tr�nink ve vhodn� chv�li ukon��me, 
                                            nedojde k p�etr�nov�n�, ani nedostate�n�mu zat�en�. Wattmetr je k tomu vynikaj�c�m 
                                            pomocn�kem, m��ete nav�c sledovat v� postup v pr�b�hu tr�ninkov�ho cyklu a n�sledn� 
                                            d�lku a intenzitu tr�ninku vhodn� upravovat. Efektivita va�eho tr�ninku se t�m m��e 
                                            v�razn� zv��it. Zku�en� sportovci mohou intenzitu a d�lku tr�ninku v mnoha p��padech 
                                            odhadnout, ale ti m�n� zku�en� v�t�inou nikoliv.
                                            <h1 class="nadpish2">
                                                Vytrvalostn� tr�nink ve skupin�</h1>
                                            Tento tr�nink je praktikov�n p�ev�n� na spole�n�ch t�mov�ch soust�ed�n�ch. T�lo si na 
                                            �pici zvyk� na vy��� intenzity, p�esto jsou tr�ninky velmi dlouh�. P�ed t�mto typem 
                                            tr�nink� je vhodn� m�t najet� ji� n�jak� objem. P�i skupinov�m vytrvalostn�m tr�ninku 
                                            m��ete wattmetr tak� s v�hodou vyu��t. Pomoc� v�konu a tepov� frekvence, m��ete ��dit 
                                            optim�ln� intenzitu, d�lku a frekvenci na �pici. Pokud se v�m poda�� optim�ln� skloubit 
                                            tyto t�i veli�iny, budete z tohoto tr�ninku v�razn� profitovat v prvn�ch jarn�ch z�vodech.
                                            Nezapom�nejte, �e rychlost skupiny by m�la b�t takov�, abyste se i v h�ku pohybovali v 
                                            aerobn�m p�smu, jinak j�zda postr�d� vytrvalostn� tr�ninkov� efekt.
                                            <h1 class="nadpish2">
                                                Watty a informace o celkov�m zat�en� organismu</h1>
                                            Dal��m p��nosem wattmetru je v�stup v podob� re�ln�ho zat�en� organismu, takzvan�ho 
                                            stress faktoru. Tento �daj v�m vypo��t� speci�ln� software dod�van� s wattmetrem, nebo 
                                            jej p��mo na displeji zobrazuj� n�kter� typy cyklistick�ch computer�. Zat�en� organismu 
                                            nen� p��mo �m�rn� pr�m�rn�mu wattov�mu v�konu, ani pr�m�rn� tepov� frekvenci. Velmi 
                                            z�vis� na zm�n�ch intenzity j�zdy. D�ky hodnot� stress faktoru m��ete posoudit skute�nou 
                                            n�ro�nost tr�ninku a p�izp�sobit pak tr�nink n�sleduj�c�.
                                            <h1 class="nadpish2">
                                                Wattmetr jako zp�tn� odezva</h1>
                                            Pokud dob�e zn�te sv� hodnoty v�konu za r�zn�ch podm�nek, dok�ete velice dob�e posoudit 
                                            aktu�ln� stav va�eho organismu a ne se jen domn�vat, jak na tom jste. P�edpokl�d� to 
                                            ov�em dlouhodob�j�� a intenzivn� vyu��v�n� wattmetru. P�i p��le�itostn�m pou��v�n� si 
                                            jen t�ko vytvo��te objektivn� zhodnocen�, a proto doporu�uji pou��vat wattmetr i p�i 
                                            z�vodech.
                                            <h1 class="nadpish2">
                                                Z�v�rem</h1>
                                            Pro za��naj�c� u�ivatele wattmetru je p��pravn� obdob� ide�ln� dobou k nasb�r�n� z�kladn�ch 
                                            informac� o chov�n� sv�ho organismu a reakc� na r�zn� podn�ty zp�soben� r�zn�m typem z�t�e, 
                                            nap��klad si m��ete otestovat ide�ln� frekvenci �lap�n� v r�zn�ch situac�ch. Tyto informace 
                                            pak lze s v�hodou vyu��t i v z�vodech. V�ce o r�zn�ch typech tr�ninku a vyu�it� wattmetru 
                                            se pokus�m napsat v n�kter�m z dal��ch �l�nk�.
                                        </div>
                                        <div class="hidetext" align="right">
                                            <button type="button" class="hidepart" style="width: 53px; height: 20px; font-size: xx-small; text-align: right; ">Skr�t</button>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div id="clanek9" class="rozbalovaciclanek">
                                        <div class="infoclanek">
                                            Autor: Martin Hunal<br />
                                            Vyd�no: 20.2.2012
                                        </div>
                                        <div class="uvodclanku">
                                            <h1 class="nadpish1">
                                                Kysl�kov� stan v tr�ninkov� p��prav�</h1>
                                            V zimn� p��prav� na sez�nu jsem se rozhodl vyu��t kysl�kov� stan.  Pro ty, kter� zaj�m� 
                                            tato metoda, jen� pom�h� posunout hranice v�konnosti zase o n�co v��e, jsem se pokusil 
                                            spolu s Ros�ou Krotk�m napsat n�kolik m�ch prvn�ch zku�enost�.
                                        </div>
                                        <div class="showtext" align="right">
                                            <button type="button" class="viewpart" style="width: 67px; height: 20px; font-size: xx-small; text-align: right; ">Zobrazit</button>
                                        </div>
                                        <div class="textclanku"><h1 class="nadpish2">
                                                P�edchoz� zku�enosti</h1>
                                            Ji� v minul�m roce jsem m�l p��le�itost vyu��t podobnou metodu, kter� je zalo�en� na 
                                            hypoxii. Ozna�uje se zkratkou IHT (Intermittent Hypoxia Training) a funguje na principu 
                                            st��dav�ho d�ch�n� vysokohorsk�ho vzduchu. Moje zku�enosti s touto metodou byly velmi 
                                            pozitivn�, podle m�ho n�zoru mi pomohla hlavn� v n�sleduj�c�ch z�vodech k lep��m v�sledk�m. 
                                            Druh� polovina sez�ny u� byla trochu hor��, a proto jsem se rozhodl letos vyzkou�et i dal�� 
                                            zn�mou metodu, kysl�kov� stan.
                                            <h1 class="nadpish2">
                                                Popis</h1>
                                            Kysl�kov� stan, jen� simuluje vysokohorsk� prost�ed�, vyu�ila v kari��e �ada sportovc�. 
                                            Nejv�ce tuto metodu proslavila Kate�ina Neumannov� p�i p��prav� na olympi�du.  I z tohoto 
                                            d�vodu jsem se rozhodl vyzkou�et jej� ��inky na sob�. Zap�j�il jsem si kysl�kov� stan 
                                            Hypoxico. Jak je z n�zvu patrn�, funguje kysl�kov� stan na principu sn�en�ho obsahu 
                                            kysl�ku, tzv. hypoxie. Hlavn�m p��slu�enstv�m stanu je gener�tor, kter� nas�v� okoln� 
                                            vzduch a upravuje v n�m pr�v� koncentraci kysl�ku. P�es hadici potom p�iv�d� upraven� 
                                            vzduch do stanu. Gener�tor dok�e simulovat nadmo�skou v��ku od 600 m.n.m. a� do 4000 
                                            m.n.m. Stan je vyroben z pr�hledn�ho materi�lu, tak�e m��ete bez probl�m� komunikovat s 
                                            okol�m. Stan nen� absolutn� ut�sn�n, gener�tor upraven� vzduch pouze p�iv�d� a p�ebyte�n� 
                                            se dost�v� do okol� s�ovinou ve vrchn� ��sti stanu. Gener�tor je ov�em docela hlu�n�, 
                                            tak�e je vhodn� jej um�stit do jin� m�stnosti. Ve stanu, kter� jsem si zap�j�il, se pohodln� 
                                            vysp� dva lid�. V nab�dce v�ak jsou i stany men��, nebo naopak v�t��.
                                            <h1 class="nadpish2">
                                                Adaptace</h1>
                                            Adaptace organismu prob�h� postupn�m zvy�ov�n�m nadmo�sk� v��ky. J� jsem za��nal na 1400 
                                            m.n.m. Zprvu jsem ka�dou noc zvy�oval nadmo�skou v��ku cca o 200 metr�. Nyn� ji� zvy�uji po 
                                            v�ce dnech, a to podle pocitu ze sp�nku. Zat�m mi span� ve stanu probl�m ned�l�, ale p�i 
                                            vy���ch nadmo�sk�ch v��k�ch u� by kvalita sp�nku mohla b�t ovlivn�n�, a proto je pot�eba 
                                            zvy�ovat opatrn� a adaptaci neusp�chat.
                                            <h1 class="nadpish2">
                                                Hypoxie</h1>
                                            D�ky hypoxii doch�z� v t�le ke zv��en� tvorb� hemoglobinu a �erven�ch krvinek, d�le pak ke 
                                            zm�n�m bun��n�ch funkc�, sn�en� klidov�ho krevn�ho tlaku, srde�n� tepov� frekvence a u 
                                            astmatik� by m�lo doch�zet i ke zlep�en� astmatick�ch pot��. J� je v minulosti m�l, tak�e 
                                            v���m, �e bude m�t na m� stan i v tomto ohledu pozitivn� vliv. Stan zat�m pou��v�m t�i t�dny 
                                            a m�m ho pronajat� na m�s�c. V pr�b�hu sez�ny si pl�nuji stan pronajmout je�t� jednou, ale 
                                            u� na krat�� dobu, proto�e adaptace na nadmo�skou v��ku bude pro mne snadn�j��. D�le�it� 
                                            budou v�sledky krevn�ch test� a jejich porovn�n� p�ed a po pou�it� kysl�kov�ho stanu. 
                                            Krvetvorbu je tak� vhodn� podpo�it zv��en�m p��jmem �eleza, vitam�nu B12 a kyseliny listov�. 
                                            Vzhledem k tomu, �e vznik �erven� krvinky trv� zhruba sedm dn�, je vhodn� testy prov�st 
                                            minim�ln� po t�dnu po ukon�en� pou�it� kysl�kov�ho stanu. �ivotnost �erven�ch krvinek je 
                                            100-120 dn�, to je i d�vod pro opakovan� pou�it� kysl�kov�ho stanu.
                                            <h1 class="nadpish2">
                                                Vliv na tr�nink</h1>
                                            Co se t�k� tr�nink�, zat�m se c�t�m norm�ln� a nem�m pocit, �e bych byl v�ce unaven� ne� 
                                            jindy. Zvl�d�m absolvovat stejn� d�vky, jako kdy� jsem stan nepou��val. To pokl�d�m za 
                                            velk� pozitivum t�to metody.
                                            <h1 class="nadpish2">
                                                Zhodnocen�</h1>
                                            Po prvn�ch z�vodech, kter� m� �ekaj� asi za m�s�c po ukon�en� pou��v�n� kysl�kov�ho stanu, 
                                            se pokus�m shrnout dal�� moje pocity z ��inku na m�j organismus a o�ek�van� v�konnostn� 
                                            r�st. V���m, �e budou v�ce ne� pozitivn�. Tak� m� zaj�m� srovn�n� s v��e zmi�ovanou metodou 
                                            IHT. V dubnu se tedy m��ete t�it na m� zhodnocen� a porovn�n� obou metod.
                                        </div>
                                        <div class="hidetext" align="right">
                                            <button type="button" class="hidepart" style="width: 53px; height: 20px; font-size: xx-small; text-align: right; ">Skr�t</button>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div id="clanek8" class="rozbalovaciclanek">
                                        <div class="infoclanek">
                                            Autor: Rostislav Krotk�<br />
                                            Vyd�no: 2.2.2012
                                        </div>
                                        <div class="uvodclanku">
                                            <h1 class="nadpish1">
                                                Speci�ln� p��prava p�ed sez�nou</h1>
                                            V tomto �l�nku nap�u n�co o speci�ln� p��prav� na z�vodn� obdob�. V t�to ��sti p��pravy 
                                            je ji� vhodn� se p�ev�n� orientovat na kolo. S touto p��pravou je vhodn� za��t asi 2 m�s�ce 
                                            p�ed prvn�mi pl�novan�mi z�vody. Pro ty, co za��naj� z�vodit na za��tku dubna, je nyn� 
                                            nejvy��� �as. Jak by m�la p��prava vypadat, si pov�me podrobn�ji.
                                        </div>
                                        <div class="showtext" align="right">
                                            <button type="button" class="viewpart" style="width: 67px; height: 20px; font-size: xx-small; text-align: right; ">Zobrazit</button>
                                        </div>
                                        <div class="textclanku">
                                            <h1 class="nadpish2">
                                                Kdy za��t</h1>
                                            Jak u� jsem nazna�il, je vhodn� za��t ide�ln� 9 t�dn� (v p��pad� 4 t�denn�ho makrocyklu) 
                                            p�ed prvn�mi pl�novan�mi z�vody. Je to z toho d�vodu, abychom byli schopni absolvovat 2 
                                            z�kladn� typy tr�ninku, speci�ln� (cyklistickou) vytrvalostn� ��st a n�sledn� za��t 
                                            rozv�jet intenzity.
                                            <h1 class="nadpish2">
                                                Vytrvalost� ��st</h1>
                                            Prvn� makrocyklus speci�ln� p��pravy by m�l b�t zam��en p�ev�n� na objemov� tr�nink. 
                                            Formou zvy�uj�c� se z�t�e ve 3-5 denn�ch cyklech bychom m�li v tomto obdob� p�ipravit 
                                            t�lo na vytrvalostn� z�t�. Speci�ln� tr�ninky by se m�ly odehr�vat p�ev�n� v aerobn�m 
                                            p�smu. Je to velmi d�le�it� pro dal�� p��pravu, proto�e si t�mto zp�sobem budujeme z�klady 
                                            pro budouc� obdob�. Pokud toto obdob� vynech�me nebo v�razn� zkr�t�me, v�t�inou se to projev� 
                                            brzkou jarn� formou a n�sledn�m propadem v�konnosti.<br />
                                            Nebylo by dobr� ani v t�to dob� zapom�nat na posilov�n�, doporu�uji v�ak ji� vyu��vat 
                                            posilov�n� na kole. Za��n�me postupn� na 5min � 15min kopci, frekvenc� 60-70 ot/min a tepov� 
                                            frekvenci 10-15 tep� pod anaerobn�m prahem, pop��pad� odpov�daj�c�m wattov�m v�konem. Ze 
                                            za��tku sta�� za�adit tento tr�nink jednou t�dn�.<br />
                                            Dal��m d�le�it�m tr�ninkov�m prvkem jsou spurty. Aplikujeme je na konci ka�d�ho tr�ninku. 
                                            Sta�� 3 � 5 spurt� na maximum. Spurty maj� nejen rychlostn� p��nos, aby si t�lo zvyklo na 
                                            konci j�zdy mobilizovat posledn� s�ly, ale i jako aktivn� regenerace po dlouh� relativn� 
                                            jednotv�rn� j�zd�.<br />
                                            V cel� vytrvalostn� ��sti je mo�n� kombinovat jak individu�ln�, tak skupinovou j�zdu. Lep�� 
                                            jsou v�ak men�� skupiny, aby se organismus udr�oval neust�le v aerobn� oblasti.
                                            <h1 class="nadpish2">
                                                Intenzivn� ��st</h1>
                                            V posledn�m makrocyklu p�ed z�vodn�m obdob�m je nutn� p�ipravit t�lo na vysok� intenzity, 
                                            ve kter�ch se bude pohybovat v prvn�ch z�vodech. Pokud to neud�l�me, bude to pro n�j �ok a 
                                            ur�it� se to projev� i na v�sledku v z�vod�.<br />
                                            Intenzity za�azujeme postupn�. Za��n�me krat��mi na �rovni anaerobn�ho prahu, postupn� je 
                                            v dal��ch tr�ninc�ch prodlu�ujeme (tzv. intervalov� tr�nink). Sna��me se dr�et "z�vodn�" 
                                            frekvenci �lap�n� (95-100 ot/min).<br />
                                            V tr�ninc�ch d�le za�azujeme i kopce na vy���ch intenzit�ch.  St�le v�ak praktikujeme v��e 
                                            zmi�ovan� silov� tr�nink a spurty na konci tr�ninku. Celkov� objem tr�ninku se m��e oproti 
                                            vytrvalostn� ��sti m�rn� sn�it.
                                            <h1 class="nadpish2">
                                                Bezprost�edn� p��prava na prvn� z�vody</h1>
                                            Po t�to relativn� hodn� n�ro�n� intenzivn� ��sti a n�sledn�m kompenza�n�m t�dnu n�sleduje 
                                            posledn� p�edz�vodn� t�den, kdy by se m�ly objemy tr�ninku ji� sn�it a m�li bychom se 
                                            aktivn� rozjet p�ed nadch�zej�c�mi z�vody.
                                            <h1 class="nadpish2">
                                                Z�v�rem</h1>
                                            Je z�ejm�, �e tato z�v�re�n� p��prava vy�aduje v�ce �asu na tr�nink, ne� v jin�ch ��stech 
                                            sez�ny. Pokud budete tr�novat poctiv� a spr�vn�, vynalo�en� �as se v�m v�ak ur�it� vr�t� v 
                                            podob� dobr�ch v�sledk� po cel� rok. Je vhodn� tuto ��st sez�ny nepodcenit. Pokud je to 
                                            mo�n�, je lep�� absolvovat tyto 2 p��pravn� ��sti v klidu n�kde na jarn�m soust�ed�n�, kde 
                                            se tr�ninku m��ete pln� v�novat.
                                        </div>
                                        <div class="hidetext" align="right">
                                            <button type="button" class="hidepart" style="width: 53px; height: 20px; font-size: xx-small; text-align: right; ">Skr�t</button>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div id="clanek7" class="rozbalovaciclanek">
                                        <div class="infoclanek">
                                            Autor: Rostislav Krotk�<br />
                                            Vyd�no: 13.1.2012
                                        </div>
                                        <div class="uvodclanku">
                                            <h1 class="nadpish1">
                                                Jak na zimn� soust�ed�n�</h1>
                                            Leden b�v� pro cyklisty, kte�� za��naj� z�vodit a� v dubnu nejvhodn�j��m obdob�m
                                            vyrazit na hory na ly�e. Pro v�eobecnou vytrvalostn� p��pravu jsou nejvhodn�j��
                                            b�ky. V aerobn�m p�smu se na b�k�ch m��ete pohybovat dlouh� hodiny. P�i tomto
                                            tr�ninku zapoj�te cel� t�lo a zlep�ujete tak vytrvalostn�, aerobn� a silov� schopnosti
                                            organismu. Na zimn� soust�ed�n� na b�k�ch sta�� jeden t�den.
                                        </div>
                                        <div class="showtext" align="right">
                                            <button type="button" class="viewpart" style="width: 67px; height: 20px; font-size: xx-small; text-align: right; ">Zobrazit</button>
                                        </div>
                                        <div class="textclanku">
                                            <h1 class="nadpish2">
                                                Jak by m�la vypadat p��prava p�ed pl�novan�m soust�ed�n�m</h1>
                                            P�i pl�nov�n� t�denn�ho soust�ed�n� na hor�ch je dobr� si uv�domit n�kolik d�le�it�ch
                                            v�c�. Proto�e tr�nujete v cyklech, kter� maj� stup�uj�c� se tendenci, je dobr� za�adit
                                            soust�ed�n� ve druh� ��sti t��t�denn� tr�ninkov� ��sti makro cyklu (�tvrt� t�den
                                            je kompenza�n�). P�ed soust�ed�n�m je v�ak nutn� b�t relativn� odpo�at�, tak�e dva
                                            dny p�ed odjezdem je vhodn� za�adit pouze lehk� kompenza�n� tr�nink nebo regeneraci.
                                            Pokud je to mo�n�, je vhodn� m�t p�ed t�denn�m soust�ed�n�m za�azeno alespo� n�kolik
                                            tr�nink� na b�k�ch, aby se t�lo, alespo� ��ste�n� adaptovalo na specifickou z�t�.
                                            V opa�n�m p��pad� v�s bude u� po prvn�ch tr�ninc�ch bolet cel� t�lo. Pokud se budete
                                            ��dit t�mito radami, m��ete za��t soust�ed�n� bez obav.
                                            <h1 class="nadpish2">
                                                Pr�b�h soust�ed�n�</h1>
                                            Pokud vyjedete na cel� t�den, b�ek si u�ijete dosyta a nem� tedy cenu za��nat velk�mi
                                            d�vkami. Zvl�t� ti, co nem�li mo�nost si na b�k�ch p�ed soust�ed�n�m zatr�novat,
                                            by m�li d�vat pozor, aby to s prvn�mi tr�ninky nep�ehnali. Soust�ed�n� tedy za��n�me
                                            leh��mi a krat��mi v�jezdy a postupn� d�vky zvy�ujeme. Je vhodn� si d�t po t�ech
                                            dnech pauzu na regeneraci, zaj�t si do baz�nu, sauny, v��ivky, nebo na mas� a co
                                            nejv�ce zregenerovat. Po odpo�inkov�m dni, budete m�t zase chu� postavit se do stopy.
                                            Posledn� den je dobr� za�adit pouze leh�� tr�nink na �vyjet�. Pokud pl�nujete kombinovat
                                            b�ky a sjezdovky, je lep�� za�adit sjezd na dopoledne a odpoledne vyrazit na b�ky.
                                            Je to z toho d�vodu, �e sjezd je silov� z�t�, jej� tr�nink by m�l b�t za�azen
                                            v�dy jako prvn� a a� po t� tr�novat vytrvalost. Tr�ninkov� d�vky jsou z�visl� na
                                            v�ku a tr�novanosti ka�d�ho jedince a m�li by b�t tak velk�, abyste byli schopni
                                            cel� soust�ed�n� bez v�t��ch probl�m� absolvovat.
                                            <h1 class="nadpish2">
                                                Tr�nink po soust�ed�n�</h1>
                                            Po p��jezdu dom� si dal�� den ur�it� zajd�te na regenera�n� procedury. N�sleduj�c�
                                            dva dny za�a�te lehk� tr�nink a a� po t� regenera�n� t�den. Je lep��, kdy� t�lo
                                            p�ejde do odpo�inku postupn�, zvl�t� pak po v�t�� z�t�i.
                                            <h1 class="nadpish2">
                                                Z�v�rem</h1>
                                            Zimn� soust�ed�n� na b�k�ch je bezesporu vynikaj�c� p��pravou pro dal�� cyklistick�
                                            tr�nink, kter� by ji� m�l n�sledovat v �noru v dal��m tr�ninkov�m makro cyklu tak,
                                            abyste byli kvalitn� p�ipraveni na prvn� dubnov� starty. Pokud za��n�te z�vodit
                                            pozd�ji, nebo naopak d��ve, m��ete si i zimn� soust�ed�n� posunout na odpov�daj�c�
                                            term�n.
                                        </div>
                                        <div class="hidetext" align="right">
                                            <button type="button" class="hidepart" style="width: 53px; height: 20px; font-size: xx-small; text-align: right; ">Skr�t</button>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div id="clanek5" class="rozbalovaciclanek">
                                        <div class="infoclanek">
                                            Autor: Rostislav Krotk�<br />
                                            Vyd�no: 23.12.2011
                                        </div>
                                        <div class="uvodclanku">
                                            <h1 class="nadpish1">
                                                Tr�nink na v�lc�ch</h1>
                                            V�lce by nem�ly chyb�t ve v�bav� ��dn�ho cyklisty. Pro� si p�ednostn� vybrat v�lce
                                            jsem ji� psal v minul�m �l�nku. Nyn� si v �vodu pov�me, co je dobr� si p�ed tr�ninkem
                                            na v�lc�ch uv�domit. Abychom doc�lili lehk� a plynul� j�zdy, je d�le�it� m�t dob�e
                                            nahu�t�n� kola. V�lce je pot�eba se��dit tak, aby osa p�edn�ho kola byla kolm� na
                                            osu p�edn�ho v�lce. Je vhodn� m�t v�lce postaven� pobl� n�jak�ho op�rn�ho bodu,
                                            aby se v�m l�pe nastupovalo a sl�zalo.
                                        </div>
                                        <div class="showtext" align="right">
                                            <button type="button" class="viewpart" style="width: 67px; height: 20px; font-size: xx-small; text-align: right; ">Zobrazit</button>
                                        </div>
                                        <div class="textclanku">
                                            Nesm�te v�ak zapomenout, �e na trena��ru bychom m�li tr�novat v dob�e v�tran� m�stnosti,
                                            ve kter� by m�la b�t rad�ji ni��� teplota. V�dy jsou lep�� v�t�� prostory. I tak
                                            mus�te po��tat s t�m, �e se budete v�ce potit, a proto je pot�eba m�t p�ipraven�
                                            dostate�n� mno�stv� tekutin a pop��pad� i ru�n�k. Komu vyhovuje na ochlazov�n� ventil�tor,
                                            mo�n� nebude ru�n�k pot�ebovat. A nyn� ji� k samotn�mu tr�ninku.
                                            <h1 class="nadpish2">
                                                Rozjet�</h1>
                                            Ka�d� tr�nink, nejen na v�lc�ch, bychom m�li za��t rozjet�m. Rozjet� by m�lo b�t
                                            tak dlouh�, aby se organismus zah��l na provozn� teplotu a byl tak p�ipraven na
                                            vy��� z�t�. D�lka b�v� kolem 15-20min. Intenzita je ni���, pohybujeme se do aerobn�ho
                                            prahu. Po rozjet� je vhodn� sl�zt z kola a prov�st asi 5-10min prota�en�. Prota�en�
                                            (stre�ink) je toti� o mnoho ��inn�j��, pokud jsou svaly zah��t�. Po prota�en� je
                                            ji� t�lo p�ipraveno na hlavn� tr�ninkov� program.
                                            <h1 class="nadpish2">
                                                Hlavn� tr�ninkov� program</h1>
                                            Tato ��st je zalo�ena na principu intervalov�ho tr�ninku. Je �pln� zbyte�n� drtit
                                            na v�lc�ch dlouh� vytrvalostn� tr�nink, daleko vhodn�j�� a p��nosn�j�� jsou tr�ninky
                                            intervalov�. D�lka hlavn�ho programu se obvykle pohybuje mezi 0,5h � 1,5h. Pokud
                                            nem�me k dispozici br�d�n� v�lce, mus�me si vysta�it pouze s frekven�n�mi intervaly.<br />
                                            Intervaly je mo�n� ��dit podle tepov� frekvence, nebo podle wattmetru. Mus�me si
                                            v�ak uv�domit, �e se t�lo na trena�eru v�ce p�eh��v�, a t�m se zvy�uje i tepov�
                                            frekvence. Toto zv��en� m��e b�t u ka�d�ho jedince jin�. Hodn� z�le�� na termoregula�n�ch
                                            schopnostech organismu. Tr�ninkov� prahy je tedy vhodn� stanovit i za pou�it� wattmetru.
                                            P�esto nen� wattmetr k tr�ninku na v�lc�ch bezpodm�ne�n� nutn�. Odpor se toti� m�n�
                                            pouze rychlost� j�zdy a m��eme jej tedy korigovat jen za�azen�m p�evodem a frekvenc�
                                            �lap�n�. Pokud si p�ed ka�d�m tr�ninkem nahust�te kolo na stejn� tlak a pou��v�te-li
                                            stejn� pl�t� nebo galusky, lze v�kony v jednotliv�ch tr�ninkov�ch jednotk�ch bez
                                            probl�m� porovn�vat.<br />
                                            P�i ��zen� intervalov�ho tr�ninku je mo�n� pracovat s n�kolika parametry. M��ete
                                            zvy�ovat po�et interval�, m��ete zkracovat odpo�inkovou f�zi, prodlu�ovat d�lku
                                            interval�, nebo zvy�ovat intenzitu interval�. Tyto mo�nosti lze samoz�ejm� i r�zn�
                                            kombinovat. D�le�it� je zat�ovat organismus jen do t� m�ry, ne� jeho v�konost v
                                            r�mci tr�ninku za�ne klesat. Pozn�te to tak, �e u� nejste schopni udr�et po�adovan�
                                            v�kon ve stanoven�m rozsahu tepov� frekvence. U tr�novan�ho jedince se t�lo v prvn�ch
                                            intervalech zapracov�v� a postupn� se jeho v�konnost zvy�uje. Po n�kolika intervalech
                                            v�kon kulminuje a v dal��ch se ji� za��n� zhor�ovat. V t�to f�zi je nutn� tr�nink
                                            ukon�it. Velmi tedy z�le�� na druhu intervalov�ho tr�ninku. Ten je nutn� stanovit
                                            individu�ln� podle toho, jak dlouh� tr�nink m�te v pl�nu a jak� je va�e v�konnost.
                                            Pro prvn� intervalov� tr�ninky doporu�uji vyzkou�et toto:<br />
                                            <p>
                                                5min rozjet� po prota�en� 95-100ot<br />
                                                5min 15-20tep� pod ANP 110-115ot intenzita<br />
                                                5min 95-100ot kompenzace<br />
                                                5min 10-15tep� pod ANP 110-115ot intenzita<br />
                                                5min 95-100ot kompenzace<br />
                                                5min 5-10tep� pod ANP 110-115ot intenzita<br />
                                                5min 95-100ot kompenzace<br />
                                                5min 5-10tep� pod ANP 110-115ot intenzita<br />
                                                10min 95-100ot kompenzace</p>
                                            Pokud jste byli schopn� zopakovat posledn� intenzitu na stejn�, nebo vy��� �rovni
                                            m��ete si p�idat po 5min kompenzaci dal�� interval. Pokud ne, tr�nink ukon�ete 10min
                                            kompenzac� dle rozpisu. Vyhodnocen� je z�ejm� z p�edchoz�ho textu. Pro n�sleduj�c�
                                            tr�nink upravte d�lku a intenzitu (max. ANP) interval� tak, abyste mohli absolvovat
                                            tr�nink v po�adovan� d�lce.<br />
                                            M�te-li k dispozici br�d�n� v�lce, nab�z� se v�m dal�� mo�nosti. M��ete bu� st��dat
                                            frekven�n� intervaly se silov�mi, nebo jet pouze tr�nink se silov�mi intervaly (na
                                            v�lc�ch asi 70ot). Nezapome�te, �e silov� intervaly se jezd� na ni��� tepov� frekvenci
                                            (asi o 10 tep�) ne� intervaly frekven�n�.
                                            <h1 class="nadpish2">
                                                Vyjet�</h1>
                                            P�ed ukon�en�m tr�ninku je dobr� op�t sl�zt z kola, a prov�st asi 5-10min prota�en�.
                                            Pot� se je�t� asi 10min kompenza�n� vyjet. Po osprchov�n� prov�st je�t� jedno d�kladn�
                                            prota�en�, nejl�pe alespo� 20min.<br />
                                            <br />
                                            V p��t�m �l�nku v�m uk�u n�jak� protahovac� cviky, a to s kolem i bez kola.
                                        </div>
                                        <div class="hidetext" align="right">
                                            <button type="button" class="hidepart" style="width: 53px; height: 20px; font-size: xx-small; text-align: right; ">Skr�t</button>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div id="clanek4" class="rozbalovaciclanek">
                                        <div class="infoclanek">
                                            Autor: Rostislav Krotk�<br />
                                            Vyd�no: 14.12.2011
                                        </div>
                                        <div class="uvodclanku">
                                            <h1 class="nadpish1">
                                                Tr�nink na trena��ru, v�b�r vhodn�ho typu</h1>
                                            Trena��r je v�t�inou mezi cyklisty ta nejm�n� obl�ben� forma cyklistiky, v zimn�ch
                                            m�s�c�ch v�ak v�t�inou jedin� mo�n�. Jak si �zp��jemnit� tr�nink na trena��ru a
                                            p�itom kvalitn� odtr�novat a jak� trena��r vybrat? To jsou ot�zky, na kter� se v�m
                                            pokus�m dnes odpov�d�t.
                                        </div>
                                        <div class="showtext" align="right">
                                            <button type="button" class="viewpart" style="width: 67px; height: 20px; font-size: xx-small; text-align: right; ">Zobrazit</button>
                                        </div>
                                        <div class="textclanku">
                                            <h1 class="nadpish2">
                                                Jak� trena��r vybrat</h1>
                                            M�li bychom si v prvn� �ad� uv�domit, k jak�mu tr�ninku jej budeme p�ev�n� pou��vat
                                            a zda jej budeme cht�t ob�as n�kam vozit, p��padn� zda jej budeme pou��vat i v sez�n�
                                            a jak�m zp�sobem. V podstat� m�me na v�b�r mezi v�lci, klasick�m trena��rem a stacion�rn�m
                                            kolem. Nebudu zde rozeb�rat r�zn� modely, ale zam���m se pouze na tyto t�i kategorie.
                                            <h1 class="nadpish2">
                                                V�lce</h1>
                                            V�lce doporu�uji v�em mlad�m cyklist�m a v�em, kte�� pot�ebuj� zlep�it techniku
                                            �lap�n�. Jsou v�born� i na vyjet� po tr�ninku. Vid�m je jako nepostradatelnou pom�cku
                                            pro mlad� a za��naj�c� cyklisty pro nau�en� spr�vn� techniky �lap�n�. Proto�e jste
                                            p�i j�zd� na v�lc�ch nuceni dr�et rovnov�hu, jsou zapojeny i men�� svalov� skupiny
                                            a j�zda tak p�ipom�n� nejv�ce j�zdu po silnici. Na pevn�ch typech trena��r� jsou
                                            nohy fixov�ny a tr�nink nen� tak ��inn�. Ob�vat se jich opravdu nemus�te. Pokud
                                            nejste �pln� d�evo, jezdit se na nich �asem ur�it� nau��te. Jedinou nev�hodou je
                                            jen hor�� mo�nost silov�ho tr�ninku, snad s v�jimkou br�d�n�ch v�lc�, kde ov�em
                                            odpor nelze m�nit za j�zdy. P�enositelnost je v�t�inou dobr�, v�t�ina typ� se d�
                                            slo�it.
                                            <h1 class="nadpish2">
                                                Klasick� trena��r (ergometr)</h1>
                                            V�hodou ergometru je jeho stabilita a mo�nost jednodu�e a plynule m�nit odpor brzdou.
                                            Z tohoto d�vodu je vyu��v�n hlavn� pro intervalov� a silov� tr�nink, kdy si m��eme
                                            jednodu�e m�nit z�t� mezi �seky. Vyu��v�n je tak� �asto na rozj�d�n� p�ed �asovkou.
                                            V�hodou je i jeho dobr� p�enositelnost a skladnost. D�ky stabilit� m��ete p�i del��m
                                            tr�ninku nap��klad sledovat TV. Tr�nink na trena��ru je toti� psychicky n�ro�n�j��
                                            ne� j�zda v p��rod�, proto�e kolem v�s neub�h� krajina. Z tohoto d�vodu se rozhodli
                                            i n�kte�� v�robci p�idat t�mto trena��r�m mo�nost sledovat virtu�ln� trasu na TV
                                            nebo PC. Trena��r�m p�idali i dal�� programov� vychyt�vky, jako nap��klad programov�
                                            nastaven� tr�ninkov� trasy (automatick� zm�na odporu z�t�e dle virtu�ln�ho profilu
                                            trasy), nebo z�vody mezi majiteli stejn�ho vybaven�, nebo virtu�ln�mi z�vodn�ky.
                                            Trena��r tedy doporu�uji na del�� tr�ninky, silov� tr�ninky a rozj�d�n� p�ed z�vody,
                                            pop��pad� t�m star��m, kte�� si u� na v�lce netroufaj�. P�esto v�ak ne�ekejte, �e
                                            ergometrem nahrad�te cyklistick� tr�nink.
                                            <h1 class="nadpish2">
                                                Stacion�rn� nebo spinningov� kolo</h1>
                                            P�edchoz� dv� kategorie umo��ovaly tr�nink na kole, na kter�m jezd�te i na silnici.
                                            Stacion�rn� kolo je nahrazuje, a proto m� dle m�ho n�zoru pro opravdov�ho cyklistu
                                            jen omezen� mo�nosti. Jen na m�lo stacion�rn�ch kolech si m��ete ud�lat identick�
                                            posed jako na sv�m kole. Kdy� u� se v�m poda�� nastavit v��ku a pozici sedla a ��d�tek,
                                            m��ete narazit na d�lku klik, ���ku st�edu (m��ete m�t nap��klad nohy d�l od sebe),
                                            atp. Stacion�rn� kola maj� v oblib� hlavn� �eny, proto�e klasick� kolo jim v byt�
                                            vad� a stacion�rn� kolo pova�uj� za kus vybaven�. P�esto pokud se v�m poda�� se
                                            v��m t�m n�jak vypo��dat, d� se i na stacion�rn�m kole n�jak� ten tr�nink objet.
                                            Speci�ln�m p��padem stacion�rn�ho kola je kolo spinningov�, kter� je hojn� vyu��van�
                                            ve fitcentrech. Tr�ninky na spinningov�ch kolech jsou v�t�inou stav�n� pro pos�len�
                                            cel�ho t�la a nemaj� s cyklistick�m tr�ninkem mnoho spole�n�ho, p�esto bych je jako
                                            zpest�en� zimn�ch tr�nink� nezavrhoval. V�hodou spinningov�ch kol je hlavn� jejich
                                            setrva�n�k, kter� v�s nut� plynule �lapat a v neposledn� �ad� i tr�nink ve skupin�,
                                            kter� je mnohem p��jemn�j��.
                                            <h1 class="nadpish2">
                                                Z�v�rem</h1>
                                            Trena��rem nikdy nenahrad�te tr�nink na silnici. Trena��r v�m nab�dne pouze konstantn�
                                            odpor, ale v re�ln�ch podm�nk�ch je odpor v�dy velmi prom�nliv�, ovlivn�n� nerovnostmi,
                                            poryvy v�tru atp. Z tohoto d�vodu budete p�echod na silnici v�dy poci�ovat jako
                                            zm�nu, se kterou se t�lo mus� vyrovnat. Vyrovn� se s n� pouze a jenom tr�ninkem
                                            v t�chto podm�nk�ch. P�esto lze trena��r ��inn� vyu��t ke zlep�en� ob�hov�ho syst�mu,
                                            ke zlep�en� techniky �lap�n� a k pos�len� svalstva, pop��pad� �prav� t�lesn� v�hy.
                                            Speci�ln� pak k rozj�d�n�, nebo kompenza�n�mu vyjet�. Podle toho, k �emu bude trena��r
                                            nejv�ce vyu��v�n, byste se m�li i rozhodovat, kter� typ zakoupit. J� doporu�uji
                                            pro ka�d�ho, kdo to mysl� s cyklistikou v�n� po��dit si na prvn�m m�st� v�lce a
                                            a� po t� se dovybavit ergometrem, pop��pad� stacion�rn�m kolem. P��t� u� bude n�jak�
                                            konkr�tn� tr�nink.
                                        </div>
                                        <div class="hidetext" align="right">
                                            <button type="button" class="hidepart" style="width: 53px; height: 20px; font-size: xx-small; text-align: right; ">Skr�t</button>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div id="clanek3" class="rozbalovaciclanek">
                                        <div class="infoclanek">
                                            Autor: Rostislav Krotk�<br />
                                            Vyd�no: 4.12.2011
                                        </div>
                                        <div class="uvodclanku">
                                            <h1 class="nadpish1">
                                                P��klad tr�ninku v z�v�ru prvn�ho p��pravn�ho obdob�</h1>
                                            Prvn� p��pravn� obdob� by m�lo vyvrcholit p�ed v�noci, abychom m�li dostate�n� �as
                                            a prostor si mezi sv�tky d�kladn� odpo�inout p�ed st�ejn� objemovou zimn� p��pravou.
                                            Listopadov� tr�nink byl leh��, t�lo si zvykalo postupn� na tr�ninkovou z�t�. Prosincem
                                            toto obdob� postupn� ukon��me a v lednu za��n� druh� p��pravn� obdob�, ve kter�m
                                            u� budeme tvrd� systematicky tr�novat.
                                        </div>
                                        <div class="showtext" align="right">
                                            <button type="button" class="viewpart" style="width: 67px; height: 20px; font-size: xx-small; text-align: right; ">Zobrazit</button>
                                        </div>
                                        <div class="textclanku">
                                            <h1 class="nadpish2">
                                                Tr�nink v prosinci</h1>
                                            V prosinci tedy vyu�ijeme tr�ninkov�ch prost�edk�, o kter�ch jsem psal v �l�nku
                                            �Tr�nink v prvn�m p��pravn�m obdob�. Pro v�t�inu z n�s je ide�ln� t�denn� cyklus,
                                            a proto�e v�noce m�me letos v sobotu, pokus�m se to zohlednit i v navrhovan�m tr�ninkov�m
                                            pl�nu. Pl�n sestavuji pro ambici�zn�ho hobby cyklistu, kter� p�es t�den chod� do
                                            pr�ce a o v�kendu m� v�ce �asu.
                                            <h1 class="nadpish2">
                                                P��klad pl�nu</h1>
                                            <table>
                                                <tr>
                                                    <td>
                                                        �t
                                                    </td>
                                                    <td>
                                                        1.12.
                                                    </td>
                                                    <td>
                                                        - Regenerace (plav�n� + sauna, mas�, �)
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        P�
                                                    </td>
                                                    <td>
                                                        2.12.
                                                    </td>
                                                    <td>
                                                        - Posilovna (1h) + 30min v�lce
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
                                                        - Vytrvalost (2h � kolo nebo t�ra + 30min v�lce)
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
                                                        - Vytrvalost (2,5h � kolo nebo t�ra + 30min v�lce)
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
                                                        - Regenerace (plav�n�, sauna, mas�, �)
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        �t
                                                    </td>
                                                    <td>
                                                        6.12.
                                                    </td>
                                                    <td>
                                                        - Posilovna (1h) + 30min v�lce
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
                                                        - T�locvi�na (1h), B�h nebo Trena��r (ergometr, v�lce) (1h)
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        �t
                                                    </td>
                                                    <td>
                                                        8.12.
                                                    </td>
                                                    <td>
                                                        - Regenerace (plav�n�, sauna, mas�, �)
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        P�
                                                    </td>
                                                    <td>
                                                        9.12.
                                                    </td>
                                                    <td>
                                                        - Posilovna (1h) + 30min v�lce
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
                                                        - Vytrvalost (2,5h � kolo nebo t�ra + 30min v�lce)
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
                                                        - Vytrvalost (3h � kolo nebo t�ra + 30min v�lce)
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
                                                        - Regenerace (plav�n�, sauna, mas�, �)
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        �t
                                                    </td>
                                                    <td>
                                                        13.12.
                                                    </td>
                                                    <td>
                                                        - Posilovna (1h) + 30min v�lce
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
                                                        - T�locvi�na (1h), B�h nebo Trena��r (ergometr, v�lce) (1,5h)
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        �t
                                                    </td>
                                                    <td>
                                                        15.12.
                                                    </td>
                                                    <td>
                                                        - Regenerace (plav�n�, sauna, mas�, �)
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        P�
                                                    </td>
                                                    <td>
                                                        16.12.
                                                    </td>
                                                    <td>
                                                        - Posilovna (1h) + 30min v�lce
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
                                                        - Vytrvalost (3h � kolo nebo t�ra + 30min v�lce)
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
                                                        - Vytrvalost (3,5h � kolo nebo t�ra + 30min v�lce)
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
                                                        - Regenerace (plav�n�, sauna, mas�, �)
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        �t
                                                    </td>
                                                    <td>
                                                        20.12.
                                                    </td>
                                                    <td>
                                                        - Posilovna (1h) + 30min v�lce
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
                                                        - T�locvi�na (1h), B�h nebo Trena��r (ergometr, v�lce) (2h)
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        �t
                                                    </td>
                                                    <td>
                                                        22.12.
                                                    </td>
                                                    <td>
                                                        - Regenerace (plav�n�, sauna, mas�, �)
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        P�
                                                    </td>
                                                    <td>
                                                        23.12.
                                                    </td>
                                                    <td>
                                                        - Posilovna (1h) + 30min v�lce
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
                                                        - Volno - V�noce
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
                                                        - Volno + 30min v�lce
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
                                                        �t
                                                    </td>
                                                    <td>
                                                        27.12.
                                                    </td>
                                                    <td>
                                                        - Posilovna (1h) + 30min v�lce
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
                                                        - T�locvi�na (1h), B�h nebo Trena��r (ergometr, v�lce) (1h)
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        �t
                                                    </td>
                                                    <td>
                                                        28.12.
                                                    </td>
                                                    <td>
                                                        - Regenerace (plav�n�, sauna, mas�, �)
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        P�
                                                    </td>
                                                    <td>
                                                        29.12.
                                                    </td>
                                                    <td>
                                                        - Volno + 30min v�lce
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
                                                        T�locvi�na:
                                                    </td>
                                                    <td>
                                                        4x - 4h
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        B�h nebo Trena��r:
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
                                                        V�lce:
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
                                                Z�v�rem</h1>
                                            Tento p��klad se d� r�zn� modifikovat podle mo�nost� ka�d�ho jedince. �mysln� jsem
                                            za�adil v�t�� mno�stv� krat��ch tr�nink� na v�lc�ch, proto�e v�t�ina m�n� zku�en�j��ch
                                            cyklist� m�v� probl�my s technikou �lap�n� a v�lce jsou v�born�m prost�edkem na
                                            zlep�en� tohoto neduhu. Nav�c jsem je za�adil po silov�ch a pro cyklistu m�n� p�irozen�ch
                                            aktivit�ch na uvoln�n� namo�en�ch svalov�ch parti�. J�zda by m�la b�t frekven�n�
                                            a pouze aerobn� s d�razem na techniku �lap�n�. Pokud jsem do jednoho dne uvedl v�ce
                                            aktivit, m�li by b�t prov�d�ny v po�ad�, ve kter�m jsem je napsal. V n�kter�m dal��m
                                            �l�nku pop�u tr�nink na trena�eru. Jinak o principech tr�ninku budu postupn� ps�t
                                            v sekci �Tr�nink�.
                                        </div>
                                        <div class="hidetext" align="right">
                                            <button type="button" class="hidepart" style="width: 53px; height: 20px; font-size: xx-small; text-align: right; ">Skr�t</button>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div id="clanek2" class="rozbalovaciclanek">
                                        <div class="infoclanek">
                                            Autor: Rostislav Krotk�<br />
                                            Vyd�no: 27.11.2011
                                        </div>
                                        <div class="uvodclanku">
                                            <h1 class="nadpish1">
                                                Tr�nink v posilovn�</h1>
                                            V�t�ina cyklist� si klade v zimn�m obdob� ot�zku, jak nejefektivn�ji tr�novat. Posilovna
                                            je jedn�m ze z�kladn�ch tr�ninkov�ch prost�edk� v tomto obdob�. Uk�eme si nyn�,
                                            jak nejl�pe posilovnu vyu��t ke zlep�en� v�konnosti. Pro cyklistu jsou v z�sad�
                                            dv� mo�nosti tr�ninku v posilovn�. Bu� m��e zvolit takzvan� kruhov� tr�nink, nebo
                                            klasick� silov� tr�nink. Kter� nejl�pe vybrat? Uk�eme si, v �em se oba typy tr�ninku
                                            li�� a k �emu jsou dobr�.
                                        </div>
                                        <div class="showtext" align="right">
                                            <button type="button" class="viewpart" style="width: 67px; height: 20px; font-size: xx-small; text-align: right; ">Zobrazit</button>
                                        </div>
                                        <div class="textclanku">
                                            <h1 class="nadpish2">
                                                Silov� kruhov� tr�nink</h1>
                                            Je zalo�en na principu postupn�ho procvi�en� cel�ho t�la. Cviky jsou �azeny za sebou.
                                            Po docvi�en� jednoho cviku se p�ech�z� bez p�est�vky na cvik dal��. Kr�tk� p�est�vka
                                            se za�ad� po odcvi�en� v�ech cvik� v kole�ku. Kole�ek se absolvuje n�kolik, z�le��
                                            na tr�novanosti jedince. Minim�ln� v�ak alespo� 3. Po�et cvik� v jednom kole�ku
                                            se pohybuje zpravidla mezi 8 a� 12. Jeden cvik se cvi�� 20 � 40 sekund. N�sleduj�c�
                                            cvik je v�dy prov�d�n na opa�nou svalovou partii, ne� byl cvik p�edchoz�. Ide�ln�
                                            za��n�me cvi�it od st�edu t�la a postupujeme ke kon�etin�m. Tr�nink je velice n�ro�n�
                                            pro ob�hov� syst�m, proto�e se st��dav� prokrvuj� odli�n� svalov� skupiny. Takto
                                            prov�d�n�m tr�ninkem si v�znamn� nezv���te s�lu, ani si nevybudujete velk� svalstvo.
                                            Kruhov� tr�nink je vhodn� zvl�t� pro formov�n� postavy, p�i hubnut� a p�edev��m
                                            k pos�len� ob�hov�ho syst�mu. Proto je �asto doporu�ov�n pro �eny, pro ty co cht�j�
                                            co nejefektivn�ji shodit nadbyte�n� kila, nebo jako dopln�k k jin�m sport�m.
                                            <h1 class="nadpish2">
                                                Klasick� silov� tr�nink</h1>
                                            Tr�nink prov�d�n� klasick�m zp�sobem je v�dy c�len na ur�itou svalovou partii, kter�
                                            se v�nujeme d�kladn�ji. Nejd��ve procvi�ujeme nejv�t�� sval dan� partie a postupn�
                                            p�ech�z�me ke sval�m men��m. Cvi��me v s�ri�ch, kdy po�et opakov�n� vol�me v ka�d�
                                            s�rii dle zam��en� tr�ninku. Podle toho, zda je zam��en na budov�n� objemu svalstva
                                            nebo na zvy�ov�n� s�ly. Tr�nink je vhodn� pro zdatn� sportovce. Cyklista se samoz�ejm�
                                            bude zam��ovat hlavn� na zvy�ov�n� s�ly pro n�j d�le�it�ch svalov�ch parti�. Svalov�
                                            partie nam�han� p�i cyklistice sp�e staticky je dobr� hlavn� protahovat. P�i cvi�en�
                                            jim nemus�me v�novat takovou pozornost a cvi��me je sp�e dopl�kov�.
                                            <h1 class="nadpish2">
                                                V�eobecn� informace</h1>
                                            P�ed ka�d�m cvi�en�m je nutn�, aby byly procvi�ovan� svalov� partie zah��t� a dob�e
                                            prota�en�. Zv���te tak jejich v�kon a p�edejdete p��padn�m svalov�m zran�n�m. Pro
                                            cyklistu je vhodn� p�i obou typech tr�ninku prov�d�t cviky dynamicky. Do posilovny
                                            bychom m�li p�ij�t relativn� odpo�at�. Nen� vhodn� absolvovat p�ede�l� den n�ro�n�j��
                                            cyklistick� tr�nink a nepl�novat jej ani v den, kdy jdeme do posilovny. P�i prvn�
                                            n�v�t�v� posilovny je pot�eba cvi�it s men��mi z�t�emi, abychom si nep�ivodili
                                            svalovou hore�ku. P�i dal��ch n�v�t�v�ch m��eme z�t�e postupn� zvy�ovat. Pokud
                                            chod�me do posilovny pravideln�, je vhodn� tr�nink po ur�it� dob� obm�nit, aby nedo�lo
                                            ke stagnaci tr�ninkov�ho efektu. Pro cyklistu jsou vhodn� 1 � 2 n�v�t�vy posilovny
                                            t�dn�.
                                        </div>
                                        <div class="hidetext" align="right">
                                            <button type="button" class="hidepart" style="width: 53px; height: 20px; font-size: xx-small; text-align: right; ">Skr�t</button>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div id="clanek1" class="rozbalovaciclanek">
                                        <div class="infoclanek">
                                            Autor: Rostislav Krotk�<br />
                                            Vyd�no: 27.11.2011
                                        </div>
                                        <div class="uvodclanku">
                                            <h1 class="nadpish1">
                                                Tr�nink v prvn�m p��pravn�m obdob�</h1>
                                            Toto obdob� slou�� k zapracov�n� organismu do tr�ninkov�ho procesu. M�lo by trvat
                                            3-4 t�dny. Intenzity jsou vesm�s n�zk� a d�raz je kladen p�edev��m na techniku proveden�.
                                            Sportovn� aktivity, na kter� nen� t�lo zvykl�, je dobr� prov�d�t s rozumem, zvl�t�
                                            pak aktivity n�chyln�j�� na zran�n�, jako jsou r�zn� hry a sporty zalo�en� na dynamick�ch
                                            pohybech. P�ed ka�d�m cvi�en�m je d�le�it� nejprve zah��t svaly n�jak�m aerobn�m
                                            cvi�en�m a pot� se dostate�n� prot�hnout. T�m p�edejdeme p��padn�m svalov�m zran�n�m.
                                            Jak� jsou nejvhodn�j�� sportovn� aktivity pro cyklistu v tomto p��pravn�m obdob�
                                            a kolik �asu jim v�novat, si pov�me d�le.
                                        </div>
                                        <div class="showtext" align="right">
                                            <button type="button" class="viewpart" style="width: 67px; height: 20px; font-size: xx-small; text-align: right; ">Zobrazit</button>
                                        </div>
                                        <div class="textclanku">
                                            <br />
                                            Sportovn� aktivity rozd�l�me do t�� z�kladn�ch skupin, a to podle druhu z�t�e.
                                            <h1 class="nadpish2">
                                                Vytrvalost</h1>
                                            U dosp�l�ho by m�la vytrvalost v tomto obdob� tvo�it nejv�t�� ��st jeho sportovn�ch
                                            aktivit, a to asi 3/4 celkov�ho tr�ninkov�ho �asu. V p��pad� p�kn�ho po�as� preferujeme
                                            silni�n� kolo. Soust�ed�me se hlavn� na techniku �lap�n� a spr�vn� posed. V chladn�j��m
                                            po�as� m��eme vyu��t horsk� kolo a op�t se rad�ji soust�ed�me na techniku j�zdy,
                                            ne� na samotn� v�kon. Pokud u� to na kole nejde, jsou vhodn�m vytrvalostn�m tr�ninkem
                                            p�� t�ry. Rychlou ch�zi m��eme st��dat i s lehk�m b�hem. Pozd�ji m��e b�t tr�nink
                                            pouze b�eck�. Jakmile p�ijde zima, je v�born�m vytrvalostn�m tr�ninkem b�h na ly��ch,
                                            nebo bruslen� na zamrzl�m rybn�ku.
                                            <h1 class="nadpish2">
                                                Sila</h1>
                                            V tomto obdob� se prov�d� silov� tr�nink p�edev��m v posilovn�. Proto�e za��n�me
                                            cvi�it, cvi��me s men�� z�t�� a soust�ed�me se hlavn� na spr�vnost prov�d�n�ch
                                            cvik�. Pokud nem�me mo�nost nav�t�vovat posilovnu, m��eme ji nahradit silov�j��mi
                                            v�jezdy na kole, nebo trena�eru. Nesm�me v�ak zapomenout posilovat i ostatn� svalov�
                                            partie alespo� v dom�c�ch podm�nk�ch. Zaj�mavou alternativou je t� ch�ze do schod�,
                                            nebo strm�ho kopce. Posilov�n� by m�lo tvo�it asi 1/6 v�ech sportovn�ch aktivit.
                                            <h1 class="nadpish2">
                                                Rychlost</h1>
                                            Jedn� se p�ev�n� o dopl�kov� sporty jako je fotb�lek, basketbal, hokej atp. Pozd�ji
                                            lze za�adit i kr�tk� v�b�hy do kopce. Celkov� objem by se u dosp�l�ho mohl pohybovat
                                            kolem 1/12 celkov�ho tr�ninkov�ho �asu.<br />
                                            <br />
                                            Ani v tomto obdob� bychom nem�li zapom�nat na dostate�n� sp�nek a regeneraci. Ta
                                            je p�i ka�d�m sportu velmi d�le�it�.
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
            <div id="tab-32" class="clasictext">
                <h2>
                    Vy�kejte...
                </h2>
                Tuto sekci p�ipravujeme.
            </div>
            <div id="tab-33" class="clasictext">
                <h2>
                    Vy�kejte...
                </h2>
                Tuto sekci p�ipravujeme.
            </div>
            <div id="tab-34" class="clasictext">
                <h2>
                    Vy�kejte...
                </h2>
                Tuto sekci p�ipravujeme.
            </div>
            <div id="tab-35" class="clasictext">
                <h2>
                    Vy�kejte...
                </h2>
                Tuto sekci p�ipravujeme.
            </div>
            <div id="tab-36">
                <table>
                    <tr>
                        <td valign="top" align="left">
                            <div class="clanek">
                                <h1 class="nadpish1">
                                    Tr�ninkov� kempy
                                </h1>
                                Cht�li byste poznat zaj�mav� tr�ninkov� destinace, zefektivnit V� tr�nink, zv��it
                                Va�i v�konnost a nasb�rat spoustu nov�ch informac� od zku�en�ho profesion�la? Poje�te
                                na tr�ninkov� kemp!
                                <br />
                                Pro p��znivce a �leny t�mu Vyso�ina cycling jsem se rozhodl zorganizovat tr�ninkov�
                                kempy v m�stech, kter� ke sv�mu tr�ninku vyu��v�m i j�.
                                <br />
                                Kempy je mo�m� po��dat v t�chto destinac�ch: <strong>Fuerteventura, Lanzarote, Gran
                                    Canaria, Tenerife, Mallorca, Kypr, Livigno.</strong>
                                <br />
                                V�echny destinace jsem osobn� nav�t�vil, a proto V�m je mohu s klidn�m sv�dom�m
                                doporu�it. Nab�dku mohu roz���it dle Va�eho p��n�. Pokud m�te zaj�mav� typ na tr�ninkov�
                                kemp, dejte mi v�d�t, zjist�m jak� jsou mo�nosti a zv��m jeho za�azen�. M�-li Va�e
                                tr�ninkov� skupina z�jem o priv�tn� kemp, je mo�n� jej v neobsazen�m term�nu uspo��dat.
                                Minim�ln� po�et p�ihl�en�ch z�jemc� na �spornou variantu kempu je 5. Pro kemp s
                                pln�m komfortem je minimum p�ihl�en�ch 6.
                                <h1 class="nadpish2">
                                    Z�zem� tr�ninkov�ho kempu ve v�ech destinac�ch<br />
                                </h1>
                                Ubytov�ni je v�dy v dob�e za��zen�ch apartm�nech.<br />
                                Apartm�ny disponuj� lo�nicemi pro 2 osoby.<br />
                                Sou��st� apartm�nov�ho komplexu na Kan�rsk�ch ostrovech je tepl� venkovn� baz�n.<br />
                                Sou��st� apartm�nov�ho komplexu na Mallorce a Kypru je vnit�n� baz�n.<br />
                                Stravu si m��ete sami p�izp�sobit sv�m tr�nink�m.<br />
                                Apartm�ny jsou pln� vybaveny pro va�en� a supermarket je v�dy v dosahu.<br />
                                V p��pad� z�jmu mohu zajistit sportovn� a regenera�n� n�poje za v�hodn�j�� ceny.<br />
                                Porad�m V�m s tr�ninkem a n�kter� mohu absolvovat s V�mi.<br />
                                K dispozici m�m m��i� v�konu powertap.<br />
                                Ve v�ech destinac�ch je mo�n� si zap�j�it kvalitn� horsk� i silni�n� kolo.
                                <h1 class="nadpish2">
                                    Varianta pln� komfort (p��platek 9.999 K� / 14 dn�)
                                </h1>
                                Strava je zaji�t�na na��m kucha�em a je p�izp�sobena tr�nink�m.<br />
                                V cen� kempu jsou sportovn� regenera�n� n�poje.<br />
                                O regeneraci se postar� mas�r. V cen� kempu je 6 mas��.<br />
                                Pom��eme V�m v p��pad� probl�m� na Va�em kole.<br />
                                V cen� kempu je jednodenn� v�let po m�stech, na kter� se na kole nedostanete.
                                <h1 class="nadpish2">
                                    Pro koho je kemp vhodn�
                                </h1>
                                Na tr�ninkov� kemp mohou jet z�jmci v�ech v�konnostn�ch kategori�. P�ed z�vaznou
                                objedn�vkou dostane ka�d� z�jemce informaci o v�konnosti ostatn�ch ��astn�k�, aby
                                si mohl ov��it, zda je pro n�ho tr�ninkov� kemp vhodn�. Doporu�uji, aby alespo�
                                jeden dal�� z�jmce byl podobn� v�konnosti.
                                <h1 class="nadpish2">
                                    Rady pro cestu
                                </h1>
                                Doprava na leti�t� je individu�ln�. V p��pad� po�adavku v�ce z�jemc� mohu zajistit
                                spole�nou dopravu.<br />
                                V c�lov� destinaci zaji��uji dopravu z leti�t� do apartm�n�.<br />
                                Vzhledem k m�n�c�m se cen�m letenek je vhodn� objedn�vat letenky s dostate�n�m p�edstihem,
                                proto je vhodn� p�ihl�sit se co nejd��ve.<br />
                                Na Kan�rsk� ostrovy je mo�n� let�t p��mo, a to v�t�inou s <a href="http://www.nacesty.cz/"
                                    target="_blank">n�meck�mi leteck�mi spole�nostmi</a>. Dal�� mo�nost� je vyu��t
                                n�zkon�kladovou spole�nost <a href="http://www.ryanair.com/" target="_blank">Ryanair</a>
                                a let�t z Bratislavy na Gran Canarii. Mezi ostrovy lze nejl�pe cestovat se spole�nost�
                                <a href="http://www.bintercanarias.com/" target="_blank">Binter Canarias</a>. P�i
                                v�asn�m objedn�n� se cena zp�te�n� letenky z Bratislavy na Gran Canarii pohybuje
                                kolem 100 euro. Mezi ostrovy pak kolem 40 euro za jednosm�rnou cestu. Cena zavazadla
                                s kolem je u Ryanairu 40 euro za jednosm�rnou cestu. U n�meck�ch cestovek 50 euro.
                                U Ryanairu je v�ak v cen� letenky pouze jedno 10kg zavazadlo s max. rozm�ry 55cm
                                x 40cm x 20cm. D� se to vy�e�it tak, �e ostatn� v�ci p�id�te do zavazadla s kolem.
                                Binter Canarias m� v cen� letenky jedno kabinov� zavazadlo do 6kg a 20kg zavazadlo
                                do n�kladov�ho prostoru bez omezen� rozm�r�. V p��pad� z�jmu V�m mohu letenky zajistit,
                                ale je nutn� je uhradit p�edem. Z�vazn� objedn�vka je podm�n�n� zaplacen�m z�lohy
                                ve v��i 50% koncov� ceny. Pokud se kempu nebudete moci z��astnit a nese�enete si
                                n�hradn�ka, bude Va�e z�loha pou�ita na alespo� ��ste�nou �hradu n�klad� spojen�ch
                                s Va�� ne��ast�. Zbytek je nutn� doplatit nejpozd�ji 2 t�dny p�ed odjezdem na kemp.
                                Nev�hejte m� kontaktovat v p��pad� jak�chkoli nejasnost�.
                                <h1 class="nadpish2">
                                    Kdy a jak se p�ihl�sit
                                </h1>
                                Proto�e chci co nejv�ce vyj�t vst��ct v�em z�jemc�m o kemp, nech�v�m ze za��tku
                                datum v�ech kemp� otev�en�. P�esn� datum stanov�m a� na z�klad� po�adavk� v�t�iny
                                z�jemc�. V p�ihla�ovac�m formul��i vypl�te �asov� rozmez�, ve kter�m se m��ete tr�ninkov�ho
                                kempu z��astnit. Do pozn�mky lze napsat dopl�uj�c� informace, pop��pad� ot�zky nebo
                                po�adavky (nap��klad na d�lku kempu atp). Upozor�uji V�s v�ak, �e apartm�ny se objedn�vaj�
                                v�dy po t�dnech. M��ete sice bez probl�m� p�ijet i o den nebo dva pozd�ji, nebo
                                naopak odjet d��ve, ale mus�te po��tat s plnou cenou. Prvn� p�ihl�ka na kemp je
                                nez�vazn�. M��ete jich poslat i v�ce na r�zn� destinace o kter� byste m�li z�jem.
                                V okam�iku, kdy se na destinaci a podobn�m term�nu shodne v�ce z�jemc�, za�lu ka�d�mu
                                z�jemci n�vrh term�nu po��d�n� kempu, a to i s ohledem na cenu letenek. Komunikace
                                se z�jemci pak prob�h� emailem nebo telefonicky. N�sleduje z�vazn� objedn�vka a
                                zaplacen� z�lohy. V tomto okam�iku se ji� dal�� tr�ninkov� kempy v tomto term�nu
                                nemohou konat, a v�em z�jemc�m, kter�ch se to t�k�, za�lu informa�n� zpr�vu o t�to
                                skute�nosti. Na webu bude u kempu zobrazen konkr�tn� term�n a po�et zb�vaj�c�ch
                                m�st. Proto je vhodn� sv� ��dosti zas�lat co nejd��ve. Maxim�ln� kapacita kempu
                                m��e b�t omezena. Z�le�� na obsazenosti apartm�nov�ho komplexu.
                                <h1 class="nadpish2">
                                    Dopl�uj�c� informace
                                </h1>
                                Pokud m�te z�vodn� ambice a dostatek �asu absolvovat v�ce kemp�, doporu�uji jako
                                z�kladn� p��pravu vytrvalosti kemp na Fuerteventu�e, n�sledn� kemp na Tenerife nebo
                                Gran Canarii, a jako vyvrcholen� p��pravy kemp na Mallorce nebo Kypru s ��ast� na
                                m�stn�ch z�vodech. Vysokohorsk� kemp v Livignu by m�l b�t za�azen vzhledem k nadch�zej�c�mu
                                z�vodn�mu programu. Vhodn� b�v� v pr�b�hu kv�tna jako p��prava na vrchol sez�ny,
                                a d�le pak v prvn� polovin� letn�ch pr�zdnin jako p��prava na druhou ��st sez�ny.
                                <br />
                                V�echny kempy by m�ly b�t 14-ti denn�, co� podle zku�enost� pokl�d�m za optim�ln�.
                                V p��pad� v�t��ho z�jmu o krat��, nebo naopak del�� tr�ninkov� kemp, je mo�n� jej
                                tak� uspo��dat. T�� se na V�s Rostislav Krotk�.
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
                                        Fuerteventura 2014 (leden - �nor)</h3>
                                    <div class="nabidka">
                                        <div id="weatherIconFue1">
                                        </div>
                                        <div id="imgKempFuerteventura">
                                            Fuerteventura je druh�m nejv�t��m ostrovem Kan�rsk�ch ostrov�. Jej� profil je sp�e
                                            zvln�n� a� rovinat� a hod� se proto k absolvov�n� objemov�ho vytrvalostn�ho tr�ninku.
                                            Po�as� je zde po cel� rok velmi stabiln�, ostatn� jako na cel�ch Kan�rsk�ch ostrovech,
                                            tak�e se nemus�te b�t, �e V�m tu bude zima. Je mo�n� se tu po cel� rok koupat. Apartm�nov�
                                            komplex si m��ete prohl�dnout na fotk�ch zde: <a href="images/kempy/Fuerteventura/ii_cat1.jpg"
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
                                                        Cena ubytov�n�: 5.499 K� / 14 dn�
                                                    </td>
                                                    <td align="right">
                                                        <input type="button" id="buttonkemp1" value="P�ihl�sit" />
                                                    </td>
                                                </tr>
                                            </table>
                                        </div>
                                    </div>
                                    <h3>
                                        Lanzarote 2014 (leden - �nor)</h3>
                                    <div class="nabidka">
                                        <div id="weatherIconLanz">
                                        </div>
                                        <div id="imgKempLanzarote">
                                            P�izn�m se, �e je to jedin� destinace, kterou jsem osobn� nenav�t�vil. Je to v po�ad�
                                            �tvrt� nejv�t�� ostrov Kan�rsk�ch ostrov�. Profilem sp�e zvln�n�, tak�e by se mohl
                                            hodit pro jedno z prvn�ch cyklistick�ch soust�ed�n�. Apartm�nov� komplex si m��ete
                                            prohl�dnout na fotk�ch zde: <a href="images/kempy/Lanzarote/ii_oal1.jpg" title="Costa Teguise, Lanzarote."
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
                                                        Cena ubytov�n�: 8.499 K� / 14 dn�
                                                    </td>
                                                    <td align="right">
                                                        <input type="button" id="buttonkemp2" value="P�ihl�sit" />
                                                    </td>
                                                </tr>
                                            </table>
                                        </div>
                                    </div>
                                    <h3>
                                        Tenerife 2014 (�nor - b�ezen)</h3>
                                    <div class="nabidka">
                                        <div id="weatherIconTen1">
                                        </div>
                                        <div id="imgKempTenerife">
                                            Tenerife je nejv�t��m z Kan�rsk�ch ostrov�. Profilem je velmi n�ro�n�. Od mo�e m��ete
                                            vyjet do nadmo�sk� v��ky 2200 m.n.m. Proto jej doporu�ujeme jako tr�nink silov�
                                            vytrvalosti. P�ed t�mto tr�ninkov�m kempem je v�ce ne� vhodn� b�t fyzicky dob�e
                                            p�ipraven. Ostrov se V�m pak odm�n� n�dhern�mi v�jezdy od ban�nov�ch plant�� a�
                                            do kr�teru sopky. Apartm�nov� komplex si m��ete prohl�dnout na fotk�ch zde: <a href="images/kempy/Tenerife/ii_sne1.jpg"
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
                                                        Cena ubytov�n�: 9.999 K� / 14 dn�
                                                    </td>
                                                    <td align="right">
                                                        <input type="button" id="buttonkemp3" value="P�ihl�sit" />
                                                    </td>
                                                </tr>
                                            </table>
                                        </div>
                                    </div>
                                    <h3 id="kempGranCanaria">
                                        Gran Canaria 2014 (�nor - b�ezen)</h3>
                                    <div class="nabidka">
                                        <div id="weatherIconGC">
                                        </div>
                                        <div id="imgKempGranCanaria">
                                            Dal��m z Kan�rsk�ch ostrov� je Gran Canaria. T�et� nejv�t�� ostrov je profilem n�ro�n�,
                                            ale d� se zde sv�zt i po rovn�j��m �seku. Gran Canarii doporu�ujeme jako tr�nink
                                            silov� vytrvalosti, a proto je vhodn� pro zdatn�j�� cyklisty. Velkou v�hodou je
                                            p��m� pravideln� leteck� spojen� n�zkon�kladovou leteckou spole�nost� Ryanair z
                                            Bratislavy. Pro dobrou dostupnost b�v� ov�em probl�m s volnou kapacitou apartm�n�
                                            v zimn�m a jarn�m obdob�, a proto je dobr� objednat dostate�n� dop�edu. Apartm�nov�
                                            komplex si m��ete prohl�dnout na fotk�ch zde: <a href="images/kempy/GranCanaria/ii_poa1.jpg"
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
                                                        Cena ubytov�n�: 13.999 K� / 14 dn�
                                                    </td>
                                                    <td align="right">
                                                        <input type="button" id="buttonkemp4" value="P�ihl�sit" />
                                                    </td>
                                                </tr>
                                            </table>
                                        </div>
                                    </div>
                                    <h3>
                                        Mallorca 2014 (�nor - b�ezen)</h3>
                                    <div class="nabidka">
                                        <div id="weatherIconMall">
                                        </div>
                                        <div id="imgKempMallorca">
                                            Mallorca, r�j cyklist�. Jezd� jich zde opravdu mnoho. Naleznete zde v�echny ter�ny,
                                            od rovin a� po hory. P�es zimn� obdob� zde panuje na na�e pom�ry jarn� po�as� s
                                            teplotami kolem 15 stup��. T�m�� ka�d� v�kend se zde konaj� cyklistick� z�vody.
                                            Na koup�n� v mo�i to sice nen�, ale oproti Kan�rsk�m ostrov�m je Mallorca v�ce dostupn�j��.
                                            Apartm�nov� komplex si m��ete prohl�dnout na fotk�ch zde: <a href="images/kempy/Mallorca1/ii_auc1.jpg"
                                                title="Alc�dia, Mallorca." style="color: #0033CC; font-weight: bold">Alc�dia, Llucmajor,
                                                Mallorca</a> <a href="images/kempy/Mallorca1/ii_auc2.jpg" title="Alc�dia, Mallorca.">
                                                </a><a href="images/kempy/Mallorca1/ii_auc3.jpg" title="Alc�dia, Mallorca.">
                                            </a><a href="images/kempy/Mallorca1/ii_auc4.jpg" title="Alc�dia, Mallorca."></a>
                                            <a href="images/kempy/Mallorca1/ii_auc5.jpg" title="Alc�dia, Mallorca."></a><a href="images/kempy/Mallorca1/ii_auc6.jpg"
                                                title="Alc�dia, Mallorca."></a><a href="images/kempy/Mallorca1/ii_auc7.jpg" title="Alc�dia, Mallorca.">
                                                </a><a href="images/kempy/Mallorca1/ii_auc8.jpg" title="Alc�dia, Mallorca.">
                                            </a><a href="images/kempy/Mallorca1/ii_auc9.jpg" title="Alc�dia, Mallorca."></a>
                                            <a href="images/kempy/Mallorca1/ii_auc10.jpg" title="Alc�dia, Mallorca."></a><a href="images/kempy/Mallorca2/ii_mem1.jpg"
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
                                                        Cena ubytov�n�: 5.999 K� / 14 dn�
                                                    </td>
                                                    <td align="right">
                                                        <input type="button" id="buttonkemp5" value="P�ihl�sit" />
                                                    </td>
                                                </tr>
                                            </table>
                                        </div>
                                    </div>
                                    <h3>
                                        Kypr 2014 (�nor - b�ezen)</h3>
                                    <div class="nabidka">
                                        <div id="weatherIconKypr">
                                        </div>
                                        <div id="imgKempKypr">
                                            Kypr je profilem velmi podobn� Mallorce. Naleznete zde v�echny ter�ny, od rovin
                                            a� po hory. Na ja�e se teploty pohybuj� kolem 20 stup��. Kypr vyu��vaj� �asto k
                                            jarn�mu soust�ed�n� bike�i pro mno�stv� pra�n�ch cest. Konaj� se zde i bikov� z�vody.
                                            Provoz je mal� a jezd� se zde vlevo. Ti otu�ilej�� se mohou vykoupat i v mo�i. Z
                                            nab�dky si m��ete vybrat klasicky vybaven� apartm�ny, apartm�nov� komplex je na
                                            fotk�ch zde: <a href="images/kempy/Kypr1/ii_pah1.jpg" title="Paphos, Cyprus, klasic."
                                                style="color: #0033CC; font-weight: bold">Paphos, Cyprus, klasic</a> <a href="images/kempy/Kypr1/ii_pah2.jpg"
                                                    title="Paphos, Cyprus, klasic."></a><a href="images/kempy/Kypr1/ii_pah3.jpg" title="Paphos, Cyprus, klasic.">
                                                    </a><a href="images/kempy/Kypr1/ii_pah4.jpg" title="Paphos, Cyprus, klasic.">
                                            </a><a href="images/kempy/Kypr1/ii_pah5.jpg" title="Paphos, Cyprus, klasic."></a>
                                            <a href="images/kempy/Kypr1/ii_pah6.jpg" title="Paphos, Cyprus, klasic."></a><a href="images/kempy/Kypr1/ii_pah7.jpg"
                                                title="Paphos, Cyprus, klasic."></a><a href="images/kempy/Kypr1/ii_pah8.jpg" title="Paphos, Cyprus, klasic.">
                                                </a><a href="images/kempy/Kypr1/ii_pah9.jpg" title="Paphos, Cyprus, klasic.">
                                            </a><a href="images/kempy/Kypr1/ii_pah10.jpg" title="Paphos, Cyprus, klasic."></a>
                                            , nebo luxusn� vybaven� apartm�ny, na fotk�ch zde: <a href="images/kempy/Kypr2/ii_adh1.jpg"
                                                title="Paphos, Cyprus, luxus." style="color: #0033CC; font-weight: bold">Paphos,
                                                Cyprus, luxus</a> <a href="images/kempy/Kypr2/ii_adh2.jpg" title="Paphos, Cyprus, luxus.">
                                                </a><a href="images/kempy/Kypr2/ii_adh3.jpg" title="Paphos, Cyprus, luxus.">
                                            </a><a href="images/kempy/Kypr2/ii_adh4.jpg" title="Paphos, Cyprus, luxus."></a>
                                            <a href="images/kempy/Kypr2/ii_adh5.jpg" title="Paphos, Cyprus, luxus."></a><a href="images/kempy/Kypr2/ii_adh6.jpg"
                                                title="Paphos, Cyprus, luxus."></a><a href="images/kempy/Kypr2/ii_adh7.jpg" title="Paphos, Cyprus, luxus.">
                                                </a><a href="images/kempy/Kypr2/ii_adh8.jpg" title="Paphos, Cyprus, luxus.">
                                            </a><a href="images/kempy/Kypr2/ii_adh9.jpg" title="Paphos, Cyprus, luxus."></a>
                                            Do pozn�mky k p�hl�ce pros�m napi�te, kter� typ ubytov�n� preferujete.
                                        </div>
                                        <br />
                                        <br />
                                        <br />
                                        <div class="cena">
                                            <table align="left" width="300px">
                                                <tr>
                                                    <td align="left">
                                                        Cena ubytov�n� klasic: 5.999 K� / 14 dn� Cena ubytov�n� luxus: 9.999 K� / 14 dn�
                                                    </td>
                                                    <td align="right">
                                                        <input type="button" id="buttonkemp6" value="P�ihl�sit" />
                                                    </td>
                                                </tr>
                                            </table>
                                        </div>
                                    </div>
                                    <h3>
                                        Livigno 2014 (�ervenec)</h3>
                                    <div class="nabidka">
                                        <div id="weatherIconLiv">
                                        </div>
                                        Livigno je pro mnoho sportovc� synonymem pro vysokohorsk� tr�nink. Le�� ve v��ce
                                        p�es 1800 m.n.m. Ka�d�m rokem sem p�ij�d� �ada vrcholov�ch sportovc� na�erpat tolik
                                        pot�ebn� �erven� krvinky. Z �dol� Livigna m��ete vyrazit zdol�vat nespo�et alpsk�ch
                                        pass�, v�etn� t�ch nejzn�m�j��ch z Gira, jako nap��klad passo Stelvio nebo passo
                                        Gavia a dal��.
                                        <br />
                                        <br />
                                        <br />
                                        <div class="cena">
                                            <table align="left" width="300px">
                                                <tr>
                                                    <td align="left">
                                                        Cena: - K� / 14 dn�
                                                    </td>
                                                    <td align="right">
                                                        <input type="button" id="buttonkemp7" value="P�ihl�sit" />
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
                                    Jak funguje tr�ninkov� poradenstv�?
                                </h1>
                                Tr�ninkov� poradenstv� je ur�en� pro ty z�jemce, kte�� cht�j� m�t sv� tr�nov�n� pod 
                                kontrolou zku�en�ho odborn�ka a cht�j� m�t pravidelnou mo�nost konzultovat v�e s tren�rem.
                                V�em ostatn�m r�di a zdarma porad�me na spole�n�m tr�ninku. Systematick� poradenstv� se 
                                skl�d� ze t�� z�kladn�ch ��st�.
                                <h1 class="nadpish2">
                                    �vodn� osobn� konzultace</h1>
                                Ka�d� dobr� tren�r mus� co nejl�pe poznat sv�ho sv��ence. K tomu slou�� �vodn� sezn�men�.
                                <br />
                                Klient by si m�l s sebou p�iv�st cyklistick� vybaven�, kter� pou��v� p�i sv�m tr�ninku.
                                Tren�r zkontroluje spr�vn� posed a techniku �lap�n�, n�sledn� doporu�� jak nejl�pe
                                p��padn� nedostatky odstranit. P�i dlouhodob�j�� spolupr�ci m��e b�t sou��st� prvn�
                                sch�zky i test v�konnosti. Test je pro ka�d�ho klienta individu�ln�. Z�le�� na tom,
                                jak�m sm�rem bude tr�nink zam��en. P�i testech vyu��v�me m��i� v�konu, a to bu�
                                klient�v, nebo lze zap�j�it zadn� kolo s p��strojem powertap.
                                <br />
                                P�i �vodn� konzultaci si spole�n� stanov�me c�le, ke kter�m by na�e spolupr�ce m�la
                                v�st, a jak t�chto c�l� co nejefektivn�ji dos�hnout. Z�rove� se sna��me efektivn�
                                vyu��t �asov�ch mo�nost� klienta. Na z�klad� t�chto poznatk� sestavujeme tr�ninkov�
                                pl�n.
                                <br />
                                <h1 class="nadpish2">
                                    Vyhotoven� tr�ninkov�ho pl�nu</h1>
                                Tr�ninkov� pl�n je denn� itiner�� s rozpisem tr�ninku na zvolen� obdob�. V p��pad�
                                dlouhodob�j�� spolupr�ce se na z�klad� konzultace sestav� nejd��ve souhrnn� pl�n
                                na cel� objednan� obdob� a n�sledn� se pravideln� sestavuj� d�l�� denn� itiner��e,
                                a to na obdob� dle napl�novan�ch c�l� v sez�n�. Ka�d� pl�n obsahuje vysv�tlen� v�ech
                                pojm� a p��padn�ch zkratek, obsahuje vysv�tlen� jednotliv�ch tr�ninkov�ch jednotek,
                                zp�sob proveden� a intenzitu. Je-li to nutn�, obsahuje i n�zorn� obr�zek.<br />
                                V p��pad� dlouhodob�j�� spolupr�ce je mo�n� v pr�b�hu objednan�ho obdob� m�nit �rove�
                                slu�eb. Za��te�n�k�m doporu�ujeme z na�� zku�enosti vyu��vat, zvl�t� v �vodu spolupr�ce,
                                �rove� slu�eb Advanced nebo Professional, a to z d�vodu nutnosti �ast�j�� konzultace
                                tr�ninku. Naopak slu�ba Basic se hod� pro zku�en�j��, kte�� nepot�ebuj� ve zvolen�m
                                obdob� tak �ast� konzultace, a nebo pro tr�ninkov� kempy a soust�ed�n�, kdy nen�
                                mo�n� pravideln� spojen� na tren�ra.
                                <h1 class="nadpish2">
                                    Hodnocen� tr�ninku za zvolen� obdob�</h1>
                                Hodnocen� tr�ninku je provedeno na z�klad� zvolen�ho c�le tr�ninku, kter� byl stanoven
                                p�i �vodn�, nebo pr�b�n�ch konzultac�ch. P�i dlouhodob�j�� spolupr�ci m��e b�t
                                sou��st� hodnocen� i test v�konnosti. Aby mohlo b�t hodnocen� dostate�n� kvalitn�,
                                je nutn�, aby si klient pr�b�n� vedl tr�ninkov� den�k, do kter�ho pravideln� zapisuje
                                svoje tr�ninkov� aktivity, p��padn� dal�� okolnosti ovliv�uj�c� tr�nink. Obsahem
                                tr�ninkov�ho den�ku by m�ly b�t i pocity z tr�ninku, kvalita sp�nku, subjektivn�
                                pocity �navy. Ka�d� klient by m�l vlastnit p��stroj na m��en� tepov� frekvence a
                                aktivn� jej vyu��vat. Velkou v�hodou je i m��i� v�konu. V�echny tyto informace pomohou
                                ke kvalitn�j��mu zhodnocen� absolvovan�ho tr�ninkov�ho zat�en� a n�sledn�mu sestaven�
                                tr�ninkov�ho pl�nu na dal�� obdob�.
                                <br />
                                Hodnocen� dostane ka�d� klient vypracovan� formou v�stupn�ho dokumentu, ve kter�m
                                budou uvedeny hlavn� c�le a jejich pln�n�, pop��pad� v�sledky testu v�konnosti.
                                <h1 class="nadpish2">
                                    Slevy a bonusy</h1>
                                Slevy a bonusy jsou zam��en� na st�l� klienty, �leny na�eho klubu a d�ti.
                                <br />
                                <br />
                                Sleva pro klienty, kte�� si objednaj� tr�ninkov� veden� minim�ln� na 3 m�s�ce je
                                10%.
                                <br />
                                Sleva pro klienty, kte�� si objednaj� tr�ninkov� veden� minim�ln� na 6 m�s�c� je
                                15%.
                                <br />
                                Sleva pro klienty, kte�� si objednaj� tr�ninkov� veden� minim�ln� na 1 rok je 20%.
                                <br />
                                Sleva pro �leny t�mu je 10%.
                                <br />
                                <br />
                                R�di bychom podporovali ml�de�, a proto pro ni m�me speci�ln� akci.
                                <br />
                                <br />
                                Jestli�e si tr�ninkov� veden� objedn� rodi�, m� jeho d�t� veden� zdarma na stejn�
                                �rovni, jakou si objednal jeho rodi�.
                                <br />
                                Pro d�ti, kter� jsou �leny t�mu, je tr�ninkov� veden� zdarma, a to na �rovni Basic.
                                Na vy��� �rovni sleva 30%.
                                <br />
                                Pro d�ti, kter� nejsou �leny t�mu je sleva 20%.
                                <br />
                                Slevy pro d�ti plat� dle ro�n�ku narozen� do 18-ti let.
                                <br />
                                <br />
                                V�echny slevy se s��taj�.
                                <br />
                                <h1 class="nadpish2">
                                    Kdo pro v�s bude pracovat?</h1>
                                Tr�ninkov� poradenstv� pro v�s p�ipravuje zku�en� profesion�l Ing. Rostislav Krotk�,
                                kter� se s v�mi r�d pod�l� o sv� dlouholet� zku�enosti v oblasti cyklistick�ho tr�ninku.
                                Jeho profil naleznete v sekci "Tr�ninkov� poradci".
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
                                            Z�kladn� poradenstv� obsahuje:</h2>
                                        �vodn� osobn� konzultace.<br />
                                        Vyhotoven� tr�ninkov�ho pl�nu.<br />
                                        Rozbor dvou zvolen�ch tr�nink� na PC.<br />
                                        M�s��n� zhodnocen�.<br />
                                        Komunikace p�es email.
                                        <p>
                                            &nbsp;</p>
                                        <div class="cena">
                                            <table align="left" width="300px">
                                                <tr>
                                                    <td align="left">
                                                        Cena: 1.000 K� / m�s�c
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
                                            Roz���en� poradenstv� obsahuje:</h2>
                                        �vodn� osobn� konzultace.<br />
                                        Vyhotoven� tr�ninkov�ho pl�nu.<br />
                                        1x t�dn� rozbor zvolen�ho tr�ninku na PC.<br />
                                        T�denn� hodnocen� a �prava tr�ninkov�ho pl�nu.<br />
                                        Komunikace p�es email nebo Skype.
                                        <p>
                                            &nbsp;</p>
                                        <div class="cena">
                                            <table align="left" width="300px">
                                                <tr>
                                                    <td align="left">
                                                        Cena: 1.500 K� / m�s�c
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
                                            Profesion�ln� poradenstv� obsahuje:</h2>
                                        �vodn� osobn� konzultace.<br />
                                        Vyhotoven� tr�ninkov�ho pl�nu.<br />
                                        T�denn� hodnocen�.<br />
                                        2x t�dn� rozbor zvolen�ho tr�ninku na PC.<br />
                                        Pr�b�n� �prava a konzultace tr�ninkov�ho pl�nu.<br />
                                        Komunikace p�es email, Skype nebo telefon.
                                        <p>
                                            &nbsp;</p>
                                        <div class="cena">
                                            <table align="left" width="300px">
                                                <tr>
                                                    <td align="left">
                                                        Cena: 2.000 K� / m�s�c
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
                                        Osobn� konzultace tr�nink�.<br />
                                        Pravideln� tr�nink s klientem.<br />
                                        T�denn� hodnocen�.<br />
                                        Rozbor zvolen�ch tr�nink� na PC.<br />
                                        Pr�b�n� �prava a konzultace tr�ninkov�ho pl�nu.<br />
                                        Komunikace p�es email, Skype nebo telefon.
                                        <p>
                                            &nbsp;</p>
                                        <div class="cena">
                                            <table align="left" width="300px">
                                                <tr>
                                                    <td align="left">
                                                        Cena: 200 K� / hod + souvisej�c� n�klady
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
                                    Ing. Rostislav Krotk�
                                </h1>
                                <strong>V�k:</strong> 37let<br />
                                <strong>Zku�enosti:</strong> <a href="http://www.spartaktrebic.cz/" target="_blank">
                                    TJ T�eb��</a>, Spartak Jihlava, <a href="http://www.ajeto-cz.cz/" target="_blank">A
                                        JE TO T�eb��</a>, <a href="http://www.favoritbrno.cz/" target="_blank">Favorit Brno</a>,
                                <a href="http://www.duklacycling.cz/" target="_blank">ASC Dukla Praha</a>, <a href="http://yogi.cz/racing/"
                                    target="_blank">Jogi Racing Ostrava</a>, <a href="http://www.duklasport.cz/" target="_blank">
                                        Dukla Liberec</a>, <a href="http://www.sparta-cycling.cz/" target="_blank">AC Sparta
                                            Praha</a><br />
                                <strong>�sp�chy:</strong> 1. m�sto M�R U23 na silnici a ��ast na ME, 1. m�sto M�R �asovka dvojic, 2x celkov� v�t�z <a href="http://www.ceskysvazcyklistiky.cz/"
                                    target="_blank">�esk�ho poh�ru</a>, 1. m�sto <a href="http://www.k-t-k.sk/"
                                        target="_blank">Ko�ice-Tatry-Ko�ice</a>, 1. m�sto etapa <a href="http://www.tusnadcyclingteam.com/"
                                            target="_blank">Tour of Szeklerland</a> a v�t�z sprintersk� sout�e, 3. m�sto <a href="http://vysocinatour.sweb.cz"
                                                target="_blank">Vyso�ina Tour</a> a v�t�z vrcha�sk� sout�e, 3. m�sto <a href="http://www.bikemagazin.sk/clanok/items/Velka-cena-Bradla-v-rukach-Kusztora.html"
                                                    target="_blank">Velk� cena Bradla</a> a mnoho dal��ch p�diov�ch um�st�n�.<br />
                                <strong>Tr�nink:</strong> V cel�m sv�m aktivn�m p�soben� v cyklistice jsem se sna�il
                                z�sk�vat informace od tren�r�, zku�en�j��ch z�vodn�k�, odborn� literatury a dal��ch
                                zdroj�. Vyzkou�el jsem si na sob� spoustu tr�ninkov�ch postup�. Takto z�skan� zku�enosti
                                byly n�kdy podm�n�ny chybami, kter� m� v�ak v�dy posouvaly d�l. Te� u� v�m, pro�
                                synov� otc� cyklist� b�vali v ml�d� lep��. Zku�enosti jejich otc� je posouvaly o
                                mnoho rychleji d�l, proto�e si nemuseli v��m proj�t sami.<br />
                                Nyn� i Vy m�te mo�nost na�erpat nov� informace o cyklistice a vyu��t m�ch zku�enost�
                                ve sv�j prosp�ch.
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

