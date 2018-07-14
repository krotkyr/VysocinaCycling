<%@ Page Title="Vysoèina Cycling - Výživa" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="vyziva.aspx.cs" Inherits="Vyziva" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <meta property="og:description" content="Tento projekt je zamìøen na podporu výkonnostní cyklistiky na Vysoèinì, a to pøedevším cyklistiky silnièní. Na stránce Výživa naleznete informace a èlánky o výživì zamìøené pøedevším pro cyklisty." />
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
                <li id="Li41"><a href="#tab-41">Èlánky</a></li>
                <li id="Li42"><a href="#tab-42">Základní principy</a></li>
                <li id="Li43"><a href="#tab-43">Zdravé hubnutí</a></li>
                <li id="Li44"><a href="#tab-44">Výživové doplòky</a></li>
                <li id="Li45"><a href="#tab-45">Speciální výživa</a></li>
            </ul>
            <div id="tab-41" class="clasictext">
                <table>
                    <tr>
                        <td>
                            <ul class="paging9">
                                <li>
                                    <div id="clanek11" class="rozbalovaciclanek">
                                        <div class="infoclanek">
                                            Autor: Rostislav Krotký<br />
                                            Vydáno: 27.3.2012
                                        </div>
                                        <div class="uvodclanku">
                                            <h1 class="nadpish1">
                                                Jak se stravovat - základní principy</h1>
                                            V tomto èlánku bych Vám chtìl ukázat hlavní principy stravování, které jsou platné nejen 
                                            v cyklistice, ale i v ostatních vytrvalostních sportech.  Cyklistika je navíc specifická 
                                            délkou vytrvalostní zátìže, která se mnohdy pøibližuje pracovní dobì zamìstnance.  Je 
                                            tedy velmi dùležité nepodceòovat stravování a samozøejmì i pitný režim. Oboje totiž velmi 
                                            úzce souvisí s podávaným výkonem a délkou následné regenerace.
                                        </div>
                                        <div class="showtext" align="right">
                                            <button type="button" class="viewpart" style="width: 67px; height: 20px; font-size: xx-small; text-align: right; ">Zobrazit</button>
                                        </div>
                                        <div class="textclanku"><h1 class="nadpish2">
                                                Všeobecné informace</h1>
                                            Pokud sportujete, buïte si vìdomi zvýšené spotøeby energie a ztrátì tekutin, tuto energii 
                                            a tekutiny je samozøejmì nutné doplnit. Dùležité je rozložit si pøíjem potravin do více 
                                            dávek. Pokud jednorázovì pøetížíte trávicí systém, nejenže výraznì prodloužíte regeneraci, 
                                            ale také tímto zpùsobem dáte tìlu najevo, že se má pøipravit na budoucí nedostatek energie 
                                            a uložit si èást do zásoby ve formì tuku. To je samozøejmì pro sportovce nežádoucí. <br />
                                            Optimální množství stravy je ale velmi individuální a kromì energie potøebné k výkonu 
                                            záleží také na metabolismu každého jedince. Hraje zde roli nejen vìk (mladý jedinec ve 
                                            vývinu spotøebuje podstatnì více energie než dùchodce), ale také napøíklad vrozené 
                                            dispozice, pohlaví, dispozice vypìstované životním stylem a z velké míry i takzvaný 
                                            bazální metabolismus. Bazální (klidový) metabolismus je ovlivnìn množstvím svalové hmoty, 
                                            která spotøebovává energii. Ta bývá u zaèínajících sportovcù menší, a proto mají i svùj 
                                            klidový metabolismus menší než jejich déle sportující vrstevníci. Všem tìmto okolnostem 
                                            je dobré vìnovat pozornost. <br />
                                            V každém pøípadì je dùležité nezapomínat na pestrou a kvalitní stravu, která obsahuje 
                                            dostateèné množství všech vitamínù a minerálù v pøírodním stavu.  Až v pøípadì zvýšené 
                                            spotøeby je vhodné ji doplnit vitaminovými pøípravky.
                                            <h1 class="nadpish2">
                                                Strava pøed výkonem</h1>
                                            Pøed výkonem dbáme na to, aby strava byla lehce stravitelná a zásobila organismus energií 
                                            na následující fyzickou aktivitu. V pøípadì, že bude fyzická aktivita kratší a 
                                            intenzivnìjší, mùže být objem menší a strava by mìla obsahovat vìtší podíl sacharidù. 
                                            Pokud bude následovat delší trénink, mùžeme zvýšit podíl bílkovin (šunka, vajíèka, sýr 
                                            apod.). V žádném pøípadì by strava pøed výkonem nemìla být tuèná a nároèná na trávení. 
                                            Maso si radìji necháme až na období po fyzické aktivitì. <br />
                                            Také bychom mìli zachovat dostateèný odstup mezi jídlem a tréninkem, aby mìlo tìlo èas 
                                            stravu zpracovat. Opìt záleží na délce a intenzitì zátìže, která bude následovat a také 
                                            na množství zkonzumované stravy. Pøed intenzivním tréninkem, nebo závodem si necháme 
                                            odstup minimálnì 2 hodiny, ale radìji i víc. Pokud vyrazíme na dlouhý vytrvalostní 
                                            trénink, mùže být odstup menší.
                                            <h1 class="nadpish2">
                                                Strava pøi výkonu</h1>
                                            Pøi výkonu dbáme hlavnì na pravidelný pitný režim. Zvláštì v teplém poèasí je pitný režim 
                                            velmi dùležitý. Nedostatek tekutin nám mùže výrazným zpùsobem snížit podávaný výkon. 
                                            Pít bychom mìli dobøe vstøebatelné nápoje a nezatìžovat organismus nežádoucími pøídavky, 
                                            napøíklad bublinkami. Aby byl nápoj dobøe vstøebatelný, je nutné, aby byl tak akorát 
                                            sladký, mìl optimální teplotu a obsahoval odpovídající množství minerálních látek. <br />
                                            Nejlepším zdrojem energie pøi výkonu jsou energetické tyèinky a gely. Pøi déle trvající 
                                            zátìži nižší intenzity je mnohdy vhodné doplnit energii napøíklad houskou se šunkou, 
                                            nebo sýrem. <br />
                                            Energii stejnì jako pitný režim je potøeba doplòovat v pravidelných intervalech, abychom 
                                            pøedešli náhlému nedostatku (tzv. hlaïáku), což se projeví svalovou slabostí a sníženým 
                                            výkonem. Doplòovat energii doporuèuji dle trénovanosti po 1h – 1,5h výkonu a dále pak 
                                            v pravidelných pùlhodinových intervalech.
                                            <h1 class="nadpish2">
                                                Strava po výkonu</h1>
                                            V první fázi po výkonu je vhodné doplnit hlavnì sacharidy. Slouží k tomu hlavnì rùzné 
                                            sacharidové pøípravky od specializovaných výrobcù. Doporuèuji je používat hlavnì po 
                                            tìžších trénincích a po závodì. Jsou nejen zdrojem rychlé energie, ale také dùležitých 
                                            aminokyselin, vitamínù a minerálních látek. <br />
                                            V další fázi (asi 1h – 2h po výkonu) je vhodné se orientovat spíše na lehkou, 
                                            sacharidovo-bílkovinnou stravu, abyste umožnili tìlu rychleji regenerovat a nezatìžovali 
                                            pøíliš trávicí systém. Vhodné jsou napøíklad tìstoviny v rùzných úpravách, napøíklad se 
                                            sýrem, s tuòákem, atp. <br />
                                            Jako další jídlo je dobré zaøadit kvalitní maso, nejlepší zdroj bílkovin, a jako pøílohu 
                                            nezapomínat na zeleninu. Zvláštì pøi silových trénincích jsou bílkoviny velmi dùležité 
                                            pro obnovu, rùst a regeneraci svalové hmoty. Pokud absolvujete velmi tìžké tréninky 
                                            lze bílkoviny doplnit i speciálními proteinovými pøípravky. <br />
                                            Nezapomínáme ani na pitný režim, je nutné prùbìžnì doplnit tekutiny ztracené pøi výkonu 
                                            a zároveò umožnit organismu rychlejší èištìní. Stravu je vhodné ukonèit 2h - 3h pøed 
                                            spaním, abyste si zbyteènì nezhoršovali kvalitu a délku spánku.
                                            <h1 class="nadpish2">
                                                Závìrem</h1>
                                            Výše zmínìné zásady jsou tím nejdùležitìjším, co bychom mìli o stravì pøi sportu vìdìt. 
                                            Porušováním tìchto principù si zbyteènì zhoršujete pøínos tréninku a vaše tìlo nebude 
                                            schopno plnì vstøebat tréninkové dávky a odpovídajícím zpùsobem na nì reagovat. Informace 
                                            zde uvedené urèitì nejsou vyèerpávající a je tu prostor pro další èlánky, kde se pokusím 
                                            já, nebo nìkdo povolanìjší rozšíøit vaše vìdomosti o sportovní stravì.
                                        </div>
                                        <div class="hidetext" align="right">
                                            <button type="button" class="hidepart" style="width: 53px; height: 20px; font-size: xx-small; text-align: right; ">Skrýt</button>
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
                    Vyèkejte...
                </h2>
                Tuto sekci pøipravujeme.
            </div>
            <div id="tab-43" class="clasictext">
                <h2>
                    Vyèkejte...
                </h2>
                Tuto sekci pøipravujeme.
            </div>
            <div id="tab-44" class="clasictext">
                <h2>
                    Vyèkejte...
                </h2>
                Tuto sekci pøipravujeme.
            </div>
            <div id="tab-45" class="clasictext">
                <h2>
                    Vyèkejte...
                </h2>
                Tuto sekci pøipravujeme.
            </div>
        </div>
    </div>
</asp:Content>

