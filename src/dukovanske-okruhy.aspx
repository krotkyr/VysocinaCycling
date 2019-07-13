<%@ Page Title="Vyso�ina Cycling - Dukovansk� okruhy" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="dukovanske-okruhy.aspx.cs" Inherits="DukovanskeOkruhy" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <meta property="og:description" content="Silni�n� cyklistick� z�vod Dukovansk� okruhy." />
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
                    <asp:Label runat="server" AssociatedControlID="TextBoxStartovniCislo">Startovn� ��slo:&nbsp;</asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBoxStartovniCislo" runat="server" TextMode="SingleLine" Style="width: 80px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:RangeValidator ID="TextBoxStartovniCisloValidator" Type="Integer" MinimumValue="1" MaximumValue="300" runat="server" ControlToValidate="TextBoxStartovniCislo" ValidationGroup="DialogPrezentovat" ErrorMessage="Zadejte ��slo od 1 do 300." ForeColor="Red"></asp:RangeValidator>
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
                    <asp:RangeValidator ID="TextBoxStartFeeValidator" Type="Integer" MinimumValue="0" MaximumValue="350" runat="server" ControlToValidate="TextBoxStartFee" ValidationGroup="DialogPrezentovat" ErrorMessage="Zadejte ��slo od 0 do 350." ForeColor="Red"></asp:RangeValidator>
                </td>
            </tr>
        </table>
        <br />
    </div>
    <div id="dialogZrusitPrezentaci" style="display: none; font-size: large">
        <br />
        Opravdu zru�it prezentaci ?
    </div>
    <div id="dialogFinish" style="display: none; font-size: large">
        <br />
        <table>
            <tr>
                <td>
                    <asp:Label runat="server" AssociatedControlID="TextBoxFinishTime">C�lov� �as:&nbsp;</asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBoxFinishTime" runat="server" TextMode="SingleLine" Style="width: 200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:RegularExpressionValidator ID="TextBoxFinishTimeValidator" runat="server" ValidationExpression="^(0?[1-9]|[12][0-9]|3[01])[\.\-](0?[1-9]|1[012])[\.\-]\d{4} ([01]?[0-9]|2[0-3]):[0-5][0-9]:[0-5][0-9]$" ControlToValidate="TextBoxFinishTime" SetFocusOnError="True" ErrorMessage="Zadejte �as ve form�tu: dd.MM.yyyy HH:mm:ss" ForeColor="Red"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label runat="server" AssociatedControlID="TextBoxGroupOrder">Po�ad� ve stejn�m �ase:&nbsp;</asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBoxGroupOrder" runat="server" TextMode="SingleLine" Style="width: 80px">1</asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:RangeValidator ID="TextBoxGroupOrderValidator" Type="Integer" MinimumValue="1" MaximumValue="200" runat="server" ControlToValidate="TextBoxGroupOrder" ErrorMessage="Zadejte ��slo od 1 do 200." ForeColor="Red" SetFocusOnError="True"></asp:RangeValidator>
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
                <li id="Li81"><a href="#tab-81">O z�vodu</a></li>
                <li id="Li82"><a href="#tab-82">Propozice</a></li>
                <li id="Li83"><a href="#tab-83">Tra�</a></li>
                <li id="Li84"><a href="#tab-84">P�ihl�ka</a></li>
                <li id="Li85"><a href="#tab-85">Startovn� listina</a></li>
                <li id="Li86"><a href="#tab-86">V�sledky</a></li>
                <li id="Li87"><a href="#tab-87">Historie</a></li>
            </ul>
            <div id="tab-81" class="clasictext">
                <div class="clanek">
                    <table>
                        <tr>
                            <td>
                                <h1 style="text-align: center; color: #0066CC">Dukovansk� okruhy 2019</h1>
                                <h2 style="text-align: center; color: #0066CC">
                                    Term�n: 20.7.2019
                                </h2>
                                <h2 style="text-align: center; color: #0066CC">
                                    Otev�en� Mistrovstv� kraje Vyso�ina v silni�n�m z�vod� jednotlivc�
                                </h2>
                            </td>
                            <td>
                            </td>
                        </tr>
                        <tr>
                            <td align="center" valign="top">
                                <div style="font-size: small; font-weight: bold; font-style: italic; color: #666666; text-align: justify; padding-right: 20px;">
                                    V okol� Jadern� elektr�rny Dukovany se i letos v �ervenci uskute�n� silni�n� 
                                    cyklistick� z�vod, kter� ka�doro�n� p�il�k� po�etn� startovn� pole v�ech v�konnostn�ch 
                                    kategori� v�etn� ml�de�e, hobby jezdc�, ale tak� elitn�ch profesion�l�.<br />
                                    Chceme z�vodn�k�m nab�dnout op�t zaj�mavou tra� na okruhu v okol� Jadern� elektr�rny. 
                                    Okruh je zvln�n� a� kopcovit�, nechyb� lesn� pas�e, ani otev�en� m�sta na v�tru. 
                                    Cel� okruh vede po kvalitn�ch silnic�ch. V pr�b�hu z�vodu mohou z�vodn�ci spat�it 
                                    dominantu jadern� elektr�rny ze v�ech jejich stran. Sou�asn� je tra� provede 
                                    zaj�mav�mi m�sty v okol� Dale�ick� p�ehrady a �eky Jihlavy. P�ed c�lem na 
                                    z�vodn�ky �ek� kr�tk� stoup�n�, kter� ud�l� z�v�r z�vodu atraktivn�j��.<br />
                                    Novinkou leto�n�ho ro�n�ku, je za�azen� z�vodu do presti�n� s�rie RoadCup a s t�m 
                                    souvisej�c� �pravy rozd�len� kategori� pro hobby z�vodn�ky. Do s�rie RoadCup je 
                                    za�azena tra� o d�lce 110 km (t�i okruhy) a je vyps�na pro v�echny v�kov� kategorie 
                                    hooby. Hobby z�vodn�ci v�ak maj� st�le mo�nost startovat i v leh�� variant� 
                                    na 74 km (2 okruhy) v kategorii open.<br />
                                    Z�vod je op�t vyps�n i jako Mistrovstv� Kraje Vyso�ina pro v�echny v�kov� kategorie 
                                    startuj�c� na dlouh�m okruhu (mu�i mus� absolvovat hlavn� z�vod na 153 km).<br />
                                    Na nejlep�� v hlavn�m z�vodu �ekaj� zaj�mav� finan�n� ceny. Pro ml�de� a hobby kategorie 
                                    budou p�ipraveny v�cn� ceny. Pro nejlep�� v kraji medaile a diplomy.<br />
                                    Hlavn�m partnerem z�vodu je Jadern� elektr�rna Dukovany, kter� podporuje tento tradi�n�
                                    z�vod od jeho po��tku v roce 1995. Pod�kov�n� pat�� i men��m partner�, kte��
                                    ka�doro�n� v�nuj� p�kn� v�cn� ceny.<br />
                                    P�ihla�ovat se m��ete prost�ednictv�m p�ihla�ovac�ho formul��e zde (karta p�ihl�ka). 
                                    V�t�� t�my mohou zaslat souhrnou p�ihl�ku na email 
                                    <a style="color: #FF3300" href="mailto:silnice@vysocinacycling.cz">silnice(zavin��)vysocinacycling.cz</a>.
                                    <br />
                                    <br />
                                    <img src="images/foto/DO2019.jpg" alt="Dukovansk� okruhy 2019" border="none" />
                                    <br />
                                </div>
                            </td>
                            <td valign="top" align="center"> 
                                <div>
                                    <a href="http://www.pomahejpohybem.cz" title="Pom�hej pohybem" target="_blank">
                                        <img src="images/inzerce/CEZ_EPP_branding(ram)_Novinky,cz_120x600_Right2_repeat.jpg" alt="CEZ EPP" border="none" />
                                    </a>
                                </div>
                                <div>
                                    <a href="http://www.nakolarce.cz/" title="Penzion Na Kol��ce" target="_blank">
                                        <img src="images/inzerce/NA_KOLARCE-sm.png" alt="Na Kol��ce" border="none" />
                                    </a>
                                </div>
                                <div>
                                    <a href="http://www.jemca.cz/" title="Jem�a" target="_blank">
                                        <img src="images/inzerce/jemca.png" alt="Jem�a" border="none" />
                                    </a>
                                </div>
                                <div>
                                    <a href="http://www.decathlon.cz/" title="Decathlon" target="_blank">
                                        <img src="images/inzerce/decathlon.png" alt="Decathlon" border="none" />
                                    </a>
                                </div>
                                <div>
                                    <a href="https://www.tour-sport.cz/" title="Tour Sport T�eb��" target="_blank">
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
                                    <a href="https://www.zpmvcr.cz/" title="Zdravotn� poji��ovna ministerstva vnitra" target="_blank">
                                        <img src="images/inzerce/zpmv-sm.png" alt="211" border="none" />
                                    </a>
                                </div>
                                <div>
                                    <a href="http://www.centropen.cz/" title="Centropen" target="_blank">
                                        <img src="images/inzerce/centropen.png" alt="Centropen" border="none" />
                                    </a>
                                </div>
                                <div class="userRoleEditor">
                                    <input id="buttonPozvanka" type="button" runat="server" title="Pozv�nka" value="Odeslat emaily" />
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
                            V� prohl�e� nepodporuje zobrazen� PDF. Soubor lze st�hnout na tomto odkazu <a href="files/Dukovanske_okruhy_2019.pdf" target="_blank">Dukovanske_okruhy_2019.pdf</a>
                            <br />
                        </object>
                    </div>
            </div>
            <div id="tab-83" class="clasictext">
                    <div class="clanek">
                        <h2>
                            Dlouh� okruh
                        </h2>
                        <img src="images/clanky/Dlouhy_okruh.jpg" alt="Dlouh� okruh" border="none" />
                        <img src="images/clanky/Dlouhy_okruh-profil.jpg" alt="Dlouh� okruh - profil" border="none" />
                        <h2>
                            Kr�tk� okruh
                        </h2>
                        <img src="images/clanky/Kratky_okruh.jpg" alt="Kr�tk� okruh" border="none" />
                        <img src="images/clanky/Kratky_okruh-profil.jpg" alt="Kr�tk� okruh - profil" border="none" />
                    </div>
            </div>
            <div id="tab-84" class="clasictext">
                <!--<input type="button" id="buttonSilnicniZavod" value="Vyplnit p�ihl�ku na Dukovansk� okruhy 2019" />-->
                <div class="clanek">
                    <div id="silnicniZavod" style="text-align: left">
                        <h2>Vypl�te pros�m registra�n� �daje. Pole ozna�en� * jsou povinn�.</h2>
                        <h2>Pro kontrolu bude kopie Va�� p�ihl�ky zasl�na i na V� email.</h2>
                        <table width="550px">
                            <tr>
                                <td style="width:270px">
                                    <asp:Label AssociatedControlID="TextBoxSilnicniZavodJmeno" runat="server">Jm�no: *</asp:Label>
                                    <asp:TextBox ID="TextBoxSilnicniZavodJmeno" runat="server" TextMode="SingleLine" Style="width: 250px"></asp:TextBox>
                                </td>
                                <td align="left">
                                    <asp:Label AssociatedControlID="TextBoxSilnicniZavodPrijmeni" runat="server">P��jmen�: *</asp:Label>
                                    <asp:TextBox ID="TextBoxSilnicniZavodPrijmeni" runat="server" TextMode="SingleLine" Style="width: 250px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label AssociatedControlID="TextBoxSilnicniZavodNarozeni" runat="server">Datum narozen�: *</asp:Label>
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
                                    <asp:Label AssociatedControlID="TextBoxSilnicniZavodKlub" runat="server">Klub (pokud jste �lenem n�jak�ho klubu):</asp:Label>
                                    <asp:TextBox ID="TextBoxSilnicniZavodKlub" runat="server" TextMode="SingleLine" Style="width: 250px"></asp:TextBox>
                                </td>
                                <td align="left">
                                    <asp:Label AssociatedControlID="TextBoxSilnicniZavodLicence" runat="server">��slo a UCI k�d licence (pokud jste dr�itelem):</asp:Label>
                                    <asp:TextBox ID="TextBoxSilnicniZavodLicence" runat="server" TextMode="SingleLine" Style="width: 250px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <asp:Label AssociatedControlID="TextBoxSilnicniZavodAdresa" runat="server">M�sto (v z�vorce uve�te "Kraj Vyso�ina", pokud chcete z�vodit o Mistra kraje Vyso�ina): *</asp:Label>
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
                                        <asp:CheckBox ID="CheckBoxEmail" runat="server" Checked="false" Text="Neodes�lat emaily."></asp:CheckBox>
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
                                <input id="buttonSilnicniZavod" type="button" runat="server" title="Dukovansk� okruhy 2019" value="Odeslat p�ihl�ku" />
                            </td>
                            <td align="right">
                                <input id="buttonSilnicniZavodSmazForm" type="button" runat="server" title="Dukovansk� okruhy 2019" value="Smazat formul��" />
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
                                    <h2 style="text-align: center; color: #0066CC">Posledn� ro�n�ky</h2>
                                </td>
                                <td>
                                </td>
                            </tr>
                            <tr>
                                <td style="color: #0066CC; font-weight: bold; padding-top: 5px">Ro�n�k 2017:
                                </td>
                                <td>
                                </td>
                            </tr>
                            <tr>
                                <td style="color: #0033CC; font-weight: bold;">P�ihl�en� z�vodn�ci:
                                </td>
                                <td style="color: #FF3300"><a href="http://www.vysocinacycling.cz/files/RegistraceDO2017.pdf" onclick="ga('send', 'event', 'PDF', 'View', 'P�ihl�ky Dukovansk� okruhy 2016');" target="_blank">RegistraceDO2017.pdf</a>
                                </td>
                            </tr> 
                            <tr>
                                <td style="color: #0033CC; font-weight: bold;">Startovn� listina:
                                </td>
                                <td style="color: #FF3300"><a href="http://www.vysocinacycling.cz/files/PrezenceDO2017.pdf" onclick="ga('send', 'event', 'PDF', 'View', 'Startovn� listina Dukovansk� okruhy 2016');" target="_blank">PrezenceDO2017.pdf</a>
                                </td>
                            </tr>
                            <tr>
                                <td style="color: #0033CC; font-weight: bold;">V�sledky:
                                </td>
                                <td style="color: #FF3300"><a href="http://www.vysocinacycling.cz/files/VysledkyDO2017.pdf" onclick="ga('send', 'event', 'PDF', 'View', 'V�sledky Dukovansk� okruhy 2016');" target="_blank">VysledkyDO2017.pdf</a>
                                </td>
                            </tr>     
                            <tr>
                                <td style="color: #0033CC; font-weight: bold;">�l�nek:
                                </td>
                                <td style="color: #FF3300"><a href="http://www.vysocinacycling.cz/Default.aspx?NewsId=192">Dukovansk� okruhy 2017 ovl�dl V�clav Ne�erka</a>
                                </td>
                            </tr>
                            <tr>
                                <td style="color: #0066CC; font-weight: bold; padding-top: 20px">Ro�n�k 2016:
                                </td>
                                <td>
                                </td>
                            </tr>
                            <tr>
                                <td style="color: #0033CC; font-weight: bold;">P�ihl�en� z�vodn�ci:
                                </td>
                                <td style="color: #FF3300"><a href="http://www.vysocinacycling.cz/files/RegistraceDO2016.pdf" onclick="ga('send', 'event', 'PDF', 'View', 'P�ihl�ky Dukovansk� okruhy 2016');" target="_blank">RegistraceDO2016.pdf</a>
                                </td>
                            </tr> 
                            <tr>
                                <td style="color: #0033CC; font-weight: bold;">Startovn� listina:
                                </td>
                                <td style="color: #FF3300"><a href="http://www.vysocinacycling.cz/files/PrezenceDO2016.pdf" onclick="ga('send', 'event', 'PDF', 'View', 'Startovn� listina Dukovansk� okruhy 2016');" target="_blank">PrezenceDO2016.pdf</a>
                                </td>
                            </tr>
                            <tr>
                                <td style="color: #0033CC; font-weight: bold;">V�sledky:
                                </td>
                                <td style="color: #FF3300"><a href="http://www.vysocinacycling.cz/files/VysledkyDO2016.pdf" onclick="ga('send', 'event', 'PDF', 'View', 'V�sledky Dukovansk� okruhy 2016');" target="_blank">VysledkyDO2016.pdf</a>
                                </td>
                            </tr>     
                            <tr>
                                <td style="color: #0033CC; font-weight: bold;">�l�nek:
                                </td>
                                <td style="color: #FF3300"><a href="http://www.vysocinacycling.cz/Default.aspx?NewsId=182">Spar�an Jon� Vojt�ch v�t�zem Dukovansk�ch okruh� 2016</a>
                                </td>
                            </tr>
                            <tr>
                                <td style="color: #0066CC; font-weight: bold; padding-top: 20px">Ro�n�k 2015:
                                </td>
                                <td>
                                </td>
                            </tr>
                            <tr>
                                <td style="color: #0033CC; font-weight: bold;">P�ihl�en� z�vodn�ci:
                                </td>
                                <td style="color: #FF3300"><a href="http://www.vysocinacycling.cz/files/DukovanskeOkruhy2015-prihlasky.pdf" onclick="ga('send', 'event', 'PDF', 'View', 'P�ihl�ky Dukovansk� okruhy 2015');" target="_blank">DukovanskeOkruhy2015-prihlasky.pdf</a>
                                </td>
                            </tr>
                            <tr>
                                <td style="color: #0033CC; font-weight: bold;">Startovn� listina:
                                </td>
                                <td style="color: #FF3300"><a href="http://www.vysocinacycling.cz/files/DukovanskeOkruhy2015-startovka.pdf" onclick="ga('send', 'event', 'PDF', 'View', 'Startovn� listina Dukovansk� okruhy 2015');" target="_blank">DukovanskeOkruhy2015-startovka.pdf</a>
                                </td>
                            </tr>
                            <tr>
                                <td style="color: #0033CC; font-weight: bold;">V�sledky:
                                </td>
                                <td style="color: #FF3300"><a href="http://www.vysocinacycling.cz/files/DukovanskeOkruhy2015-vysledky.pdf" onclick="ga('send', 'event', 'PDF', 'View', 'V�sledky Dukovansk� okruhy 2015');" target="_blank">DukovanskeOkruhy2015-vysledky.pdf</a>
                                </td>
                            </tr>   
                            <tr>
                                <td style="color: #0033CC; font-weight: bold;">�l�nek:
                                </td>
                                <td style="color: #FF3300"><a href="http://www.vysocinacycling.cz/Default.aspx?NewsId=167">David Dvorsk� v�t�zem Dukovansk�ch okruh�</a>
                                </td>
                            </tr>
                        </table>
                    </div>
            </div>
        </div>
     </div>
</asp:Content>
