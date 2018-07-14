<%@ Page Title="Vyso�ina Cycling - M�j den�k" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="denik.aspx.cs" Inherits="Denik" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <meta property="og:description" content="Tento projekt je zam��en na podporu v�konnostn� cyklistiky na Vyso�in�, a to p�edev��m cyklistiky silni�n�. Na str�nce Den�k si m��ete v�st sv�j tr�ninkov� den�k." />
    <meta property="og:image" content="http://www.vysocinacycling.cz/images/logo_Facebook.png" />
    <script type="text/javascript">
        $(window).load(function () {
            $("#baner7").nivoSlider({ animSpeed: 1000, pauseTime: 5000, controlNav: false, directionNav: false, keyboardNav: false, effect: "fade" });
        });
    </script>

    <script type="text/javascript">
        $(document).ready(function () {
            SiteDenikReady();
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <div id="pageDenikContent">
        <div id="baner7" class="nivoSlider">
            <img id="img1" alt="Baner" src="images/Banery/VC_banner_07.jpg" />
            <img id="img2" alt="Baner" src="images/Banery/VC_banner_01.jpg" />
        </div>
        <div id="deniktabs">
            <ul>
                <li id="Li71"><a href="#tab-71">Pl�n</a></li>
                <li id="Li72"><a href="#tab-72">Den�k</a></li>
                <li id="Li73"><a href="#tab-73">Grafy</a></li>
            </ul>
            <div id="tab-71" class="clasictext">
                <div class="userLoggedOff">
                    <div class="clanek">
                        <h2>
                            P�ihla�te se...
                        </h2>
                        K t�to sekci maj� p��stup pouze p�ihl�en� �lenov� t�mu.
                    </div>
                </div>
                <div class="userLoggedOn">
                    <div class="clanek">
                        <h2>
                            Vy�kejte...
                        </h2>
                        Tuto sekci p�ipravujeme.
                    </div>
                </div>
            </div>
            <div id="tab-72" class="clasictext">
                <div class="userLoggedOff">
                    <div class="clanek">
                        <h2>
                            P�ihla�te se...
                        </h2>
                        K t�to sekci maj� p��stup pouze p�ihl�en� �lenov� t�mu.
                    </div>
                </div>
                <div class="userLoggedOn">
                    <div class="clanek">
                        <h2>
                            Vy�kejte...
                        </h2>
                        Tuto sekci p�ipravujeme.
                    </div>
                </div>
            </div>
            <div id="tab-73" class="clasictext">
                <div class="userLoggedOff">
                    <div class="clanek">
                        <h2>
                            P�ihla�te se...
                        </h2>
                        K t�to sekci maj� p��stup pouze p�ihl�en� �lenov� t�mu.
                    </div>
                </div>
                <div class="userLoggedOn">
                    <div class="clanek">
                        <h2>
                            Vy�kejte...
                        </h2>
                        Tuto sekci p�ipravujeme.
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

