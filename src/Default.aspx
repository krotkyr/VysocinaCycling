<%@ Page Title="Vyso�ina Cycling - cyklistika na Vyso�in�, t�m, z�vody a tr�nink"
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
                <li id="Li15"><a href="#tab-14">Partne�i</a></li>
            </ul>
            <table>
                <tr>
                    <td valign="top" align="left">
                        <div id="tab-11">
                            <asp:FormView ID="FormView1" runat="server" DataKeyNames="NewsId" DataSourceID="SqlDataSource1">
                                <EditItemTemplate>
                                    <div class="clanek" style="height: 1115px">
                                        <br />
                                        U�ivatelsk� jm�no:
                                        <asp:Label ID="UserNameLabel" runat="server" Text='<%# Eval("UserName") %>' />
                                        <br />
                                        Posledn� �prava:
                                        <asp:Label ID="LastUpdateLabel" runat="server" Text='<%# Eval("LastUpdate") %>' />
                                        <br />
                                        <br />
                                        Datum zve�ejn�n�:
                                        <asp:TextBox ID="PublishDateTextBox" runat="server" Text='<%# Bind("PublishDate") %>' />
                                        <br />
                                        <br />
                                        Zve�ejnit:
                                        <asp:CheckBox ID="PublishedCheckBox" runat="server" Checked='<%# Bind("Published") %>' />
                                        <br />
                                        <br />
                                        Titulek �l�nku:
                                        <asp:TextBox ID="NewsTitleTextBox" runat="server" Width="550" MaxLength="100" Text='<%# Bind("NewsTitle") %>' />
                                        <br />
                                        <br />
                                        �vod �l�nku:
                                        <asp:TextBox ID="NewsShortTextTextBox" runat="server" TextMode="MultiLine" Width="550"
                                            MaxLength="250"
                                            Height="50" Text='<%# Bind("NewsShortText") %>' />
                                        <br />
                                        <br />
                                        Text �l�nku:
                                        <asp:TextBox ID="NewsTextTextBox" runat="server" TextMode="MultiLine" Width="550"
                                            Height="300" Text='<%# Bind("NewsText") %>' />
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*"
                                            ControlToValidate="NewsTextTextBox"></asp:RequiredFieldValidator>
                                        <br />
                                        <br />
                                        Obr�zek:
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
                                        Datum zve�ejn�n�:
                                        <asp:TextBox ID="PublishDateTextBox" runat="server" Text='<%# Bind("PublishDate") %>' />
                                        <br />
                                        <br />
                                        Zve�ejnit:
                                        <asp:CheckBox ID="PublishedCheckBox" runat="server" Checked='<%# Bind("Published") %>' />
                                        <br />
                                        <br />
                                        Titulek �l�nku:
                                        <asp:TextBox ID="NewsTitleTextBox" runat="server" Width="550" MaxLength="100" Text='<%# Bind("NewsTitle") %>' />
                                        <asp:RequiredFieldValidator
                                            ID="NewsTitleRequiredValidator"
                                            ControlToValidate="NewsTitleTextBox"
                                            ErrorMessage="Pros�m zadejte titulek.<br />"
                                            Display="Dynamic"
                                            ForeColor="Red"
                                            Font-Italic="true"
                                            runat="server" />
                                        <br />
                                        <br />
                                        �vod �l�nku:
                                        <asp:TextBox ID="NewsShortTextTextBox" runat="server" TextMode="MultiLine" Width="550"
                                            MaxLength="250"
                                            Height="50" Text='<%# Bind("NewsShortText") %>' />
                                        <asp:RequiredFieldValidator
                                            ID="NewsShortTextValidator"
                                            ControlToValidate="NewsShortTextTextBox"
                                            ErrorMessage="Pros�m zadejte �vodn� text �l�nku.<br />"
                                            Display="Dynamic"
                                            ForeColor="Red"
                                            Font-Italic="true"
                                            runat="server" />
                                        <br />
                                        <br />
                                        Text �l�nku:
                                        <asp:TextBox ID="NewsTextTextBox" runat="server" TextMode="MultiLine" Width="550"
                                            Height="300" Text='<%# Bind("NewsText") %>' />
                                        <asp:RequiredFieldValidator
                                            ID="RequiredFieldValidator1"
                                            runat="server" ErrorMessage="*"
                                            ControlToValidate="NewsTextTextBox">
                                        </asp:RequiredFieldValidator>
                                        <br />
                                        <br />
                                        Obr�zek:
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
                                            <asp:Label ID="PublishDateLabel" runat="server" Text='<%# Eval("PublishDate", "Vyd�no: {0:d.M.yyyy}") %>' />
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
                                                    <asp:Label ID="PublishDateLabel" runat="server" Text='<%# Bind("PublishDate", "Vyd�no: {0:d.M.yyyy}") %>' />
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
                                <h1 class="nadpish1">O projektu Vyso�ina cycling </h1>
                                Tento projekt je zam��en na podporu v�konnostn� cyklistiky na Vyso�in�, a to p�edev��m
                                cyklistiky silni�n�. Nebr�n�me se ani dal��m discipl�n�m, p�edev��m horsk�m kol�m,
                                na kter�ch jezd� na Vyso�in� spousta cyklist�. Tr�ninkov� metody jsou toti� pro
                                ob� discipl�ny velmi podobn�.
                                <br />
                                P�esto�e je na Vyso�in� cyklistika velmi popul�rn�m rekrea�n�m sportem, neexistuje
                                zde posledn� roky ��dn� kvalitn� silni�n� cyklistick� klub, kter� by �sp�n� reprezentoval
                                na �esk�ch nebo zahrani�n�ch sout��ch. Talentovan� sportovci nemaj� odborn� veden�,
                                a proto bu� odchaz� do jin�ch klub�, nebo rad�ji provozuj� jin� sporty. Ti kte��
                                u cyklistiky z�stanou, maj� velmi omezenou mo�nost vyu��t sv�ho potenci�lu, proto�e
                                �asto sb�raj� sv� cyklistick� zku�enosti pouze zp�sobem pokus-omyl. Tento projekt
                                by m�l nab�dnout mo�nost, jak z�skat d�le�it� v�domosti od zku�en�ch profesion�l�
                                a umo�nit tak v�em cyklist�m rychlej�� a efektivn�j�� v�konnostn� r�st. Projekt
                                nen� zam��en pouze na mlad� cyklisty, ale i na ty star��, kte�� pak mohou nasb�ran�
                                zku�enosti p�ed�vat d�l.
                                <br />
                                K na�emu projektu se mohou p�ipojit nejen cyklist� z Vyso�iny, ale i ti kte�� sem
                                �asto jezd� nebo maj� jednodu�e Vyso�inu r�di.
                                <br />
                                Zakladatelem projektu je Ing. Rostislav Krotk�. Od narozen� �ije a tr�nuje na Vyso�in�,
                                a proto k n� m� v�el� vztah. Sv� z�vodn� a tr�ninkov� zku�enosti sb�ral 20 let v
                                p�edn�ch �esk�ch cyklistick�ch klubech. Posledn� roky sv� aktivn� kari�ry p�sob�
                                v kontinent�ln�m t�mu AC Sparta Praha. Ve sv�ch cyklistick�ch za��tc�ch pro�el i
                                kluby na Vyso�in�, v T�eb��i a v Jihlav�. Proto�e chce i nad�le p�sobit v cyklistice,
                                kterou m� r�d, rozhodl se zalo�it tento projekt a p�ed�vat sv� dlouholet� zku�enosti
                                dal��m aktivn�m cyklist�m.
                                <br />
                                Projekt by m�l nab�dnout nejen kvalitn� tr�ninkov� veden�, ale tak� mo�nost ��astnit
                                se r�zn�ch spole�n�ch cyklistick�ch akc�, a to nejen pravideln�ch tr�nink�, ale
                                i tr�ninkov�ch kemp� pod odborn�m veden�m. Tyto kempy mohou b�t nejen zaj�mav�m
                                zpest�en�m tr�ninkov�ho procesu, ale hlavn� pomohou z�skat v�em ��astn�k�m spr�vn�
                                cyklistick� n�vyky, a to i v oblasti stravov�n� a regenerace.
                                <br />
                                Z nejlep��ch sportovc� bychom r�di vytvo�ili kvalitn� cyklistick� t�m, kter� by
                                �sp�n� reprezentoval Vyso�inu na cyklistick�ch akc�ch, a to nejen v na�� republice,
                                ale i v zahrani��. Pro fungov�n� takov�ho t�mu je nezbytn� nutn� i podpora z �ad
                                sponzor�. Proto budeme r�di, kdy� se n�m poda�� nav�zat spolupr�ci s �sp�n�mi firmami
                                v na�em kraji i okol�, kter� by cht�ly spojit sv� jm�no s cyklistikou na Vyso�in�.
                                R�di jim pom��eme ke zviditeln�n� a propagaci jejich jm�na a v�robk�.
                            </div>
                        </div>
                        <div id="tab-13">
                            <ul class="paging13">
                                <li>
                                    <div class="clanek">
                                        <h2 class="nadpish2">Cyklistick� klub Vyso�ina cycling, o.s.</h2>
                                        <table>
                                            <tr>
                                                <td valign="top" align="left">adresa: </td>
                                                <td valign="top" align="left">Lipn�k 108
                                                    <br />
                                                    675 52 </td>
                                            </tr>
                                            <tr>
                                                <td valign="top" align="left">I�O: </td>
                                                <td valign="top" align="left" width="520px">22745076 </td>
                                            </tr>
                                            <tr>
                                                <td valign="top" align="left">email: </td>
                                                <td valign="top" align="left" width="520px">info (zavin��) vysocinacycling.cz </td>
                                            </tr>
                                        </table>
                                    </div>
                                </li>
                                <li>
                                    <div class="clanek">
                                        <h2 class="nadpish2">P�edseda klubu</h2>
                                        <table>
                                            <tr>
                                                <td valign="top" align="left" colspan="2">Ing. Rostislav Krotk�
                                                    <br />
                                                    Lipn�k 108
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
                                        <h2 class="nadpish2">Jadern� elektr�rna Dukovany</h2>
                                        Prvn� reaktorov� blok byl uveden do provozu v kv�tnu 1985, posledn� �tvrt� blok v �ervenci 1987. Maxim�ln�ho
                                        projektov�ho v�konu 1760 MW dos�hla elektr�rna v �ervenci 1987. Spu�t�n� dvou jadern�ch blok� � druh�ho a t�et�ho �
                                        v jedin�m roce 1986 a na jedn� lokalit� bylo ve sv� dob� zcela unik�tn� a doposud se ve sv�t� neopakovalo. V�ce ne�
                                        80 % pou�it�ch za��zen� je vyrobeno v �R.<br />
                                        Od roku 1985 do ledna roku 2015 bylo na v�ech �ty�ech bloc�ch elektr�rny vyrobeno v�ce ne� 384 miliard kWh elektrick�
                                        energie, co� je nejv�ce ze v�ech elektr�ren v �esk� republice. Elektr�rna Dukovany pokr�v� p�ibli�n� 20 % spot�eby elekt�iny
                                        v �R. Ro�n� vyrob� v�ce ne� 14 mld. kWh, co� by sta�ilo k pokryt� spot�eby v�ech dom�cnost� v �R.
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
                                        Fast Forward Wheels nab�z� ucelenou �adu silni�n�ch zapleten�ch kol. Nab�dka za��n�
                                        n�zkoprofilov�mi koly �ady F2 a kon�� a� u vysok�ch aerodynamick�ch kol �ady F9.<br />
                                        Zejm�na galuskov� verze silni�n�ch �ad lze s �sp�chem pou��t i v cyklokrosu. Lehkost a
                                        odolnost t�chto kol ocen�te ve strm�ch v�jezdech nebo rychl�ch p�esunech �i sprintersk�ch koncovk�ch.<br />
                                        FFWD Wheels dok�� b�t Va�im partnerem tak� na dr�ze. Vyberte si od klasick�ch v�plet�,
                                        p�es loukot� a� po disk p�esn� takov� kola, kter� V�m budou na dr�ze d�vat n�skok p�ed soupe�i.<br />
                                        V discipl�n�ch, kde se ka�d� sekunda po��t�, m��ete po��tat tak� s koly FFWD. P�ipravena
                                        jsou pro V�s 90 mm vysok� kola �ady F9 s D.A.R.C. technoglogi�, louko�ov� kola a tak� celokarbonv� disk.
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
                                        Na�e spole�nost se zab�v� prodejem ve�ker�ho sportovn�ho vybaven�. V prvn�ch letech
                                        na�eho obchodov�n� jsme se zaj�mali o maloobchodn� prodej sportovn� obuvi a vybaven�
                                        pro turisty.A� o p�r let pozd�ji jsme se rozhodli za��t nab�zet k prodeji j�zdn� kola
                                        a ly�e a cel� n� sortiment nad�le roz�i�ovat.
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
                                        Cyklistick� dresy s logem KALAS obl�kaj� mist�i sv�ta, olympij�t� v�t�zov�, �lenov�
                                        n�rodn�ch reprezentac�, ale i tis�ce rekrea�n�ch cyklist� z v�ce ne� 20 zem� sv�ta.
                                        P�ipojte se k nim. Sportovn� oble�en� KALAS je synonymem pro nep�ekonateln� funk�n�
                                        vlastnosti, �pi�kov� zpracov�n�, n�padit� design i dlouhou �ivotnost.<br />
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
                                        Jsme t�m nad�en�ch sportovc�. Na��m smyslem je d�lat sport dostupn�j��.
                                        Milujeme sport, d�l�me do co n�s bav�.
                                        M�me odvahu. Jsme Decathlon United.<br />
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
                                        Isostar je naprost�m evropsk�m leaderem v oblasti sportovn� v��ivy. Na �esk�m trhu 
                                        m� stabiln� pozici ji� 40 let, p�edn� �e�t� sportovci v �ele s extraligov�m hokejov�m 
                                        t�mem maj� ke zna�ce dlouhodob� d�v�ru. Dobr� distribuce produkt� v supermarketech, 
                                        drogeri�ch, sportovn�ch obchodech atd. je �in� snadno dostupn�m i pro �irokou ve�ejnost.<br />
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
                                        Sportovn� fotograf z Vyso�iny, kter� se zam��uje p�edev��m na cyklistiku. Jeho fotky
                                        naleznete i na na�em webu.<br />
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
                                        Continental cycling team - ofici�ln� str�nky t�mu AC Sparta Praha Cycling. Partne�i,
                                        slo�en� t�mu, kalend��, v�sledky, historie a fotogalerie.<br />
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
                                        Profesion�ln� cyklistick� tr�ninkov� software vyhodnocuj�c� pomoc� unik�tn�ch anal�z
                                        p�edev��m data z cyklistick�ch wattmetr� s c�lem stanovit v�konnost a tr�novanost
                                        dan�ho jedince.
                                    </div>
                                </li>
                                <li>
                                    <div class="partneri">
                                        <p>
                                            <a href="http://www.jihlavska24mtb.cz/" target="_blank">
                                                <img style="float: left; padding-right: 20px; padding-bottom: 10px;" src="images/inzerce/logo24MTB.png"
                                                    alt="Jihlavsk� 24 MTB" border="none" /></a>
                                        </p>
                                        <h2 class="nadpish2">Jihlavsk� 24 MTB</h2>
                                        Propagovat cyklistiku a p�iv�st ji do samotn�ho centra krajsk�ho m�sta Jihlava se
                                        da�� organiz�tor�m t�to extr�mn� cyklistick� akce.<br />
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
                                        alt="Pod�vejte se tak� na n� facebook" border="none" /></a>
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
                                        <h3>Z�vody na Vyso�in�</h3>
                                        <div class="nabidka">
                                            Nev�te kam vyrazit na z�vody v na�em kraji, pokusili jsme se pro V�s zpracovat kompletn�
                                            seznam cyklistick�ch akc�, kter� se konaj� na Vyso�in�. V�ce se dozv�te v sekci
                                            <a href="akce.aspx" style="text-decoration: underline; cursor: pointer"><strong>Akce</strong></a>.
                                            Naleznete zde i pravidla a hodnocen� celoro�n� sout�e cyklist� z Vyso�iny.
                                        </div>
                                        <h3>Tr�nujte s profesion�lem</h3>
                                        <div class="nabidka">
                                            Cht�li byste vyu��t slu�eb tr�ninkov�ho poradce, nahl�dn�te do sekce <a href="trenink.aspx"
                                                style="text-decoration: underline; cursor: pointer"><strong>Tr�nink</strong></a>.
                                            Naleznete tam mo�nosti tr�ninkov�ho veden� pod dohledem zku�en�ho profesion�la Rostislava
                                            Krotk�ho.
                                        </div>
                                        <h3>Napsali o n�s...</h3>
                                        <div class="nabidka">
                                            <a href="http://cs.wikipedia.org/wiki/Rostislav_Krotk%C3%BD" target="_blank">
                                                <strong>Wikipedie: </strong>Rostislav Krotk� - Vyso�ina Cycling</a><br />
                                            <a href="http://jihlava.idnes.cz/clanek.aspx?c=A131109_1998002_cyklistika_ten" target="_blank">
                                                <strong>IDNES: </strong>Vyso�ina Cycling m� velk� ambice, ale �anci d�v� ...</a><br />
                                            <a href="http://www.inkospor-team.cz/news/vysocina-cycling-mtb-trebic/" target="_blank">
                                                <strong>Inkospor: </strong>Vyso�ina Cycling MTB T�eb��</a><br />
                                            <a href="http://www.horacke-noviny.com/zprava-elitni_silnicni_cykliste_bojovali_na%C2%A0vysocine-2509.htm"
                                                target="_blank">
                                                <strong>Hor�ck� noviny: </strong>Elitn� silni�n� cyklist� bojovali na Vyso�in�</a>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="clanek" style="padding-left: 30px; padding-bottom: 0px;">
                                    <img src="images/inzerce/sponzori2019.gif"
                                        alt="Partne�i Vyso�ina Cycling 2019" border="none" />
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
                                                        target="_blank" style="color: #003399">Dru�ice</a> <a href="http://pr-asv.chmi.cz/aladin/index.php?run=latest&all=on"
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
                                              target="_blank" style="color: #003399">Dru�ice</a>
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
                                        Nejbli��� silni�n� akce
                                    </div>
                                    <table style="font-size: 11px;">
                                        <tr>
                                            <td colspan="2">
                                                <h2 style="color: #006600; font-family: 'Times New Roman', Times, serif">Dukovansk� okruhy</h2>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="color: #0033CC;">Term�n: </td>
                                            <td style="color: #FF3300;">20.7.2019</td>
                                        </tr>
                                        <tr>
                                            <td style="color: #0033CC;">M�sto: </td>
                                            <td style="color: #FF3300;">Jadern� elektr�rna Dukovany</td>
                                        </tr>
                                        <tr>
                                            <td style="color: #0033CC;">Typ z�vodu: </td>
                                            <td style="color: #FF3300;">Silni�n� </td>
                                        </tr>
                                        <tr>
                                            <td style="color: #0033CC;">Startuj�: </td>
                                            <td style="color: #FF3300;">V�echny kategorie </td>
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
                                            <td style="color: #0033CC;">P�ihl�ka: </td>
                                            <td style="color: #FF3300;"></td>
                                        </tr>
                                    </table>
                                </div>
                            </li>
                            <li>
                                <div class="clanek">
                                    <div class="infoclanek">
                                        Nejbli��� �asovka
                                    </div>
                                    <table style="font-size: 11px;">
                                        <tr>
                                            <td colspan="2">
                                                <h2 style="color: #006600; font-family: 'Times New Roman', Times, serif">�asovka na Klu�ovskou horu </h2>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="color: #0033CC;">Term�n: </td>
                                            <td style="color: #FF3300;">28.9.2019 </td>
                                        </tr>
                                        <tr>
                                            <td style="color: #0033CC;">M�sto: </td>
                                            <td style="color: #FF3300;">St��te� u T�eb��e </td>
                                        </tr>
                                        <tr>
                                            <td style="color: #0033CC;">Typ z�vodu: </td>
                                            <td style="color: #FF3300;">Silni�n� �asovka do vrchu </td>
                                        </tr>
                                        <tr>
                                            <td style="color: #0033CC;">Startuj�: </td>
                                            <td style="color: #FF3300;">V�echny kategorie </td>
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
                                            <td style="color: #0033CC;">P�ihl�ka: </td>
                                            <td style="color: #FF3300;"></td>
                                        </tr>
                                    </table>
                                </div>
                            </li>   
                            <li>
                                <div class="clanek">
                                    <div class="infoclanek">
                                        Nejbli��� MTB akce
                                    </div>
                                    <table style="font-size: 11px;">
                                        <tr>
                                            <td colspan="2">
                                                <h2 style="color: #006600; font-family: 'Times New Roman', Times, serif">MTB Pekeln� kopce </h2>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="color: #0033CC;">Term�n: </td>
                                            <td style="color: #FF3300;">19.10.2019 </td>
                                        </tr>
                                        <tr>
                                            <td style="color: #0033CC;">M�sto: </td>
                                            <td style="color: #FF3300;">T�eb��, U kostel��ku </td>
                                        </tr>
                                        <tr>
                                            <td style="color: #0033CC;">Typ z�vodu: </td>
                                            <td style="color: #FF3300;">MTB maraton </td>
                                        </tr>
                                        <tr>
                                            <td style="color: #0033CC;">Startuj�: </td>
                                            <td style="color: #FF3300;">V�echny kategorie </td>
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
                                            <td style="color: #0033CC;">P�ihl�ka: </td>
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
                                        Prob�h� do 1.10.2013
                                    </div>
                                    <br />
                                    <span style="color: #990000; font-family: 'Times New Roman', Times, serif; font-size: x-large;
                                        font-weight: bold;">Anketa </span><span style="font-weight: bold; font-size: small;">
                                            - nejlep�� cyklista Vyso�iny...</span>
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
                                                <td>0 hlas� </td>
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
                                                <td>0 hlas� </td>
                                            </tr>
                                            <tr>
                                                <td colspan="2" valign="bottom">
                                                    <asp:Label ID="Label2" runat="server" Text="Rostislav Krotk�" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td valign="top">
                                                    <asp:Button ID="Button2" runat="server" Width="250px" Height="5px" />
                                                </td>
                                                <td>0 hlas� </td>
                                            </tr>
                                            <tr>
                                                <td colspan="2" valign="bottom">
                                                    <asp:Label ID="Label3" runat="server" Text="Jaroslav Sl�ma" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <asp:Button ID="Button3" runat="server" Width="250px" Height="5px" />
                                                </td>
                                                <td>0 hlas� </td>
                                            </tr>
                                            <tr>
                                                <td colspan="2" valign="bottom">
                                                    <asp:Label ID="Label4" runat="server" Text="Michal Tom�" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <asp:Button ID="Button4" runat="server" Width="250px" Height="5px" />
                                                </td>
                                                <td>0 hlas� </td>
                                            </tr>
                                            <tr>
                                                <td colspan="2" valign="bottom">
                                                    <asp:Label ID="Label5" runat="server" Text="Luk� Tom�ek" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <asp:Button ID="Button5" runat="server" Width="250px" Height="5px" />
                                                </td>
                                                <td>0 hlas� </td>
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
