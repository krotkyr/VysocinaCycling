<%@ Page Title="Vyso�ina Cycling - T�m" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="tym.aspx.cs" Inherits="Tym" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <meta property="og:description" content="Tento projekt je zam��en na podporu v�konnostn� cyklistiky na Vyso�in�, a to p�edev��m cyklistiky silni�n�. Na str�nce T�m naleznete informace o t�mu Vyso�ina cycling a m��ete se zde tak� zaregistrovat. P�ihl�en� �lenov� a p��znivci t�mu zde naleznou dal�� informace." />
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
    <div id="dialogupravaclenstvi" title="�prava �daj�" style="display: none">
        <p>
            Zde m��ete upravit n�kter� parametry Va�eho �lenstv�. Pokud chcete upravit �daj, kter� zde nen� 
            uveden, napi�te mi, nebo starou registraci sma�te a zaregistrujte se znovu.</p>
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
                        <asp:ListItem>Vyso�ina</asp:ListItem>
                        <asp:ListItem>Jihomoravsk�</asp:ListItem>
                        <asp:ListItem>Jiho�esk�</asp:ListItem>
                        <asp:ListItem>Karlovarsk�</asp:ListItem>
                        <asp:ListItem>Kr�lov�hradeck�</asp:ListItem>
                        <asp:ListItem>Libereck�</asp:ListItem>
                        <asp:ListItem>Moravskoslezsk�</asp:ListItem>
                        <asp:ListItem>Olomouck�</asp:ListItem>
                        <asp:ListItem>Pardubick�</asp:ListItem>
                        <asp:ListItem>Plze�sk�</asp:ListItem>
                        <asp:ListItem>Praha</asp:ListItem>
                        <asp:ListItem>St�edo�esk�</asp:ListItem>
                        <asp:ListItem>�steck�</asp:ListItem>
                        <asp:ListItem>Zl�nsk�</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td style="width: 110px">
                    �rove�:
                </td>
                <td>
                    <asp:DropDownList ID="DropDownListUUroven" runat="server" style="width:145px">
                        <asp:ListItem>Rekrea�n� jezdec</asp:ListItem>
                        <asp:ListItem>Hobby jezdec</asp:ListItem>
                        <asp:ListItem>Aktivn� z�vodn�k</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td style="width: 110px">
                    Chci b�t:
                </td>
                <td>
                    <asp:DropDownList ID="DropDownListUClen" runat="server" style="width:145px">
                        <asp:ListItem>P��znivec t�mu</asp:ListItem>
                        <asp:ListItem>Pasivn� �len</asp:ListItem>
                        <asp:ListItem>Aktivn� �len</asp:ListItem>
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
                        <asp:ListItem>Dr�ha</asp:ListItem>
                        <asp:ListItem>Jin� discipl�na</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td style="width: 110px">
                    Po�as�:
                </td>
                <td>
                    <asp:DropDownList ID="DropDownListUPocasi" runat="server" style="width:145px">
                        <asp:ListItem>Da�ice</asp:ListItem>
                        <asp:ListItem>Havl��k�v Brod</asp:ListItem>
                        <asp:ListItem>Jihlava</asp:ListItem>
                        <asp:ListItem>Kosteln� Myslov�</asp:ListItem>
                        <asp:ListItem>Moravsk� Bud�jovice</asp:ListItem>
                        <asp:ListItem>N�m욝</asp:ListItem>
                        <asp:ListItem>P�ibyslav</asp:ListItem>
                        <asp:ListItem>Tel�</asp:ListItem>
                        <asp:ListItem>T�eb��</asp:ListItem>
                        <asp:ListItem>Velk� Mezi����</asp:ListItem>
                        <asp:ListItem>���r nad S�zavou</asp:ListItem>
                        <asp:ListItem>Brno</asp:ListItem>
                        <asp:ListItem>�esk� Bud�jovice</asp:ListItem>
                        <asp:ListItem>Hodon�n</asp:ListItem>
                        <asp:ListItem>Jind�ich�v Hradec</asp:ListItem>
                        <asp:ListItem>Karlovy Vary</asp:ListItem>
                        <asp:ListItem>Liberec</asp:ListItem>
                        <asp:ListItem>Olomouc</asp:ListItem>
                        <asp:ListItem>Ostrava</asp:ListItem>
                        <asp:ListItem>Pardubice</asp:ListItem>
                        <asp:ListItem>Plze�</asp:ListItem>
                        <asp:ListItem>Praha</asp:ListItem>
                        <asp:ListItem>T�bor</asp:ListItem>
                        <asp:ListItem>Zl�n</asp:ListItem>
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
    <div id="dialogzrusitclenstvi" title="Zru�en� �lenstv�" style="display: none">
        <p>
            Pokud dokon��te tuto akci, bude smaz�n V� ��et se v�emi souvisej�c�mi daty. Chcete-li d�l vyu��vat v�hod na�ich str�nek, sta�te se alespo� na��m p��znivcem a zvolte funkci "Upravit �daje".</p>
        <table>
            <tr>
                <td style="width: 120px">
                    U�ivatelsk� jm�no:
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
    <div id="dialogzmenahesla" title="Zm�na hesla" style="display: none">
        <p>
            Heslo mus� m�t minim�ln� 7 znak�.</p>
        <table>
            <tr>
                <td style="width: 120px;">
                    Star� heslo:
                </td>
                <td style="width: 200px">
                    <asp:TextBox ID="TextBoxStareHeslo" runat="server" TextMode="Password" style="width:140px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 110px">
                    Nov� heslo:
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
    <div id="dialogPridatZavod" title="P�id�n� z�vodu" style="display: none">
        <p>
            Vypl�te v�echna pole.</p>
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
                        ErrorMessage="Pole mus� obsahovat pouze ��selnou hodnotu."
                        Display="Dynamic"
                        ForeColor="Red" />
                </td>
            </tr>
            <tr>
                <td style="width: 110px">
                    M�sto:
                </td>
                <td>
                    <asp:TextBox ID="TextBoxPZMisto" runat="server" TextMode="SingleLine" style="width:140px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 110px">
                    N�zev z�vodu:
                </td>
                <td>
                    <asp:TextBox ID="TextBoxPZNazev" runat="server" TextMode="SingleLine" style="width:140px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 110px">
                    D�lka:
                </td>
                <td>
                    <asp:TextBox ID="TextBoxPZDelka" runat="server" TextMode="SingleLine" style="width:140px"></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator3" runat="server" Operator="DataTypeCheck"
                        Type="Integer"
                        ControlToValidate="TextBoxPZDelka"
                        ErrorMessage="Pole mus� obsahovat pouze ��selnou hodnotu."
                        Display="Dynamic"
                        ForeColor="Red" />
                </td>
            </tr>
            <tr>
                <td style="width: 110px">
                    �as:
                </td>
                <td>
                    <asp:TextBox ID="TextBoxPZCas" runat="server" TextMode="SingleLine" style="width:140px"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"
                        ControlToValidate="TextBoxPZCas"
                        ValidationExpression="^([0-1]?[0-9]|[2][0-3]):([0-5][0-9]):([0-5][0-9])$"
                        ErrorMessage="Pole mus� obsahovat hodnotu ve form�tu hh:mm:ss."
                        Display="Dynamic"
                        ForeColor="Red" />
                </td>
            </tr>
            <tr>
                <td style="width: 110px">
                    Celkov� um�st�n�:
                </td>
                <td>
                    <asp:TextBox ID="TextBoxPZUmisteniCelkove" runat="server" TextMode="SingleLine" style="width:140px"></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" Operator="DataTypeCheck"
                        Type="Integer"
                        ControlToValidate="TextBoxPZUmisteniCelkove"
                        ErrorMessage="Pole mus� obsahovat pouze ��selnou hodnotu."
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
                    Um�st�n� v kategorii:
                </td>
                <td>
                    <asp:TextBox ID="TextBoxPZUmisteniKategorie" runat="server" TextMode="SingleLine" style="width:140px"></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator2" runat="server" Operator="DataTypeCheck"
                        Type="Integer"
                        ControlToValidate="TextBoxPZUmisteniKategorie"
                        ErrorMessage="Pole mus� obsahovat pouze ��selnou hodnotu."
                        Display="Dynamic"
                        ForeColor="Red" />
                </td>
            </tr>
        </table>
    </div>
    <div id="dialogSmazatZavod" title="Smaz�n� z�vodu" style="display: none">
        <p>
            Pro kontrolu mus�te vyplnit v�echna pole.</p>
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
                    N�zev z�vodu:
                </td>
                <td>
                    <asp:TextBox ID="TextBoxSZNazev" runat="server" TextMode="SingleLine" Width="140px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 110px">
                    D�lka:
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
                <li id="Li20"><a href="#tab-20">T�m Vyso�ina Cycling</a></li>
                <li id="Li21"><a href="#tab-21">�lenstv�</a></li>
                <li id="Li22"><a href="#tab-22">�lenov�</a></li>
                <li id="Li23"><a href="#tab-23">Pro �leny</a></li>
                <li id="Li24"><a href="#tab-24">Info</a></li>
                <li id="Li25"><a href="#tab-25">Dresy</a></li>
                <li id="Li26"><a href="#tab-26">Sponzo�i</a></li>
                <li id="Li27"><a href="#tab-27">V�sledky</a></li>
                <li id="Li28"><a href="#tab-28">Fotogalerie z�vody</a></li>
                <li id="Li29"><a href="#tab-29">Spole�n� tr�ninky</a></li>
            </ul>
            <div id="tab-20" class="clasictext">
                <ul id="ZavodniciVysocina" class="paging12"> 
                    <li>
                        <div class="clanek" style="padding-top: 15px; text-align: center; font-weight: bold;
                            font-size: small;">
                            Veden� t�mu
                        </div>
                    </li>  
                    <li>
                        <div class="clanek">
                            <table>
                                <tr>
                                    <td valign="top">
                                        <br />
                                        <a href="images/Foto/RK_web.jpg" title="Rostislav Krotk�">
                                            <img src="images/Foto/thumb_RK_web.jpg" alt="Rostislav Krotk�" border="0" /></a>
                                    </td>
                                    <td>
                                        <div style="width: 10px">
                                        </div>
                                    </td>
                                    <td valign="top" align="left">
                                        <h1 class="nadpish1">Rostislav Krotk�
                                        </h1>
                                        <strong>V�k: </strong>
                                        <br />
                                        <strong>V�ha / v��ka: </strong>
                                        <br />
                                        <strong>Bydli�t�: </strong>
                                        <br />
                                        <strong>Za��tek cyklistick� kari�ry: </strong>
                                        <br />
                                        <strong>Typ z�vodn�ka: </strong>
                                        <br />
                                        <strong>Ostatn� obl�ben� sporty: </strong>
                                        <br />
                                        <strong>Vzd�l�n�: </strong>
                                        <br />
                                        <strong>Zam�stn�n�: </strong>
                                        <br />
                                        <strong>Motto: </strong>
                                        <br />
                                        <br />
                                        <br />
                                    </td>
                                    <td valign="top" align="left">
                                        <h1 class="nadpish1" style="visibility: hidden">Veden� t�mu
                                        </h1>
                                        39 let<br />
                                        77 kg / 179 cm<br />
                                        Lipn�k (okr. T�eb��)<br />
                                        16 let<br />
                                        Univerz�l<br />
                                        B�eck� ly�ov�n�<br />
                                        VUT Brno, Ing.<br />
                                        Profi cyklista - AC Sparta Praha, programov�n�<br />
                                        Co t� nezabije, to t� pos�l�.<br />
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
                                        <strong>V�k: </strong>
                                        <br />
                                        <strong>V�ha / v��ka: </strong>
                                        <br />
                                        <strong>Bydli�t�: </strong>
                                        <br />
                                        <strong>Za��tek cyklistick� kari�ry: </strong>
                                        <br />
                                        <strong>Typ z�vodn�ka: </strong>
                                        <br />
                                        <strong>Ostatn� obl�ben� sporty: </strong>
                                        <br />
                                        <strong>Vzd�l�n�: </strong>
                                        <br />
                                        <strong>Zam�stn�n�: </strong>
                                        <br />
                                        <strong>Motto: </strong>
                                        <br />
                                        <br />
                                        <br />
                                    </td>
                                    <td valign="top" align="left">
                                        <h1 class="nadpish1" style="visibility: hidden">Veden� t�mu
                                        </h1>
                                        38 let<br />
                                        82 kg / 175 cm<br />
                                        Hv�zdo�ovice (okr. T�eb��)<br />
                                        33 let<br />
                                        Tempa�<br />
                                        Posilovna, b�h, b�eck� ly�ov�n�<br />
                                        Ve�ejnopr�vn� Jihlava<br />
                                        St�tn� zam�stnanec<br />
                                        Poznej svou konkurenci. Vyhni se jejich siln�m a vyu�ij jejich slab� str�nky.<br />
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
                            Z�vodn�ci kategorie ELITE
                        </div>
                    </li>
                    <li>
                        <div class="clanek">
                            <table>
                                <tr>
                                    <td valign="top">
                                        <br />
                                        <a href="images/Foto/NoImage.jpg" title="Pavel Kopeck�">
                                            <img src="images/Foto/NoImage.jpg" alt="Pavel Kopeck�" border="0" /></a>
                                    </td>
                                    <td>
                                        <div style="width: 10px">
                                        </div>
                                    </td>
                                    <td valign="top" align="left">
                                        <h1 class="nadpish1">Pavel Kopeck�
                                        </h1>
                                        <strong>V�k: </strong>
                                        <br />
                                        <strong>V�ha / v��ka: </strong>
                                        <br />
                                        <strong>Bydli�t�: </strong>
                                        <br />
                                        <strong>Za��tek cyklistick� kari�ry: </strong>
                                        <br />
                                        <strong>Typ z�vodn�ka: </strong>
                                        <br />
                                        <strong>Ostatn� obl�ben� sporty: </strong>
                                        <br />
                                        <strong>Vzd�l�n�: </strong>
                                        <br />
                                        <strong>Zam�stn�n�: </strong>
                                        <br />
                                        <strong>Motto: </strong>
                                        <br />
                                        <br />
                                        <br />
                                    </td>
                                    <td valign="top" align="left">
                                        <h1 class="nadpish1" style="visibility: hidden">Veden� t�mu
                                        </h1>
                                        21 let<br />
                                        72 kg / 174 cm<br />
                                        Beroun<br />
                                        13 let<br />
                                        Tempa�<br />
                                        Posilovna, b�h, b�eck� ly�ov�n�<br />
                                        Univerzita Karlova - pr�vnick� fakulta<br />
                                        Student<br />
                                        Chyb�.<br />
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
                                        <a href="images/Foto/NoImage.jpg" title="Ji�� Virgl">
                                            <img src="images/Foto/NoImage.jpg" alt="Ji�� Virgl" border="0" /></a>
                                    </td>
                                    <td>
                                        <div style="width: 10px">
                                        </div>
                                    </td>
                                    <td valign="top" align="left">
                                        <h1 class="nadpish1">Ji�� Virgl
                                        </h1>
                                        <strong>V�k: </strong>
                                        <br />
                                        <strong>V�ha / v��ka: </strong>
                                        <br />
                                        <strong>Bydli�t�: </strong>
                                        <br />
                                        <strong>Za��tek cyklistick� kari�ry: </strong>
                                        <br />
                                        <strong>Typ z�vodn�ka: </strong>
                                        <br />
                                        <strong>Ostatn� obl�ben� sporty: </strong>
                                        <br />
                                        <strong>Vzd�l�n�: </strong>
                                        <br />
                                        <strong>Zam�stn�n�: </strong>
                                        <br />
                                        <strong>Motto: </strong>
                                        <br />
                                        <br />
                                        <br />
                                    </td>
                                    <td valign="top" align="left">
                                        <h1 class="nadpish1" style="visibility: hidden">Veden� t�mu
                                        </h1>
                                        18 let<br />
                                        65 kg / 176 cm<br />
                                        Budkov (okr. T�eb��)<br />
                                        16 let<br />
                                        Vrcha�<br />
                                        Posilovna, b�h, plav�n�<br />
                                        St�edn� ekonomick� �kola<br />
                                        Student<br />
                                        Chyb�.<br />
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
                            Z�vodn�ci kategorie JUNIOR
                        </div>
                    </li>                           
                    <li>
                        <div class="clanek" style="padding-top: 15px; text-align: center; font-weight: bold;
                            font-size: small;">
                            Z�vodn�ci kategorie KADET
                        </div>
                    </li>   
                    <li>
                        <div class="clanek">
                            <table>
                                <tr>
                                    <td valign="top">
                                        <br />
                                        <a href="images/Foto/NoImage.jpg" title="Dominik Mol�k">
                                            <img src="images/Foto/NoImage.jpg" alt="Dominik Mol�k" border="0" /></a>
                                    </td>
                                    <td>
                                        <div style="width: 10px">
                                        </div>
                                    </td>
                                    <td valign="top" align="left">
                                        <h1 class="nadpish1">Dominik Mol�k
                                        </h1>
                                        <strong>V�k: </strong>
                                        <br />
                                        <strong>V�ha / v��ka: </strong>
                                        <br />
                                        <strong>Bydli�t�: </strong>
                                        <br />
                                        <strong>Za��tek cyklistick� kari�ry: </strong>
                                        <br />
                                        <strong>Typ z�vodn�ka: </strong>
                                        <br />
                                        <strong>Ostatn� obl�ben� sporty: </strong>
                                        <br />
                                        <strong>Vzd�l�n�: </strong>
                                        <br />
                                        <strong>Zam�stn�n�: </strong>
                                        <br />
                                        <strong>Motto: </strong>
                                        <br />
                                        <br />
                                        <br />
                                    </td>
                                    <td valign="top" align="left">
                                        <h1 class="nadpish1" style="visibility: hidden">Z�vodn�k
                                        </h1>
                                        15 let<br />
                                        Chyb�.<br />
                                        Ok�e�ice (okr. T�eb��)<br />
                                        14 let<br />
                                        Vrcha�<br />
                                        Chyb�.<br />
                                        Z�kladn� �kola<br />
                                        Student<br />
                                        Chyb�.<br />
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
                            Z�vodn�ci kategorie STAR�� ��K
                        </div>
                    </li>   
                    <li>
                        <div class="clanek">
                            <table>
                                <tr>
                                    <td valign="top">
                                        <br />
                                        <a href="images/Foto/NoImage.jpg" title="�t�p�n �irok�">
                                            <img src="images/Foto/NoImage.jpg" alt="�t�p�n �irok�" border="0" /></a>
                                    </td>
                                    <td>
                                        <div style="width: 10px">
                                        </div>
                                    </td>
                                    <td valign="top" align="left">
                                        <h1 class="nadpish1">�t�p�n �irok�
                                        </h1>
                                        <strong>V�k: </strong>
                                        <br />
                                        <strong>V�ha / v��ka: </strong>
                                        <br />
                                        <strong>Bydli�t�: </strong>
                                        <br />
                                        <strong>Za��tek cyklistick� kari�ry: </strong>
                                        <br />
                                        <strong>Typ z�vodn�ka: </strong>
                                        <br />
                                        <strong>Ostatn� obl�ben� sporty: </strong>
                                        <br />
                                        <strong>Vzd�l�n�: </strong>
                                        <br />
                                        <strong>Zam�stn�n�: </strong>
                                        <br />
                                        <strong>Motto: </strong>
                                        <br />
                                        <br />
                                        <br />
                                    </td>
                                    <td valign="top" align="left"><h1 class="nadpish1" style="visibility: hidden">Z�vodn�k
                                        </h1>
                                        15 let<br />
                                        Chyb�.<br />
                                        Kralice (okr. T�eb��)<br />
                                        14 let<br />
                                        Univerz�l.<br />
                                        Chyb�.<br />
                                        Z�kladn� �kola<br />
                                        Student<br />
                                        Chyb�.<br />
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
                        Historie t�mu Vyso�ina Cycling
                      </div>   
                    </li> 
                    <li>
                        <div style="padding-top: 15px; text-align: center; font-weight: bold; font-size: medium; padding-bottom: 15px;">
                            T�m Vyso�ina Cycling 2013
                        </div>
                    </li>
                    <li>
                        <div class="clanek" style="padding-top: 15px; text-align: center; font-weight: bold; font-size: small;">
                            T�mov� karta
                        </div>
                    </li>
                    <li>
                        <div class="clanek">
                            <br />
                            <a href="images/Foto/TymKartaVysocinaCycling_4-2013.jpg" title="T�m Vyso�ina Cycling 2013">
                                <img src="images/Foto/TymKartaVysocinaCycling_4-2013_900x600.jpg" alt="T�m Vyso�ina Cycling 2013"
                                    border="0" style="padding: 13px" /></a>
                        </div>
                    </li>      
                    <li>
                        <div class="clanek" style="padding-top: 15px; text-align: center; font-weight: bold;
                            font-size: small;">
                            Z�vodn�ci kategorie ELITE
                        </div>
                    </li>
                    <li>
                        <div class="clanek">
                            <table>
                                <tr>
                                    <td valign="top">
                                        <br />
                                        <a href="images/Foto/JS_web.jpg" title="Jaroslav Sl�ma">
                                            <img src="images/Foto/thumb_JS_web.jpg" alt="Jaroslav Sl�ma" border="0" /></a>
                                    </td>
                                    <td>
                                        <div style="width: 10px">
                                        </div>
                                    </td>
                                    <td valign="top" align="left">
                                        <h1 class="nadpish1">
                                            Jaroslav Sl�ma
                                        </h1>
                                        <strong>V�k: </strong>
                                        <br />
                                        <strong>V�ha / v��ka: </strong>
                                        <br />
                                        <strong>Bydli�t�: </strong>
                                        <br />
                                        <strong>Za��tek cyklistick� kari�ry: </strong>
                                        <br />
                                        <strong>Typ z�vodn�ka: </strong>
                                        <br />
                                        <strong>Ostatn� obl�ben� sporty: </strong>
                                        <br />
                                        <strong>Vzd�l�n�: </strong>
                                        <br />
                                        <strong>Zam�stn�n�: </strong>
                                        <br />
                                        <strong>Motto: </strong>
                                        <br />
                                        <br />
                                        <br />
                                    </td>
                                    <td valign="top" align="left">
                                        <h1 class="nadpish1" style="visibility: hidden">
                                            �len t�mu
                                        </h1>
                                        22 let<br />
                                        76 kg / 186 cm<br />
                                        K�i�anov (okr. ���r nad S�zavou)<br />
                                        19 let<br />
                                        Univerz�l<br />
                                        B�eck� ly�ov�n�<br />
                                        Gymn�zium Vincence Makovsk�ho se sportovn�mi t��dami v Nov�m M�st� na Morav�<br />
                                        Student<br />
                                        Kdy� u� nem��e�, tak m��e� je�t� 3kr�t. <br />
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
                                        <a href="images/Foto/TP_web.jpg" title="Tom� Poslu�n�">
                                            <img src="images/Foto/thumb_TP_web.jpg" alt="Tom� Poslu�n�" border="0" /></a>
                                    </td>
                                    <td>
                                        <div style="width: 10px">
                                        </div>
                                    </td>
                                    <td valign="top" align="left">
                                        <h1 class="nadpish1">
                                            Tom� Poslu�n�
                                        </h1>
                                        <strong>V�k: </strong>
                                        <br />
                                        <strong>V�ha / v��ka: </strong>
                                        <br />
                                        <strong>Bydli�t�: </strong>
                                        <br />
                                        <strong>Za��tek cyklistick� kari�ry: </strong>
                                        <br />
                                        <strong>Typ z�vodn�ka: </strong>
                                        <br />
                                        <strong>Ostatn� obl�ben� sporty: </strong>
                                        <br />
                                        <strong>Vzd�l�n�: </strong>
                                        <br />
                                        <strong>Zam�stn�n�: </strong>
                                        <br />
                                        <strong>Motto: </strong>
                                        <br />
                                        <br />
                                        <br />
                                    </td>
                                    <td valign="top" align="left">
                                        <h1 class="nadpish1" style="visibility: hidden">
                                            �len t�mu
                                        </h1>
                                        23 let<br />
                                        76 kg / 193 cm<br />
                                        Horn� Cerekev (okr. Pelh�imov)<br />
                                        18 let<br />
                                        Univerz�l / vrcha�<br />
                                        B�eck� ly�ov�n�, stoln� tenis<br />
                                        S� Pelh�imov<br />
                                        Truhl�� - v�roba n�bytku<br />
                                        V�eho zkou�ej ale jen dobr�ho se p�idr�uj.<br />
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
                                        <a href="images/Foto/MC_web.jpg" title="Martin �ervenka">
                                            <img src="images/Foto/thumb_MC_web.jpg" alt="Martin �ervenka" border="0" /></a>
                                    </td>
                                    <td>
                                        <div style="width: 10px">
                                        </div>
                                    </td>
                                    <td valign="top" align="left">
                                        <h1 class="nadpish1">Martin �ervenka
                                        </h1>
                                        <strong>V�k: </strong>
                                        <br />
                                        <strong>V�ha / v��ka: </strong>
                                        <br />
                                        <strong>Bydli�t�: </strong>
                                        <br />
                                        <strong>Za��tek cyklistick� kari�ry: </strong>
                                        <br />
                                        <strong>Typ z�vodn�ka: </strong>
                                        <br />
                                        <strong>Ostatn� obl�ben� sporty: </strong>
                                        <br />
                                        <strong>Vzd�l�n�: </strong>
                                        <br />
                                        <strong>Zam�stn�n�: </strong>
                                        <br />
                                        <strong>Motto: </strong>
                                        <br />
                                        <br />
                                        <br />
                                    </td>
                                    <td valign="top" align="left">
                                        <h1 class="nadpish1" style="visibility: hidden">�len t�mu
                                        </h1>
                                        29 let<br />
                                        70 kg / 185 cm<br />
                                        Pole u Blatn� (okr. Strakonice)<br />
                                        15 let<br />
                                        Vrcha�<br />
                                        Badminton, tanec, b�h<br />
                                        Z�U v Plzni, katedra konstruov�n� energetick�ch stroj� a za��zen�<br />
                                        MPOWER Engineering, obchodn� z�stupce a projektov� mana�er<br />
                                        Neb�t se a nekr�st.
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
                                        <a href="images/Foto/NoImage.jpg" title="Vojt�ch Str�nsk�">
                                            <img src="images/Foto/NoImage.jpg" alt="Vojt�ch Str�nsk�" border="0" /></a>
                                    </td>
                                    <td>
                                        <div style="width: 10px">
                                        </div>
                                    </td>
                                    <td valign="top" align="left">
                                        <h1 class="nadpish1">
                                            Vojt�ch Str�nsk�
                                        </h1>
                                        <strong>V�k: </strong>
                                        <br />
                                        <strong>V�ha / v��ka: </strong>
                                        <br />
                                        <strong>Bydli�t�: </strong>
                                        <br />
                                        <strong>Za��tek cyklistick� kari�ry: </strong>
                                        <br />
                                        <strong>Typ z�vodn�ka: </strong>
                                        <br />
                                        <strong>Ostatn� obl�ben� sporty: </strong>
                                        <br />
                                        <strong>Vzd�l�n�: </strong>
                                        <br />
                                        <strong>Zam�stn�n�: </strong>
                                        <br />
                                        <strong>Motto: </strong>
                                        <br />
                                        <br />
                                        <br />
                                    </td>
                                    <td valign="top" align="left">
                                        <h1 class="nadpish1" style="visibility: hidden">
                                            �len t�mu
                                        </h1>
                                        24 let<br />
                                        76 kg / 189 cm<br />
                                        Kralupy nad Vltavou<br />
                                        14 let<br />
                                        Univerz�l<br />
                                        MTB<br />
                                        <br />
                                        Student<br />
                                        Chyb�<br />
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
                                        <a href="images/Foto/OP_web.jpg" title="Ond�ej Prchal">
                                            <img src="images/Foto/thumb_OP_web.jpg" alt="Ond�ej Prchal" border="0" /></a>
                                    </td>
                                    <td>
                                        <div style="width: 10px">
                                        </div>
                                    </td>
                                    <td valign="top" align="left">
                                        <h1 class="nadpish1">Ond�ej Prchal
                                        </h1>
                                        <strong>V�k: </strong>
                                        <br />
                                        <strong>V�ha / v��ka: </strong>
                                        <br />
                                        <strong>Bydli�t�: </strong>
                                        <br />
                                        <strong>Za��tek cyklistick� kari�ry: </strong>
                                        <br />
                                        <strong>Typ z�vodn�ka: </strong>
                                        <br />
                                        <strong>Ostatn� obl�ben� sporty: </strong>
                                        <br />
                                        <strong>Vzd�l�n�: </strong>
                                        <br />
                                        <strong>Zam�stn�n�: </strong>
                                        <br />
                                        <strong>Motto: </strong>
                                        <br />
                                        <br />
                                        <br />
                                    </td>
                                    <td valign="top" align="left">
                                        <h1 class="nadpish1" style="visibility: hidden">�len t�mu
                                        </h1>
                                        25 let<br />
                                        78 kg / 190 cm<br />
                                        Jihlava<br />
                                        15 let<br />
                                        Univerz�l, sprinter<br />
                                        Plav�n�, b�eck� ly�ov�n�<br />
                                        VUT Brno<br />
                                        Student<br />
                                        Kdy� nem��e�, pozn� a� ve schlussbusu.
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
                                        <a href="images/Foto/LF_web.jpg" title="Luk� Fr�ba">
                                            <img src="images/Foto/thumb_LF_web.jpg" alt="Luk� Fr�ba" border="0" /></a>
                                    </td>
                                    <td>
                                        <div style="width: 10px">
                                        </div>
                                    </td>
                                    <td valign="top" align="left">
                                        <h1 class="nadpish1">Luk� Fr�ba
                                        </h1>
                                        <strong>V�k: </strong>
                                        <br />
                                        <strong>V�ha / v��ka: </strong>
                                        <br />
                                        <strong>Bydli�t�: </strong>
                                        <br />
                                        <strong>Za��tek cyklistick� kari�ry: </strong>
                                        <br />
                                        <strong>Typ z�vodn�ka: </strong>
                                        <br />
                                        <strong>Ostatn� obl�ben� sporty: </strong>
                                        <br />
                                        <strong>Vzd�l�n�: </strong>
                                        <br />
                                        <strong>Zam�stn�n�: </strong>
                                        <br />
                                        <strong>Motto: </strong>
                                        <br />
                                        <br />
                                        <br />
                                    </td>
                                    <td valign="top" align="left">
                                        <h1 class="nadpish1" style="visibility: hidden">�len t�mu
                                        </h1>
                                        30 let<br />
                                        80 kg / 187 cm<br />
                                        T�eb��<br />
                                        8 let - BMX<br />
                                        Tempa�<br />
                                        Rally<br />
                                        Hotelov� �kola T�eb��<br />
                                        Pono�k��<br />
                                        Lep�� sho�et ne� vyhasnout.
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
                                        <strong>V�k: </strong>
                                        <br />
                                        <strong>V�ha / v��ka: </strong>
                                        <br />
                                        <strong>Bydli�t�: </strong>
                                        <br />
                                        <strong>Za��tek cyklistick� kari�ry: </strong>
                                        <br />
                                        <strong>Typ z�vodn�ka: </strong>
                                        <br />
                                        <strong>Ostatn� obl�ben� sporty: </strong>
                                        <br />
                                        <strong>Vzd�l�n�: </strong>
                                        <br />
                                        <strong>Zam�stn�n�: </strong>
                                        <br />
                                        <strong>Motto: </strong>
                                        <br />
                                        <br />
                                        <br />
                                    </td>
                                    <td valign="top" align="left">
                                        <h1 class="nadpish1" style="visibility: hidden">�len t�mu
                                        </h1>
                                        19 let<br />
                                        68 kg / 182 cm<br />
                                        Heraltice (okr. T�eb��)<br />
                                        18 let<br />
                                        Univerz�l<br />
                                        Fotbal, b�eck� ly�ov�n�<br />
                                        Gymn�zium T�eb��<br />
                                        Student<br />
                                        Jak chce� b�t nejlep��, kdy� jsi dnes nic ned�lal !?
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
                                        <a href="images/Foto/OS_web.jpg" title="Ond�ej Svobodn�k">
                                            <img src="images/Foto/thumb_OS_web.jpg" alt="Ond�ej Svobodn�k" border="0" /></a>
                                    </td>
                                    <td>
                                        <div style="width: 10px">
                                        </div>
                                    </td>
                                    <td valign="top" align="left">
                                        <h1 class="nadpish1">Ond�ej Svobodn�k
                                        </h1>
                                        <strong>V�k: </strong>
                                        <br />
                                        <strong>V�ha / v��ka: </strong>
                                        <br />
                                        <strong>Bydli�t�: </strong>
                                        <br />
                                        <strong>Za��tek cyklistick� kari�ry: </strong>
                                        <br />
                                        <strong>Typ z�vodn�ka: </strong>
                                        <br />
                                        <strong>Ostatn� obl�ben� sporty: </strong>
                                        <br />
                                        <strong>Vzd�l�n�: </strong>
                                        <br />
                                        <strong>Zam�stn�n�: </strong>
                                        <br />
                                        <strong>Motto: </strong>
                                        <br />
                                        <br />
                                        <br />
                                    </td>
                                    <td valign="top" align="left">
                                        <h1 class="nadpish1" style="visibility: hidden">�len t�mu
                                        </h1>
                                        20 let<br />
                                        70 kg / 181 cm<br />
                                        Jihlava<br />
                                        19 let<br />
                                        Univerz�l<br />
                                        Hokej, tenis<br />
                                        Vysok� �kola<br />
                                        Student<br />
                                        Nikdy se nevzd�vej  !
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
                            Z�vodn�ci kategorie JUNIOR
                        </div>
                    </li>
                    <li>
                        <div class="clanek">
                            <table>
                                <tr>
                                    <td valign="top">
                                        <br />
                                        <a href="images/Foto/NoImage.jpg" title="V�t Musil">
                                            <img src="images/Foto/NoImage.jpg" alt="V�t Musil" border="0" /></a>
                                    </td>
                                    <td>
                                        <div style="width: 10px">
                                        </div>
                                    </td>
                                    <td valign="top" align="left">
                                        <h1 class="nadpish1">V�t Musil
                                        </h1>
                                        <strong>V�k: </strong>
                                        <br />
                                        <strong>V�ha / v��ka: </strong>
                                        <br />
                                        <strong>Bydli�t�: </strong>
                                        <br />
                                        <strong>Za��tek cyklistick� kari�ry: </strong>
                                        <br />
                                        <strong>Typ z�vodn�ka: </strong>
                                        <br />
                                        <strong>Ostatn� obl�ben� sporty: </strong>
                                        <br />
                                        <strong>Vzd�l�n�: </strong>
                                        <br />
                                        <strong>Zam�stn�n�: </strong>
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
                                        Sta�e� (okr. T�eb��)<br />
                                        15 let<br />
                                        Vrcha�<br />
                                        B�h, b�eck� ly�ov�n�<br />
                                        Gymn�zium<br />
                                        Student<br />
                                        Chyb�.<br />
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
                            Z�vodn�ci kategorie KADET
                        </div>
                    </li>   
                    <li>
                        <div class="clanek">
                            <table>
                                <tr>
                                    <td valign="top">
                                        <br />
                                        <a href="images/Foto/NoImage.jpg" title="Vojt�ch �epa">
                                            <img src="images/Foto/NoImage.jpg" alt="Vojt�ch �epa" border="0" /></a>
                                    </td>
                                    <td>
                                        <div style="width: 10px">
                                        </div>
                                    </td>
                                    <td valign="top" align="left">
                                        <h1 class="nadpish1">Vojt�ch �epa
                                        </h1>
                                        <strong>V�k: </strong>
                                        <br />
                                        <strong>V�ha / v��ka: </strong>
                                        <br />
                                        <strong>Bydli�t�: </strong>
                                        <br />
                                        <strong>Za��tek cyklistick� kari�ry: </strong>
                                        <br />
                                        <strong>Typ z�vodn�ka: </strong>
                                        <br />
                                        <strong>Ostatn� obl�ben� sporty: </strong>
                                        <br />
                                        <strong>Vzd�l�n�: </strong>
                                        <br />
                                        <strong>Zam�stn�n�: </strong>
                                        <br />
                                        <strong>Motto: </strong>
                                        <br />
                                        <br />
                                        <br />
                                    </td>
                                    <td valign="top" align="left">
                                        <h1 class="nadpish1" style="visibility: hidden">Veden� t�mu
                                        </h1>
                                        15 let<br />
                                        73 kg / 185 cm<br />
                                        Velk� B�te� (okr. T�eb��)<br />
                                        14 let<br />
                                        Tempa�<br />
                                        Hokej<br />
                                        Z�kladn� �kola<br />
                                        Student<br />
                                        Chyb�.<br />
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
                                        <strong>V�k: </strong>
                                        <br />
                                        <strong>V�ha / v��ka: </strong>
                                        <br />
                                        <strong>Bydli�t�: </strong>
                                        <br />
                                        <strong>Za��tek cyklistick� kari�ry: </strong>
                                        <br />
                                        <strong>Typ z�vodn�ka: </strong>
                                        <br />
                                        <strong>Ostatn� obl�ben� sporty: </strong>
                                        <br />
                                        <strong>Vzd�l�n�: </strong>
                                        <br />
                                        <strong>Zam�stn�n�: </strong>
                                        <br />
                                        <strong>Motto: </strong>
                                        <br />
                                        <br />
                                        <br />
                                    </td>
                                    <td valign="top" align="left">
                                        <h1 class="nadpish1" style="visibility: hidden">�len t�mu
                                        </h1>
                                        15 let<br />
                                        67 kg / 180 cm<br />
                                        Heraltice (okr. T�eb��)<br />
                                        14 let<br />
                                        Sprinter<br />
                                        Basketbal, florbal<br />
                                        Z�kladn� �kola Ok��ky<br />
                                        Student<br />
                                        Kdy� si mysl�m, �e u� nem��e�, m��e� je�t� jednou tolik.
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
                                        <a href="images/Foto/LeTr_web.jpg" title="Leo� Trojan">
                                            <img src="images/Foto/thumb_LeTr_web.jpg" alt="Leo� Trojan" border="0" /></a>
                                    </td>
                                    <td>
                                        <div style="width: 10px">
                                        </div>
                                    </td>
                                    <td valign="top" align="left">
                                        <h1 class="nadpish1">Leo� Trojan
                                        </h1>
                                        <strong>V�k: </strong>
                                        <br />
                                        <strong>V�ha / v��ka: </strong>
                                        <br />
                                        <strong>Bydli�t�: </strong>
                                        <br />
                                        <strong>Za��tek cyklistick� kari�ry: </strong>
                                        <br />
                                        <strong>Typ z�vodn�ka: </strong>
                                        <br />
                                        <strong>Ostatn� obl�ben� sporty: </strong>
                                        <br />
                                        <strong>Vzd�l�n�: </strong>
                                        <br />
                                        <strong>Zam�stn�n�: </strong>
                                        <br />
                                        <strong>Motto: </strong>
                                        <br />
                                        <br />
                                        <br />
                                    </td>
                                    <td valign="top" align="left">
                                        <h1 class="nadpish1" style="visibility: hidden">�len t�mu
                                        </h1>
                                        15 let<br />
                                        65 kg / 182 cm<br />
                                        Ok��ky (okr. T�eb��)<br />
                                        14 let<br />
                                        Tempa�<br />
                                        Florbal<br />
                                        Z�kladn� �kola Ok��ky<br />
                                        Student<br />
                                        Neper se, �ivot Ti d� do dr�ky s�m!
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
                            Hostuj�c� z�vodn�ci kategorie ELITE
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
                                        <strong>V�k: </strong>
                                        <br />
                                        <strong>V�ha / v��ka: </strong>
                                        <br />
                                        <strong>Bydli�t�: </strong>
                                        <br />
                                        <strong>Za��tek cyklistick� kari�ry: </strong>
                                        <br />
                                        <strong>Typ z�vodn�ka: </strong>
                                        <br />
                                        <strong>Ostatn� obl�ben� sporty: </strong>
                                        <br />
                                        <strong>Vzd�l�n�: </strong>
                                        <br />
                                        <strong>Zam�stn�n�: </strong>
                                        <br />
                                        <strong>Motto: </strong>
                                        <br />
                                        <br />
                                        <br />
                                    </td>
                                    <td valign="top" align="left">
                                        <h1 class="nadpish1" style="visibility: hidden">hostov�n� v t�mu
                                        </h1>
                                        23 let<br />
                                        64 kg / 179 cm<br />
                                        Ryn�rec (okr. Pelh�imov)<br />
                                        17 let<br />
                                        Univerz�l / vrcha�<br />
                                        B�eck� ly�ov�n�, snowboard<br />
                                        St�edn� pr�myslov� �kola stavebn� T�bor<br />
                                        Profi cyklista - AC Sparta Praha, student<br />
                                        Kdy� nem��e�, tak si nastup.
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
                                        <a href="images/Foto/LT_web.jpg" title="Luk� Tom�ek">
                                            <img src="images/Foto/thumb_LT_web.jpg" alt="Luk� Tom�ek" border="0" /></a>
                                    </td>
                                    <td>
                                        <div style="width: 10px">
                                        </div>
                                    </td>
                                    <td valign="top" align="left">
                                        <h1 class="nadpish1">Luk� Tom�ek
                                        </h1>
                                        <strong>V�k: </strong>
                                        <br />
                                        <strong>V�ha / v��ka: </strong>
                                        <br />
                                        <strong>Bydli�t�: </strong>
                                        <br />
                                        <strong>Za��tek cyklistick� kari�ry: </strong>
                                        <br />
                                        <strong>Typ z�vodn�ka: </strong>
                                        <br />
                                        <strong>Ostatn� obl�ben� sporty: </strong>
                                        <br />
                                        <strong>Vzd�l�n�: </strong>
                                        <br />
                                        <strong>Zam�stn�n�: </strong>
                                        <br />
                                        <strong>Motto: </strong>
                                        <br />
                                        <br />
                                        <br />
                                    </td>
                                    <td valign="top" align="left">
                                        <h1 class="nadpish1" style="visibility: hidden">�len t�mu
                                        </h1>
                                        25 let<br />
                                        69 kg / 181 cm<br />
                                        Sulkovec (okr. ���r nad S�zavou)<br />
                                        23 let<br />
                                        Univerz�l / vrcha�<br />
                                        Plav�n�, b�h<br />
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
                            Sta�te se �lenem t�mu Vyso�ina cycling</h2>
                        �lenem na�eho t�mu se m��e st�t �pln� ka�d�, kdo m� r�d cyklistiku a Vyso�inu. Sta��
                        jen vyplnit jednoduch� dotazn�k a zaregistrovat se. M��ete si vybrat ze t�� typ�
                        �lenstv� (v�ce se dozv�te v sekci "Info"). V�b�r je pouze na V�s. �lenstv� v na�em
                        t�mu sk�t� r�zn� v�hody. Je mo�n� z�skat i zaj�mav� slevy na na�e poradensk� slu�by,
                        tr�ninkov� kempy, oble�en�, cyklistick� materi�l a mnoho dal��ho, podle toho, jak
                        se budeme roz�i�ovat. V p��pad� z�jmu je mo�nost zprost�edkovat zaj�mav� �razov�
                        poji�t�n� vztahuj�c� se i na sout�n� aktivity.
                        <h4>
                            Registrace �lenstv�</h4>
                        <div>
                            <table>
                                <tr>
                                    <td style="width: 110px">
                                        U�ivatelsk� jm�no:
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
                                        Heslo <small><i>(min. 7 znak�)</i></small>:
                                    </td>
                                    <td style="width: 200px">
                                        <asp:TextBox ID="TextBoxHeslo" runat="server" TextMode="Password" style="width:140px"></asp:TextBox>
                                    </td>
                                    <td style="width: 110px">
                                        Ov��en� hesla:
                                    </td>
                                    <td>
                                        <asp:TextBox ID="TextBoxKontrolaHesla" runat="server" TextMode="Password" style="width:140px"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 110px">
                                        Jm�no:
                                    </td>
                                    <td style="width: 200px">
                                        <asp:TextBox ID="TextBoxJmeno" runat="server" TextMode="SingleLine" style="width:140px"></asp:TextBox>
                                    </td>
                                    <td style="width: 110px">
                                        P��jmen�:
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
                                            <asp:ListItem>Vyso�ina</asp:ListItem>
                                            <asp:ListItem>Jihomoravsk�</asp:ListItem>
                                            <asp:ListItem>Jiho�esk�</asp:ListItem>
                                            <asp:ListItem>Karlovarsk�</asp:ListItem>
                                            <asp:ListItem>Kr�lov�hradeck�</asp:ListItem>
                                            <asp:ListItem>Libereck�</asp:ListItem>
                                            <asp:ListItem>Moravskoslezsk�</asp:ListItem>
                                            <asp:ListItem>Olomouck�</asp:ListItem>
                                            <asp:ListItem>Pardubick�</asp:ListItem>
                                            <asp:ListItem>Plze�sk�</asp:ListItem>
                                            <asp:ListItem>Praha</asp:ListItem>
                                            <asp:ListItem>St�edo�esk�</asp:ListItem>
                                            <asp:ListItem>�steck�</asp:ListItem>
                                            <asp:ListItem>Zl�nsk�</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 110px">
                                        Datum narozen�:
                                    </td>
                                    <td style="width: 200px">
                                        <asp:TextBox ID="TextBoxNarozeni" runat="server" TextMode="SingleLine" style="width:140px"></asp:TextBox>
                                    </td>
                                    <td style="width: 110px">
                                        �rove�:
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="DropDownListUroven" runat="server" style="width:145px">
                                            <asp:ListItem>Rekrea�n� jezdec</asp:ListItem>
                                            <asp:ListItem>Hobby jezdec</asp:ListItem>
                                            <asp:ListItem>Aktivn� z�vodn�k</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 110px">
                                        Chci b�t:
                                    </td>
                                    <td style="width: 200px">
                                        <asp:DropDownList ID="DropDownListClen" runat="server" style="width:145px">
                                            <asp:ListItem>P��znivec t�mu</asp:ListItem>
                                            <asp:ListItem>Pasivn� �len</asp:ListItem>
                                            <asp:ListItem>Aktivn� �len</asp:ListItem>
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
                                            <asp:ListItem>Dr�ha</asp:ListItem>
                                            <asp:ListItem>Jin� discipl�na</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 110px">
                                        Po�as� pro:
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="DropDownListPocasi" runat="server" style="width:145px">
                                            <asp:ListItem>Da�ice</asp:ListItem>
                                            <asp:ListItem>Havl��k�v Brod</asp:ListItem>
                                            <asp:ListItem>Jihlava</asp:ListItem>
                                            <asp:ListItem>Kosteln� Myslov�</asp:ListItem>
                                            <asp:ListItem>Moravsk� Bud�jovice</asp:ListItem>
                                            <asp:ListItem>N�m욝</asp:ListItem>
                                            <asp:ListItem>P�ibyslav</asp:ListItem>
                                            <asp:ListItem>Tel�</asp:ListItem>
                                            <asp:ListItem>T�eb��</asp:ListItem>
                                            <asp:ListItem>Velk� Mezi����</asp:ListItem>
                                            <asp:ListItem>���r nad S�zavou</asp:ListItem>
                                            <asp:ListItem>Brno</asp:ListItem>
                                            <asp:ListItem>�esk� Bud�jovice</asp:ListItem>
                                            <asp:ListItem>Hodon�n</asp:ListItem>
                                            <asp:ListItem>Jind�ich�v Hradec</asp:ListItem>
                                            <asp:ListItem>Karlovy Vary</asp:ListItem>
                                            <asp:ListItem>Liberec</asp:ListItem>
                                            <asp:ListItem>Olomouc</asp:ListItem>
                                            <asp:ListItem>Ostrava</asp:ListItem>
                                            <asp:ListItem>Pardubice</asp:ListItem>
                                            <asp:ListItem>Plze�</asp:ListItem>
                                            <asp:ListItem>Praha</asp:ListItem>
                                            <asp:ListItem>T�bor</asp:ListItem>
                                            <asp:ListItem>Zl�n</asp:ListItem>
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
                            �len t�mu Vyso�ina cycling</h2>
                        �lenstv� v na�em t�mu sk�t� r�zn� v�hody. Je mo�n� z�skat i zaj�mav� slevy na na�e
                        poradensk� slu�by, tr�ninkov� kempy, oble�en�, cyklistick� materi�l a mnoho dal��ho.
                        V p��pad� z�jmu V�m m��eme zprost�edkovat �razov� poji�t�n� vztahuj�c� se i na sout�n�
                        aktivity.
                        <h4>
                            Va�e registra�n� �daje</h4>
                        <div>
                            <table>
                                <tr>
                                    <td style="width: 110px">
                                        U�ivatelsk� jm�no:
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
                                        Posledn� p�ihl�en�:
                                    </td>
                                    <td>
                                        <asp:Label ID="LabelLastLogin" runat="server" Text="" Font-Size="10" Font-Bold="True"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 110px">
                                        Jm�no:
                                    </td>
                                    <td style="width: 200px">
                                        <asp:Label ID="LabelRUJmeno" runat="server" Text="" Font-Size="10" Font-Bold="True"></asp:Label>
                                    </td>
                                    <td style="width: 110px">
                                        P��jmen�:
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
                                        Datum narozen�:
                                    </td>
                                    <td style="width: 200px">
                                        <asp:Label ID="LabelRUDatumNarozeni" runat="server" Text="" Font-Size="10" Font-Bold="True"></asp:Label>
                                    </td>
                                    <td style="width: 110px">
                                        �rove�:
                                    </td>
                                    <td>
                                        <asp:Label ID="LabelRUUroven" runat="server" Text="" Font-Size="10" Font-Bold="True"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 110px">
                                        Typ �lenstv�:
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
                                        Po�as� pro:
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
                            <input type="button" id="buttonZmenaHesla" value="Zm�nit heslo" />
                            <input type="button" id="buttonUpravitClenstvi" value="Upravit �daje" />
                            <input type="button" id="buttonZrusitClenstvi" value="Zru�it �lenstv�" />
                            <div style="height: 10px;">
                            </div>
                            <h2>
                                Um�st�n� v z�vodech</h2>
                            <div id="userRaces">
                            </div>
                            <div style="height: 20px;">
                            </div>
                            <input type="button" id="buttonPridatZavod" value="P�idat z�vod" />
                            <input type="button" id="buttonSmazatZavod" value="Smazat z�vod" />
                        </div>
                    </div>
                </div>
            </div>
            <div id="tab-22">
                <div class="userLoggedOff">
                    <div class="clanek">
                        <h2>
                            �lenov� t�mu
                        </h2>
                        <div id="table-aktivniclenove-jmena">
                        </div>
                        <div style="height: 5px;">
                        </div>
                        <div id="table-pasivniclenove-jmena">
                        </div>
                        <h2>
                            P��znivci t�mu
                        </h2>
                        <div id="table-priznivci-jmena">
                        </div>
                    </div>
                </div>
                <div class="userLoggedOn">
                    <div class="clanek">
                        <h2>
                            �lenov� t�mu
                        </h2>
                        <div id="table-aktivniclenove-data">
                        </div>
                        <div style="height: 5px;">
                        </div>
                        <div id="table-pasivniclenove-data">
                        </div>
                        <h2>
                            P��znivci t�mu
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
                            P�ihla�te se...
                        </h2>
                        K t�to sekci maj� p��stup pouze p�ihl�en� �lenov� t�mu.
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
                                                Slevy na sportovn� produkty pro �leny t�mu
                                            </h2>
                                            Cht�l bych upozornit v�echny �leny na mo�nost zaj�mav�ch slev na sportovn� produkty
                                            u partner� t�mu.
                                            <br />
                                            <br />
                                            Jedn� se o tyto firmy:
                                            <br />
                                            <a href="http://www.twinsport.cz/" target="_blank" style="text-decoration: underline; cursor: pointer">
                                                TWINSPORT</a> - Na prodejn� v T�eb��i prod�v�me zbo�� renomovan�ch zna�ek jako jsou SPECIALIZED, 
                                            ELAN, SUPERIOR,SCOTT, FELT, GHOST, CITY BIKES aj.
                                            <br />
                                            <a href="http://www.s1w.cz/" target="_blank" style="text-decoration: underline; cursor: pointer">
                                                SPEEDweaponry</a> - nab�z� TOP produkty p�ev�n� pro cyklisty (BMC, ZIPP, PowerTap,
                                            Compex, PowerBreathe, atd.)
                                            <br />
                                            <a href="http://www.moose.eu/cz/" target="_blank" style="text-decoration: underline;
                                                cursor: pointer">Moose</a> - nab�z� kvalitn� pono�ky a pleten� dopl�ky.
                                            <br />
                                            <br />
                                            V p��pad� z�jmu se informujte na emailu Vyso�ina cycling.
                                        </div>
                                    </li>
                                    <li>
                                        <div class="clanek">
                                            <h2>
                                                T�mov� dres
                                            </h2>
                                            Vyobrazen� t�mov�ho dresu naleznete v z�lo�ce dresy. Dopln� jej modr� ruk�vky a
                                            modr� nohavice. Barevn� proveden� je navr�eno v barv�ch Vyso�iny a charakterizuj�
                                            jej 3 z�kladn� barvy, modr�, zelen� a b�l�. Jednoduch� design by m�l b�t lehce 
                                            identifikovateln� a s dostate�nou plochou pro budouc� sponzory.
                                            <h3>
                                                ��sti t�mov�ho oble�en� pro �leny</h3>
                                            <table>
                                                <tr style="font-weight: bold">
                                                    <td>
                                                        N�zev
                                                    </td>
                                                    <td>
                                                        Cena
                                                    </td>
                                                    <td>
                                                        V�robce - model
                                                    </td>
                                                    <td>
                                                        Pozn�mka
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        Dres s kr�tk�m ruk�vem
                                                    </td>
                                                    <td>
                                                        1340 K�
                                                    </td>
                                                    <td>
                                                        Kalas - ELITE 03 | Spinn
                                                    </td>
                                                    <td>
                                                        podm�nka registrace v t�mu
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        Kra�asy
                                                    </td>
                                                    <td>
                                                        1620 K�
                                                    </td>
                                                    <td>
                                                        Kalas - T-Sport ELITE-OMEGA 14 | Lycra POWER / �le s�
                                                    </td>
                                                    <td>
                                                        podm�nka registrace v t�mu
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        Dres s dlouh�m ruk�vem
                                                    </td>
                                                    <td>
                                                        1580 K�
                                                    </td>
                                                    <td>
                                                        Kalas - RACE 02, PICOLLO Thermo
                                                    </td>
                                                    <td>
                                                        cena pro �lena t�mu
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        �ap�ky
                                                    </td>
                                                    <td>
                                                        1480 K�
                                                    </td>
                                                    <td>
                                                        Kalas - ACTIVE 11, ROUBAIX / �le s�
                                                    </td>
                                                    <td>
                                                        cena pro �lena t�mu
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        Vesta
                                                    </td>
                                                    <td>
                                                        1360 K�
                                                    </td>
                                                    <td>
                                                        Kalas - RACE 01, GAMEX / s�
                                                    </td>
                                                    <td>
                                                        cena pro �lena t�mu
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        N�vleky na ruce
                                                    </td>
                                                    <td>
                                                        400 K�
                                                    </td>
                                                    <td>
                                                        Kalas - ACTIVE 01, ROUBAIX
                                                    </td>
                                                    <td>
                                                        cena pro �lena t�mu
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        N�vleky na nohy
                                                    </td>
                                                    <td>
                                                        490 K�
                                                    </td>
                                                    <td>
                                                        Kalas - ACTIVE 01, ROUBAIX
                                                    </td>
                                                    <td>
                                                        cena pro �lena t�mu
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        N�vleky na kolena
                                                    </td>
                                                    <td>
                                                        400 K�
                                                    </td>
                                                    <td>
                                                        Kalas - ACTIVE 01, ROUBAIX
                                                    </td>
                                                    <td>
                                                        cena pro �lena t�mu
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        N�vleky na tretry
                                                    </td>
                                                    <td>
                                                        200 K�
                                                    </td>
                                                    <td>
                                                        Kalas - LYCRA
                                                    </td>
                                                    <td>
                                                        cena pro �lena t�mu
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        Rukavi�ky letn�
                                                    </td>
                                                    <td>
                                                        320 K�
                                                    </td>
                                                    <td>
                                                        Kalas - RACE 02, LYCRA
                                                    </td>
                                                    <td>
                                                        cena pro �lena t�mu
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        Pono�ky
                                                    </td>
                                                    <td>
                                                        60 K�
                                                    </td>
                                                    <td>
                                                        Moose - t�mov� model
                                                    </td>
                                                    <td>
                                                        cena pro �lena t�mu
                                                    </td>
                                                </tr>
                                            </table>
                                            <br />
                                            Oble�en� je dostupn� v p�nsk� i d�msk� variant�.
                                            <br />
                                            <br />
                                            Dres + Kra�asy jsou podm�nkou registrace v t�mu.
                                            <br />
                                            P�i objedn�vce dal��ho oble�en� v minim�ln� kombinaci (Dres s dlouh�m ruk�vem nebo
                                            Dres s kr�tk�m ruk�vem + N�vleky na ruce) + (Vesta) + (N�vleky na nohy) obdr��te
                                            3x t�mov� pono�ky Moose zdarma.
                                            <br />
                                            Ceny pro ne�leny a podrobn� popis jednotliv�ch kus� naleznete v sekci <a href="prodej.aspx"
                                                style="text-decoration: underline; cursor: pointer">Prodej</a> a z�lo�ce Fan-shop.
                                            <br />
                                            <br />
                                            <strong>Jedn� se o profesion�ln� cyklistisk� oble�en� ve vysok� kvalit�, kter� obl�kaj�
                                                na�i p�edn� z�vodn�ci a zahrani�n� t�my.</strong>
                                            <br />
                                            <br />
                                            Objedn�vky zas�lejte na email, nezapome�te uv�st po�et kus� a velikosti v�ech objednan�ch
                                            kus�. Objedn�vka je z�vazn� po zaplacen� minimaln� 50% z�lohy (v�robce po�aduje
                                            z�lohovou platbu p�i zad�n� objedn�vky). Zbytek m��ete doplatit p�i obdr�en� objednan�ho
                                            oble�en�. V p��pad�, �e zaplat�te celou objedn�vku ihned, budete m�t po�tovn� zdarma,
                                            jinak bude ��tov�na dob�rka 100 K�. Mo�n� je i osobn� odb�r v T�eb��i. Toto neplat�
                                            p�i zas�l�n� do zahrani��, tam bude cena po�tovn�ho ��tov�na v�dy. Po zasl�n� objedn�vky
                                            obdr��te informaci k platb�.
                                            <br />
                                            Pokud budete m�t z�jem o jin� ��sti oble�en� v t�mov�ch barv�ch ne� kter� jsou uvedeny
                                            v seznamu, kontaktujte m�.
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
                        T�m a jeho struktura</h2>
                    T�m Vyso�ina cycling je otev�en pro v�echny z�jemce, kte�� maj� r�di cyklistiku.
                    �leny t�mu mohou b�t nejen aktivn� sportovci, ale tak� p��znivci cyklistiky na Vyso�in�.
                    Z�jemci se proto mohou p�ihl�sit i podle toho, co od sv�ho �lenstv� o�ek�vaj�. T�m
                    Vyso�ina cycling chce ov�em ur�it�m zp�sobem zv�hodnit ty �leny, kte�� se aktivn�
                    pod�lej� na �innosti a prezentaci t�mu. Chce ocenit sportovce, kte�� t�m v�born�
                    reprezentuj� na sportovn�ch sout��ch, chce ocenit ale i ty, kte�� se pod�lej� na
                    chodu t�mu, jeho zabezpe�en� a v�pomoci na r�zn�ch akc�ch, kter� t�m po��d�. Ch�peme
                    tak�, �e n�kte�� nemaj� mo�nost aktivn� se pod�let na �innosti t�mu, ale p�esto
                    by se r�di stali jeho �lenem. Z tohoto d�vodu jsme se rozhodli rozd�lit �leny do
                    n�kolika kategori�. Jakou kategorii si p�i registraci zvol�te je pouze na V�s. Podle
                    toho, do jak� kategorie se za�ad�te, budete moci vyu��vat v�hod Va�eho �lenstv�.
                    Kategorii je mo�n� v pr�b�hu �lenstv� zm�nit.
                    <h3>
                        Pasivn� �len</h3>
                    Doporu�ujeme t�m, kte�� cht�j� vyu��vat v�hod na�ich webov�ch str�nek, v�st si zde
                    tr�ninkov� den�k, ��st zaj�mav� �l�nky o tr�ninku a v��iv�, vyu��vat se slevou tr�ninkov�ch
                    poradc�, nebo s n�mi jet na tr�ninkov� kemp. Podm�nkou tohoto �lenstv� je pouze
                    zakoupen� dresu t�mu Vyso�ina cycling (minim�ln� kra�asy a triko) a aktivn� jej
                    vyu��vat. Dresy budou k dispozici do konce dubna 2012.
                    <h3>
                        Aktivn� �len</h3>
                    Chcete-li se aktivn� pod�let na �innosti t�mu, jsou pro V�s p�ipraveny dal�� v�hody
                    a bonusy. Aktivn� �len m��e t�mu p�in�st prosp�ch mno�stv�m rozli�n�ch �innost�.
                    Zejm�na pak p�iveden�m sponzora, v�bornou reprezentac� t�mu na sportovn�ch akc�ch,
                    v�pomoci v organizaci t�mu, publikov�n�m �l�nk� na na�em webu, v�pomoci p�i tr�ninkov�ch
                    kempech, v�pomoci p�i sportovn�ch akc�ch a v r�zn�ch dal��ch �innostech. Abychom
                    mohli v�echny aktivn� �leny objektivn� ohodnotit, p�ipravili jsme pro n� bodov�
                    syst�m.
                    <h3>
                        P��znivec t�mu</h3>
                    P��znivcem t�mu se m��e st�t ka�d�, kter�mu se t�m Vyso�ina cycling l�b�, a cht�l
                    by ho podpo�it, nebo by cht�l vyu��vat v�hod na�ich webov�ch str�nek. Podm�nkou
                    je pouze podpo�it jak�mkoliv zp�sobem n� t�m.
                    <h3>
                        Profi z�vodn�k</h3>
                    Zat�m v�hled do budoucna. M�l by b�t jmenov�n veden�m t�mu a jeho p�soben� bude
                    upravovat smlouva.
                    <h3>
                        Bodov� syst�m</h3>
                    Je zp�sob, jak co nejobjektivn�ji ohodnotit �innost ka�d�ho aktivn�ho �lena. Ten
                    za sv� aktivity sb�r� body, kter� m��e n�sledn� prom�nit dle vlastn�ho v�b�ru za
                    produkty a slu�by nab�zen� na na�em webu. Zat�m je to jen p�edb�n� n�vrh, kone�n�
                    hodnocen� se bude je�t� podle ohlas� upravovat. 1 bod odpov�d� 1 K�.
                    <h4>
                        Seznam bodov�ho ohodnocen�:
                    </h4>
                    Za p�iveden� sponzora - individu�ln� dle p��n� sponzora
                    <br />
                    Organizace �innost� t�mu - 50 b/hod
                    <br />
                    Publikov�n�m �l�nk� na na�em webu - 100 b/str�nku A4
                    <br />
                    V�pomoc p�i tr�ninkov�ch kempech - 300 b/den
                    <br />
                    V�pomoc p�i sportovn�ch akc�ch - 50 b/hod
                    <br />
                    Reprezentace na sportovn� akci - 10b/den
                    <br />
                    <br />
                    <strong>Um�st�n� na sportovn� akci:</strong><br />
                    <table>
                        <tr>
                            <td>
                                1. m�sto na akci 1.kat - 1000 b
                                <br />
                                2. m�sto na akci 1.kat - 500 b
                                <br />
                                3. m�sto na akci 1.kat - 300 b
                                <br />
                                1. m�sto na akci 2.kat - 500 b
                                <br />
                                2. m�sto na akci 2.kat - 300 b
                                <br />
                                3. m�sto na akci 2.kat - 100 b
                                <br />
                                1. m�sto na akci 3.kat - 200 b
                                <br />
                                2. m�sto na akci 3.kat - 100 b
                                <br />
                                3. m�sto na akci 3.kat - 50 b
                            </td>
                            <td style="width: 20px">
                            </td>
                            <td style="vertical-align: top">
                                Kategorie akc� jsou rozd�leny dle kvality startovn�ho pole a prezentace v m�di�ch.
                                <br />
                                <br />
                                1.kat - UCI z�vody
                                <br />
                                2.kat - �P, s�rie 53/11, KP� apod.
                                <br />
                                3.kat - Region�ln� z�vody
                                <br />
                            </td>
                        </tr>
                    </table>
                    <br />
                    <br />
                    �prava bodov�ho syst�mu je mo�n� 2x ro�n� a plat� v�dy od data vyhl�en� zm�ny.
                </div>
            </div>
            <div id="tab-25" class="clasictext">
                <div id="dresy" class="clanek">
                    <h2>
                        N�vrh t�mov�ho dresu 2013</h2>
                    <a href="images/Foto/Dres-svetly-2013.jpg" title="N�vrh dresu - sv�tl� varianta.">
                        <img src="images/Foto/thumb_Dres-svetly-2013.jpg" alt="Dres" border="1" /></a>
                    <a href="images/Foto/Dres-tmavy-2013.jpg" title="N�vrh dresu - tmav� varianta.">
                        <img src="images/Foto/thumb_Dres-tmavy-2013.jpg" alt="Dres" border="1" /></a>
                </div>
            </div>
            <div id="tab-26" class="clasictext">
                <h2>
                    Vy�kejte...
                </h2>
                Tuto sekci p�ipravujeme.
            </div>
            <div id="tab-27" class="clasictext">
                <div style="padding-top: 15px; text-align: center; font-weight: bold; font-size: medium; padding-bottom: 15px;">
                    Um�st�n� aktivn�ch �len� t�mu v z�vodech v roce 
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
                                V�ce fotografi� naleznete v sekci Galerie.
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div id="album-Zavody_2013" class="clanek">
                                <h3>Z�vody 2013</h3>
                                <a href="images/photos/DusanProchazka_TrebicskyAquathlon.jpg" title="Du�an Proch�zka zv�t�zil v t�eb��sk�m aquatlonu v kategorii mu�i 40-49 let">
                                    <img src="images/photos/thumb_DusanProchazka_TrebicskyAquathlon.jpg" alt="Du�an Proch�zka"
                                        border="0" /></a>
                                <a href="images/photos/Durcova01_2013.jpg" title="Monika �ur�ov� zv�t�zila v kategorii �eny nad 40 let v z�vod� BBB Vlko-Hron cyklomarat�n">
                                    <img src="images/photos/thumb_Durcova01_2013.jpg" alt="Monika �ur�ov�"
                                        border="0" /></a>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div id="album-Zavody_2012" class="clanek">
                                <h3>
                                    Z�vody 2012</h3>
                                <a href="images/photos/Zlate_kolo_Vysociny_2012-1.jpg" title="Zlat� kolo Vyso�iny 2012">
                                    <img src="images/photos/thumb_Zlate_kolo_Vysociny_2012-1.jpg" alt="Zlat� kolo Vyso�iny" border="0" /></a>
                                <a href="images/photos/Zlate_kolo_Vysociny_2012-2.jpg" title="Zlat� kolo Vyso�iny 2012">
                                    <img src="images/photos/thumb_Zlate_kolo_Vysociny_2012-2.jpg" alt="Zlat� kolo Vyso�iny" border="0" /></a>
                                <a href="images/photos/Zlate_kolo_Vysociny_2012-3.jpg" title="Zlat� kolo Vyso�iny 2012">
                                    <img src="images/photos/thumb_Zlate_kolo_Vysociny_2012-3.jpg" alt="Zlat� kolo Vyso�iny" border="0" /></a>
                                <a href="images/photos/XCR4-RK_TP.jpg" title="XCR Specialized Cup 2012 - 4. z�vod">
                                    <img src="images/photos/thumb_XCR4-RK_TP.jpg" alt="XCR Specialized Cup 2012" border="0" /></a>
                                <a href="images/photos/XCR4-TPoslusny.jpg" title="XCR Specialized Cup 2012 - 4. z�vod">
                                    <img src="images/photos/thumb_XCR4-TPoslusny.jpg" alt="XCR Specialized Cup 2012" border="0" /></a>
                                <a href="images/photos/imageDurcova.jpg" title="MTB maraton Zelen� stopa SNP 2012">
                                    <img src="images/photos/thumb_imageDurcova.jpg" alt="�ur�ov� - Vyso�ina Cycling" border="0" /></a>
                            </div>
                        </td>
                    </tr>
                </table>
            </div>
            <div id="tab-29" class="clasictext">
                <ul id="Treninky" class="paging12">
                    <li>
                        <div class="clanek">
                            <h2>Gymn�zium T�eb�� - posilovna</h2>
                                Spole�n� tr�nink pro v�echny z�jemce se kon� ka�dou <strong>st�edu</strong> v obdob�
                            <strong>listopad - b�ezen</strong>.Sraz v <strong>16h</strong> v mal� t�locvi�n�.
                        </div>
                    </li>
                    <li>
                        <div class="clanek">
                            <h2>T�eb�� Borovina - silnice</h2>
                            Spole�n� tr�nink pro v�echny z�jemce se kon� ka�dou <strong>st�edu</strong> v obdob�
                            <strong>duben, kv�ten, �erven a z���</strong>.Sraz v <strong>16:30</strong> na parkovi�ti p�ed borovinskou tov�rnou.
                            <br /> V obdob� <strong>�ervenec a srpen</strong> se tr�nink kon� dle <strong>kalend��e</strong> t�mu. 
                        </div> 
                    </li>
                </ul>
            </div>
        </div>
    </div>
</asp:Content>
