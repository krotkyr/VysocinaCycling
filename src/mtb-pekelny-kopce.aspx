<%@ Page Title="Vysočina Cycling - MTB Pekelný kopce" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="mtb-pekelny-kopce.aspx.cs" Inherits="MtbPekelnyKopce" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <meta property="og:description" content="MTB maraton z Třebíče přes Pekelný kopec s několika prudkými výjezdy" />
    <meta property="og:image" content="http://www.vysocinacycling.cz/images/logo_Facebook.png" />
    <script type="text/javascript">
        $(window).load(function () {
            $("#baner8").nivoSlider({ animSpeed: 1000, pauseTime: 10000, controlNav: false, directionNav: false, keyboardNav: false, effect: "fade" });
        });
    </script>

    <script type="text/javascript">
        $(document).ready(function () {
            SiteMTBPekelnyKopceReady();
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
        <div id="baner8" class="nivoSlider">
            <img id="img1" alt="Baner" src="images/Banery/BanerBike1.jpg" />
        </div>
        <div id="mtbpekelnykopcetabs">
            <ul>
                <li id="Li101"><a href="#tab-101">O závodu</a></li>
                <li id="Li102"><a href="#tab-102">Propozice</a></li>
                <li id="Li103"><a href="#tab-103">Trať</a></li>
                <li id="Li104"><a href="#tab-104">Přihláška</a></li>
                <li id="Li105"><a href="#tab-105">Startovní listina</a></li>
                <li id="Li106"><a href="#tab-106">Výsledky</a></li>
                <li id="Li107"><a href="#tab-107">Historie</a></li>
            </ul>
            <div id="tab-101" class="clasictext">
            </div>
            <div id="tab-102" class="clasictext">
            </div>
            <div id="tab-103" class="clasictext">
            </div>
            <div id="tab-104" class="clasictext">
            </div>
            <div id="tab-105" class="clasictext">
            </div>
            <div id="tab-106" class="clasictext">
            </div>
            <div id="tab-107" class="clasictext">
            </div>
        </div>
</asp:Content>
