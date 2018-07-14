function SiteMasterReady() {
    $("#NavigationMenu").buttonset();
    $(".clanek").corner("5px");
    $("#paticka").corner("5px");
    $(".facebook").onefblike();
    $(".facebookPageVC").onefblike({ dynUrl: 'https://www.facebook.com/pages/Vyso%C4%8Dina-Cycling/310472125651134' });

    var username = $.cookies.get("user");
    SetFormIfLogged(username);

    $('#TextBoxLoginPass').keypress(function (event) {
        var keycode = (event.keyCode ? event.keyCode : event.which);
        if (keycode === '13') {
            $("#textLoginOn").click();
        }
        event.stopPropagation();
    });

    $("#textLoginOn").click(function () {
        var username = $.cookies.get("user");
        LoginOnUser(username);
    });

    $("#textLoginOff").click(function () {
        var username = $.cookies.get("user");
        LogginOffUser(username);
    });

    $(".viewpart").click(function () {
        var clanek = $(this).parent().parent();
        $(this).parent().hide();
        $(clanek).children(".textclanku").show();
        $(clanek).children(".hidetext").show();
    });

    $(".hidepart").click(function () {
        var clanek = $(this).parent().parent();
        $(this).parent().hide();
        $(clanek).children(".textclanku").hide();
        $(clanek).children(".showtext").show();
    });

    $("#EditButton").button();
    $("#DeleteButton").button();
    $("#NewButton").button();
    $("#PublishDateTextBox").datepicker();
}

function SiteGalerieReady() {
    var index = 'galerykey';
    var dataStore = window.sessionStorage;
    try {
        var oldIndex = dataStore.getItem(index);
    } catch (e) {
        var oldIndex = 0;
    }
    $("#galerietabs").tabs({
        active: oldIndex,
        activate: function (event, ui) {
            var newIndex = ui.newTab.parent().children().index(ui.newTab);
            dataStore.setItem(index, newIndex)
        }
    });
    $("#galeryalbum a").lightBox();
    $(".userRoleEditor").hide();
}

function SiteDefaultReady() {
    $("#domutabs").tabs();
    $(".partneri").corner("5px");
    $("#infoacc").accordion({
        active: 0,
        heightStyle: "fill"
    });
    // $("#titleImage1 a").lightBox();
    // $("#titleImage2 a").lightBox();
    // $("#titleImage3 a").lightBox();
    // $("#titleImageJK a").lightBox();
    // $("#titleImageVCCMTB a").lightBox();
    // $("#titleImageKlucov2012 a").lightBox();
    // $("#titleImageSoskaVCC a").lightBox();
    // $("#titleImageJeseniky2012 a").lightBox();
    $(".titleImageNovinky a").lightBox();
    $("#ImageText a").lightBox();
    $("ul.paging1").quickPager({ pageSize: 7, pagerLocation: "after", prevText: "", nextText: "" });
    $("ul.paging4").quickPager({ pageSize: 20, pagerLocation: "after", prevText: "", nextText: "" });

    SetWeatherData('EZXX0025', 'Jihlava', 'weather');
    $(".userRoleEditor").hide();
}

function SiteTymReady() {
    ReadUsersTableWithData();
    ReadUsersTableWithoutData();
    ReadUsersRaceTable();

    var username = $.cookies.get("user");
    ReadUserRaceTable(username);

    var index = 'tabTymKey';
    var dataStore = window.sessionStorage;
    try {
        var oldIndex = dataStore.getItem(index);
    } catch (e) {
        var oldIndex = 0;
    }
    $("#tymtabs").tabs({
        active : oldIndex,
        activate : function( event, ui ){
            var newIndex = ui.newTab.index();
            dataStore.setItem( index, newIndex ) 
        }
    });
    $("#dresy a").lightBox();
    $("#ZavodniciVysocina a").lightBox();
    $("#album-Zavody_2012 a").lightBox();
    $("#album-Zavody_2013 a").lightBox();
    $("#album-Klucov_2012 a").lightBox();
    $("#album-Vysocina_2012 a").lightBox();
    $("#album-Jeseniky_2012 a").lightBox();
    $("#album-Trenink-valce_2012 a").lightBox();
    $("#album-Dukovanske_okruhy_2013 a").lightBox();
    $("#album-Tchibo_TopRadLiga_4-2013 a").lightBox();
    $("#album-CEZmtbMaraton_2013 a").lightBox();
    $("ul.paging10").quickPager({ pageSize: 5, pagerLocation: "after", prevText: "", nextText: "" });
    $("ul.paging12").quickPager({ pageSize: 30, pagerLocation: "after", prevText: "", nextText: "" });
    $("ul.paging13").quickPager({ pageSize: 5, pagerLocation: "after", prevText: "", nextText: "" });

    $("#TextBoxNarozeni").datepicker({
        showAnim: "slideDown",
        yearRange: "-80:-10",
        maxDate: '#actualDate -10Y',
        changeMonth: true,
        changeYear: true
    });

    $("#buttonclenstvi").button();
    $("#buttonclenstvi").click(function () {
        CreateNewUser();
    });

    $("#buttonUpravitClenstvi").button();
    $("#buttonUpravitClenstvi").click(function () {
        var username = $.cookies.get("user");
        SetDialogUpdateData(username);
        $("#dialogupravaclenstvi").dialog("open");
    });

    $("#buttonZrusitClenstvi").button();
    $("#buttonZrusitClenstvi").click(function () {
        var labelusername = $("#LabelZCUserName");
        var username = $.cookies.get("user");
        labelusername.html(username);
        $("#dialogzrusitclenstvi").dialog("open");
    });

    $("#buttonZmenaHesla").button();
    $("#buttonZmenaHesla").click(function () {
        $("#dialogzmenahesla").dialog("open");
    });

    $("#buttonPridatZavod").button();
    $("#buttonPridatZavod").click(function () {
        $("#dialogPridatZavod").dialog("open");
    });
    $("#TextBoxPZDatum").datepicker({
        showAnim: "slideDown",
        maxDate: '#actualDate',
        changeMonth: true,
        changeYear: true
    });

    $("#buttonSmazatZavod").button();
    $("#buttonSmazatZavod").click(function () {
        $("#dialogSmazatZavod").dialog("open");
    });
    $("#TextBoxSZDatum").datepicker();

    $("#dialogupravaclenstvi").dialog(
            {
                buttons:
                [
                    {
                        text: "Upravit",
                        click: function () {
                            $("body").css("cursor", "wait");

                            var emailadress = $("#TextBoxUEmail").val();
                            var obec = $("#TextBoxUObec").val();
                            var kraj = $("#DropDownListUKraj").val();
                            var uroven = $("#DropDownListUUroven").val();
                            var clen = $("#DropDownListUClen").val();
                            var disciplina = $("#DropDownListUDisciplina").val();
                            var heslo = $("#TextBoxUHeslo").val();
                            var pocasi = $("#DropDownListUPocasi").val();
                            var username = $.cookies.get("user");

                            $.ajax({
                                type: "POST",
                                url: "Services/WebService.asmx/SendUClenstviEmail",
                                data: "{'username':'" + username + "', 'emailadress':'" + emailadress + "', 'obec':'" + obec + "', 'kraj':'" + kraj + "', 'uroven':'" + uroven + "', 'clen':'" + clen + "', 'disciplina':'" + disciplina + "', 'pocasi':'" + pocasi + "', 'heslo':'" + heslo + "'}",
                                contentType: "application/json; charset=utf-8",
                                dataType: "json",
                                success: function (result) {
                                    $("body").css("cursor", "default");
                                    alert(result.d);
                                },
                                error: function (result) {
                                    $("body").css("cursor", "default");
                                    alert(result.status + ' ' + result.statusText);
                                },
                                complete: function () {
                                    var labelemailadress = $("#LabelRUEmail");
                                    var labelobec = $("#LabelRULokalita");
                                    var labelkraj = $("#LabelRUKraj");
                                    var labeluroven = $("#LabelRUUroven");
                                    var labelclen = $("#LabelRUClen");
                                    var labeldisciplina = $("#LabelRUDisciplina");
                                    var labelpocasi = $("#LabelRUPocasi");

                                    SetUserHtmlParameter(username, labelemailadress, "GetUserEmail");
                                    SetUserHtmlParameter(username, labelobec, "GetUserTrainingLocality");
                                    SetUserHtmlParameter(username, labelkraj, "GetUserTrainingRegion");
                                    SetUserHtmlParameter(username, labeluroven, "GetUserSportClass");
                                    SetUserHtmlParameter(username, labelclen, "GetUserMemberType");
                                    SetUserHtmlParameter(username, labeldisciplina, "GetUserPreferredDiscipline");
                                    SetUserHtmlParameter(username, labelpocasi, "GetUserWeatherStationName");
                                    SetUserWeather(username);

                                    $("#TextBoxUHeslo").val("");
                                }
                            });

                            $(this).dialog("close");
                        }
                    },

                    {
                        text: "Odejít",
                        click: function () { $(this).dialog("close"); }
                    }
                ],
                autoOpen: false
            });

    $("#dialogzrusitclenstvi").dialog(
            {
                buttons:
                [
                    {
                        text: "Zrušit Členství",
                        click: function () {
                            $("body").css("cursor", "wait");
                            var username = $.cookies.get("user");
                            var heslo = $("#TextBoxZCHeslo").val();

                            $.ajax({
                                type: "POST",
                                url: "Services/WebService.asmx/DeleteLoggedUser",
                                data: "{'username':'" + username + "', 'heslo':'" + heslo + "'}",
                                contentType: "application/json; charset=utf-8",
                                dataType: "json",
                                success: function (result) {
                                    $("#textLoginOff").click();
                                    $("body").css("cursor", "default");
                                    alert(result.d);
                                },
                                error: function (result) {
                                    $("body").css("cursor", "default");
                                    alert("Chybné heslo: " + result.d);
                                }
                            });

                            $(this).dialog("close");
                        }
                    },

                    {
                        text: "Odejít",
                        click: function () { $(this).dialog("close"); }
                    }
                ],
                autoOpen: false
            });

    $("#dialogzmenahesla").dialog(
            {
                buttons:
                [
                    {
                        text: "Změnit",
                        click: function () {
                            $("body").css("cursor", "wait");

                            var username = $.cookies.get("user");
                            var stareheslo = $("#TextBoxStareHeslo").val();
                            var noveheslo = $("#TextBoxNoveHeslo").val();
                            var kontrolahesla = $("#TextBoxKontrolaNovehoHesla").val();

                            $.ajax({
                                type: "POST",
                                url: "Services/WebService.asmx/ChangeUserPassword",
                                data: "{'username':'" + username + "', 'oldpassword':'" + stareheslo + "', 'newpassword':'" + noveheslo + "', 'anewpassword':'" + kontrolahesla + "'}",
                                contentType: "application/json; charset=utf-8",
                                dataType: "json",
                                success: function (result) {
                                    $("body").css("cursor", "default");
                                    alert(result.d);
                                },
                                error: function (result) {
                                    $("body").css("cursor", "default");
                                    alert(result.status + ' ' + result.statusText);
                                },
                                complete: function () {
                                    $("#TextBoxStareHeslo").val("");
                                    $("#TextBoxNoveHeslo").val("");
                                    $("#TextBoxKontrolaNovehoHesla").val("");
                                }
                            });

                            $(this).dialog("close");
                        }
                    },

                    {
                        text: "Odejít",
                        click: function () { $(this).dialog("close"); }
                    }
                ],
                autoOpen: false
            });

    $("#dialogPridatZavod").dialog(
    {
        buttons:
        [
            {
                text: "Přidat závod",
                click: function () {
                    $("body").css("cursor", "wait");

                    var datum = $("#TextBoxPZDatum").val();
                    var misto = $("#TextBoxPZMisto").val();
                    var nazev = $("#TextBoxPZNazev").val();
                    var delka = $("#TextBoxPZDelka").val();
                    var cas = $("#TextBoxPZCas").val();
                    var umistenicelkove = $("#TextBoxPZUmisteniCelkove").val();
                    var kategorie = $("#TextBoxPZKategorie").val();
                    var umistenikategorie = $("#TextBoxPZUmisteniKategorie").val();
                    var username = $.cookies.get("user");

                    $.ajax({
                        type: "POST",
                        url: "Services/WebService.asmx/AddUserRace",
                        data: "{'username':'" + username + "', 'datum':'" + datum + "', 'misto':'" + misto + "', 'nazev':'" + nazev + "', 'delka':'" + delka + "', 'cas':'" + cas + "', 'umistenicelkove':'" + umistenicelkove + "', 'kategorie':'" + kategorie + "', 'umistenikategorie':'" + umistenikategorie + "'}",
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        success: function (result) {
                            $("body").css("cursor", "default");
                            alert(result.d);
                        },
                        error: function (result) {
                            $("body").css("cursor", "default");
                            alert(result.status + ' ' + result.statusText);
                        },
                        complete: function () {
                            ReadUserRaceTable(username);
                            ReadUsersRaceTable();
                        }
                    });

                    $(this).dialog("close");
                }
            },

            {
                text: "Odejít",
                click: function () { $(this).dialog("close"); }
            }
        ],
        autoOpen: false
    });

    $("#dialogSmazatZavod").dialog(
    {
        buttons:
        [
            {
                text: "Smazat závod",
                click: function () {
                    $("body").css("cursor", "wait");

                    var datum = $("#TextBoxSZDatum").val();
                    var nazev = $("#TextBoxSZNazev").val();
                    var delka = $("#TextBoxSZDelka").val();
                    var username = $.cookies.get("user");

                    $.ajax({
                        type: "POST",
                        url: "Services/WebService.asmx/DeleteUserRace",
                        data: "{'username':'" + username + "', 'datum':'" + datum + "', 'nazev':'" + nazev + "', 'delka':'" + delka + "'}",
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        success: function (result) {
                            $("body").css("cursor", "default");
                            alert(result.d);
                        },
                        error: function (result) {
                            $("body").css("cursor", "default");
                            alert(result.status + ' ' + result.statusText);
                        },
                        complete: function () {
                            ReadUserRaceTable(username);
                            ReadUsersRaceTable();
                        }
                    });

                    $(this).dialog("close");
                }
            },

            {
                text: "Odejít",
                click: function () { $(this).dialog("close"); }
            }
        ],
        autoOpen: false
    });
}

function SiteTtreninkReady() {
    $("#treninktabs").tabs();
    $("#poradenstviacc").accordion({
        heightStyle: "content"
    });
    $("#kempyacc").accordion({
        heightStyle: "content"
    });
    $(".rozbalovaciclanek").corner("5px");
    $("#imgKempGranCanaria a").lightBox();
    $("#imgKempFuerteventura a").lightBox();
    $("#imgKempLanzarote a").lightBox();
    $("#imgKempTenerife a").lightBox();
    $("#imgKempMallorca a").lightBox();
    $("#imgKempMallorcaAkce a").lightBox();
    $("#imgKempKypr a").lightBox();
    $("#strecink a").lightBox();
    $("ul.paging2").quickPager({ pageSize: 5, pagerLocation: "after", prevText: "", nextText: "" });

    var dates = $("#TextBoxKempOd, #TextBoxKempDo").datepicker({
        showAnim: "slideDown",
        minDate: '#actualDate',
        changeMonth: true,
        numberOfMonths: 2,
        onSelect: function (selectedDate) {
            var option = this.id === "TextBoxKempOd" ? "minDate" : "maxDate",
                        instance = $(this).data("datepicker");
            date = $.datepicker.parseDate(instance.settings.dateFormat || $.datepicker._defaults.dateFormat, selectedDate, instance.settings);
            dates.not(this).datepicker("option", option, date);
        }
    });

    $(".viewpart").button({ icons: { primary: "ui-icon-circle-triangle-s" } });
    $(".hidepart").button({ icons: { primary: "ui-icon-circle-triangle-n" } });

    SetWeatherIcon('Fuerteventura, Spain', 'weatherIconFue1');
    SetWeatherIcon('Fuerteventura, Spain', 'weatherIconFue2');
    SetWeatherIcon('Lanzarote, Spain', 'weatherIconLanz');
    SetWeatherIcon('Lanzarote, Spain', 'weatherIconLanz2');
    SetWeatherIcon('Tenerife, Spain', 'weatherIconTen1');
    SetWeatherIcon('Gran Canaria, Spain', 'weatherIconGC');
    SetWeatherIcon('Mallorca, Spain', 'weatherIconMall');
    SetWeatherIcon('Mallorca, Spain', 'weatherIconMallAkce');
    SetWeatherIcon('Cyprus', 'weatherIconKypr');
    SetWeatherIcon('Livigno, Italy', 'weatherIconLiv');

    $("#buttonkemp1").button();
    $("#buttonkemp1").click(function () {
        var username = $.cookies.get("user");
        SetDialogKempData(username);
        $("#dialogzadostkemp").dialog("open");
        $("#dialogzadostkemp").dialog("option", "title", "Kemp Fuerteventura - nezávazně");
    });

    $("#buttonkemp2").button();
    $("#buttonkemp2").click(function () {
        var username = $.cookies.get("user");
        SetDialogKempData(username);
        $("#dialogzadostkemp").dialog("open");
        $("#dialogzadostkemp").dialog("option", "title", "Kemp Lanzarote - nezávazně");
    });

    $("#buttonkemp3").button();
    $("#buttonkemp3").click(function () {
        var username = $.cookies.get("user");
        SetDialogKempData(username);
        $("#dialogzadostkemp").dialog("open");
        $("#dialogzadostkemp").dialog("option", "title", "Kemp Tenerife - nezávazně");
    });

    $("#buttonkemp4").button();
    $("#buttonkemp4").click(function () {
        var username = $.cookies.get("user");
        SetDialogPKempData(username);
        $("#dialogzadostkemp").dialog("open");
        $("#dialogzadostkemp").dialog("option", "title", "Kemp Gran Canaria - nezávazně");
    });

    $("#buttonkemp5").button();
    $("#buttonkemp5").click(function () {
        var username = $.cookies.get("user");
        SetDialogKempData(username);
        $("#dialogzadostkemp").dialog("open");
        $("#dialogzadostkemp").dialog("option", "title", "Kemp Mallorca - nezávazně");
    });

    $("#buttonkemp6").button();
    $("#buttonkemp6").click(function () {
        var username = $.cookies.get("user");
        SetDialogKempData(username);
        $("#dialogzadostkemp").dialog("open");
        $("#dialogzadostkemp").dialog("option", "title", "Kemp Kypr - nezávazně");
    });

    $("#buttonkemp7").button();
    $("#buttonkemp7").click(function () {
        var username = $.cookies.get("user");
        SetDialogKempData(username);
        $("#dialogzadostkemp").dialog("open");
        $("#dialogzadostkemp").dialog("option", "title", "Kemp Livigno - nezávazně");
    });

    $("#buttonkempAkce").button();
    $("#buttonkempAkce").click(function () {
        var username = $.cookies.get("user");
        SetDialogPKempData(username);
        $("#LabelPKempOd").html("3.2.2012");
        $("#LabelPKempDo").html("10.2.2012");
        $("#dialogprihlasitkemp").dialog("open");
        $("#dialogprihlasitkemp").dialog("option", "title", "Kemp Mallorca s Cadelem Evansem");
    });

    $("#dialogprihlasitkemp").dialog(
            {
                buttons:
                [
                    {
                        text: "Odeslat",
                        click: function () {
                            $("body").css("cursor", "wait");

                            var jmeno = $("#TextBoxPKempJmeno").val();
                            var uroven = $("#DropDownListPKempUroven").val();
                            var typ = $("#DropDownListPKempTyp").val();
                            var pozn = $("#TextBoxPKempPozn").val();
                            var datumod = $("#LabelPKempOd").text();
                            var datumdo = $("#LabelPKempDo").text();
                            var emailadress = $("#TextBoxPKempEmail").val();
                            var typzadosti = $(this).dialog("option", "title");


                            $.ajax({
                                type: "POST",
                                url: "Services/WebService.asmx/SendKempEmail",
                                data: "{'jmeno':'" + jmeno + "', 'uroven':'" + uroven + "', 'typ':'" + typ + "', 'pozn':'" + pozn + "', 'datumod':'" + datumod + "', 'datumdo':'" + datumdo + "', 'emailadress':'" + emailadress + "', 'typzadosti':'" + typzadosti + "'}",
                                contentType: "application/json; charset=utf-8",
                                dataType: "json",
                                success: function (result) {
                                    $("body").css("cursor", "default");
                                    alert(result.d);
                                },
                                error: function (result) {
                                    $("body").css("cursor", "default");
                                    alert(result.status + ' ' + result.statusText);
                                }
                            });

                            $(this).dialog("close");
                        }
                    },

                    {
                        text: "Zrušit",
                        click: function () { $(this).dialog("close"); }
                    }
                ],
                show: "blind",
                hide: "explode",
                height: 340,
                width: 290,
                position: "center",
                resizable: false,
                autoOpen: false
            });

    $("#dialogzadostkemp").dialog(
            {
                buttons:
                [
                    {
                        text: "Odeslat",
                        click: function () {
                            $("body").css("cursor", "wait");

                            var jmeno = $("#TextBoxKempJmeno").val();
                            var uroven = $("#DropDownListKempUroven").val();
                            var typ = $("#DropDownListKempTyp").val();
                            var pozn = $("#TextBoxKempPozn").val();
                            var datumod = $("#TextBoxKempOd").val();
                            var datumdo = $("#TextBoxKempDo").val();
                            var emailadress = $("#TextBoxKempEmail").val();
                            var typzadosti = $(this).dialog("option", "title");


                            $.ajax({
                                type: "POST",
                                url: "Services/WebService.asmx/SendKempEmail",
                                data: "{'jmeno':'" + jmeno + "', 'uroven':'" + uroven + "', 'typ':'" + typ + "', 'pozn':'" + pozn + "', 'datumod':'" + datumod + "', 'datumdo':'" + datumdo + "', 'emailadress':'" + emailadress + "', 'typzadosti':'" + typzadosti + "'}",
                                contentType: "application/json; charset=utf-8",
                                dataType: "json",
                                success: function (result) {
                                    $("body").css("cursor", "default");
                                    alert(result.d);
                                },
                                error: function (result) {
                                    $("body").css("cursor", "default");
                                    alert(result.status + ' ' + result.statusText);
                                }
                            });

                            $(this).dialog("close");
                        }
                    },

                    {
                        text: "Zrušit",
                        click: function () { $(this).dialog("close"); }
                    }
                ],
                show: "blind",
                hide: "explode",
                height: 340,
                width: 290,
                position: "center",
                resizable: false,
                autoOpen: false
            });

    $("#buttonbasic").button();
    $("#buttonbasic").click(function () {
        var username = $.cookies.get("user");
        SetZadostPoradenstviData(username);
        $("#dialogzadostporadenstvi").dialog("open");
        $("#dialogzadostporadenstvi").dialog("option", "title", 'Poradenství Basic');
    });

    $("#buttonadvanced").button();
    $("#buttonadvanced").click(function () {
        var username = $.cookies.get("user");
        SetZadostPoradenstviData(username);
        $("#dialogzadostporadenstvi").dialog("open");
        $("#dialogzadostporadenstvi").dialog("option", "title", 'Poradenství Advanced');
    });

    $("#buttonprofessional").button();
    $("#buttonprofessional").click(function () {
        var username = $.cookies.get("user");
        SetZadostPoradenstviData(username);
        $("#dialogzadostporadenstvi").dialog("open");
        $("#dialogzadostporadenstvi").dialog("option", "title", 'Poradenství Professional');
    });

    $("#buttonpersonal").button();
    $("#buttonpersonal").click(function () {
        var username = $.cookies.get("user");
        SetZadostPoradenstviData(username);
        $("#dialogzadostporadenstvi").dialog("open");
        $("#dialogzadostporadenstvi").dialog("option", "title", 'Personal Coaching');
    });

    $("#dialogzadostporadenstvi").dialog(
            {
                buttons:
                [
                    {
                        text: "Odeslat",
                        click: function () {
                            $("body").css("cursor", "wait");

                            var jmeno = $("#TextBoxZadostJmeno").val();
                            var obdobi = $("#DropDownListZadostObdobi").val();
                            var uroven = $("#DropDownListZadostUroven").val();
                            var emailadress = $("#TextBoxZadostEmail").val();
                            var typzadosti = $(this).dialog("option", "title");


                            $.ajax({
                                type: "POST",
                                url: "Services/WebService.asmx/SendZadostEmail",
                                data: "{'jmeno':'" + jmeno + "', 'obdobi':'" + obdobi + "', 'uroven':'" + uroven + "', 'emailadress':'" + emailadress + "', 'typzadosti':'" + typzadosti + "'}",
                                contentType: "application/json; charset=utf-8",
                                dataType: "json",
                                success: function (result) {
                                    $("body").css("cursor", "default");
                                    alert(result.d);
                                },
                                error: function (result) {
                                    $("body").css("cursor", "default");
                                    alert(result.status + ' ' + result.statusText);
                                }
                            });

                            $(this).dialog("close");
                        }
                    },

                    {
                        text: "Zrušit",
                        click: function () { $(this).dialog("close"); }
                    }
                ],
                show: "blind",
                hide: "explode",
                height: 260,
                width: 250,
                position: "center",
                resizable: false,
                autoOpen: false
            });
}

function SiteVyzivaReady() {
    $("#vyzivatabs").tabs();
    $("ul.paging9").quickPager({ pageSize: 5, pagerLocation: "after", prevText: "", nextText: "" });
    $(".rozbalovaciclanek").corner("5px");

    $(".viewpart").button({ icons: { primary: "ui-icon-circle-triangle-s"} });
    $(".hidepart").button({ icons: { primary: "ui-icon-circle-triangle-n"} });
}

function SiteAkceReady() {
    $("#akcetabs").tabs();
    $("#raceImage1 a").lightBox();
    $(".MTBzavody a").lightBox();
    $("ul.paging5").quickPager({ pageSize: 15, pagerLocation: "after", prevText: "", nextText: "" });
    $("ul.paging6").quickPager({ pageSize: 40, pagerLocation: "after", prevText: "", nextText: "" });
    $("ul.paging7").quickPager({ pageSize: 10, pagerLocation: "after", prevText: "", nextText: "" });
    $("ul.paging11").quickPager({ pageSize: 10, pagerLocation: "after", prevText: "", nextText: "" });

    $(".rozbalovaciclanek").corner("5px");
    $(".viewpart").button({ icons: { primary: "ui-icon-circle-triangle-s"} });
    $(".hidepart").button({ icons: { primary: "ui-icon-circle-triangle-n" } });

    $("#buttonMTBZavod").button();
    $("#buttonMTBZavod").click(function () {
        var username = $.cookies.get("user");
        SetMTBZavodData(username);
        $("#dialogMTBZavod").dialog("open");
        $("#dialogMTBZavod").dialog("option", "title", 'Přihláška - Vysočina Cycling MTB Třebíč 2017');
    });

    $("#TextBoxMTBZavodNarozeni").datepicker({
        showAnim: "slideDown",
        yearRange: "-80:-10",
        defaultDate: '-10Y',
        changeMonth: true,
        changeYear: true
    });

    $("#dialogMTBZavod").dialog(
            {
                buttons:
                [
                    {
                        text: "Odeslat",
                        click: function () {
                            $("body").css("cursor", "wait");

                            var jmeno = $("#TextBoxMTBZavodJmeno").val();
                            var prijmeni = $("#TextBoxMTBZavodPrijmeni").val();
                            var narozeni = $("#TextBoxMTBZavodNarozeni").val();
                            var kategorie = $("#DropDownListMTBZavodKategorie").val();
                            var klub = $("#TextBoxMTBZavodKlub").val();
                            var licence = $("#TextBoxMTBZavodLicence").val();
                            var mesto = $("#TextBoxMTBZavodAdresa").val();
                            var emailadress = $("#TextBoxMTBZavodEmail").val();
                            var telefon = $("#TextBoxMTBZavodTelefon").val();
                            var typzadosti = $(this).dialog("option", "title");


                            $.ajax({
                                type: "POST",
                                url: "Services/WebService.asmx/SendMTBZavodEmail",
                                data: "{'jmeno':'" + jmeno + "', 'prijmeni':'" + prijmeni + "', 'narozeni':'" + narozeni + "', 'kategorie':'" + kategorie + "', 'klub':'" + klub + "', 'licence':'" + licence + "', 'mesto':'" + mesto + "', 'emailadress':'" + emailadress + "', 'telefon':'" + telefon + "', 'typzadosti':'" + typzadosti + "'}",
                                contentType: "application/json; charset=utf-8",
                                dataType: "json",
                                success: function (result) {
                                    $("body").css("cursor", "default");
                                    alert(result.d);
                                },
                                error: function (result) {
                                    $("body").css("cursor", "default");
                                    alert(result.status + ' ' + result.statusText);
                                }
                            });

                            $(this).dialog("close");
                        }
                    },

                    {
                        text: "Zrušit",
                        click: function () { $(this).dialog("close"); }
                    }
                ],
                show: "blind",
                hide: "explode",
                height: 400,
                width: 536,
                position: "center",
                resizable: false,
                autoOpen: false
            });
}

function SiteDukovanskeOkruhyReady() {
    var dataStore = window.sessionStorage;
    var index = 'tabDOKey';
    var oldIndex = 0;
    try {
        oldIndex = dataStore.getItem(index);
    } catch (e) {
        oldIndex = 0;
    }
    $("#dukovanskeokruhytabs").tabs({
        active: oldIndex,
        activate: function (event, ui) {
            var newIndex = ui.newTab.index();
            dataStore.setItem(index, newIndex)
        }
    });
    var username = $.cookies.get("user");
    ReadRegistrationsTable(username);
    ReadFinishTable(username);
    $("#buttonSilnicniZavod").button();
    $("#buttonSilnicniZavod").click(function () {

        var jmeno = $("#TextBoxSilnicniZavodJmeno").val();
        var prijmeni = $("#TextBoxSilnicniZavodPrijmeni").val();
        var narozeni = $("#TextBoxSilnicniZavodNarozeni").val();
        var kategorie = $("#DropDownListSilnicniZavodKategorie option:selected").val();
        var klub = $("#TextBoxSilnicniZavodKlub").val();
        var licence = $("#TextBoxSilnicniZavodLicence").val();
        var mesto = $("#TextBoxSilnicniZavodAdresa").val();
        var emailadress = $("#TextBoxSilnicniZavodEmail").val();
        var telefon = $("#TextBoxSilnicniZavodTelefon").val();
        var typzadosti = $(this).button().attr("title");
        var neposlatemail = document.getElementById("CheckBoxEmail").checked;

        $.ajax({
            type: "POST",
            url: "Services/WebService.asmx/SendSilnicniZavodEmail",
            data: "{'jmeno':'" + jmeno + "', 'prijmeni':'" + prijmeni + "', 'narozeni':'" + narozeni + "', 'kategorie':'" + kategorie + "', 'klub':'" + klub + "', 'licence':'" + licence + "', 'mesto':'" + mesto + "', 'emailadress':'" + emailadress + "', 'telefon':'" + telefon + "', 'skola':'" + "-" + "', 'popis':'" + "-" + "', 'typzadosti':'" + typzadosti + "', 'neposlatemail':'" + neposlatemail + "'}",
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (result) {
                $("#TextBoxSilnicniZavodJmeno").val('');
                $("#TextBoxSilnicniZavodPrijmeni").val('');
                $("#TextBoxSilnicniZavodNarozeni").val('');
                $("#DropDownListSilnicniZavodKategorie").empty();
                $("#TextBoxSilnicniZavodLicence").val('');
                alert(result.d);
            },
            error: function (result) {
                alert(result.status + ' ' + result.statusText);
            },
            complete: function () {
                ReadRegistrationsTable(username);
            }
        });
    });

    $("#buttonSilnicniZavodSmazForm").button();
    $("#buttonSilnicniZavodSmazForm").click(function () {
        $("#TextBoxSilnicniZavodJmeno").val('');
        $("#TextBoxSilnicniZavodPrijmeni").val('');
        $("#TextBoxSilnicniZavodNarozeni").val('');
        $("#DropDownListSilnicniZavodKategorie").empty();
        $("#TextBoxSilnicniZavodKlub").val('');
        $("#TextBoxSilnicniZavodLicence").val('');
        $("#TextBoxSilnicniZavodAdresa").val('');
        $("#TextBoxSilnicniZavodEmail").val('');
        $("#TextBoxSilnicniZavodTelefon").val('');
    });

    $("#TextBoxSilnicniZavodNarozeni").datepicker({
        showAnim: "slideDown",
        yearRange: "-100:-7",
        defaultDate: '-20Y',
        changeMonth: true,
        changeYear: true
    });

    $("#dialogButtonPrezentovat").prop('disabled', true);
    $("#TextBoxStartovniCislo").change(function () {
        var pageIsValid = Page_ClientValidate('DialogPrezentovat');
        $("#dialogButtonPrezentovat").prop('disabled', !pageIsValid);
    });

    $("#dialogPrezentace").dialog(
    {
        autoOpen: false,
        width: 250,
        height: 210,
        modal: true,
        buttons:
        [
            {
                id: "dialogButtonPrezentovat",
                text: "Prezentovat",
                click: function () {
                    $("body").css("cursor", "wait");

                    var idregistrace = $(this).dialog().data('idregistrace');
                    var startNumber = $("#TextBoxStartovniCislo").val();
                    var startFee = $("#TextBoxStartFee").val();

                    $.ajax({
                        type: "POST",
                        url: "Services/WebService.asmx/SetPresented",
                        data: "{'idregistrace':'" + idregistrace + "', 'startNumber':'" + startNumber + "', 'startFee':'" + startFee + "'}",
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        success: function (result) {
                            $("body").css("cursor", "default");
                            //alert(result.d);
                        },
                        error: function (result) {
                            $("body").css("cursor", "default");
                            alert(result.status + ' ' + result.statusText);
                        },
                        complete: function () {
                            ReadRegistrationsTable(username);
                        }
                    });

                    $(this).dialog("close");
                }
            },

            {
                id: "dialogButtonOdejit",
                text: "Odejít",
                click: function () { $(this).dialog("close"); }
            }
        ]
    });

    $("#dialogZrusitPrezentaci").dialog(
    {
        autoOpen: false,
        width: 250,
        height: 150,
        modal: true,
        buttons:
        [
            {
                id: "dialogButtonZrusitPrezentaci",
                text: "Zrušit",
                click: function () {
                    $("body").css("cursor", "wait");
                    var idregistrace = $(this).dialog().data('idregistrace');

                    $.ajax({
                        type: "POST",
                        url: "Services/WebService.asmx/SetRegistered",
                        data: "{'idregistrace':'" + idregistrace + "'}",
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        success: function (result) {
                            //alert(result.d);
                        },
                        error: function (result) {
                            alert(result.status + ' ' + result.statusText);
                        },
                        complete: function () {
                            ReadRegistrationsTable(username);
                        }
                    });

                    $(this).dialog("close");
                }
            },

            {
                id: "dialogButtonOdejit",
                text: "Odejít",
                click: function () { $(this).dialog("close"); }
            }
        ]
    });

    $("#dialogFinish").dialog(
    {
        autoOpen: false,
        width: 300,
        height: 220,
        modal: true,
        buttons:
        [
            {
                id: "dialogButtonFinish",
                text: "Uložit",
                click: function () {
                    $("body").css("cursor", "wait");
                    var idregistrace = $(this).dialog().data('idregistrace');
                    var finishTime = $("#TextBoxFinishTime").val();
                    var groupOrder = $("#TextBoxGroupOrder").val();

                    $.ajax({
                        type: "POST",
                        url: "Services/WebService.asmx/SetFinish",
                        data: "{'idregistrace':'" + idregistrace + "', 'finishTime':'" + finishTime + "', 'groupOrder':'" + groupOrder + "'}",
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        success: function (result) {
                            //alert(result.d);
                        },
                        error: function (result) {
                            alert(result.status + ' ' + result.statusText);
                        },
                        complete: function () {
                            ReadRegistrationsTable(username);
                            ReadFinishTable(username);
                        }
                    });

                    $(this).dialog("close");
                }
            },

            {
                id: "dialogButtonOdejit",
                text: "Odejít",
                click: function () { $(this).dialog("close"); }
            }
        ]
    });
}

function SiteProdejReady() {
    $("#prodejtabs").tabs();
    $(".inzerceImage a").lightBox();
    $("ul.paging3").quickPager({ pageSize: 10, pagerLocation: "after", prevText: "", nextText: "" });
    $("ul.paging8").quickPager({ pageSize: 15, pagerLocation: "after", prevText: "", nextText: "" });
}

function SiteDenikReady() {
    $("#deniktabs").tabs();
}

function SetFormIfLogged(username) {
    $("body").css("cursor", "wait");
    $.ajax({
        type: "POST",
        url: "Services/WebService.asmx/UserLogged",
        data: "{'username':'" + username + "'}",
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (result) {
            $("body").css("cursor", "default");
            if (result.d === username) {
                $(".userLoggedOff").hide();
                $("#LabelRUUserName").html(result.d);
                $(".userLoggedOn").show();
            }
        },
        error: function (result) {
            $("body").css("cursor", "default");
            alert(result.status + ' ' + result.statusText);
        },
        complete: function () {
            var labelLoginOnName = $("#LabelLoginOnName");
            var labelRUJmeno = $("#LabelRUJmeno");
            var labelRUPrijmeni = $("#LabelRUPrijmeni");
            var labelRUUroven = $("#LabelRUUroven");
            var labelRUEmail = $("#LabelRUEmail");
            var labelRULokalita = $("#LabelRULokalita");
            var labelRUKraj = $("#LabelRUKraj");
            var labelRUDisciplina = $("#LabelRUDisciplina");
            var labelRUPocasi = $("#LabelRUPocasi");
            var labelRUClen = $("#LabelRUClen");
            var labelRUDatumNarozeni = $("#LabelRUDatumNarozeni");
            var labelRegistrace = $("#LabelRegistrace");
            var labelLastLogin = $("#LabelLastLogin");

            SetUserHtmlParameter(username, labelLoginOnName, "GetUserFullName");
            SetUserHtmlParameter(username, labelRUEmail, "GetUserEmail");
            SetUserHtmlParameter(username, labelRegistrace, "GetUserCreation");
            SetUserHtmlParameter(username, labelLastLogin, "GetUserLastLogin");
            SetUserHtmlParameter(username, labelRUJmeno, "GetUserFirstName");
            SetUserHtmlParameter(username, labelRUPrijmeni, "GetUserLastName");
            SetUserHtmlParameter(username, labelRULokalita, "GetUserTrainingLocality");
            SetUserHtmlParameter(username, labelRUKraj, "GetUserTrainingRegion");
            SetUserHtmlParameter(username, labelRUDatumNarozeni, "GetUserBirthDate");
            SetUserHtmlParameter(username, labelRUUroven, "GetUserSportClass");
            SetUserHtmlParameter(username, labelRUClen, "GetUserMemberType");
            SetUserHtmlParameter(username, labelRUDisciplina, "GetUserPreferredDiscipline");
            SetUserHtmlParameter(username, labelRUPocasi, "GetUserWeatherStationName");
            SetUserWeather(username);
            SetUserRoleClass(username);
        }
    });
}

function LoginOnUser(username) {
    $("body").css("cursor", "wait");

    var username = $("#TextBoxLoginName").val();
    var userpass = $("#TextBoxLoginPass").val();
    var cookieOptions = { expiresAt: new Date().getTime() + 1, secure: false }

    $.ajax({
        type: "POST",
        url: "Services/WebService.asmx/LoginOnUser",
        data: "{'username':'" + username + "', 'userpass':'" + userpass + "'}",
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (result) {
            $("body").css("cursor", "default");
            if (result.d === username) {
                $(".userLoggedOff").hide();
                $("#LabelRUUserName").html(username);
                $.cookies.set("user", username, cookieOptions);
                $(".userLoggedOn").show();
            }
            else
                alert("Nejsou zadány správné přihlašovací údaje !");
        },
        error: function (result) {
            $("body").css("cursor", "default");
            alert(result.status + ' ' + result.statusText);
        },
        complete: function () {
            var labelLoginOnName = $("#LabelLoginOnName");
            var labelRUJmeno = $("#LabelRUJmeno");
            var labelRUPrijmeni = $("#LabelRUPrijmeni");
            var labelRUUroven = $("#LabelRUUroven");
            var labelRUEmail = $("#LabelRUEmail");
            var labelRULokalita = $("#LabelRULokalita");
            var labelRUKraj = $("#LabelRUKraj");
            var labelRUDisciplina = $("#LabelRUDisciplina");
            var labelRUPocasi = $("#LabelRUPocasi");
            var labelRUClen = $("#LabelRUClen");
            var labelRUDatumNarozeni = $("#LabelRUDatumNarozeni");
            var labelRegistrace = $("#LabelRegistrace");
            var labelLastLogin = $("#LabelLastLogin");

            SetUserHtmlParameter(username, labelLoginOnName, "GetUserFullName");
            SetUserHtmlParameter(username, labelRUJmeno, "GetUserFirstName");
            SetUserHtmlParameter(username, labelRUPrijmeni, "GetUserLastName");
            SetUserHtmlParameter(username, labelRUUroven, "GetUserSportClass");
            SetUserHtmlParameter(username, labelRUEmail, "GetUserEmail");
            SetUserHtmlParameter(username, labelRULokalita, "GetUserTrainingLocality");
            SetUserHtmlParameter(username, labelRUKraj, "GetUserTrainingRegion");
            SetUserHtmlParameter(username, labelRUDisciplina, "GetUserPreferredDiscipline");
            SetUserHtmlParameter(username, labelRUPocasi, "GetUserWeatherStationName");
            SetUserHtmlParameter(username, labelRUClen, "GetUserMemberType");
            SetUserHtmlParameter(username, labelRUDatumNarozeni, "GetUserBirthDate");
            SetUserHtmlParameter(username, labelRegistrace, "GetUserCreation");
            SetUserHtmlParameter(username, labelLastLogin, "GetUserLastLogin");
            SetUserWeather(username);
            ReadUserRaceTable(username);
            SetUserRoleClass(username);
        }
    });
}

function LogginOffUser(username) {
    var cookieOptions = { secure: false }
    $("body").css("cursor", "wait");

    $.ajax({
        type: "POST",
        url: "Services/WebService.asmx/LoginOffLoggedUser",
        data: "{'username':'" + username + "'}",
        contentType: "application/json; charset=utf-8",
        success: function () {
            $(".userLoggedOn").hide();
            $(".userRoleEditor").hide();
            $("#LabelLoginOnName").html("");
            $("#TextBoxLoginName").val("");
            $("#TextBoxLoginPass").val("");
            $.cookies.del("user", cookieOptions);
            $(".userLoggedOff").show();
        }
    });
    $("body").css("cursor", "default");
}

function CreateNewUser() {
    $("body").css("cursor", "wait");

    var uzivjmeno = $("#TextBoxUzivJmeno").val();
    var emailadress = $("#TextBoxEmail").val();
    var heslo = $("#TextBoxHeslo").val();
    var kontrolahesla = $("#TextBoxKontrolaHesla").val();
    var fname = $("#TextBoxJmeno").val();
    var sname = $("#TextBoxPrijmeni").val();
    var obec = $("#TextBoxObec").val();
    var narozeni = $("#TextBoxNarozeni").val();
    var kraj = $("#DropDownListKraj").val();
    var uroven = $("#DropDownListUroven").val();
    var clen = $("#DropDownListClen").val();
    var disciplina = $("#DropDownListDisciplina").val();
    var pocasi = $("#DropDownListPocasi").val();

    $.ajax({
        type: "POST",
        url: "Services/WebService.asmx/SendClenstviEmail",
        data: "{'uzivjmeno':'" + uzivjmeno + "','emailadress':'" + emailadress + "', 'heslo':'" + heslo + "', 'kontrolahesla':'" + kontrolahesla + "', 'fname':'" + fname + "', 'sname':'" + sname + "', 'obec':'" + obec + "', 'kraj':'" + kraj + "', 'narozeni':'" + narozeni + "', 'uroven':'" + uroven + "', 'clen':'" + clen + "', 'disciplina':'" + disciplina + "', 'pocasi':'" + pocasi + "'}",
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (result) {
            $("body").css("cursor", "default");
            alert(result.d);
            var errortext = result.d.substring(0, 5);
            if (errortext !== "Chyba") {
                $("#TextBoxUzivJmeno").val("");
                $("#TextBoxEmail").val("");
                $("#TextBoxHeslo").val("");
                $("#TextBoxKontrolaHesla").val("");
                $("#TextBoxJmeno").val("");
                $("#TextBoxPrijmeni").val("");
                $("#TextBoxObec").val("");
                $("#TextBoxNarozeni").val("");
            }
        },
        error: function (result) {
            $("body").css("cursor", "default");
            alert(result.status + ' ' + result.statusText);
        }
    });
}

function ReadUsersTableWithData() {
    $("body").css("cursor", "wait");

    $.ajax({
        type: "POST",
        url: "Services/WebService.asmx/GetUsersTable",
        data: "{'showdata':'true', 'usermembertype':'Aktivní člen'}",
        contentType: "application/json; charset=utf-8",
        success: function (result) {
            $("#table-aktivniclenove-data").html(result.d);
        }
    });
    $.ajax({
        type: "POST",
        url: "Services/WebService.asmx/GetUsersTable",
        data: "{'showdata':'true', 'usermembertype':'Pasivní člen'}",
        contentType: "application/json; charset=utf-8",
        success: function (result) {
            $("#table-pasivniclenove-data").html(result.d);
        }
    });
    $.ajax({
        type: "POST",
        url: "Services/WebService.asmx/GetUsersTable",
        data: "{'showdata':'true', 'usermembertype':'Příznivec týmu'}",
        contentType: "application/json; charset=utf-8",
        success: function (result) {
            $("#table-priznivci-data").html(result.d);
        }
    });
    $("body").css("cursor", "default");
}

function ReadUsersTableWithoutData() {
    $("body").css("cursor", "wait");

    $.ajax({
        type: "POST",
        url: "Services/WebService.asmx/GetUsersTable",
        data: "{'showdata':'false', 'usermembertype':'Aktivní člen'}",
        contentType: "application/json; charset=utf-8",
        success: function (result) {
            $("#table-aktivniclenove-jmena").html(result.d);
        }
    });
    $.ajax({
        type: "POST",
        url: "Services/WebService.asmx/GetUsersTable",
        data: "{'showdata':'false', 'usermembertype':'Pasivní člen'}",
        contentType: "application/json; charset=utf-8",
        success: function (result) {
            $("#table-pasivniclenove-jmena").html(result.d);
        }
    });
    $.ajax({
        type: "POST",
        url: "Services/WebService.asmx/GetUsersTable",
        data: "{'showdata':'false', 'usermembertype':'Příznivec týmu'}",
        contentType: "application/json; charset=utf-8",
        success: function (result) {
            $("#table-priznivci-jmena").html(result.d);
        }
    });
    $("body").css("cursor", "default");
}

function ReadUserRaceTable(username) {
    $("body").css("cursor", "wait");
    $.ajax({
        type: "POST",
        url: "Services/WebService.asmx/GetUserRacesTable",
        data: "{'username':'" + username + "'}",
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (result) {
            $("#userRaces").html(result.d);
        }
    });
    $("body").css("cursor", "default");
}

function ReadRegistrationsTable(username) {
    $("body").css("cursor", "wait");
    $.ajax({
        type: "POST",
        url: "Services/WebService.asmx/GetRegistrationsTable",
        data: "{}",
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (result) {
            $("#registrationTable").html(result.d);
        },
        error: function (result) {
            alert(result.status + ' ' + result.statusText);
        },
        complete: function () {
            $(".printCategoryRegistered").button();
            $(".printCategoryPresented").button();
            $(".regOk").button();
            $(".regNok").button();
            $(".regFinish").button();
            SetUserRoleClass(username);

            $(".printCategoryRegistered").click(function () {
                var idDiv = $(this).button().attr("id");
                var sDiv = idDiv.replace('registered', 'i');
                var divToPrint = document.getElementById(sDiv);
                var notPrintableDiv = '#' + sDiv;
                $(notPrintableDiv).find(".notPrintable").hide();
                var popupWin = window.open('', '_blank', 'width=980,height=1400,location=no,left=200px');
                popupWin.document.open();
                popupWin.document.write('<html><body onload="window.print()">' + divToPrint.innerHTML + '</html>');
                popupWin.document.close();
                $(notPrintableDiv).find(".notPrintable").show();
            });

            $(".printCategoryPresented").click(function () {
                var idDiv = $(this).button().attr("id");
                var sDiv = idDiv.replace('presented', 'i');
                var divToPrint = document.getElementById(sDiv);
                var notPrintableDiv = '#' + sDiv;
                $(notPrintableDiv).find(".notPrintable").hide();
                $(notPrintableDiv).find(".notPresented").hide();
                var popupWin = window.open('', '_blank', 'width=980,height=1400,location=no,left=200px');
                popupWin.document.open();
                popupWin.document.write('<html><body onload="window.print()">' + divToPrint.innerHTML + '</html>');
                popupWin.document.close();
                $(notPrintableDiv).find(".notPresented").show();
                $(notPrintableDiv).find(".notPrintable").show();
            });

            $(".regOk").click(function () {
                var idreg = $(this).button().attr("id");
                var idregistrace = idreg.replace('regOk', '');

                $.ajax({
                    type: "POST",
                    url: "Services/WebService.asmx/GetRegistered",
                    data: "{'idregistrace':'" + idregistrace + "'}",
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (result) {
                        $('#dialogPrezentace').data('idregistrace', idregistrace);
                        $('#dialogPrezentace').find('#TextBoxStartFee').val(result.d[1]);
                        $('#dialogPrezentace').dialog({ title: result.d[0] });
                        $("#dialogPrezentace").dialog("open");
                    },
                    error: function (result) {
                        alert(result.status + ' ' + result.statusText);
                    }
                });
            });

            $(".regNok").click(function () {
                var idreg = $(this).button().attr("id");
                var idregistrace = idreg.replace('regNok', '');

                $.ajax({
                    type: "POST",
                    url: "Services/WebService.asmx/GetRegistered",
                    data: "{'idregistrace':'" + idregistrace + "'}",
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (result) {
                        $('#dialogZrusitPrezentaci').data('idregistrace', idregistrace);
                        $('#dialogZrusitPrezentaci').dialog({ title: result.d[0] });
                        $("#dialogZrusitPrezentaci").dialog("open");
                    },
                    error: function (result) {
                        alert(result.status + ' ' + result.statusText);
                    }
                });
            });

            $(".regFinish").click(function () {
                var idreg = $(this).button().attr("id");
                var idregistrace = idreg.replace('finish', '');

                $.ajax({
                    type: "POST",
                    url: "Services/WebService.asmx/GetRegistered",
                    data: "{'idregistrace':'" + idregistrace + "'}",
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (result) {
                        $('#dialogFinish').data('idregistrace', idregistrace);
                        $('#dialogFinish').find('#TextBoxFinishTime').val(result.d[2]);
                        $('#dialogFinish').find('#TextBoxGroupOrder').val(result.d[3]);
                        $('#dialogFinish').dialog({ title: result.d[0] });
                        $("#dialogFinish").dialog("open");
                    },
                    error: function (result) {
                        alert(result.status + ' ' + result.statusText);
                    }
                });
            });
        }
    });
    $("body").css("cursor", "default");
}

function ReadFinishTable(username) {
    $("body").css("cursor", "wait");
    $.ajax({
        type: "POST",
        url: "Services/WebService.asmx/GetFinishTable",
        data: "{}",
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (result) {
            $("#finishTable").html(result.d);
        },
        error: function (result) {
            alert(result.status + ' ' + result.statusText);
        },
        complete: function () {
            $(".printCategoryFinished").button();
            SetUserRoleClass(username);

            $(".printCategoryFinished").click(function () {
                var idDiv = $(this).button().attr("id");
                var sDiv = idDiv.replace('finished', 'f');
                var divToPrint = document.getElementById(sDiv);
                var notPrintableDiv = '#' + sDiv;
                $(notPrintableDiv).find(".notPrintable").hide();
                var popupWin = window.open('', '_blank', 'width=980,height=1400,location=no,left=200px');
                popupWin.document.open();
                popupWin.document.write('<html><body onload="window.print()">' + divToPrint.innerHTML + '</html>');
                popupWin.document.close();
                $(notPrintableDiv).find(".notPrintable").show();
            });
        }
    });
    $("body").css("cursor", "default");
}

function PrintCategoryDiv(categoryCode) {
    var divToPrint = document.getElementById(categoryCode);
    var popupWin = window.open('', '_blank', 'width=300,height=400,location=no,left=200px');
    popupWin.document.open();
    popupWin.document.write('<html><body onload="window.print()">' + divToPrint.innerHTML + '</html>');
    popupWin.document.close();
}

function ReadUsersRaceTable() {
    var usermembertype = "Aktivní člen";
    var classname = "zavody";
    var classpaging = "paging13";
    $("body").css("cursor", "wait");
    $.ajax({
        type: "POST",
        url: "Services/WebService.asmx/GetUsersRacesTable",
        data: "{'usermembertype':'" + usermembertype + "','classname':'" + classname + "','classpaging':'" + classpaging + "'}",
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (result) {
            $("#usersRaces").html(result.d);
        }
    });
    $("body").css("cursor", "default");
}

function SetUserWeather(username) {
    var weatherCode = "";
    var weatherStationName = "";

    $("body").css("cursor", "wait");
    $.ajax({
        type: "POST",
        url: "Services/WebService.asmx/GetUserWeatherStationCode",
        data: "{'username':'" + username + "'}",
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (result) {
            $("body").css("cursor", "default");
            weatherCode = result.d;
        },
        error: function (result) {
            $("body").css("cursor", "default");
            alert(result.status + ' ' + result.statusText);
        },
        complete: function () {
            $("body").css("cursor", "wait");
            $.ajax({
                type: "POST",
                url: "Services/WebService.asmx/GetUserWeatherStationName",
                data: "{'username':'" + username + "'}",
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (result) {
                    $("body").css("cursor", "default");
                    weatherStationName = result.d;
                },
                error: function (result) {
                    $("body").css("cursor", "default");
                    alert(result.status + ' ' + result.statusText);
                },
                complete: function () {
                    SetWeatherData(weatherCode, weatherStationName, 'userweather');
                }
            });
        },
        error: function (result) {
            $("body").css("cursor", "default");
            alert(result.status + ' ' + result.statusText);
        }
    });
}

function SetWeatherData(code, name, div) {
    $.simpleWeather({
        location: name,
        unit: 'c',
        success: function (weather) {
            html = '<table><tr><td colspan="2" style="width: 135px; color: #000099; font-size: 24px; font-weight: bold; padding-top: 10px; font-family: Times New Roman, Times, serif">' + name + '</td><td style="width: 100px; font-size: 12px; font-weight: normal; text-align: right; vertical-align: middle;">' + weather.updated + '</td></tr>';
            html += '<tr><td style="width: 120px; vertical-align: middle;"><p><strong>Teplota</strong>: ' + weather.temp + '&deg;' + weather.units.temp + '</p>';
            html += '<p><strong>Pocitově</strong>: ' + Math.round((weather.wind.chill-32)/1.8) + '&deg;' + weather.units.temp + '</p>';
            html += '<p><strong>Vítr</strong>: ' + weather.wind.direction + ' ' + Math.round(weather.wind.speed) + ' ' + weather.units.speed + '</p></td>';
            html += '<td colspan="2"><p><img style="float:left;" width="175px" src="' + weather.image + '" alt="" /></p></td></tr></table>';
            html += '<p><strong>Nejvyšší / nejninižší dnešní teplota</strong>: ' + weather.high + '&deg;' + weather.units.temp + ' / ' + weather.low + '&deg;' + weather.units.temp + '</p>';
            html += '<p><strong>Východ / západ slunce</strong>: ' + weather.sunrise + ' / ' + weather.sunset + '</p><br />';
            html += '<p><a href="' + weather.link + '" target="_blank">Zobrazit předpověď na Yahoo Weather</a></p>';

            $("#" + div + "").html(html);
        },
        error: function (error) {
            $("#" + div + "").html("<p>" + error + "</p>");
        }
    }); 
}

function SetWeatherIcon(name, div) {
    $.simpleWeather({
        location: name,
        unit: 'c',
        success: function (weather) {
            html = '<a href="' + weather.link + '" target="_blank"><div style="float: right; padding-left: 10px"><div><img border="0" src="' + weather.thumbnail + '" alt="" /></div>';
            html += '<div style="text-align: center; color: #000099"><strong>' + weather.temp + '&deg;' + weather.units.temp + '</strong></div>';
            html += '<div style="text-align: center; color: #FF0000"><strong>' + weather.high + '&deg;' + weather.units.temp + ' / ' + weather.low + '&deg;' + weather.units.temp + '</strong></div></div></a>';

            $("#" + div + "").html(html);
        },
        error: function (error) {
            $("#" + div + "").html("<p>" + error + "</p>");
        }
    });
}

function SetUserHtmlParameter(username, parameter, functionname) {
    $("body").css("cursor", "wait");
    $.ajax({
        type: "POST",
        url: "Services/WebService.asmx/" + functionname,
        data: "{'username':'" + username + "'}",
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (result) {
            $("body").css("cursor", "default");
            parameter.html(result.d);
        },
        error: function (result) {
            $("body").css("cursor", "default");
            alert(result.status + ' ' + result.statusText);
        }
    });
}

function SetUserValueParameter(username, parameter, functionname) {
    $("body").css("cursor", "wait");
    $.ajax({
        type: "POST",
        url: "Services/WebService.asmx/" + functionname,
        data: "{'username':'" + username + "'}",
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (result) {
            $("body").css("cursor", "default");
            parameter.val(result.d);
        },
        error: function (result) {
            $("body").css("cursor", "default");
            alert(result.status + ' ' + result.statusText);
        }
    });
}

function SetDialogUpdateData(username) {
    var obec = $("#TextBoxUObec");
    var sportclass = $("#DropDownListUUroven");
    var email = $("#TextBoxUEmail");
    var kraj = $("#DropDownListUKraj");
    var clen = $("#DropDownListUClen");
    var disciplina = $("#DropDownListUDisciplina");
    var pocasi = $("#DropDownListUPocasi");

    SetUserValueParameter(username, obec, "GetUserTrainingLocality");
    SetUserValueParameter(username, sportclass, "GetUserSportClass");
    SetUserValueParameter(username, email, "GetUserEmail");
    SetUserValueParameter(username, kraj, "GetUserTrainingRegion");
    SetUserValueParameter(username, clen, "GetUserMemberType");
    SetUserValueParameter(username, disciplina, "GetUserPreferredDiscipline");
    SetUserValueParameter(username, pocasi, "GetUserWeatherStationName");
}

function SetMTBZavodData(username) {
    var jmeno = $("#TextBoxMTBZavodJmeno");
    var prijmeni = $("#TextBoxMTBZavodPrijmeni");
    var narozeni = $("#TextBoxMTBZavodNarozeni");
    var klub = $("#TextBoxMTBZavodKlub");
    var email = $("#TextBoxMTBZavodEmail");

    SetUserValueParameter(username, jmeno, "GetUserFirstName");
    SetUserValueParameter(username, prijmeni, "GetUserLastName");
    SetUserValueParameter(username, narozeni, "GetUserBirthDate");
    SetUserValueParameter(username, klub, "GetUserClub");
    SetUserValueParameter(username, email, "GetUserEmail");

    $("#DropDownListMTBZavodKategorie").val("");
    $("#DropDownListMTBZavodStartovne").val("");
}

function SetSilnicniZavodData(username) {
    var jmeno = $("#TextBoxSilnicniZavodJmeno");
    var prijmeni = $("#TextBoxSilnicniZavodPrijmeni");
    var narozeni = $("#TextBoxSilnicniZavodNarozeni");
    var klub = $("#TextBoxSilnicniZavodKlub");
    var email = $("#TextBoxSilnicniZavodEmail");

    SetUserValueParameter(username, jmeno, "GetUserFirstName");
    SetUserValueParameter(username, prijmeni, "GetUserLastName");
    SetUserValueParameter(username, narozeni, "GetUserBirthDate");
    SetUserValueParameter(username, klub, "GetUserClub");
    SetUserValueParameter(username, email, "GetUserEmail");

    $("#DropDownListSilnicniZavodKategorie").val("");
}

function SetZadostPoradenstviData(username) {
    var jmeno = $("#TextBoxZadostJmeno");
    var sportclass = $("#DropDownListZadostUroven");
    var email = $("#TextBoxZadostEmail");

    SetUserValueParameter(username, jmeno, "GetUserFullName");
    SetUserValueParameter(username, sportclass, "GetUserSportClass");
    SetUserValueParameter(username, email, "GetUserEmail");

    $("#DropDownListZadostObdobi").val("");
}

function SetDialogPKempData(username) {
    var jmeno = $("#TextBoxPKempJmeno");
    var sportclass = $("#DropDownListPKempUroven");
    var email = $("#TextBoxPKempEmail");

    SetUserValueParameter(username, jmeno, "GetUserFullName");
    SetUserValueParameter(username, sportclass, "GetUserSportClass");
    SetUserValueParameter(username, email, "GetUserEmail");
}

function SetDialogKempData(username) {
    var jmeno = $("#TextBoxKempJmeno");
    var sportclass = $("#DropDownListKempUroven");
    var email = $("#TextBoxKempEmail");

    SetUserValueParameter(username, jmeno, "GetUserFullName");
    SetUserValueParameter(username, sportclass, "GetUserSportClass");
    SetUserValueParameter(username, email, "GetUserEmail");

    $("#TextBoxKempOd").val("");
    $("#TextBoxKempDo").val("");
    $("#TextBoxKempPozn").val("");
    $("#DropDownListKempTyp")[0].selectedIndex = -1;
}

function SetUserRoleClass(username) {
    var role = "ADMIN";

    $("body").css("cursor", "wait");
    $.ajax({
        type: "POST",
        url: "Services/WebService.asmx/IsUserRoleName",
        data: "{'username':'" + username + "','role':'" + role + "'}",
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (result) {
            $("body").css("cursor", "default");
            if (result.d === "ADMIN") {
                $(".userRoleEditor").show();
            } else {
                $(".userRoleEditor").hide();
            }
        },
        error: function (result) {
            $("body").css("cursor", "default");
            alert(result.status + ' ' + result.statusText);
        }
    });
    $("body").css("cursor", "default");
}

$.fx.speeds._default = 500;
$.datepicker.regional['cs'] = {
    closeText: 'Zavřít',
    prevText: 'Předchozí­',
    nextText: 'Další',
    currentText: 'Dnes',
    monthNames: ['Leden', 'Únor', 'Březen', 'Duben', 'Květen', 'Červen', 'Červenec', 'Srpen', 'Září', 'Říjen', 'Listopad', 'Prosinec'],
    monthNamesShort: ['Leden', 'Únor', 'Březen', 'Duben', 'Květen', 'Červen', 'Červenec', 'Srpen', 'Září', 'Říjen', 'Listopad', 'Prosinec'],
    dayNames: ['Neděle', 'Pondělí', 'Úterý', 'Středa', 'Čtvrtek', 'Pátek', 'Sobota'],
    dayNamesShort: ['Ne', 'Po', 'Út', 'St', 'Čt', 'Pá', 'So', ],
    dayNamesMin: ['Ne', 'Po', 'Út', 'St', 'Čt', 'Pá', 'So'],
    weekHeader: 'Sm',
    dateFormat: 'dd.mm.yy',
    firstDay: 1,
    isRTL: false,
    showMonthAfterYear: false,
    yearSuffix: ''
};
$.datepicker.setDefaults($.datepicker.regional['cs']);