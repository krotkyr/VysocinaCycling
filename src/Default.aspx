<%@ Page Title="Vysoèina Cycling - cyklistika na Vysoèinì, tım, závody a trénink"
    Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="Default.aspx.cs" Inherits="_Default" ValidateRequest="false" %>


<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <script type="text/javascript" language="javascript">
        $(window).load(function () {
            $("#baner1").nivoSlider({ animSpeed: 1000, pauseTime: 5000, controlNav: false, directionNav: false, keyboardNav: false, effect: "fade" });
        });
    </script>
    <script type="text/javascript" language="javascript">
        $(document).ready(function () {
            SiteDefaultReady();
        });
    </script>
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <div id="pageDefaultContent">
        <div id="baner1" class="nivoSlider">
            <img id="img1" alt="Baner" src="images/Banery/Banner_TourBohemia2014.jpg" />
            <img id="img2" alt="Baner" src="images/Banery/BannerMCR2014a.jpg" />
            <img id="img3" alt="Baner" src="images/Banery/BannerVysocina2012_01.jpg" />
            <%--<img id="img5" alt="Baner" src="images/Banery/BannerVysocina2012_12.jpg" />
            <img id="img1" alt="Baner" src="images/Banery/BannerVysocina2012_03.jpg" />--%>
            <img id="img4" alt="Baner" src="images/Banery/BannerVysocina2012_30.jpg" />
        </div>
        <div id="domutabs" style="text-align: left">
            <ul>
                <li id="Li11"><a href="#tab-11">Novinky</a></li>
                <li id="Li13"><a href="#tab-12">Info</a></li>
                <li id="Li14"><a href="#tab-13">Kontakty</a></li>
                <li id="Li15"><a href="#tab-14">Partneøi</a></li>
            </ul>
            <table>
                <tr>
                    <td valign="top" align="left">
                        <div id="tab-11">
                            <asp:FormView ID="FormView1" runat="server" DataKeyNames="NewsId" DataSourceID="SqlDataSource1">
                                <EditItemTemplate>
                                    <div class="clanek" style="height: 1115px">
                                        <br />
                                        Uivatelské jméno:
                                        <asp:Label ID="UserNameLabel" runat="server" Text='<%# Eval("UserName") %>' />
                                        <br />
                                        Poslední úprava:
                                        <asp:Label ID="LastUpdateLabel" runat="server" Text='<%# Eval("LastUpdate") %>' />
                                        <br />
                                        <br />
                                        Datum zveøejnìní:
                                        <asp:TextBox ID="PublishDateTextBox" runat="server" Text='<%# Bind("PublishDate") %>' />
                                        <br />
                                        <br />
                                        Zveøejnit:
                                        <asp:CheckBox ID="PublishedCheckBox" runat="server" Checked='<%# Bind("Published") %>' />
                                        <br />
                                        <br />
                                        Titulek èlánku:
                                        <asp:TextBox ID="NewsTitleTextBox" runat="server" Width="550" MaxLength="100" Text='<%# Bind("NewsTitle") %>' />
                                        <br />
                                        <br />
                                        Úvod èlánku:
                                        <asp:TextBox ID="NewsShortTextTextBox" runat="server" TextMode="MultiLine" Width="550"
                                            MaxLength="250"
                                            Height="50" Text='<%# Bind("NewsShortText") %>' />
                                        <br />
                                        <br />
                                        Text èlánku:
                                        <asp:TextBox ID="NewsTextTextBox" runat="server" TextMode="MultiLine" Width="550"
                                            Height="300" Text='<%# Bind("NewsText") %>' />
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*"
                                            ControlToValidate="NewsTextTextBox"></asp:RequiredFieldValidator>
                                        <br />
                                        <br />
                                        Obrázek:
                                        <asp:TextBox ID="NewsImageTextBox" runat="server" Text='<%# Bind("NewsImage") %>' />
                                        <br />
                                        <br />
                                        <br />
                                        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update"
                                            Text="Update" />
                                        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False"
                                            CommandName="Cancel" Text="Cancel" />
                                    </div>
                                </EditItemTemplate>
                                <InsertItemTemplate>
                                    <div class="clanek" style="height: 1115px">
                                        <br />
                                        Datum zveøejnìní:
                                        <asp:TextBox ID="PublishDateTextBox" runat="server" Text='<%# Bind("PublishDate") %>' />
                                        <br />
                                        <br />
                                        Zveøejnit:
                                        <asp:CheckBox ID="PublishedCheckBox" runat="server" Checked='<%# Bind("Published") %>' />
                                        <br />
                                        <br />
                                        Titulek èlánku:
                                        <asp:TextBox ID="NewsTitleTextBox" runat="server" Width="550" MaxLength="100" Text='<%# Bind("NewsTitle") %>' />
                                        <asp:RequiredFieldValidator
                                            ID="NewsTitleRequiredValidator"
                                            ControlToValidate="NewsTitleTextBox"
                                            ErrorMessage="Prosím zadejte titulek.<br />"
                                            Display="Dynamic"
                                            ForeColor="Red"
                                            Font-Italic="true"
                                            runat="server" />
                                        <br />
                                        <br />
                                        Úvod èlánku:
                                        <asp:TextBox ID="NewsShortTextTextBox" runat="server" TextMode="MultiLine" Width="550"
                                            MaxLength="250"
                                            Height="50" Text='<%# Bind("NewsShortText") %>' />
                                        <asp:RequiredFieldValidator
                                            ID="NewsShortTextValidator"
                                            ControlToValidate="NewsShortTextTextBox"
                                            ErrorMessage="Prosím zadejte úvodní text èlánku.<br />"
                                            Display="Dynamic"
                                            ForeColor="Red"
                                            Font-Italic="true"
                                            runat="server" />
                                        <br />
                                        <br />
                                        Text èlánku:
                                        <asp:TextBox ID="NewsTextTextBox" runat="server" TextMode="MultiLine" Width="550"
                                            Height="300" Text='<%# Bind("NewsText") %>' />
                                        <asp:RequiredFieldValidator
                                            ID="RequiredFieldValidator1"
                                            runat="server" ErrorMessage="*"
                                            ControlToValidate="NewsTextTextBox">
                                        </asp:RequiredFieldValidator>
                                        <br />
                                        <br />
                                        Obrázek:
                                        <asp:TextBox ID="NewsImageTextBox" runat="server" Text='<%# Bind("NewsImage") %>'
                                            OnInit="NewsImageTextBox_Init" />
                                        <br />
                                        <br />
                                        <br />
                                        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert"
                                            Text="Insert" />
                                        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False"
                                            CommandName="Cancel" Text="Cancel" />
                                    </div>
                                </InsertItemTemplate>
                                <ItemTemplate>
                                    <div class="clanek" style="height: 1115px">
                                        <div class="infoclanek">
                                            <asp:Label ID="PublishDateLabel" runat="server" Text='<%# Eval("PublishDate", "Vydáno: {0:d.M.yyyy}") %>' />
                                        </div>
                                        <h1 class="nadpish1">
                                            <asp:Label ID="NewsTitleLabel" runat="server" Text='<%# Eval("NewsTitle") %>' />
                                        </h1>
                                        <div class="titleImageNovinky">
                                            <a href='<%# Eval("NewsImage", "images/Foto/{0}") %>' title='<%# Eval("NewsTitle") %>'>
                                                <asp:Image ID="thumbImageNovinky" Style="float: left; padding-right: 15px; padding-bottom: 10px;"
                                                    ImageUrl='<%# Eval("NewsImage", "images/Foto/thumb_{0}") %>'
                                                    alt='<%# Eval("NewsTitle") %>' border="none" runat="server" /></a>
                                        </div>
                                        <div class="textnovinky">
                                            <asp:Literal ID="NewsTextLabel" runat="server" Mode="PassThrough" Text='<%# Eval("NewsShortText").ToString() + Eval("NewsText").ToString() %>'></asp:Literal>
                                            <br />
                                            <br />
                                        </div>
                                        <div class="facebook" style="margin-top: 15px; width: 470px;">
                                        </div>
                                        <div class="userRoleEditor" style="position: absolute; top: 925px;">
                                            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit"
                                                Text="Edit" />
                                            <%--&nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="false" CommandName="Delete"
                                                Text="Delete" />--%>
                                            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New"
                                                Text="New" />
                                        </div>
                                    </div>
                                </ItemTemplate>
                            </asp:FormView>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:VysocinaCycling %>"
                                OnDeleted="SqlDataSource1_RedirectHome" OnInserted="SqlDataSource1_RedirectHome"
                                DeleteCommand="DELETE FROM [UserNews] WHERE [NewsId] = @NewsId"
                                InsertCommand="INSERT INTO [UserNews] ([UserName], [LastUpdate], [PublishDate], [Published], [NewsTitle], [NewsShortText], [NewsText], [NewsImage]) VALUES (@UserName, GETDATE(), @PublishDate, @Published, @NewsTitle, @NewsShortText, @NewsText, @NewsImage)"
                                SelectCommand="SELECT * FROM [UserNews] WHERE ([NewsId] = @NewsId)"
                                UpdateCommand="UPDATE [UserNews] SET [LastUpdate] = GETDATE(), [PublishDate] = @PublishDate, [Published] = @Published, [NewsTitle] = @NewsTitle, [NewsShortText] = @NewsShortText, [NewsText] = @NewsText, [NewsImage] = @NewsImage WHERE [NewsId] = @NewsId">
                                <DeleteParameters>
                                    <asp:Parameter Name="NewsId" Type="Int32" />
                                </DeleteParameters>
                                <InsertParameters>
                                    <asp:Parameter DbType="Date" Name="PublishDate" />
                                    <asp:Parameter Name="Published" Type="Boolean" />
                                    <asp:Parameter Name="NewsTitle" Type="String" />
                                    <asp:Parameter Name="NewsShortText" Type="String" />
                                    <asp:Parameter Name="NewsText" Type="String" />
                                    <asp:Parameter Name="NewsImage" Type="String" />
                                </InsertParameters>
                                <SelectParameters>
                                    <asp:QueryStringParameter DefaultValue="0" Name="NewsId" QueryStringField="NewsId"
                                        Type="Int32" />
                                </SelectParameters>
                                <UpdateParameters>
                                    <asp:Parameter DbType="Date" Name="PublishDate" />
                                    <asp:Parameter Name="Published" Type="Boolean" />
                                    <asp:Parameter Name="NewsTitle" Type="String" />
                                    <asp:Parameter Name="NewsShortText" Type="String" />
                                    <asp:Parameter Name="NewsText" Type="String" />
                                    <asp:Parameter Name="NewsImage" Type="String" />
                                    <asp:Parameter Name="NewsId" Type="Int32" />
                                </UpdateParameters>
                            </asp:SqlDataSource>
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="NewsId"
                                DataSourceID="SqlDataSource2" AllowPaging="True" PageSize="9" ShowHeader="false"
                                GridLines="None" OnRowCreated="GridView1_RowCreated">
                                <Columns>
                                    <asp:TemplateField ShowHeader="False">
                                        <ItemTemplate>
                                            <div class="clanek" style="height: 108px">
                                                <div class="infoclanek">
                                                    <asp:Label ID="PublishDateLabel" runat="server" Text='<%# Bind("PublishDate", "Vydáno: {0:d.M.yyyy}") %>' />
                                                </div>
                                                <div>
                                                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "Default.aspx?NewsId=" + Eval("NewsId") %>'
                                                        Font-Underline="False">
                                                        <div>
                                                            <img style="float: left; padding-right: 10px; padding-bottom: 5px;"
                                                                src='<%# Eval("NewsImage", "images/Foto/thumb_{0}") %>' alt='<%# Eval("NewsTitle") %>'
                                                                border="none" />
                                                        </div>
                                                        <div>
                                                            <h1 class="nadpish1">
                                                                <asp:Label ID="NewsTitleLabel" runat="server" Text='<%# Eval("NewsTitle") %>' Font-Strikeout='<%# !(Boolean)(Eval("Published"))  %>' />
                                                            </h1>
                                                        </div>
                                                        <div class="textnovinky">
                                                            <asp:Literal ID="NewsTextLabel" runat="server" Mode="PassThrough" Text='<%# Eval("NewsShortText", "{0} ...") %>' />
                                                            <br />
                                                        </div>
                                                    </asp:HyperLink>
                                                </div>
                                            </div>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                                <PagerSettings FirstPageText="<<" LastPageText=">>" Mode="NumericFirstLast" PageButtonCount="5" />
                            </asp:GridView>
                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:VysocinaCycling %>"
                                SelectCommand="SELECT * FROM [UserNews] WHERE ((@NewsId = 0) AND (([Published] = 1) OR ([Published] = 0 AND [UserName] = @UserName))) ORDER BY [PublishDate] DESC">
                                <SelectParameters>
                                    <asp:QueryStringParameter DefaultValue="0" Name="NewsId" QueryStringField="NewsId"
                                        Type="Int32" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                        </div>
                        <div id="tab-12">
                            <div class="clanek" style="height: 1115px">
                                <h1 class="nadpish1">O projektu Vysoèina cycling </h1>
                                Tento projekt je zamìøen na podporu vıkonnostní cyklistiky na Vysoèinì, a to pøedevším
                                cyklistiky silnièní. Nebráníme se ani dalším disciplínám, pøedevším horskım kolùm,
                                na kterıch jezdí na Vysoèinì spousta cyklistù. Tréninkové metody jsou toti pro
                                obì disciplíny velmi podobné.
                                <br />
                                Pøestoe je na Vysoèinì cyklistika velmi populárním rekreaèním sportem, neexistuje
                                zde poslední roky ádnı kvalitní silnièní cyklistickı klub, kterı by úspìšnì reprezentoval
                                na èeskıch nebo zahranièních soutìích. Talentovaní sportovci nemají odborné vedení,
                                a proto buï odchazí do jinıch klubù, nebo radìji provozují jiné sporty. Ti kteøí
                                u cyklistiky zùstanou, mají velmi omezenou monost vyuít svého potenciálu, protoe
                                èasto sbírají své cyklistické zkušenosti pouze zpùsobem pokus-omyl. Tento projekt
                                by mìl nabídnout monost, jak získat dùleité vìdomosti od zkušenıch profesionálù
                                a umonit tak všem cyklistùm rychlejší a efektivnìjší vıkonnostní rùst. Projekt
                                není zamìøen pouze na mladé cyklisty, ale i na ty starší, kteøí pak mohou nasbírané
                                zkušenosti pøedávat dál.
                                <br />
                                K našemu projektu se mohou pøipojit nejen cyklisté z Vysoèiny, ale i ti kteøí sem
                                èasto jezdí nebo mají jednoduše Vysoèinu rádi.
                                <br />
                                Zakladatelem projektu je Ing. Rostislav Krotkı. Od narození ije a trénuje na Vysoèinì,
                                a proto k ní má vøelı vztah. Své závodní a tréninkové zkušenosti sbíral 20 let v
                                pøedních èeskıch cyklistickıch klubech. Poslední roky své aktivní kariéry pùsobí
                                v kontinentálním tımu AC Sparta Praha. Ve svıch cyklistickıch zaèátcích prošel i
                                kluby na Vysoèinì, v Tøebíèi a v Jihlavì. Protoe chce i nadále pùsobit v cyklistice,
                                kterou má rád, rozhodl se zaloit tento projekt a pøedávat své dlouholeté zkušenosti
                                dalším aktivním cyklistùm.
                                <br />
                                Projekt by mìl nabídnout nejen kvalitní tréninkové vedení, ale také monost úèastnit
                                se rùznıch spoleènıch cyklistickıch akcí, a to nejen pravidelnıch tréninkù, ale
                                i tréninkovıch kempù pod odbornım vedením. Tyto kempy mohou bıt nejen zajímavım
                                zpestøením tréninkového procesu, ale hlavnì pomohou získat všem úèastníkùm správné
                                cyklistické návyky, a to i v oblasti stravování a regenerace.
                                <br />
                                Z nejlepších sportovcù bychom rádi vytvoøili kvalitní cyklistickı tım, kterı by
                                úspìšnì reprezentoval Vysoèinu na cyklistickıch akcích, a to nejen v naší republice,
                                ale i v zahranièí. Pro fungování takového tımu je nezbytnì nutná i podpora z øad
                                sponzorù. Proto budeme rádi, kdy se nám podaøí navázat spolupráci s úspìšnımi firmami
                                v našem kraji i okolí, které by chtìly spojit své jméno s cyklistikou na Vysoèinì.
                                Rádi jim pomùeme ke zviditelnìní a propagaci jejich jména a vırobkù.
                            </div>
                        </div>
                        <div id="tab-13">
                            <ul class="paging13">
                                <li>
                                    <div class="clanek">
                                        <h2 class="nadpish2">Cyklistickı klub Vysoèina cycling, o.s.</h2>
                                        <table>
                                            <tr>
                                                <td valign="top" align="left">adresa: </td>
                                                <td valign="top" align="left">Lipník 108
                                                    <br />
                                                    675 52 </td>
                                            </tr>
                                            <tr>
                                                <td valign="top" align="left">IÈO: </td>
                                                <td valign="top" align="left" width="520px">22745076 </td>
                                            </tr>
                                            <tr>
                                                <td valign="top" align="left">email: </td>
                                                <td valign="top" align="left" width="520px">info (zavináè) vysocinacycling.cz </td>
                                            </tr>
                                        </table>
                                    </div>
                                </li>
                                <li>
                                    <div class="clanek">
                                        <h2 class="nadpish2">Pøedseda klubu</h2>
                                        <table>
                                            <tr>
                                                <td valign="top" align="left" colspan="2">Ing. Rostislav Krotkı
                                                    <br />
                                                    Lipník 108
                                                    <br />
                                                    675 52 </td>
                                            </tr>
                                            <tr>
                                                <td valign="top" align="left">Tel: </td>
                                                <td valign="top" align="left" width="520px">724 503 016 </td>
                                            </tr>
                                        </table>
                                    </div>
                                </li>
                            </ul>
                        </div>
                        <div id="tab-14">
                            <ul class="paging4"> 
                                <li>
                                    <div class="partneri">
                                        <p>
                                            <a href="http://www.cez.cz/cs/vyroba-elektriny/jaderna-energetika/jaderne-elektrarny-cez/edu.html" target="_blank">
                                                <img style="float: left; padding-right: 20px; padding-bottom: 10px;" src="images/inzerce/EDU-SkupinaCEZ-GP.png"
                                                    alt="FFWD" border="none" /></a>
                                        </p>
                                        <h2 class="nadpish2">Jaderná elektrárna Dukovany</h2>
                                        První reaktorovı blok byl uveden do provozu v kvìtnu 1985, poslední ètvrtı blok v èervenci 1987. Maximálního
                                        projektového vıkonu 1760 MW dosáhla elektrárna v èervenci 1987. Spuštìní dvou jadernıch blokù – druhého a tøetího –
                                        v jediném roce 1986 a na jedné lokalitì bylo ve své dobì zcela unikátní a doposud se ve svìtì neopakovalo. Více ne
                                        80 % pouitıch zaøízení je vyrobeno v ÈR.<br />
                                        Od roku 1985 do ledna roku 2015 bylo na všech ètyøech blocích elektrárny vyrobeno více ne 384 miliard kWh elektrické
                                        energie, co je nejvíce ze všech elektráren v Èeské republice. Elektrárna Dukovany pokrıvá pøiblinì 20 % spotøeby elektøiny
                                        v ÈR. Roènì vyrobí více ne 14 mld. kWh, co by staèilo k pokrytí spotøeby všech domácností v ÈR.
                                    </div>
                                </li>
                                <li>
                                    <div class="partneri">
                                        <p>
                                            <a href="http://www.ffwdwheels.cz/" target="_blank">
                                                <img style="float: left; padding-right: 20px; padding-bottom: 10px;" src="images/inzerce/FFWD.png"
                                                    alt="FFWD" border="none" /></a>
                                        </p>
                                        <h2 class="nadpish2">FAST FORWARD</h2>
                                        Fast Forward Wheels nabízí ucelenou øadu silnièních zapletenıch kol. Nabídka zaèíná
                                        nízkoprofilovımi koly øady F2 a konèí a u vysokıch aerodynamickıch kol øady F9.<br />
                                        Zejména galuskové verze silnièních øad lze s úspìchem pouít i v cyklokrosu. Lehkost a
                                        odolnost tìchto kol oceníte ve strmıch vıjezdech nebo rychlıch pøesunech èi sprinterskıch koncovkách.<br />
                                        FFWD Wheels dokáí bıt Vašim partnerem také na dráze. Vyberte si od klasickıch vıpletù,
                                        pøes loukotì a po disk pøesnì taková kola, která Vám budou na dráze dávat náskok pøed soupeøi.<br />
                                        V disciplínách, kde se kadá sekunda poèítá, mùete poèítat také s koly FFWD. Pøipravena
                                        jsou pro Vás 90 mm vysoká kola øady F9 s D.A.R.C. technoglogií, loukoová kola a také celokarbonvı disk.
                                    </div>
                                </li>
                                <li>
                                    <div class="partneri">
                                        <p>
                                            <a href="http://www.tour-sport.cz/" target="_blank">
                                                <img style="float: left; padding-right: 20px; padding-bottom: 10px;" src="images/inzerce/logo-toursport.png"
                                                    alt="Tour Sport" border="none" /></a>
                                        </p>
                                        <h2 class="nadpish2">TOUR SPORT</h2>
                                        Naše spoleènost se zabıvá prodejem veškerého sportovního vybavení. V prvních letech
                                        našeho obchodování jsme se zajímali o maloobchodní prodej sportovní obuvi a vybavení
                                        pro turisty.A o pár let pozdìji jsme se rozhodli zaèít nabízet k prodeji jízdní kola
                                        a lye a celı náš sortiment nadále rozšiøovat.
                                        <br />
                                    </div>
                                </li>
                                <li>
                                    <div class="partneri">
                                        <p>
                                            <a href="http://www.kalas.cz/" target="_blank">
                                                <img style="float: left; padding-right: 20px; padding-bottom: 10px;" src="images/inzerce/kalas.png"
                                                    alt="KALAS" border="none" /></a>
                                        </p>
                                        <h2 class="nadpish2">KALAS</h2>
                                        Cyklistické dresy s logem KALAS oblékají mistøi svìta, olympijští vítìzové, èlenové
                                        národních reprezentací, ale i tisíce rekreaèních cyklistù z více ne 20 zemí svìta.
                                        Pøipojte se k nim. Sportovní obleèení KALAS je synonymem pro nepøekonatelné funkèní
                                        vlastnosti, špièkové zpracování, nápaditı design i dlouhou ivotnost.<br />
                                    </div>
                                </li>
                                <li>
                                    <div class="partneri">
                                        <p>
                                            <a href="http://www.decathlon.cz/" target="_blank">
                                                <img style="float: left; padding-right: 20px; padding-bottom: 10px;" src="images/inzerce/decathlon-p.png"
                                                    alt="DECATHLON" border="none" /></a>
                                        </p>
                                        <h2 class="nadpish2">DECATHLON</h2>
                                        Jsme tım nadšenıch sportovcù. Naším smyslem je dìlat sport dostupnìjší.
                                        Milujeme sport, dìláme do co nás baví.
                                        Máme odvahu. Jsme Decathlon United.<br />
                                    </div>
                                </li>
                                <li>
                                    <div class="partneri">
                                        <p>
                                            <a href="http://www.isostar.cz/" target="_blank">
                                                <img style="float: left; padding-right: 20px; padding-bottom: 10px;" src="images/inzerce/isostar.png"
                                                    alt="ISOSTAR" border="none" /></a>
                                        </p>
                                        <h2 class="nadpish2">ISOSTAR</h2>
                                        Isostar je naprostım evropskım leaderem v oblasti sportovní vıivy. Na èeském trhu 
                                        má stabilní pozici ji 40 let, pøední èeští sportovci v èele s extraligovım hokejovım 
                                        tımem mají ke znaèce dlouhodobì dùvìru. Dobrá distribuce produktù v supermarketech, 
                                        drogeriích, sportovních obchodech atd. je èiní snadno dostupnım i pro širokou veøejnost.<br />
                                    </div>
                                </li>
                                <li>
                                    <div class="partneri">
                                        <p>
                                            <a href="http://jsphoto.cz/" target="_blank">
                                                <img style="float: left; padding-right: 20px; padding-bottom: 10px;" src="images/inzerce/JSPhoto.png"
                                                    alt="Jaroslav Svoboda - Sports Photography" border="none" /></a>
                                        </p>
                                        <h2 class="nadpish2">Jaroslav Svoboda - Sports Photography</h2>
                                        Sportovní fotograf z Vysoèiny, kterı se zamìøuje pøedevším na cyklistiku. Jeho fotky
                                        naleznete i na našem webu.<br />
                                        <br />
                                        <br />
                                    </div>
                                </li>
                                <li>
                                    <div class="partneri">
                                        <p>
                                            <a href="http://www.sparta-cycling.cz/" target="_blank">
                                                <img style="float: left; padding-right: 20px; padding-bottom: 10px;" src="images/inzerce/sparta.png"
                                                    alt="i-trenink" border="none" /></a>
                                        </p>
                                        <h2 class="nadpish2">AC Sparta Praha Cycling</h2>
                                        Continental cycling team - oficiální stránky tımu AC Sparta Praha Cycling. Partneøi,
                                        sloení tımu, kalendáø, vısledky, historie a fotogalerie.<br />
                                        <br />
                                        <br />
                                    </div>
                                </li>
                                <li>
                                    <div class="partneri">
                                        <p>
                                            <a href="http://www.i-trenink.com/" target="_blank">
                                                <img style="float: left; padding-right: 20px; padding-bottom: 10px;" src="images/inzerce/i-trenink.jpg"
                                                    alt="i-trenink" border="none" /></a>
                                        </p>
                                        <h2 class="nadpish2">Inza Performance Cycling Software</h2>
                                        Profesionální cyklistickı tréninkovı software vyhodnocující pomocí unikátních analız
                                        pøedevším data z cyklistickıch wattmetrù s cílem stanovit vıkonnost a trénovanost
                                        daného jedince.
                                    </div>
                                </li>
                                <li>
                                    <div class="partneri">
                                        <p>
                                            <a href="http://www.jihlavska24mtb.cz/" target="_blank">
                                                <img style="float: left; padding-right: 20px; padding-bottom: 10px;" src="images/inzerce/logo24MTB.png"
                                                    alt="Jihlavská 24 MTB" border="none" /></a>
                                        </p>
                                        <h2 class="nadpish2">Jihlavská 24 MTB</h2>
                                        Propagovat cyklistiku a pøivést ji do samotného centra krajského mìsta Jihlava se
                                        daøí organizátorùm této extrémní cyklistické akce.<br />
                                        <br />
                                        <br />
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </td>
                    <td valign="top">
                        <ul class="paging1" style="padding-top: 12px; padding-right: 17px;">
                            <li>
                                <a href="https://www.facebook.com/pages/Vyso%C4%8Dina-Cycling/310472125651134" onclick="ga('send', 'event', 'URL', 'View', 'Banner See Our Facebook');"
                                    target="_blank">
                                    <img src="images/inzerce/PodivejteSeTakeNaNasFacebook.png"
                                        alt="Podívejte se také na náš facebook" border="none" /></a>
                            </li>
                            <li>
                                <div class="clanek" style="padding-bottom: 0px">
                                    <a href="http://www.ffwdwheels.cz/" onclick="ga('send', 'event', 'URL', 'View', 'Banner FFWD');"
                                        target="_blank">
                                        <img src="images/inzerce/Banner_FFWD.png"
                                            alt="FFWD" border="none" /></a>
                                </div>
                            </li>
                            <li>
                                <div style="height: 140px; padding-bottom: 42px;">
                                    <div id="infoacc">
                                        <h3>Závody na Vysoèinì</h3>
                                        <div class="nabidka">
                                            Nevíte kam vyrazit na závody v našem kraji, pokusili jsme se pro Vás zpracovat kompletní
                                            seznam cyklistickıch akcí, které se konají na Vysoèinì. Více se dozvíte v sekci
                                            <a href="akce.aspx" style="text-decoration: underline; cursor: pointer"><strong>Akce</strong></a>.
                                            Naleznete zde i pravidla a hodnocení celoroèní soutìe cyklistù z Vysoèiny.
                                        </div>
                                        <h3>Trénujte s profesionálem</h3>
                                        <div class="nabidka">
                                            Chtìli byste vyuít slueb tréninkového poradce, nahlédnìte do sekce <a href="trenink.aspx"
                                                style="text-decoration: underline; cursor: pointer"><strong>Trénink</strong></a>.
                                            Naleznete tam monosti tréninkového vedení pod dohledem zkušeného profesionála Rostislava
                                            Krotkého.
                                        </div>
                                        <h3>Napsali o nás...</h3>
                                        <div class="nabidka">
                                            <a href="http://cs.wikipedia.org/wiki/Rostislav_Krotk%C3%BD" target="_blank">
                                                <strong>Wikipedie: </strong>Rostislav Krotkı - Vysoèina Cycling</a><br />
                                            <a href="http://jihlava.idnes.cz/clanek.aspx?c=A131109_1998002_cyklistika_ten" target="_blank">
                                                <strong>IDNES: </strong>Vysoèina Cycling má velké ambice, ale šanci dává ...</a><br />
                                            <a href="http://www.inkospor-team.cz/news/vysocina-cycling-mtb-trebic/" target="_blank">
                                                <strong>Inkospor: </strong>Vysoèina Cycling MTB Tøebíè</a><br />
                                            <a href="http://www.horacke-noviny.com/zprava-elitni_silnicni_cykliste_bojovali_na%C2%A0vysocine-2509.htm"
                                                target="_blank">
                                                <strong>Horácké noviny: </strong>Elitní silnièní cyklisté bojovali na Vysoèinì</a>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="clanek" style="padding-left: 30px; padding-bottom: 0px;">
                                    <img src="images/inzerce/sponzori2019.gif"
                                        alt="Partneøi Vysoèina Cycling 2019" border="none" />
                                </div>
                            </li>
                            <li>
                                <div class="clanek">
                                    <div class="userLoggedOff">
                                        <div id="weather">
                                        </div>
                                        <div>
                                            <a href="http://www.chmi.cz/files/portal/docs/meteo/kam/prohlizec.html?cam=pribyslav"
                                                target="_blank" style="color: #003399">WebCam</a> <a href="http://www.chmi.cz/files/portal/docs/meteo/rad/data_jsradview.html"
                                                    target="_blank" style="color: #003399">Radar</a> <a href="http://www.chmi.cz/files/portal/docs/meteo/sat/data_jsmsgview.html"
                                                        target="_blank" style="color: #003399">Druice</a> <a href="http://pr-asv.chmi.cz/aladin/index.php?run=latest&all=on"
                                                            target="_blank" style="color: #003399">Aladin</a> <a href="http://www.chmi.cz/files/portal/docs/meteo/ov/aladin/results/public/meteogramy/meteogram_page_portal/m.html"
                                                                target="_blank" style="color: #003399">Meteogram</a> <a href="http://www.chmi.cz/"
                                                                    target="_blank" style="color: #003399">CHMI</a>
                                        </div>
                                    </div>
                                    <div class="userLoggedOn">
                                        <div id="userweather">
                                        </div>
                                        <div>
                                            <a href="http://www.chmi.cz/files/portal/docs/meteo/kam/prohlizec.html?cam=dukovany"
                                              target="_blank" style="color: #003399">WebCam</a>
                                            <a href="http://www.chmi.cz/files/portal/docs/meteo/rad/data_jsradview.html"
                                              target="_blank" style="color: #003399">Radar</a>
                                            <a href="http://www.chmi.cz/files/portal/docs/meteo/sat/data_jsmsgview.html"
                                              target="_blank" style="color: #003399">Druice</a>
                                            <a href="http://pr-asv.chmi.cz/aladin/index.php?run=latest&all=on"
                                              target="_blank" style="color: #003399">Aladin</a>
                                            <a href="http://www.chmi.cz/files/portal/docs/meteo/ov/aladin/results/public/meteogramy/meteogram_page_portal/m.html"
                                              target="_blank" style="color: #003399">Meteogram</a>
                                            <a href="http://www.chmi.cz/"
                                              target="_blank" style="color: #003399">CHMI</a>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="clanek">
                                    <div class="infoclanek">
                                        Nejbliší silnièní akce
                                    </div>
                                    <table style="font-size: 11px;">
                                        <tr>
                                            <td colspan="2">
                                                <h2 style="color: #006600; font-family: 'Times New Roman', Times, serif">Dukovanské okruhy</h2>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="color: #0033CC;">Termín: </td>
                                            <td style="color: #FF3300;">20.7.2019</td>
                                        </tr>
                                        <tr>
                                            <td style="color: #0033CC;">Místo: </td>
                                            <td style="color: #FF3300;">Jaderná elektrárna Dukovany</td>
                                        </tr>
                                        <tr>
                                            <td style="color: #0033CC;">Typ závodu: </td>
                                            <td style="color: #FF3300;">Silnièní </td>
                                        </tr>
                                        <tr>
                                            <td style="color: #0033CC;">Startují: </td>
                                            <td style="color: #FF3300;">Všechny kategorie </td>
                                        </tr>
                                        <tr>
                                            <td style="color: #0033CC;">Web: </td>
                                            <td style="color: #FF3300;">
                                                <a href="http://www.vysocinacycling.cz/dukovanske-okruhy"
                                                    target="_blank" style="cursor: pointer">http://www.vysocinacycling.cz/dukovanske-okruhy
                                                </a>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="color: #0033CC;">Pøihláška: </td>
                                            <td style="color: #FF3300;"></td>
                                        </tr>
                                    </table>
                                </div>
                            </li>
                            <li>
                                <div class="clanek">
                                    <div class="infoclanek">
                                        Nejbliší èasovka
                                    </div>
                                    <table style="font-size: 11px;">
                                        <tr>
                                            <td colspan="2">
                                                <h2 style="color: #006600; font-family: 'Times New Roman', Times, serif">Èasovka na Kluèovskou horu </h2>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="color: #0033CC;">Termín: </td>
                                            <td style="color: #FF3300;">28.9.2019 </td>
                                        </tr>
                                        <tr>
                                            <td style="color: #0033CC;">Místo: </td>
                                            <td style="color: #FF3300;">Støíte u Tøebíèe </td>
                                        </tr>
                                        <tr>
                                            <td style="color: #0033CC;">Typ závodu: </td>
                                            <td style="color: #FF3300;">Silnièní èasovka do vrchu </td>
                                        </tr>
                                        <tr>
                                            <td style="color: #0033CC;">Startují: </td>
                                            <td style="color: #FF3300;">Všechny kategorie </td>
                                        </tr>
                                        <tr>
                                            <td style="color: #0033CC;">Web: </td>
                                            <td style="color: #FF3300;">
                                                <a href="http://www.vysocinacycling.cz/casovka-na-klucovskou-horu"
                                                    target="_blank" style="cursor: pointer">http://www.vysocinacycling.cz/casovka-na-klucovskou-horu
                                                </a>
                                            </td>
                                        </tr> 
                                        <tr>
                                            <td style="color: #0033CC;">Pøihláška: </td>
                                            <td style="color: #FF3300;"></td>
                                        </tr>
                                    </table>
                                </div>
                            </li>   
                            <li>
                                <div class="clanek">
                                    <div class="infoclanek">
                                        Nejbliší MTB akce
                                    </div>
                                    <table style="font-size: 11px;">
                                        <tr>
                                            <td colspan="2">
                                                <h2 style="color: #006600; font-family: 'Times New Roman', Times, serif">MTB Pekelnı kopce </h2>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="color: #0033CC;">Termín: </td>
                                            <td style="color: #FF3300;">19.10.2019 </td>
                                        </tr>
                                        <tr>
                                            <td style="color: #0033CC;">Místo: </td>
                                            <td style="color: #FF3300;">Tøebíè, U kostelíèku </td>
                                        </tr>
                                        <tr>
                                            <td style="color: #0033CC;">Typ závodu: </td>
                                            <td style="color: #FF3300;">MTB maraton </td>
                                        </tr>
                                        <tr>
                                            <td style="color: #0033CC;">Startují: </td>
                                            <td style="color: #FF3300;">Všechny kategorie </td>
                                        </tr>
                                        <tr>
                                            <td style="color: #0033CC;">Web: </td>
                                            <td style="color: #FF3300;">
                                                <a href="http://www.vysocinacycling.cz/mtb-pekelny-kopce"
                                                    target="_blank" style="cursor: pointer">http://www.vysocinacycling.cz/mtb-pekelny-kopce
                                                </a>
                                            </td>
                                        </tr> 
                                        <tr>
                                            <td style="color: #0033CC;">Pøihláška: </td>
                                            <td style="color: #FF3300;"></td>
                                        </tr>
                                    </table>
                                </div>
                            </li>   
                            <li>
                                <div class="clanek">   
                                    <div class="infoclanek">
                                      .
                                    </div>
                                    <div class="calendar">
                                      <iframe src="https://calendar.google.com/calendar/embed?showTitle=0&amp;showDate=0&amp;showPrint=0&amp;showCalendars=0&amp;showTz=0&amp;mode=WEEK&amp;height=1110&amp;wkst=2&amp;bgcolor=%23ccccff&amp;src=b0hmdsc1f90p51riok8sk00hd0%40group.calendar.google.com&amp;color=%232F6213&amp;ctz=Europe%2FPrague" style="border-width:0" width="320" height="1110" frameborder="0" scrolling="no"></iframe>
                                    </div>
                                </div>
                            </li>
<%--                            <li>
                                <div class="clanek">
                                    <div class="infoclanek">
                                        Probíhá do 1.10.2013
                                    </div>
                                    <br />
                                    <span style="color: #990000; font-family: 'Times New Roman', Times, serif; font-size: x-large;
                                        font-weight: bold;">Anketa </span><span style="font-weight: bold; font-size: small;">
                                            - nejlepší cyklista Vysoèiny...</span>
                                    <br />
                                    <br />
                                    <br />
                                    <div>
                                        <table>
                                            <tr>
                                                <td colspan="2" valign="bottom">
                                                    <asp:Label ID="Label0" runat="server" Text="Martin Hunal" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="width: 260px" valign="top">
                                                    <asp:Button ID="Button0" runat="server" Width="250px" Height="5px" />
                                                </td>
                                                <td>0 hlasù </td>
                                            </tr>
                                            <tr>
                                                <td colspan="2" valign="bottom">
                                                    <asp:Label ID="Label1" runat="server" Text="Jan Hirt" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td valign="top">
                                                    <asp:Button ID="Button1" runat="server" Width="250px" Height="5px" />
                                                </td>
                                                <td>0 hlasù </td>
                                            </tr>
                                            <tr>
                                                <td colspan="2" valign="bottom">
                                                    <asp:Label ID="Label2" runat="server" Text="Rostislav Krotkı" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td valign="top">
                                                    <asp:Button ID="Button2" runat="server" Width="250px" Height="5px" />
                                                </td>
                                                <td>0 hlasù </td>
                                            </tr>
                                            <tr>
                                                <td colspan="2" valign="bottom">
                                                    <asp:Label ID="Label3" runat="server" Text="Jaroslav Sláma" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <asp:Button ID="Button3" runat="server" Width="250px" Height="5px" />
                                                </td>
                                                <td>0 hlasù </td>
                                            </tr>
                                            <tr>
                                                <td colspan="2" valign="bottom">
                                                    <asp:Label ID="Label4" runat="server" Text="Michal Tomáš" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <asp:Button ID="Button4" runat="server" Width="250px" Height="5px" />
                                                </td>
                                                <td>0 hlasù </td>
                                            </tr>
                                            <tr>
                                                <td colspan="2" valign="bottom">
                                                    <asp:Label ID="Label5" runat="server" Text="Lukáš Tomášek" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <asp:Button ID="Button5" runat="server" Width="250px" Height="5px" />
                                                </td>
                                                <td>0 hlasù </td>
                                            </tr>
                                        </table>
                                    </div>
                                </div>
                            </li>--%>
                        </ul>
                    </td>
                </tr>
            </table>
        </div>
    </div>
</asp:Content>
