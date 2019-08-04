<%@ Title="Vysočina Cycling - Časovka na Klučovskou horu" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="casovka-na-klucovskou-horu.aspx.cs" Inherits="CasovkaNaKlucovskouHoru" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <meta property="og:description" content="Silniční časovka do vrchu Střítež - Klučovská hora." />
    <meta property="og:image" content="http://www.vysocinacycling.cz/images/logo_Facebook.png" />
    <script type="text/javascript">
        $(window).load(function () {
            $("#baner8").nivoSlider({ animSpeed: 1000, pauseTime: 10000, controlNav: false, directionNav: false, keyboardNav: false, effect: "fade" });
        });
    </script>

    <script type="text/javascript">
        $(document).ready(function () {
            SiteCasovkaNaKlucovskouHoruReady();
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
        <div id="baner8" class="nivoSlider">
            <img id="img1" alt="Baner" src="images/Banery/BannerVysocina2012_20.jpg" />
        </div>
        <div id="casovkaklucovtabs">
            <ul>
                <li id="Li81"><a href="#tab-91">O závodu</a></li>
                <li id="Li82"><a href="#tab-92">Propozice</a></li>
                <li id="Li83"><a href="#tab-93">Trať</a></li>
                <li id="Li84"><a href="#tab-94">Přihláška</a></li>
                <li id="Li85"><a href="#tab-95">Startovní listina</a></li>
                <li id="Li86"><a href="#tab-96">Výsledky</a></li>
                <li id="Li87"><a href="#tab-97">Historie</a></li>
            </ul>
            <div id="tab-91" class="clasictext">
            </div>
            <div id="tab-92" class="clasictext">
            </div>
            <div id="tab-93" class="clasictext">
            </div>
            <div id="tab-94" class="clasictext">
            </div>
            <div id="tab-95" class="clasictext">
            </div>
            <div id="tab-96" class="clasictext">
            </div>
            <div id="tab-97" class="clasictext">
            </div>
        </div>
</asp:Content>
