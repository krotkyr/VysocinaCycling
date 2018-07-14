<%@ Page Title="Vysoèina Cycling - Galerie" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="galerie.aspx.cs" Inherits="Galerie" %>
<%@ Register TagPrefix="cc" TagName="ImageControl" Src="~/Controls/WebImageGrid.ascx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="Server">
    <script type="text/javascript" language="javascript">
        $(window).load(function () {
            $("#baner1").nivoSlider({ animSpeed: 1000, pauseTime: 5000, controlNav: false, directionNav: false, keyboardNav: false, effect: "fade" });
        });
    </script>
    <script type="text/javascript" language="javascript">
        $(document).ready(function () {
            SiteGalerieReady();
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="MainContent">
    <div id="pageDefaultContent">
        <div id="baner1" class="nivoSlider">
            <img id="img2" alt="Baner" src="images/Banery/BannerVysocina2012_20.jpg" />
            <img id="img1" alt="Baner" src="images/Banery/BannerVysocina2012_18.jpg" />
        </div>
        <div id="galerietabs" style="text-align: left">
            <ul>
                <li id="Li81"><a href="#tab-81">Foto</a></li>
                <li id="Li82"><a href="#tab-82">Video</a></li>
            </ul>
            <table>
                <tr>
                    <td valign="top" align="left">
                        <div id="tab-81">
                            <asp:FormView ID="FormViewGalery" runat="server" DataKeyNames="GaleryId" DataSourceID="SqlDataSourceGalery">
                                <ItemTemplate>
                                    <div class="clanek" style="width: 925px">
                                        <div class="infoclanek">
                                            <asp:Label ID="GaleryDateLabel" runat="server" Text='<%# Eval("GaleryDate", "Datum: {0:d.M.yyyy}") %>' />
                                        </div>
                                        <div class="nadpish1" style="text-align: center; display: none;">
                                            <asp:Label ID="GaleryTitleLabelFW" runat="server" Text='<%# Eval("GaleryTitle") %>' />
                                            <asp:Literal ID="GaleryDescLabelFW" runat="server" Mode="PassThrough" Text='<%# Eval("GaleryDesc", "{0}") %>' />
                                            <asp:Image ID="thumbGaleryTitleImageFW" Style="float: left; padding-right: 10px;
                                                padding-bottom: 5px;"
                                                ImageUrl='<%# Eval("GaleryPath", "images/fotogalerie/{0}") + Eval("GaleryTitleImage", "/thumb/thumb_{0}") %>'
                                                alt='<%# Eval("GaleryTitle") %>' border="none" runat="server" />
                                        </div>
                                        <div id="galeryalbum">
                                            <cc:ImageControl ID="GaleryListImage" runat="server" ImageFolderPath='<%# Eval("GaleryPath", "~/images/fotogalerie/{0}") %>'
                                                Title='<%# Eval("GaleryTitle") %>' />
                                        </div>
                                        <div class="facebook" style="margin-top: 15px">
                                        </div>
                                        <div class="userRoleEditor">
                                            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit"
                                                Text="Edit" />
                                            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete"
                                                Text="Delete" />
                                            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New"
                                                Text="New" />
                                        </div>
                                    </div>
                                </ItemTemplate>
                            </asp:FormView>
                            <asp:SqlDataSource ID="SqlDataSourceGalery" runat="server" ConnectionString="<%$ ConnectionStrings:VysocinaCycling %>"
                                OnDeleted="SqlDataSourceGalery_RedirectHome" OnInserted="SqlDataSourceGalery_RedirectHome"
                                DeleteCommand="DELETE FROM [PictureGaleries] WHERE [GaleryId] = @GaleryId"
                                InsertCommand="INSERT INTO [PictureGaleries] ([UserName], [LastUpdate], [GaleryDate], [Published], [GaleryTitle], [GaleryPath], [GaleryDesc], [GaleryTitleImage]) VALUES (@UserName, GETDATE(), @GaleryDate, @Published, @GaleryTitle, @GaleryPath, @GaleryDesc, @GaleryTitleImage)"
                                SelectCommand="SELECT * FROM [PictureGaleries] WHERE ([GaleryId] = @GaleryId)"
                                UpdateCommand="UPDATE [PictureGaleries] SET [LastUpdate] = GETDATE(), [GaleryDate] = @GaleryDate, [Published] = @Published, [GaleryTitle] = @GaleryTitle, [GaleryPath] = @GaleryParh, [GaleryDesc] = @GaleryDesc, [GaleryTitleImage] = @GaleryTitleImage WHERE [GaleryId] = @GaleryId">
                                <DeleteParameters>
                                    <asp:Parameter Name="GaleryId" Type="Int32" />
                                </DeleteParameters>
                                <InsertParameters>
                                    <asp:Parameter DbType="Date" Name="PublishDate" />
                                    <asp:Parameter Name="Published" Type="Boolean" />
                                    <asp:Parameter Name="GaleryTitle" Type="String" />
                                    <asp:Parameter Name="GaleryPath" Type="String" />
                                    <asp:Parameter Name="GaleryDesc" Type="String" />
                                    <asp:Parameter Name="GaleryTitleImage" Type="String" />
                                </InsertParameters>
                                <SelectParameters>
                                    <asp:QueryStringParameter DefaultValue="0" Name="GaleryId" QueryStringField="GaleryId"
                                        Type="Int32" />
                                </SelectParameters>
                                <UpdateParameters>
                                    <asp:Parameter DbType="Date" Name="PublishDate" />
                                    <asp:Parameter Name="Published" Type="Boolean" />
                                    <asp:Parameter Name="GaleryTitle" Type="String" />
                                    <asp:Parameter Name="GaleryPath" Type="String" />
                                    <asp:Parameter Name="GaleryDesc" Type="String" />
                                    <asp:Parameter Name="GaleryTitleImage" Type="String" />
                                    <asp:Parameter Name="GaleryId" Type="Int32" />
                                </UpdateParameters>
                            </asp:SqlDataSource>
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="GaleryId"
                                DataSourceID="SqlDataSourceGaleryList" AllowPaging="True" PageSize="8" ShowHeader="false"
                                GridLines="None" OnRowCreated="GridView1_RowCreated">
                                <Columns>
                                    <asp:TemplateField ShowHeader="False">
                                        <ItemTemplate>
                                            <div class="clanek" style="height: 108px; width: 925px">
                                                <div class="infoclanek">
                                                    <asp:Label ID="PublishDateLabel" runat="server" Text='<%# Bind("GaleryDate", "Datum: {0:d.M.yyyy}") %>' />
                                                </div>
                                                <div>
                                                    <asp:HyperLink ID="HyperLinkGalery" runat="server" NavigateUrl='<%# "galerie.aspx?GaleryId=" + Eval("GaleryId") %>'
                                                        Font-Underline="False">
                                                        <div>
                                                            <img id="thumbGaleryTitleImage" style="float: left; padding-right: 10px; padding-bottom: 5px;"
                                                                src="<%# Eval("GaleryPath", "images/fotogalerie/{0}") + Eval("GaleryTitleImage", "/thumb/thumb_{0}") %>"
                                                                alt="<%# Eval("GaleryTitle") %>"
                                                                border="none" />
                                                        </div>
                                                        <div>
                                                            <h1 class="nadpish1">
                                                                <asp:Label ID="GaleryTitleLabel" runat="server" Text='<%# Eval("GaleryTitle") %>'
                                                                    Font-Strikeout='<%# !(Boolean)(Eval("Published"))  %>' />
                                                            </h1>
                                                        </div>
                                                        <div class="textnovinky">
                                                            <asp:Literal ID="GaleryDescLabel" runat="server" Mode="PassThrough" Text='<%# Eval("GaleryDesc", "{0}") %>' />
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
                            <asp:SqlDataSource ID="SqlDataSourceGaleryList" runat="server" ConnectionString="<%$ ConnectionStrings:VysocinaCycling %>"
                                SelectCommand="SELECT * FROM [PictureGaleries] WHERE ((@GaleryId = 0) AND (([Published] = 1) OR ([Published] = 0 AND [UserName] = @UserName))) ORDER BY [GaleryDate] DESC, [GaleryId] DESC">
                                <SelectParameters>
                                    <asp:QueryStringParameter DefaultValue="0" Name="GaleryId" QueryStringField="GaleryId"
                                        Type="Int32" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                        </div>
                        <div id="tab-82">
                            <asp:FormView ID="FormViewVideo" runat="server" DataKeyNames="VideoId" DataSourceID="SqlDataSourceVideo">
                                <ItemTemplate>
                                    <div class="clanek" style="width: 925px">
                                        <div class="infoclanek">
                                            <asp:Label ID="VideoDateLabel" runat="server" Text='<%# Eval("VideoDate", "Datum: {0:d.M.yyyy}") %>' />
                                        </div>
                                        <h1 class="nadpish1" style="text-align: center">
                                            <asp:Label ID="VideoTitleLabel" runat="server" Text='<%# Eval("VideoTitle") %>' />
                                        </h1>
                                        <div class="nadpish1" style="text-align: center; display: none;">
                                            <asp:Literal ID="VideoDescLabelFW" runat="server" Mode="PassThrough" Text='<%# Eval("VideoDesc", "{0}") %>' />
                                            <asp:Image ID="thumbVideoTitleImageFW" Style="float: left; padding-right: 10px; padding-bottom: 5px;"
                                                ImageUrl='<%# Eval("VideoTitleImage", "images/videogalerie/{0}") %>'
                                                alt='<%# Eval("VideoTitle") %>' border="none" runat="server" />
                                        </div>
                                        <div style="margin: 20px 140px 10px 140px;">
                                            <iframe src="<%# Eval("VideoUrl") %>" width="640" height="360" frameborder="0"
                                                webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>
                                        </div>
                                        <div class="facebook" style="margin-top: 15px">
                                        </div>
                                        <div class="userRoleEditor">
                                            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit"
                                                Text="Edit" />
                                            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete"
                                                Text="Delete" />
                                            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New"
                                                Text="New" />
                                        </div>
                                    </div>
                                </ItemTemplate>
                            </asp:FormView>
                            <asp:SqlDataSource ID="SqlDataSourceVideo" runat="server" ConnectionString="<%$ ConnectionStrings:VysocinaCycling %>"
                                OnDeleted="SqlDataSourceGalery_RedirectHome" OnInserted="SqlDataSourceGalery_RedirectHome"
                                DeleteCommand="DELETE FROM [VideoGaleries] WHERE [VideoId] = @VideoId"
                                InsertCommand="INSERT INTO [VideoGaleries] ([UserName], [LastUpdate], [VideoDate], [Published], [VideoTitle], [VideoUrl], [VideoDesc], [VideoTitleImage]) VALUES (@UserName, GETDATE(), @VideoDate, @Published, @VideoTitle, @VideoUrl, @ VideoDesc, @VideoTitleImage)"
                                SelectCommand="SELECT * FROM [VideoGaleries] WHERE ([VideoId] = @VideoId)"
                                UpdateCommand="UPDATE [VideoGaleries] SET [LastUpdate] = GETDATE(), [VideoDate] = @VideoDate, [Published] = @Published, [VideoTitle] = @VideoTitle, [VideoUrl] = @VideoUrl, [VideoDesc] = @VideoDesc, [VideoTitleImage] = @VideoTitleImage WHERE [VideoId] = @VideoId">
                                <DeleteParameters>
                                    <asp:Parameter Name="VideoId" Type="Int32" />
                                </DeleteParameters>
                                <InsertParameters>
                                    <asp:Parameter DbType="Date" Name="PublishDate" />
                                    <asp:Parameter Name="Published" Type="Boolean" />
                                    <asp:Parameter Name="VideoTitle" Type="String" />
                                    <asp:Parameter Name="VideoUrl" Type="String" />
                                    <asp:Parameter Name="VideoDesc" Type="String" />
                                    <asp:Parameter Name="VideoTitleImage" Type="String" />
                                </InsertParameters>
                                <SelectParameters>
                                    <asp:QueryStringParameter DefaultValue="0" Name="VideoId" QueryStringField="VideoId"
                                        Type="Int32" />
                                </SelectParameters>
                                <UpdateParameters>
                                    <asp:Parameter DbType="Date" Name="PublishDate" />
                                    <asp:Parameter Name="Published" Type="Boolean" />
                                    <asp:Parameter Name="VideoTitle" Type="String" />
                                    <asp:Parameter Name="VideoUrl" Type="String" />
                                    <asp:Parameter Name="VideoDesc" Type="String" />
                                    <asp:Parameter Name="VideoTitleImage" Type="String" />
                                    <asp:Parameter Name="VideoId" Type="Int32" />
                                </UpdateParameters>
                            </asp:SqlDataSource>
                            <asp:GridView ID="GridViewVideo" runat="server" AutoGenerateColumns="False" DataKeyNames="VideoId"
                                DataSourceID="SqlDataSourceVideoList" AllowPaging="True" PageSize="8" ShowHeader="false"
                                GridLines="None">
                                <Columns>
                                    <asp:TemplateField ShowHeader="False">
                                        <ItemTemplate>
                                            <div class="clanek" style="height: 108px; width: 925px">
                                                <div class="infoclanek">
                                                    <asp:Label ID="PublishDateVideoLabel" runat="server" Text='<%# Bind("VideoDate", "Datum: {0:d.M.yyyy}") %>' />
                                                </div>
                                                <div>
                                                    <asp:HyperLink ID="HyperLinkVideo" runat="server" NavigateUrl='<%# "galerie.aspx?VideoId=" + Eval("VideoId") %>'
                                                        Font-Underline="False">
                                                        <div style="float: left; padding-right: 15px;">
                                                            <img id="thumbVideoTitleImage" style="float: left; padding-right: 10px; padding-bottom: 5px;"
                                                                src="<%# Eval("VideoTitleImage", "images/videogalerie/thumb/thumb_{0}") %>"
                                                                alt="<%# Eval("VideoTitle") %>"
                                                                border="none" />
                                                        </div>
                                                        <div>
                                                            <h1 class="nadpish1">
                                                                <asp:Label ID="VideoTitleLabel" runat="server" Text='<%# Eval("VideoTitle") %>'
                                                                    Font-Strikeout='<%# !(Boolean)(Eval("Published"))  %>' />
                                                            </h1>
                                                        </div>
                                                        <div class="textnovinky">
                                                            <asp:Literal ID="VideoDescLabel" runat="server" Mode="PassThrough" Text='<%# Eval("VideoDesc", "{0}") %>' />
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
                            <asp:SqlDataSource ID="SqlDataSourceVideoList" runat="server" ConnectionString="<%$ ConnectionStrings:VysocinaCycling %>"
                                SelectCommand="SELECT * FROM [VideoGaleries] WHERE ((@VideoId = 0) AND (([Published] = 1) OR ([Published] = 0 AND [UserName] = @UserName))) ORDER BY [VideoDate] DESC, [VideoId] DESC">
                                <SelectParameters>
                                    <asp:QueryStringParameter DefaultValue="0" Name="VideoId" QueryStringField="VideoId"
                                        Type="Int32" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                        </div>
                    </td>
                </tr>
            </table>
        </div>
    </div>
</asp:Content>

