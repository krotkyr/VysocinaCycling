<%@ Page Title="Vyso�ina Cycling - V��iva" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="vyziva.aspx.cs" Inherits="Vyziva" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <meta property="og:description" content="Tento projekt je zam��en na podporu v�konnostn� cyklistiky na Vyso�in�, a to p�edev��m cyklistiky silni�n�. Na str�nce V��iva naleznete informace a �l�nky o v��iv� zam��en� p�edev��m pro cyklisty." />
    <meta property="og:image" content="http://www.vysocinacycling.cz/images/logo_Facebook.png" />
    <script type="text/javascript">
        $(window).load(function () {
            $("#baner4").nivoSlider({ animSpeed: 1000, pauseTime: 5000, controlNav: false, directionNav: false, keyboardNav: false, effect: "fade" });
        });
    </script>

    <script type="text/javascript">
        $(document).ready(function () {
            SiteVyzivaReady();
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <div id="pageVyzivaContent">
        <div id="baner4" class="nivoSlider">
            <img id="img16" alt="Baner" src="images/Banery/BanerTen5.jpg" />
            <img id="img15" alt="Baner" src="images/Banery/BanerStul1.jpg" />
        </div>
        <div id="vyzivatabs" style="text-align: left">
            <ul>
                <li id="Li41"><a href="#tab-41">�l�nky</a></li>
                <li id="Li42"><a href="#tab-42">Z�kladn� principy</a></li>
                <li id="Li43"><a href="#tab-43">Zdrav� hubnut�</a></li>
                <li id="Li44"><a href="#tab-44">V��ivov� dopl�ky</a></li>
                <li id="Li45"><a href="#tab-45">Speci�ln� v��iva</a></li>
            </ul>
            <div id="tab-41" class="clasictext">
                <table>
                    <tr>
                        <td>
                            <ul class="paging9">
                                <li>
                                    <div id="clanek11" class="rozbalovaciclanek">
                                        <div class="infoclanek">
                                            Autor: Rostislav Krotk�<br />
                                            Vyd�no: 27.3.2012
                                        </div>
                                        <div class="uvodclanku">
                                            <h1 class="nadpish1">
                                                Jak se stravovat - z�kladn� principy</h1>
                                            V tomto �l�nku bych V�m cht�l uk�zat hlavn� principy stravov�n�, kter� jsou platn� nejen 
                                            v cyklistice, ale i v ostatn�ch vytrvalostn�ch sportech.  Cyklistika je nav�c specifick� 
                                            d�lkou vytrvalostn� z�t�e, kter� se mnohdy p�ibli�uje pracovn� dob� zam�stnance.  Je 
                                            tedy velmi d�le�it� nepodce�ovat stravov�n� a samoz�ejm� i pitn� re�im. Oboje toti� velmi 
                                            �zce souvis� s pod�van�m v�konem a d�lkou n�sledn� regenerace.
                                        </div>
                                        <div class="showtext" align="right">
                                            <button type="button" class="viewpart" style="width: 67px; height: 20px; font-size: xx-small; text-align: right; ">Zobrazit</button>
                                        </div>
                                        <div class="textclanku"><h1 class="nadpish2">
                                                V�eobecn� informace</h1>
                                            Pokud sportujete, bu�te si v�domi zv��en� spot�eby energie a ztr�t� tekutin, tuto energii 
                                            a tekutiny je samoz�ejm� nutn� doplnit. D�le�it� je rozlo�it si p��jem potravin do v�ce 
                                            d�vek. Pokud jednor�zov� p�et��te tr�vic� syst�m, nejen�e v�razn� prodlou��te regeneraci, 
                                            ale tak� t�mto zp�sobem d�te t�lu najevo, �e se m� p�ipravit na budouc� nedostatek energie 
                                            a ulo�it si ��st do z�soby ve form� tuku. To je samoz�ejm� pro sportovce ne��douc�. <br />
                                            Optim�ln� mno�stv� stravy je ale velmi individu�ln� a krom� energie pot�ebn� k v�konu 
                                            z�le�� tak� na metabolismu ka�d�ho jedince. Hraje zde roli nejen v�k (mlad� jedinec ve 
                                            v�vinu spot�ebuje podstatn� v�ce energie ne� d�chodce), ale tak� nap��klad vrozen� 
                                            dispozice, pohlav�, dispozice vyp�stovan� �ivotn�m stylem a z velk� m�ry i takzvan� 
                                            baz�ln� metabolismus. Baz�ln� (klidov�) metabolismus je ovlivn�n mno�stv�m svalov� hmoty, 
                                            kter� spot�ebov�v� energii. Ta b�v� u za��naj�c�ch sportovc� men��, a proto maj� i sv�j 
                                            klidov� metabolismus men�� ne� jejich d�le sportuj�c� vrstevn�ci. V�em t�mto okolnostem 
                                            je dobr� v�novat pozornost. <br />
                                            V ka�d�m p��pad� je d�le�it� nezapom�nat na pestrou a kvalitn� stravu, kter� obsahuje 
                                            dostate�n� mno�stv� v�ech vitam�n� a miner�l� v p��rodn�m stavu.  A� v p��pad� zv��en� 
                                            spot�eby je vhodn� ji doplnit vitaminov�mi p��pravky.
                                            <h1 class="nadpish2">
                                                Strava p�ed v�konem</h1>
                                            P�ed v�konem db�me na to, aby strava byla lehce straviteln� a z�sobila organismus energi� 
                                            na n�sleduj�c� fyzickou aktivitu. V p��pad�, �e bude fyzick� aktivita krat�� a 
                                            intenzivn�j��, m��e b�t objem men�� a strava by m�la obsahovat v�t�� pod�l sacharid�. 
                                            Pokud bude n�sledovat del�� tr�nink, m��eme zv��it pod�l b�lkovin (�unka, vaj��ka, s�r 
                                            apod.). V ��dn�m p��pad� by strava p�ed v�konem nem�la b�t tu�n� a n�ro�n� na tr�ven�. 
                                            Maso si rad�ji nech�me a� na obdob� po fyzick� aktivit�. <br />
                                            Tak� bychom m�li zachovat dostate�n� odstup mezi j�dlem a tr�ninkem, aby m�lo t�lo �as 
                                            stravu zpracovat. Op�t z�le�� na d�lce a intenzit� z�t�e, kter� bude n�sledovat a tak� 
                                            na mno�stv� zkonzumovan� stravy. P�ed intenzivn�m tr�ninkem, nebo z�vodem si nech�me 
                                            odstup minim�ln� 2 hodiny, ale rad�ji i v�c. Pokud vyraz�me na dlouh� vytrvalostn� 
                                            tr�nink, m��e b�t odstup men��.
                                            <h1 class="nadpish2">
                                                Strava p�i v�konu</h1>
                                            P�i v�konu db�me hlavn� na pravideln� pitn� re�im. Zvl�t� v tepl�m po�as� je pitn� re�im 
                                            velmi d�le�it�. Nedostatek tekutin n�m m��e v�razn�m zp�sobem sn�it pod�van� v�kon. 
                                            P�t bychom m�li dob�e vst�ebateln� n�poje a nezat�ovat organismus ne��douc�mi p��davky, 
                                            nap��klad bublinkami. Aby byl n�poj dob�e vst�ebateln�, je nutn�, aby byl tak akor�t 
                                            sladk�, m�l optim�ln� teplotu a obsahoval odpov�daj�c� mno�stv� miner�ln�ch l�tek. <br />
                                            Nejlep��m zdrojem energie p�i v�konu jsou energetick� ty�inky a gely. P�i d�le trvaj�c� 
                                            z�t�i ni��� intenzity je mnohdy vhodn� doplnit energii nap��klad houskou se �unkou, 
                                            nebo s�rem. <br />
                                            Energii stejn� jako pitn� re�im je pot�eba dopl�ovat v pravideln�ch intervalech, abychom 
                                            p�ede�li n�hl�mu nedostatku (tzv. hla��ku), co� se projev� svalovou slabost� a sn�en�m 
                                            v�konem. Dopl�ovat energii doporu�uji dle tr�novanosti po 1h � 1,5h v�konu a d�le pak 
                                            v pravideln�ch p�lhodinov�ch intervalech.
                                            <h1 class="nadpish2">
                                                Strava po v�konu</h1>
                                            V prvn� f�zi po v�konu je vhodn� doplnit hlavn� sacharidy. Slou�� k tomu hlavn� r�zn� 
                                            sacharidov� p��pravky od specializovan�ch v�robc�. Doporu�uji je pou��vat hlavn� po 
                                            t잚�ch tr�ninc�ch a po z�vod�. Jsou nejen zdrojem rychl� energie, ale tak� d�le�it�ch 
                                            aminokyselin, vitam�n� a miner�ln�ch l�tek. <br />
                                            V dal�� f�zi (asi 1h � 2h po v�konu) je vhodn� se orientovat sp�e na lehkou, 
                                            sacharidovo-b�lkovinnou stravu, abyste umo�nili t�lu rychleji regenerovat a nezat�ovali 
                                            p��li� tr�vic� syst�m. Vhodn� jsou nap��klad t�stoviny v r�zn�ch �prav�ch, nap��klad se 
                                            s�rem, s tu��kem, atp. <br />
                                            Jako dal�� j�dlo je dobr� za�adit kvalitn� maso, nejlep�� zdroj b�lkovin, a jako p��lohu 
                                            nezapom�nat na zeleninu. Zvl�t� p�i silov�ch tr�ninc�ch jsou b�lkoviny velmi d�le�it� 
                                            pro obnovu, r�st a regeneraci svalov� hmoty. Pokud absolvujete velmi t�k� tr�ninky 
                                            lze b�lkoviny doplnit i speci�ln�mi proteinov�mi p��pravky. <br />
                                            Nezapom�n�me ani na pitn� re�im, je nutn� pr�b�n� doplnit tekutiny ztracen� p�i v�konu 
                                            a z�rove� umo�nit organismu rychlej�� �i�t�n�. Stravu je vhodn� ukon�it 2h - 3h p�ed 
                                            span�m, abyste si zbyte�n� nezhor�ovali kvalitu a d�lku sp�nku.
                                            <h1 class="nadpish2">
                                                Z�v�rem</h1>
                                            V��e zm�n�n� z�sady jsou t�m nejd�le�it�j��m, co bychom m�li o strav� p�i sportu v�d�t. 
                                            Poru�ov�n�m t�chto princip� si zbyte�n� zhor�ujete p��nos tr�ninku a va�e t�lo nebude 
                                            schopno pln� vst�ebat tr�ninkov� d�vky a odpov�daj�c�m zp�sobem na n� reagovat. Informace 
                                            zde uveden� ur�it� nejsou vy�erp�vaj�c� a je tu prostor pro dal�� �l�nky, kde se pokus�m 
                                            j�, nebo n�kdo povolan�j�� roz���it va�e v�domosti o sportovn� strav�.
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
            <div id="tab-42" class="clasictext">
                <h2>
                    Vy�kejte...
                </h2>
                Tuto sekci p�ipravujeme.
            </div>
            <div id="tab-43" class="clasictext">
                <h2>
                    Vy�kejte...
                </h2>
                Tuto sekci p�ipravujeme.
            </div>
            <div id="tab-44" class="clasictext">
                <h2>
                    Vy�kejte...
                </h2>
                Tuto sekci p�ipravujeme.
            </div>
            <div id="tab-45" class="clasictext">
                <h2>
                    Vy�kejte...
                </h2>
                Tuto sekci p�ipravujeme.
            </div>
        </div>
    </div>
</asp:Content>

