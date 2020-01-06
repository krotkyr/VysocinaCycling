using System;
using System.Net.Mail;
using System.Web.Services;
using System.Web.Security;
using Altairis.Web.Security;
using System.Web.Hosting;
using System.Data;
using System.Data.SqlClient;
using System.Configuration.Provider;
using VysocinaCycling;

/// <summary>
/// Summary description for WebService
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
[System.Web.Script.Services.ScriptService]
public class WebService : System.Web.Services.WebService
{
    private TableMembershipProvider MyNewMembershipProvider;
    private TableRoleProvider MyNewRoleProvider;
    private MembershipUser LoggedUser;
    private string connectionString;
    private AppService appService;

    public WebService() {

        //Uncomment the following line if using designed components 
        //InitializeComponent(); 
        MyNewMembershipProvider = (TableMembershipProvider)Membership.Providers["MyMembershipProvider"];
        MyNewRoleProvider = (TableRoleProvider)Roles.Providers["MyRoleProvider"];

        System.Configuration.ConnectionStringSettings ConnectionStringSettings = System.Configuration.ConfigurationManager.ConnectionStrings["VysocinaCycling"];
        if (ConnectionStringSettings == null || ConnectionStringSettings.ConnectionString.Trim() == "") throw new ProviderException("Connection string cannot be blank.");
        this.connectionString = ConnectionStringSettings.ConnectionString;

        this.appService = new AppService();
    }

    private SqlConnection OpenDatabase()
    {
        SqlConnection db = new SqlConnection(this.connectionString);
        db.Open();
        return db;
    }

    private string SendEmail(string subject, string body, string emailadressFrom, string emailadressTo)
    {
        MailMessage msg = new MailMessage();
        msg.From = new MailAddress(emailadressFrom);
        msg.To.Add(new MailAddress(emailadressTo));
        msg.Subject = subject;
        msg.Body = body;
        SmtpClient smtp = new SmtpClient();
        try
        {
            smtp.Send(msg);
            return null;
        }
        catch (Exception ex2)
        {
            return "Chyba p¯i odesÌl·nÌ emailu na adresu " + emailadressTo + ". Chyba: " + ex2.Message;
        }
    }

    private string SendPotvrzeniEmail(string subject, string body, string emailadressFrom, string emailadressTo)
    {
        MailMessage msg = new MailMessage();
        msg.From = new MailAddress(emailadressFrom);
        msg.To.Add(new MailAddress(emailadressFrom));
        msg.To.Add(new MailAddress(emailadressTo));
        msg.Subject = subject;
        msg.Body = "Tento email byl zasl·n jako kontrola V·mi uveden˝ch ˙daj˘." + '\n' + '\n' + body + '\n' + '\n' + "DÏkujeme." + '\n' + "VysoËina cycling";
        SmtpClient smtp = new SmtpClient();
        try
        {
            smtp.Send(msg);
            return "Email byl odesl·n.";
        }
        catch (Exception ex2)
        {
            return "Chyba p¯i odesÌl·nÌ emailu: " + ex2.Message;
        }
    }

    [WebMethod(EnableSession = true)]
    public string LoginOnUser(string username, string userpass)
    {
        if ((username != "") && (userpass != ""))
        {
            try
            {
                if (MyNewMembershipProvider.ValidateUser(username, userpass))
                {
                    LoggedUser = MyNewMembershipProvider.GetUser(username, true);
                    // FormsAuthentication.SetAuthCookie(username, true);
                    Session.Add(username, LoggedUser);
                    Session.Timeout = 1440; // 1 den
                    return username;
                }
                else
                    return "ChybnÈ p¯ihlaöovacÌ ˙daje.";
            }
            catch (Exception ex)
            {
                return ex.Message;
            }

        }
        else
            return null;//"Nebyla vyplnÏna vöechna pole.";
    }

    [WebMethod(EnableSession = true)]
    public string UserLogged(string username)
    {
        LoggedUser = (MembershipUser)Session[username];
        if (LoggedUser != null)
            return username;
        else
            return "";
    }

    [WebMethod(EnableSession = true)]
    public void LoginOffLoggedUser(string username)
    {
        Session.Remove(username);
    }

    [WebMethod(EnableSession = true)]
    public string IsUserRoleName(string username, string role)
    {
        LoggedUser = (MembershipUser)Session[username];
        if (LoggedUser != null)
        {
            if (MyNewRoleProvider.IsUserInRole(username, role) == true)
                return role;
            else
                return "";
        }
        else
            return "";
    }

    [WebMethod(EnableSession = true)]
    public string GetUserEmail(string username)
    {
        LoggedUser = (MembershipUser)Session[username];
        if (LoggedUser != null)
        {
            LoggedUser.LastActivityDate = DateTime.Now;
            return LoggedUser.Email;
        }
        else
            return "";
    }

    [WebMethod]
    public string GetUsersTable(bool showdata, string usermembertype)
    {
        int datatotalrecords = 0;
        int datapage = 0;
        int datapagerecords = 10;
        string userstable = "<table>";
        do
        {
            MembershipUserCollection users = MyNewMembershipProvider.GetAllUsers(datapage, datapagerecords, out datatotalrecords);
            if (datatotalrecords > 0)
            {
                if (datapage == 0)
                {
                    userstable += "<tr style='font-weight: bold; font-style: italic; font-size: small;'>";
                    userstable += "<td width='120px'>JmÈno</td>";
                    userstable += "<td width='140px'>Lokalita</td>";
                    userstable += "<td width='100px'>Za¯azenÌ</td>";
                    if (showdata)
                    {
                        userstable += "<td width='80px'>Datum registrace</td>";
                        userstable += "<td width='90px'>Preferovan· disciplÌna</td>";
                        userstable += "<td width='140px'>KontaktnÌ email</td>";
                    }
                    userstable += "</tr>";
                }
                foreach (MembershipUser user in users)
                {
                    ProfileCommon UserProfile = ProfileCommon.Create(user.UserName) as ProfileCommon;
                    if (UserProfile.MemberType == usermembertype)
                    {
                        userstable += "<tr>";
                        userstable += "<td>" + UserProfile.FirstName + " " + UserProfile.LastName + "</td>";
                        userstable += "<td>" + UserProfile.TrainingLocality + "</td>";
                        userstable += "<td>" + UserProfile.MemberType + "</td>";
                        if (showdata)
                        {
                            userstable += "<td>" + user.CreationDate.ToShortDateString() + "</td>";
                            userstable += "<td>" + UserProfile.PreferredDiscipline + "</td>";
                            userstable += "<td>" + user.Email + "</td>";
                        }
                        userstable += "</tr>";
                    }
                }
            }
            datapage += 1;
        } while ((datapage * datapagerecords) < datatotalrecords);
        userstable += "</table>";
        return userstable;
    }

    [WebMethod(EnableSession = true)]
    public string GetUserFirstName(string username)
    {
        LoggedUser = (MembershipUser)Session[username];
        if (LoggedUser != null)
        {
            ProfileCommon UserProfile = ProfileCommon.Create(LoggedUser.UserName) as ProfileCommon;
            LoggedUser.LastActivityDate = DateTime.Now;
            return UserProfile.FirstName;
        }
        else
            return "";
    }

    [WebMethod(EnableSession = true)]
    public string GetUserLastName(string username)
    {
        LoggedUser = (MembershipUser)Session[username];
        if (LoggedUser != null)
        {
            ProfileCommon UserProfile = ProfileCommon.Create(LoggedUser.UserName) as ProfileCommon;
            LoggedUser.LastActivityDate = DateTime.Now;
            return UserProfile.LastName;
        }
        else
            return "";
    }

    [WebMethod(EnableSession = true)]
    public string GetUserFullName(string username)
    {
        return GetUserFirstName(username) + " " + GetUserLastName(username);
    }

    [WebMethod(EnableSession = true)]
    public string GetUserSportClass(string username)
    {
        LoggedUser = (MembershipUser)Session[username];
        if (LoggedUser != null)
        {
            ProfileCommon UserProfile = ProfileCommon.Create(LoggedUser.UserName) as ProfileCommon;
            LoggedUser.LastActivityDate = DateTime.Now;
            return UserProfile.SportClass;
        }
        else
            return "";
    }

    [WebMethod(EnableSession = true)]
    public string GetUserBirthDate(string username)
    {
        LoggedUser = (MembershipUser)Session[username];
        if (LoggedUser != null)
        {
            ProfileCommon UserProfile = ProfileCommon.Create(LoggedUser.UserName) as ProfileCommon;
            LoggedUser.LastActivityDate = DateTime.Now;
            return UserProfile.BirthDate.ToShortDateString();
        }
        else
            return "";
    }

    [WebMethod(EnableSession = true)]
    public string GetUserMemberType(string username)
    {
        LoggedUser = (MembershipUser)Session[username];
        if (LoggedUser != null)
        {
            ProfileCommon UserProfile = ProfileCommon.Create(LoggedUser.UserName) as ProfileCommon;
            LoggedUser.LastActivityDate = DateTime.Now;
            return UserProfile.MemberType;
        }
        else
            return "";
    }

    [WebMethod(EnableSession = true)]
    public string GetUserPreferredDiscipline(string username)
    {
        LoggedUser = (MembershipUser)Session[username];
        if (LoggedUser != null)
        {
            ProfileCommon UserProfile = ProfileCommon.Create(LoggedUser.UserName) as ProfileCommon;
            LoggedUser.LastActivityDate = DateTime.Now;
            return UserProfile.PreferredDiscipline;
        }
        else
            return "";
    }

    [WebMethod(EnableSession = true)]
    public string GetUserTrainingLocality(string username)
    {
        LoggedUser = (MembershipUser)Session[username];
        if (LoggedUser != null)
        {
            ProfileCommon UserProfile = ProfileCommon.Create(LoggedUser.UserName) as ProfileCommon;
            LoggedUser.LastActivityDate = DateTime.Now;
            return UserProfile.TrainingLocality;
        }
        else
            return "";
    }

    [WebMethod(EnableSession = true)]
    public string GetUserTrainingRegion(string username)
    {
        LoggedUser = (MembershipUser)Session[username];
        if (LoggedUser != null)
        {
            ProfileCommon UserProfile = ProfileCommon.Create(LoggedUser.UserName) as ProfileCommon;
            LoggedUser.LastActivityDate = DateTime.Now;
            return UserProfile.TrainingRegion;
        }
        else
            return "";
    }

    [WebMethod(EnableSession = true)]
    public string GetUserClub(string username)
    {
        LoggedUser = (MembershipUser)Session[username];
        if (LoggedUser != null)
        {
            ProfileCommon UserProfile = ProfileCommon.Create(LoggedUser.UserName) as ProfileCommon;
            LoggedUser.LastActivityDate = DateTime.Now;
            if (UserProfile.MemberType == "AktivnÌ Ëlen")
                return "VysoËina Cycling";
            else
                return "";
        }
        else
            return "";
    }

    [WebMethod(EnableSession = true)]
    public string GetUserLastLogin(string username)
    {
        LoggedUser = (MembershipUser)Session[username];
        if (LoggedUser != null)
        {
            ProfileCommon UserProfile = ProfileCommon.Create(LoggedUser.UserName) as ProfileCommon;
            LoggedUser.LastActivityDate = DateTime.Now;
            return LoggedUser.LastLoginDate.ToString();
        }
        else
            return "";
    }

    [WebMethod(EnableSession = true)]
    public string GetUserCreation(string username)
    {
        LoggedUser = (MembershipUser)Session[username];
        if (LoggedUser != null)
        {
            ProfileCommon UserProfile = ProfileCommon.Create(LoggedUser.UserName) as ProfileCommon;
            LoggedUser.LastActivityDate = DateTime.Now;
            return LoggedUser.CreationDate.ToString();
        }
        else
            return "";
    }

    [WebMethod(EnableSession = true)]
    public string GetUserWeatherStationName(string username)
    {
        LoggedUser = (MembershipUser)Session[username];
        if (LoggedUser != null)
        {
            ProfileCommon UserProfile = ProfileCommon.Create(LoggedUser.UserName) as ProfileCommon;
            LoggedUser.LastActivityDate = DateTime.Now;
            return UserProfile.WeatherStation;
        }
        else
            return "";
    }

    [WebMethod(EnableSession = true)]
    public string GetUserWeatherStationCode(string username)
    {
        LoggedUser = (MembershipUser)Session[username];
        if (LoggedUser != null)
        {
            ProfileCommon UserProfile = ProfileCommon.Create(LoggedUser.UserName) as ProfileCommon;
            LoggedUser.LastActivityDate = DateTime.Now;
            switch (UserProfile.WeatherStation)
            {
                case "Dukovany":
                case "T¯ebÌË":
                case "N·mÏöù":
                case "VelkÈ Mezi¯ÌËÌ":
                case "MoravskÈ BudÏjovice":
                    return "EZXX0033";
                case "KostelnÌ Myslov·":
                case "TelË":
                case "DaËice":
                    return "EZXX0024";
                case "P¯ibyslav":
                case "HavlÌËk˘v Brod":
                case "éÔ·r nad S·zavou":
                case "Jihlava":
                    return "EZXX0025";
                case "Brno":
                    return "EZXX0002";
                case "T·bor":
                    return "EZXX0015";
                case "Jind¯ich˘v Hradec":
                    return "EZXX0039";
                case "Ostrava":
                    return "EZXX0009";
                case "PlzeÚ":
                    return "EZXX0010";
                case "Praha":
                    return "EZXX0012";
                case "Liberec":
                    return "EZXX0023";
                case "»eskÈ BudÏjovice":
                    return "EZXX0030";
                case "Hradec Kr·lovÈ":
                case "Pardubice":
                    return "EZXX0034";
                case "HodonÌn":
                    return "EZXX0036";
                case "Olomouc":
                    return "EZXX0038";
                case "Karlovy Vary":
                    return "EZXX0045";
                case "Holeöov":
                case "ZlÌn":
                    return "EZXX0028";
                default:
                    return "";
            }
        }
        else
            return "";
    }

    [WebMethod(EnableSession = true)]
    public string GetUserWeatherStationWebCam(string username)
    {
        LoggedUser = (MembershipUser)Session[username];
        if (LoggedUser != null)
        {
            ProfileCommon UserProfile = ProfileCommon.Create(LoggedUser.UserName) as ProfileCommon;
            LoggedUser.LastActivityDate = DateTime.Now;
            switch (UserProfile.WeatherStation)
            {
                case "Dukovany":
                case "T¯ebÌË":
                case "N·mÏöù":
                case "VelkÈ Mezi¯ÌËÌ":
                case "MoravskÈ BudÏjovice":
                    return "http://www.chmi.cz/files/portal/docs/meteo/kam/prohlizec.html?cam=dukovany";
                case "KostelnÌ Myslov·":
                case "TelË":
                case "DaËice":
                case "Jind¯ich˘v Hradec":
                    return "http://www.chmi.cz/files/portal/docs/meteo/kam/prohlizec.html?cam=kostelni_myslova";
                case "P¯ibyslav":
                case "HavlÌËk˘v Brod":
                case "éÔ·r nad S·zavou":
                case "Jihlava":
                    return "http://www.chmi.cz/files/portal/docs/meteo/kam/prohlizec.html?cam=pribyslav";
                case "Brno":
                    return "http://www.chmi.cz/files/portal/docs/meteo/kam/prohlizec.html?cam=brno";
                case "T·bor":
                    return "http://www.chmi.cz/files/portal/docs/meteo/kam/prohlizec.html?cam=nadejkov";
                case "Ostrava":
                    return "http://www.chmi.cz/files/portal/docs/meteo/kam/prohlizec.html?cam=ostrava_poruba";
                case "PlzeÚ":
                    return "http://www.chmi.cz/files/portal/docs/meteo/kam/prohlizec.html?cam=plzen2";
                case "Praha":
                    return "http://www.chmi.cz/files/portal/docs/meteo/kam/prohlizec.html?cam=praha_libus2";
                case "Liberec":
                    return "http://www.chmi.cz/files/portal/docs/meteo/kam/prohlizec.html?cam=lklb";
                case "»eskÈ BudÏjovice":
                    return "http://www.chmi.cz/files/portal/docs/meteo/kam/prohlizec.html?cam=ceske_budejovice";
                case "Hradec Kr·lovÈ":
                case "Pardubice":
                    return "http://www.chmi.cz/files/portal/docs/meteo/kam/prohlizec.html?cam=hradec_kralove";
                case "Mikulov":
                case "B¯eclav":
                case "HodonÌn":
                    return "http://www.chmi.cz/files/portal/docs/meteo/kam/prohlizec.html?cam=dyjakovice";
                case "Olomouc":
                    return "http://www.chmi.cz/files/portal/docs/meteo/kam/prohlizec.html?cam=olomouc";
                case "Karlovy Vary":
                    return "http://www.chmi.cz/files/portal/docs/meteo/kam/prohlizec.html?cam=lkkv";
                case "Holeöov":
                case "ZlÌn":
                    return "http://www.chmi.cz/files/portal/docs/meteo/kam/prohlizec.html?cam=holesov";
                case "Svratouch":
                case "Hlinsko":
                    return "http://www.chmi.cz/files/portal/docs/meteo/kam/prohlizec.html?cam=svratouch";
                default:
                    return "";
            }
        }
        else
            return "";
    }

    [WebMethod(EnableSession = true)]
    public string ChangeUserPassword(string username, string oldpassword, string newpassword, string anewpassword)
    {
        LoggedUser = (MembershipUser)Session[username];
        if (LoggedUser != null)
        {
            if (newpassword == anewpassword)
            {
                try
                {
                    if (LoggedUser.ChangePassword(oldpassword, newpassword))
                        return "Heslo bylo zmÏnÏno";
                    else
                        return "Chyba p¯i pokusu o zmÏnu hesla.";
                }
                catch (Exception ex)
                {
                    return "Chyba p¯i pokusu o zmÏnu hesla: " + ex.Message;
                }
            }
            else
                return "Chyba, kontrolnÌ heslo nenÌ stejnÈ.";
        }
        else
            return "";
    }

    [WebMethod]
    public string SendClenstviEmail(string uzivjmeno, string emailadress, string heslo, string kontrolahesla, string fname, string sname, string obec, string kraj, string narozeni, string uroven, string clen, string disciplina, string pocasi)
    {
        if ((uzivjmeno != "") && (emailadress != "") && (heslo != "") && (kontrolahesla != "") && (fname != "") && (sname != "") && (obec != "") && (narozeni != "") && (kraj != "") && (uroven != "") && (disciplina != "") && (pocasi != ""))
        {
            if (heslo == kontrolahesla)
            {
                MembershipCreateStatus status;
                MyNewMembershipProvider.CreateUser(uzivjmeno, heslo, emailadress, "", "", true, null, out status);
                if (status == MembershipCreateStatus.Success)
                {
                    string chyba = "Uûivatel vytvo¯en.";
                    try
                    {
                        ProfileCommon UserProfile = ProfileCommon.Create(uzivjmeno) as ProfileCommon;
                        UserProfile.FirstName = fname;
                        UserProfile.LastName = sname;
                        UserProfile.TrainingLocality = obec;
                        UserProfile.TrainingRegion = kraj;
                        UserProfile.BirthDate = Convert.ToDateTime(narozeni);
                        UserProfile.SportClass = uroven;
                        UserProfile.MemberType = clen;
                        UserProfile.PreferredDiscipline = disciplina;
                        UserProfile.WeatherStation = pocasi;
                        UserProfile.Save();
                    }
                    catch (Exception ex1)
                    {
                        chyba = chyba + '\n' + "Chyba p¯i vytvo¯enÌ profilu uûivatele: " + ex1.Message;
                    }
                    string subject = "é·dost o registraci";
                    string body = "JmÈno: " + fname + '\n' + "P¯ÌjmenÌ: " + sname + '\n' + "UûivatelskÈ jmÈno: " + uzivjmeno + '\n' + "Heslo: " + heslo + '\n' + "Email: " + emailadress + '\n' + "Lokalita: " + obec + '\n' + "Kraj: " + kraj + '\n' + "Datum narozenÌ: " + narozeni + '\n' + "⁄roveÚ: " + uroven + '\n' + "Typ ËlenstvÌ: " + clen + '\n' + "Preferovan· disciplÌna: " + disciplina + '\n' + "ZobrazovanÈ poËasÌ pro: " + pocasi;
                    return chyba + SendPotvrzeniEmail(subject, body, "info@vysocinacycling.cz", emailadress);
                }
                else
                    return "Chyba p¯i vytvo¯enÌ uûivatele: " + status;
            }
            else
                return "Chyba, kontrolnÌ heslo nenÌ stejnÈ.";
        }
        else
            return "Chyba, nebyla vyplnÏna vöechna pole.";
    }

    [WebMethod(EnableSession = true)]
    public string SendUClenstviEmail(string username, string emailadress, string obec, string kraj, string uroven, string clen, string disciplina, string heslo, string pocasi)
    {
        if ((emailadress != "") && (obec != "") && (kraj != "") && (uroven != "") && (clen != "") && (disciplina != "") && (pocasi != "") && (heslo != ""))
        {
            LoggedUser = (MembershipUser)Session[username];
            if (LoggedUser != null)
            {
                if (MyNewMembershipProvider.ValidateUser(LoggedUser.UserName, heslo))
                {
                    string chyba = "RegistraËnÌ ˙daje byly upraveny.";
                    try
                    {
                        LoggedUser.Email = emailadress;
                        LoggedUser.Comment = "Upraveno " + DateTime.Now.ToString();
                        MyNewMembershipProvider.UpdateUser(LoggedUser);
                        ProfileCommon UserProfile = ProfileCommon.Create(LoggedUser.UserName) as ProfileCommon;
                        UserProfile.TrainingLocality = obec;
                        UserProfile.TrainingRegion = kraj;
                        UserProfile.SportClass = uroven;
                        UserProfile.MemberType = clen;
                        UserProfile.PreferredDiscipline = disciplina;
                        UserProfile.WeatherStation = pocasi;
                        UserProfile.Save();
                    }
                    catch (Exception ex1)
                    {
                        chyba = "Chyba p¯i vytvo¯enÌ profilu uûivatele: " + ex1.Message;
                    }
                    string subject = "⁄prava registraËnÌch ˙daj˘";
                    string body = "UûivatelskÈ jmÈno: " + LoggedUser.UserName + '\n' + "Heslo: " + heslo + '\n' + "Email: " + emailadress + '\n' + "Lokalita: " + obec + '\n' + "Kraj: " + kraj + '\n' + "⁄roveÚ: " + uroven + '\n' + "Typ ËlenstvÌ: " + clen + '\n' + "Preferovan· disciplÌna: " + disciplina + '\n' + "ZobrazovanÈ poËasÌ pro: " + pocasi;
                    return chyba + SendPotvrzeniEmail(subject, body, "info@vysocinacycling.cz", emailadress);
                }
                else
                    return "ChybnÈ heslo.";
            }
            else
                return "Uûivatel musÌ b˝t p¯ihl·öen";
        }
        else
            return "Chyba, nebyla vyplnÏna vöechna pole.";
    }

    [WebMethod(EnableSession = true)]
    public string AddUserRace(string username, string datum, string misto, string nazev, string delka, string cas, string umistenicelkove, string kategorie, string umistenikategorie)
    {
        if ((datum != "") && (misto != "") && (nazev != "") && (delka != "") && (cas != "") && (umistenicelkove != "") && (kategorie != "") && (umistenikategorie != ""))
        {
            LoggedUser = (MembershipUser)Session[username];
            if (LoggedUser != null)
            {
                try {
                    using (HostingEnvironment.Impersonate())
                    using (SqlConnection db = this.OpenDatabase())
                    using (SqlCommand cmd = new SqlCommand("INSERT INTO UserRaces (UserName, LastUpdate, RaceDate, RaceVenue, RaceName, RaceDistance, RaceTime, RaceOverallPosition, UserCategory, RaceCategoryPosition) VALUES (@UserName, GETDATE(), @RaceDate, @RaceVenue, @RaceName, @RaceDistance, @RaceTime, @RaceOverallPosition, @UserCategory, @RaceCategoryPosition)", db))
                    {
                        cmd.Parameters.Add("@UserName", SqlDbType.VarChar, 100).Value = username;
                        cmd.Parameters.Add("@RaceDate", SqlDbType.Date).Value = datum;
                        cmd.Parameters.Add("@RaceVenue", SqlDbType.VarChar, 100).Value = misto;
                        cmd.Parameters.Add("@RaceName", SqlDbType.VarChar, 100).Value = nazev;
                        cmd.Parameters.Add("@RaceDistance", SqlDbType.SmallInt).Value = delka;
                        cmd.Parameters.Add("@RaceTime", SqlDbType.Time).Value = cas;
                        cmd.Parameters.Add("@RaceOverallPosition", SqlDbType.SmallInt).Value = umistenicelkove;
                        cmd.Parameters.Add("@UserCategory", SqlDbType.VarChar, 100).Value = kategorie;
                        cmd.Parameters.Add("@RaceCategoryPosition", SqlDbType.SmallInt).Value = umistenikategorie;
                        int rowCount = cmd.ExecuteNonQuery();
                        if (rowCount == 0)
                        {
                            return "Chyba, z·znam nebyl p¯id·n";
                        }
                        else
                        {
                            return "Z·vod byl p¯id·n.";
                        }
                    }
                }
                catch (Exception ex)
                {
                    return "Chyba, pole nebyla spr·vnÏ vyplnÏna. " + ex.Message;
                }
            }
            else
                return "Uûivatel musÌ b˝t p¯ihl·öen";
        }
        else
            return "Chyba, nebyla vyplnÏna vöechna pole.";
    }

    [WebMethod(EnableSession = true)]
    public string GetUserRacesTable(string username)
    {
        string userstable = "<table>";
        userstable += "<tr style='font-weight: bold; font-style: italic; font-size: small;'>";
        userstable += "<td width='70px'>Datum</td>";
        userstable += "<td width='140px'>MÌsto kon·nÌ</td>";
        userstable += "<td width='180px'>N·zev z·vodu</td>";
        userstable += "<td width='70px' align='center'>DÈlka [km]</td>";
        userstable += "<td width='60px' align='center'>»as</td>";
        userstable += "<td width='80px' align='center'>CelkovÈ umÌstÏnÌ</td>";
        userstable += "<td width='90px'>Kategorie</td>";
        userstable += "<td width='70px' align='center'>UmÌstÏnÌ v kategorii</td>";
        userstable += "</tr>";

        LoggedUser = (MembershipUser)Session[username];
        if (LoggedUser != null)
            try
            {
                using (HostingEnvironment.Impersonate())
                using (SqlConnection db = this.OpenDatabase())
                using (SqlCommand cmd = new SqlCommand("SELECT UserName, LastUpdate, RaceDate, RaceVenue, RaceName, RaceDistance, RaceTime, RaceOverallPosition, UserCategory, RaceCategoryPosition FROM UserRaces WHERE UserName = @UserName ORDER BY RaceDate DESC", db))
                {
                    cmd.Parameters.Add("@UserName", SqlDbType.VarChar, 100).Value = username;
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            userstable += "<tr>";
                            userstable += "<td>" + String.Format("{0:d}", reader["RaceDate"]) + "</td>";
                            userstable += "<td>" + reader["RaceVenue"] + "</td>";
                            userstable += "<td>" + reader["RaceName"] + "</td>";
                            userstable += "<td align='center'>" + reader["RaceDistance"] + "</td>";
                            userstable += "<td align='center'>" + reader["RaceTime"] + "</td>";
                            userstable += "<td align='center'>" + reader["RaceOverallPosition"] + "</td>";
                            userstable += "<td>" + reader["UserCategory"] + "</td>";
                            userstable += "<td align='center'>" + reader["RaceCategoryPosition"] + "</td>";
                            userstable += "</tr>";
                        }
                    }
                }
            }
            catch { throw; }

        userstable += "</table>";
        return userstable;
    }

    [WebMethod(EnableSession = true)]
    public void SetRacesYear(string racesYear)
    {
        Session.Remove("RacesYear");
        Session.Add("RacesYear", racesYear);
    }

    [WebMethod]
    public string GetRegistrationsTable()
    {
        string category = "";
        string registrationstable = "";
        try
        {
            using (HostingEnvironment.Impersonate())
            using (SqlConnection db = this.OpenDatabase())
            using (SqlCommand cmd = new SqlCommand("SELECT rr.ID_RACE_REGISTRATION_RESULT, rr.START_NUMBER, rr.PRESENTED, rr.FINISH_TIME, cm.FIRST_NAME, cm.LAST_NAME, cm.BIRTH_DATE, c.CODE, c.NAME as CATEGORY, r.NAME as RACE, rr.TEAM, cm.ADDRESS, a.REGISTRATION_END, rr.REGISTRATION_DATE FROM RaceRegistrationResults rr, RaceCompetitors cm, RaceCategory c, Races r, RaceActions a WHERE cm.ID_RACE_COMPETITOR = rr.ID_RACE_COMPETITOR AND c.ID_RACE_CATEGORY = rr.ID_RACE_CATEGORY AND c.ID_RACE = r.ID_RACE AND a.ID_RACE_ACTION = r.ID_RACE_ACTION AND a.ID_RACE_ACTION = 6 ORDER BY c.ID_RACE_CATEGORY ASC, c.NAME DESC, rr.START_NUMBER ASC, rr.REGISTRATION_DATE ASC", db))
            {
                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    int registered = 0;
                    int prezented = 0;
                    while (reader.Read())
                    {
                        if (reader["CATEGORY"].ToString() != category)
                        {
                            if (category != "")
                            {
                                registrationstable += "</table>";
                                registrationstable += "<br />";
                                registrationstable += "P¯ihl·öeno / Prezentov·no ( " + registered.ToString() + " / " + prezented.ToString() + " )";
                                registrationstable += "<br />";
                                registrationstable += "</div>";
                                registrationstable += "<br />";
                            }
                            registrationstable += "<div id=\"i" + reader["CODE"] + "\">";
                            registrationstable += "<table><tr><td width=\"720px\"><h3>" + reader["CATEGORY"] + " - " + reader["RACE"] + "</h3></td>";
                            registrationstable += "<td class='notPrintable'><input id=\"registered" + reader["CODE"] + "\" type=\"button\" runat=\"server\" value=\"Tisk registrovan˝ch\" class=\"printCategoryRegistered userRoleEditor\" style=\"height:30px; width:100px; font-size:8px; padding:1px; display:none;\" /></td>";
                            registrationstable += "<td class='notPrintable'><input id=\"presented" + reader["CODE"] + "\" type=\"button\" runat=\"server\" value=\"Tisk prezentovan˝ch\" class=\"printCategoryPresented userRoleEditor\" style=\"height:30px; width:100px; font-size:8px; padding:1px; display:none;\" /></td></tr></table>";
                            registrationstable += "<table>";
                            registrationstable += "<tr style='font-weight: bold; font-style: italic; font-size: small;'>";
                            registrationstable += "<td width='40px'>St.Ë.</td>";
                            registrationstable += "<td width='80px'>JmÈno</td>";
                            registrationstable += "<td width='80px'>P¯ÌjmenÌ</td>";
                            registrationstable += "<td width='60px'>RoËnÌk</td>";
                            registrationstable += "<td width='180px'>T˝m</td>";
                            registrationstable += "<td width='220px' class='notPrintable'>MÏsto (Kraj)</td>";
                            registrationstable += "<td width='100px' class='notPrintable'>Stav</td>";
                            registrationstable += "<td width='20px' class='notPrintable'></td>";
                            registrationstable += "<td width='20px' class='notPrintable'></td>";
                            registrationstable += "<td width='20px' class='notPrintable'></td>";
                            registrationstable += "</tr>";
                            registered = 0;
                            prezented = 0;
                        }
                        registered++;
                        if ((bool)reader["PRESENTED"])
                        {
                            prezented++;
                            registrationstable += "<tr>";
                        } else
                        {
                            registrationstable += "<tr class='notPresented'>";
                        }
                        registrationstable += "<td>" + ((reader["START_NUMBER"] == null) ? "" : reader["START_NUMBER"].ToString()) + "</td>";
                        registrationstable += "<td>" + reader["FIRST_NAME"] + "</td>";
                        registrationstable += "<td>" + reader["LAST_NAME"] + "</td>";
                        registrationstable += "<td>" + ((DateTime)reader["BIRTH_DATE"]).Year.ToString() + "</td>";
                        if (reader["TEAM"] == null || reader["TEAM"].ToString() == "")
                        {
                            registrationstable += "<td>" + reader["ADDRESS"] + "</td>";
                        } else {
                            registrationstable += "<td>" + reader["TEAM"] + "</td>";
                        }
                        registrationstable += "<td class='notPrintable'>" + reader["ADDRESS"] + "</td>";
                        registrationstable += "<td class='notPrintable'" + ((bool)reader["PRESENTED"] ? (reader["FINISH_TIME"].ToString() == "" ? (" style=\"color:#008000\">Presentov·n") : (" style=\"color:#0066CC\">V cÌli")) : (((DateTime)reader["REGISTRATION_END"] > (DateTime)reader["REGISTRATION_DATE"]) ? (">P¯ihl·öen") : (" style=\"color:#FF3300\">Po termÌnu"))) + "</td>";
                        registrationstable += "<td class='notPrintable'><input id=\"regOk" + reader["ID_RACE_REGISTRATION_RESULT"] + "\" type=\"button\" runat=\"server\" value=\"OK\" class=\"regOk userRoleEditor\" style=\"height:30px; width:30px; font-size:8px; padding:1px; display:none;\" /></td>";
                        registrationstable += "<td class='notPrintable'><input id=\"regNok" + reader["ID_RACE_REGISTRATION_RESULT"] + "\" type=\"button\" runat=\"server\" value=\"NOK\" class=\"regNok userRoleEditor\" style=\"height:30px; width:30px; font-size:8px; padding:1px; display:none;\" /></td>";
                        registrationstable += "<td class='notPrintable'><input id=\"finish" + reader["ID_RACE_REGISTRATION_RESULT"] + "\" type=\"button\" runat=\"server\" value=\"Finish\" class=\"regFinish userRoleEditor\" style=\"height:30px; width:30px; font-size:8px; padding:1px; display:none;\" /></td>";
                        registrationstable += "</tr>";
                        category = reader["CATEGORY"].ToString();
                    }
                    registrationstable += "</table>";
                    registrationstable += "<br />";
                    registrationstable += "P¯ihl·öeno / Prezentov·no ( " + registered.ToString() + " / " + prezented.ToString() + " )";
                    registrationstable += "<br />";
                    registrationstable += "</div>";
                }
            }
        }
        catch { throw; }
        return registrationstable;
    }

    [WebMethod]
    public string SetStartTime(int type, int startInterval)
    {
        try
        {
            using (HostingEnvironment.Impersonate())
            using (SqlConnection db = this.OpenDatabase())
            using (SqlCommand cmd = new SqlCommand("SELECT rr.ID_RACE_REGISTRATION_RESULT, r.START_TIME FROM RaceRegistrationResults rr, RaceCompetitors cm, RaceCategory c, Races r, RaceActions a WHERE cm.ID_RACE_COMPETITOR = rr.ID_RACE_COMPETITOR AND c.ID_RACE_CATEGORY = rr.ID_RACE_CATEGORY AND c.ID_RACE = r.ID_RACE AND a.ID_RACE_ACTION = r.ID_RACE_ACTION AND a.ID_RACE_ACTION = 6 ORDER BY rr.START_NUMBER ASC", db))
            {
                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    int startIncrement = 0;
                    while (reader.Read())
                    {
                        DateTime startTime = ((DateTime)reader["START_TIME"]).AddSeconds(startIncrement);
                        int idRaceRegistrationResult = ((int)reader["ID_RACE_REGISTRATION_RESULT"]);
                        using (SqlCommand updatecmd = new SqlCommand("UPADTE RaceRegistrationResults SET START_TIME = @StartTime WHERE ID_RACE_REGISTRATION_RESULT = @IdRaceRegistrationResult", db))
                        {
                            updatecmd.Parameters.Add("@StartTime", SqlDbType.DateTime).Value = startTime;
                            updatecmd.Parameters.Add("@IdRaceRegistrationResult", SqlDbType.Int).Value = idRaceRegistrationResult;
                            int rowCount = updatecmd.ExecuteNonQuery();
                        }
                        startIncrement += startInterval;
                    }
                }
            }
        }
        catch { throw; }
        return "";
    }

    [WebMethod]
    public string GetStartTable()
    {
        string category = "";
        string registrationstable = "";
        try
        {
            using (HostingEnvironment.Impersonate())
            using (SqlConnection db = this.OpenDatabase())
            using (SqlCommand cmd = new SqlCommand("SELECT rr.ID_RACE_REGISTRATION_RESULT, rr.START_NUMBER, rr.PRESENTED, rr.START_TIME, rr.FINISH_TIME, cm.FIRST_NAME, cm.LAST_NAME, cm.BIRTH_DATE, c.CODE, c.NAME as CATEGORY, r.NAME as RACE, rr.TEAM, cm.ADDRESS, a.REGISTRATION_END, rr.REGISTRATION_DATE FROM RaceRegistrationResults rr, RaceCompetitors cm, RaceCategory c, Races r, RaceActions a WHERE cm.ID_RACE_COMPETITOR = rr.ID_RACE_COMPETITOR AND c.ID_RACE_CATEGORY = rr.ID_RACE_CATEGORY AND c.ID_RACE = r.ID_RACE AND a.ID_RACE_ACTION = r.ID_RACE_ACTION AND a.ID_RACE_ACTION = 6 ORDER BY rr.START_TIME ASC, rr.START_NUMBER ASC", db))
            {
                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    int registered = 0;
                    int prezented = 0;
                    while (reader.Read())
                    {
                        if (reader["CATEGORY"].ToString() != category)
                        {
                            if (category != "")
                            {
                                registrationstable += "</table>";
                                registrationstable += "<br />";
                                registrationstable += "P¯ihl·öeno / Prezentov·no ( " + registered.ToString() + " / " + prezented.ToString() + " )";
                                registrationstable += "<br />";
                                registrationstable += "</div>";
                                registrationstable += "<br />";
                            }
                            registrationstable += "<div id=\"i" + reader["CODE"] + "\">";
                            registrationstable += "<table><tr><td width=\"720px\"><h3>" + reader["CATEGORY"] + " - " + reader["RACE"] + "</h3></td>";
                            registrationstable += "<td class='notPrintable'><input id=\"registered" + reader["CODE"] + "\" type=\"button\" runat=\"server\" value=\"Tisk registrovan˝ch\" class=\"printCategoryRegistered userRoleEditor\" style=\"height:30px; width:100px; font-size:8px; padding:1px; display:none;\" /></td>";
                            registrationstable += "<td class='notPrintable'><input id=\"presented" + reader["CODE"] + "\" type=\"button\" runat=\"server\" value=\"Tisk prezentovan˝ch\" class=\"printCategoryPresented userRoleEditor\" style=\"height:30px; width:100px; font-size:8px; padding:1px; display:none;\" /></td></tr></table>";
                            registrationstable += "<table>";
                            registrationstable += "<tr style='font-weight: bold; font-style: italic; font-size: small;'>";
                            registrationstable += "<td width='40px'>St.Ë.</td>";
                            registrationstable += "<td width='80px'>JmÈno</td>";
                            registrationstable += "<td width='80px'>P¯ÌjmenÌ</td>";
                            registrationstable += "<td width='60px'>RoËnÌk</td>";
                            registrationstable += "<td width='180px'>T˝m</td>";
                            registrationstable += "<td width='220px' class='notPrintable'>MÏsto (Kraj)</td>";
                            registrationstable += "<td width='100px' class='notPrintable'>Stav</td>";
                            registrationstable += "<td width='20px' class='notPrintable'></td>";
                            registrationstable += "<td width='20px' class='notPrintable'></td>";
                            registrationstable += "<td width='20px' class='notPrintable'></td>";
                            registrationstable += "</tr>";
                            registered = 0;
                            prezented = 0;
                        }
                        registered++;
                        if ((bool)reader["PRESENTED"])
                        {
                            prezented++;
                            registrationstable += "<tr>";
                        }
                        else
                        {
                            registrationstable += "<tr class='notPresented'>";
                        }
                        registrationstable += "<td>" + ((reader["START_NUMBER"] == null) ? "" : reader["START_NUMBER"].ToString()) + "</td>";
                        registrationstable += "<td>" + reader["FIRST_NAME"] + "</td>";
                        registrationstable += "<td>" + reader["LAST_NAME"] + "</td>";
                        registrationstable += "<td>" + ((DateTime)reader["BIRTH_DATE"]).Year.ToString() + "</td>";
                        if (reader["TEAM"] == null || reader["TEAM"].ToString() == "")
                        {
                            registrationstable += "<td>" + reader["ADDRESS"] + "</td>";
                        }
                        else
                        {
                            registrationstable += "<td>" + reader["TEAM"] + "</td>";
                        }
                        registrationstable += "<td class='notPrintable'>" + reader["ADDRESS"] + "</td>";
                        registrationstable += "<td class='notPrintable'" + ((bool)reader["PRESENTED"] ? (reader["FINISH_TIME"].ToString() == "" ? (" style=\"color:#008000\">Presentov·n") : (" style=\"color:#0066CC\">V cÌli")) : (((DateTime)reader["REGISTRATION_END"] > (DateTime)reader["REGISTRATION_DATE"]) ? (">P¯ihl·öen") : (" style=\"color:#FF3300\">Po termÌnu"))) + "</td>";
                        registrationstable += "<td class='notPrintable'><input id=\"regOk" + reader["ID_RACE_REGISTRATION_RESULT"] + "\" type=\"button\" runat=\"server\" value=\"OK\" class=\"regOk userRoleEditor\" style=\"height:30px; width:30px; font-size:8px; padding:1px; display:none;\" /></td>";
                        registrationstable += "<td class='notPrintable'><input id=\"regNok" + reader["ID_RACE_REGISTRATION_RESULT"] + "\" type=\"button\" runat=\"server\" value=\"NOK\" class=\"regNok userRoleEditor\" style=\"height:30px; width:30px; font-size:8px; padding:1px; display:none;\" /></td>";
                        registrationstable += "<td class='notPrintable'><input id=\"finish" + reader["ID_RACE_REGISTRATION_RESULT"] + "\" type=\"button\" runat=\"server\" value=\"Finish\" class=\"regFinish userRoleEditor\" style=\"height:30px; width:30px; font-size:8px; padding:1px; display:none;\" /></td>";
                        registrationstable += "</tr>";
                        category = reader["CATEGORY"].ToString();
                    }
                    registrationstable += "</table>";
                    registrationstable += "<br />";
                    registrationstable += "P¯ihl·öeno / Prezentov·no ( " + registered.ToString() + " / " + prezented.ToString() + " )";
                    registrationstable += "<br />";
                    registrationstable += "</div>";
                }
            }
        }
        catch { throw; }
        return registrationstable;
    }

    [WebMethod]
    public string GetFinishTable()
    {
        return appService.GetFinishTable(6);
    }

    [WebMethod]
    public string SetPresented(string idregistrace, string startNumber, string startFee)
    {
        try
        {
            using (HostingEnvironment.Impersonate())
            using (SqlConnection db = this.OpenDatabase())
            using (SqlCommand cmd = new SqlCommand("UPDATE RaceRegistrationResults SET PRESENTED = 1, START_NUMBER = @StartNumber, START_FEE = @StartFee, START_TIME = (SELECT TOP(1) r.START_TIME FROM RaceRegistrationResults rr JOIN RaceCategory rc on rr.ID_RACE_CATEGORY = rc.ID_RACE_CATEGORY JOIN Races r on rc.ID_RACE = r.ID_RACE where rr.ID_RACE_REGISTRATION_RESULT = @IdRegistrace) WHERE ID_RACE_REGISTRATION_RESULT = @IdRegistrace", db))
            {
                cmd.Parameters.Add("@IdRegistrace", SqlDbType.Int).Value = idregistrace;
                cmd.Parameters.Add("@StartNumber", SqlDbType.Int).Value = startNumber;
                cmd.Parameters.Add("@StartFee", SqlDbType.Int).Value = startFee;
                int rowCount = cmd.ExecuteNonQuery();
                return (rowCount == 1) ? "Z·vodnÌk je presentov·n." : "Chyba p¯i pokusu o presentaci z·vodnÌka.";
            }
        }
        catch { throw; }
    }

    [WebMethod]
    public string SetRegistered(string idregistrace)
    {
        try
        {
            using (HostingEnvironment.Impersonate())
            using (SqlConnection db = this.OpenDatabase())
            using (SqlCommand cmd = new SqlCommand("UPDATE RaceRegistrationResults SET PRESENTED = 0, START_FEE = 0, START_NUMBER = null WHERE ID_RACE_REGISTRATION_RESULT = @IdRegistrace", db))
            {
                cmd.Parameters.Add("@IdRegistrace", SqlDbType.Int).Value = idregistrace;
                int rowCount = cmd.ExecuteNonQuery();
                return (rowCount == 1) ? "Z·vodnÌk je ve stavu 'P¯ihl·öen'." : "Chyba p¯i pokusu o zmÏnu stavu na 'P¯ihl·öen'.";
            }
        }
        catch { throw; }
    }

    [WebMethod]
    public string[] GetRegistered(string idregistrace)
    {
        try
        {
            using (HostingEnvironment.Impersonate())
            using (SqlConnection db = this.OpenDatabase())
            using (SqlCommand cmd = new SqlCommand("SELECT cm.FIRST_NAME, cm.LAST_NAME, cm.BIRTH_DATE, c.CODE, c.START_FEE, rr.DISCOUNTED_FEE, rr.FINISH_TIME, rr.GROUP_ORDER, rr.REGISTRATION_DATE, a.REGISTRATION_END FROM RaceRegistrationResults rr, RaceCompetitors cm, RaceCategory c, Races r, RaceActions a WHERE cm.ID_RACE_COMPETITOR = rr.ID_RACE_COMPETITOR AND c.ID_RACE_CATEGORY = rr.ID_RACE_CATEGORY AND c.ID_RACE = r.ID_RACE AND r.ID_RACE_ACTION = a.ID_RACE_ACTION AND rr.ID_RACE_REGISTRATION_RESULT = @IdRegistrace", db))
            {
                cmd.Parameters.Add("@IdRegistrace", SqlDbType.Int).Value = idregistrace;
                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    if (reader.Read())
                    {
                        int startFee = (int) reader["START_FEE"];
                        DateTime finishTime = reader["FINISH_TIME"].ToString() == "" ? DateTime.Now : (DateTime) reader["FINISH_TIME"];
                        int groupOrder = reader["GROUP_ORDER"].ToString() == "" ? 1 : (int) reader["GROUP_ORDER"];
                        if (reader["DISCOUNTED_FEE"].ToString() != "")
                        {
                            startFee = (int) reader["DISCOUNTED_FEE"];
                        }
                        else if (((DateTime) reader["REGISTRATION_DATE"]) > ((DateTime) reader["REGISTRATION_END"]))
                        {
                            startFee += 50;
                        }
                        return new string[] { (reader["FIRST_NAME"] + " " + reader["LAST_NAME"] + " (" + ((DateTime)reader["BIRTH_DATE"]).ToString("dd.MM.yyyy") + ") - " + reader["CODE"]), startFee.ToString(), finishTime.ToString("dd.MM.yyyy HH:mm:ss"), groupOrder.ToString() };
                    }
                    else
                    {
                        return new string[] { "", "" };
                    }
                }
            }
        }
        catch { throw; }
    }

    [WebMethod]
    public string SetFinish(string idregistrace, string finishTime, string groupOrder)
    {
        try
        {
            using (HostingEnvironment.Impersonate())
            using (SqlConnection db = this.OpenDatabase())
            using (SqlCommand cmd = new SqlCommand("UPDATE RaceRegistrationResults SET FINISH_TIME = @FinishTime, GROUP_ORDER = @GroupOrder WHERE ID_RACE_REGISTRATION_RESULT = @IdRegistrace", db))
            {
                cmd.Parameters.Add("@IdRegistrace", SqlDbType.Int).Value = idregistrace;
                cmd.Parameters.Add("@FinishTime", SqlDbType.DateTime).Value = finishTime;
                cmd.Parameters.Add("@GroupOrder", SqlDbType.Int).Value = groupOrder;
                int rowCount = cmd.ExecuteNonQuery();
                return (rowCount == 1) ? "CÌlov˝ Ëas byl uloûen." : "Chyba p¯i pokusu o uloûenÌ cÌlovÈho Ëasu.";
            }
        }
        catch { throw; }
    }

    [WebMethod(EnableSession = true)]
    public string GetUsersRacesTable(string usermembertype, string classname, string classpaging)
    {
        string userstable = "";
        if (usermembertype != null)
            try
            {
                using (HostingEnvironment.Impersonate())
                using (SqlConnection db = this.OpenDatabase())
                using (SqlCommand cmd = new SqlCommand("SELECT UserRaces.UserName, UserProfiles.FirstName, UserProfiles.LastName, UserRaces.LastUpdate, UserRaces.RaceDate, UserRaces.RaceVenue, UserRaces.RaceName, UserRaces.RaceDistance, UserRaces.RaceTime, UserRaces.RaceOverallPosition, UserRaces.UserCategory, UserRaces.RaceCategoryPosition FROM UserRaces, UserProfiles WHERE UserRaces.UserName = UserProfiles.UserName AND UserProfiles.MemberType = @UserMemberType AND DATEPART(yyyy, UserRaces.RaceDate) = @UserRacesYear ORDER BY UserRaces.UserName ASC, UserRaces.RaceOverallPosition ASC, UserRaces.RaceCategoryPosition ASC, UserRaces.RaceDate ASC", db))
                {
                    cmd.Parameters.Add("@UserMemberType", SqlDbType.VarChar, 100).Value = usermembertype;

                    string RacesYear = DateTime.Now.Year.ToString();
                    if (Session["RacesYear"] != null)
                        RacesYear = Session["RacesYear"].ToString();
                    cmd.Parameters.Add("@UserRacesYear", SqlDbType.VarChar, 100).Value = RacesYear;

                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        string username = "";
                        userstable = "";
                        while (reader.Read())
                        {
                            string actualusername = String.Format("{0}", reader["UserName"]);
                            if (actualusername != username)
                            {
                                if (username == "")
                                    userstable = "<ul class='" + classpaging + "'><li><div class='" + classname + "'>";
                                else
                                {
                                    userstable += "</table>";
                                    userstable += "</div></li>";
                                    userstable += "<li><div class='" + classname + "'>";
                                }
                                userstable += "<div style='height: 30px;'>";
                                userstable += String.Format("JmÈno: <strong>{0} {1}</strong>", reader["FirstName"], reader["LastName"]);
                                userstable += "</div>";
                                userstable += "<table>";
                                userstable += "<tr style='font-weight: bold; font-style: italic; font-size: 11px;'>";
                                userstable += "<td width='70px'>Datum</td>";
                                userstable += "<td width='160px'>MÌsto kon·nÌ</td>";
                                userstable += "<td width='250px'>N·zev z·vodu</td>";
                                userstable += "<td width='70px' align='center'>DÈlka [km]</td>";
                                userstable += "<td width='60px' align='center'>»as</td>";
                                userstable += "<td width='80px' align='center'>CelkovÈ umÌstÏnÌ</td>";
                                userstable += "<td width='120px'>Kategorie</td>";
                                userstable += "<td width='70px' align='center'>UmÌstÏnÌ v kategorii</td>";
                                userstable += "</tr>";
                            }
                            userstable += "<tr>";
                            userstable += "<td>" + String.Format("{0:dd.MM.yyyy}", reader["RaceDate"]) + "</td>";
                            userstable += "<td>" + reader["RaceVenue"] + "</td>";
                            userstable += "<td>" + reader["RaceName"] + "</td>";
                            userstable += "<td align='center'>" + reader["RaceDistance"] + "</td>";
                            userstable += "<td align='center'>" + reader["RaceTime"] + "</td>";
                            userstable += "<td align='center'>" + reader["RaceOverallPosition"] + "</td>";
                            userstable += "<td>" + reader["UserCategory"] + "</td>";
                            userstable += "<td align='center'>" + reader["RaceCategoryPosition"] + "</td>";
                            userstable += "</tr>";
                            username = actualusername;
                        }
                        if (userstable != "")
                        {
                            userstable += "</table>";
                            userstable += "</div></li><ul>";
                        }
                    }
                }
            }
            catch { throw; }
        return userstable;
    }

    [WebMethod(EnableSession = true)]
    public string DeleteUserRace(string username, string datum, string nazev, string delka)
    {
        if ((datum != "") && (nazev != "") && (delka != "") && (username != ""))
        {
            LoggedUser = (MembershipUser)Session[username];
            if (LoggedUser != null)
            {
                try {
                    using (HostingEnvironment.Impersonate())
                    using (SqlConnection db = this.OpenDatabase())
                    using (SqlCommand cmd = new SqlCommand("DELETE FROM UserRaces WHERE UserName = @UserName AND RaceDate = @RaceDate AND RaceName = @RaceName AND RaceDistance = @RaceDistance", db))
                    {
                        cmd.Parameters.Add("@UserName", SqlDbType.VarChar, 100).Value = username;
                        cmd.Parameters.Add("@RaceDate", SqlDbType.Date).Value = datum;
                        cmd.Parameters.Add("@RaceDistance", SqlDbType.SmallInt).Value = delka;
                        cmd.Parameters.Add("@RaceName", SqlDbType.VarChar, 100).Value = nazev;
                        int rowCount = cmd.ExecuteNonQuery();
                        if (rowCount == 0)
                        {
                            return "é·dn˝ z·znam nebyl smaz·n";
                        }
                        else if (rowCount == 1)
                        {
                            return "Byl smaz·n 1 z·znam.";
                        }
                        else
                        {
                            return "Pozor, bylo smaz·no vÌce z·znam˘!!!";
                        }
                    }
                }
                catch { throw; }
            }
            else
                return "Uûivatel musÌ b˝t p¯ihl·öen";
        }
        else
            return "Chyba, nebyla vyplnÏna vöechna pole.";
    }

    [WebMethod(EnableSession = true)]
    public string DeleteLoggedUser(string username, string heslo)
    {
        LoggedUser = (MembershipUser)Session[username];
        if (LoggedUser != null)
        {
            if (MyNewMembershipProvider.ValidateUser(LoggedUser.UserName, heslo))
            {
                string user = LoggedUser.UserName;
                string emailadress = LoggedUser.Email;

                ProfileCommon UserProfile = ProfileCommon.Create(LoggedUser.UserName) as ProfileCommon;
                string jmeno = UserProfile.FirstName + " " + UserProfile.LastName;

                if (MyNewMembershipProvider.DeleteUser(user, true))
                {
                    string subject = "ZruöenÌ registrace Ëlena " + jmeno;
                    string body = "UûivatelskÈ jmÈno: " + user + '\n' + '\n' + "Email: " + emailadress;
                    return "Uûivatel byl smaz·n." + SendPotvrzeniEmail(subject, body, "info@vysocinacycling.cz", emailadress);
                }
                else
                    return "Uûivatele se nepoda¯ilo smazat.";
            }
            return "ChybnÈ heslo.";
        }
        else
            return "Uûivatel musÌ b˝t p¯ihl·öen";
    }

    [WebMethod]
    public string SendZadostEmail(string jmeno, string obdobi, string uroven, string emailadress, string typzadosti)
    {
        if ((emailadress != "") && (jmeno != "") && (obdobi != "") && (uroven != "") && (typzadosti != ""))
        {
            string body = "JmÈno: " + jmeno + '\n' + "ObdobÌ: " + obdobi + '\n' + "⁄roveÚ: " + uroven + '\n' + "Email: " + emailadress;
            return SendPotvrzeniEmail(typzadosti, body, "info@vysocinacycling.cz", emailadress);
        }
        else
            return "Nebyla vyplnÏna vöechna pole.";
    }

    [WebMethod]
    public string SendKempEmail(string jmeno, string uroven, string typ, string pozn, string datumod, string datumdo, string emailadress, string typzadosti)
    {
        if ((emailadress != "") && (jmeno != "") && (uroven != "") && (typ != "") && (datumod != "") && (datumdo != "") && (typzadosti != ""))
        {
            string body = "JmÈno: " + jmeno + '\n' + "⁄roveÚ: " + uroven + '\n' + "M·m z·jem o: " + typ + '\n' + "Od: " + datumod + '\n' + "Do: " + datumdo + '\n' + "Pozn·mka: " + pozn + '\n' + "Email: " + emailadress;
            return SendPotvrzeniEmail(typzadosti, body, "info@vysocinacycling.cz", emailadress);
        }
        else
            return "Nebyla vyplnÏna vöechna pole.";
    }

    [WebMethod]
    public string SendMTBZavodEmail(string jmeno, string prijmeni, string narozeni, string kategorie, string klub, string licence, string adresa, string emailadress, string telefon, string typzadosti)
    {
        if ((jmeno != "") && (prijmeni != "") && (narozeni != "") && (kategorie != "") && (adresa != "") && (emailadress != "") && (typzadosti != ""))
        {
            string body = "JmÈno: " + jmeno + '\n' + "P¯ÌjmenÌ: " + prijmeni + '\n' + "Datum narozenÌ: " + narozeni + '\n' + "Kategorie: " + kategorie + '\n' + "Klub: " + klub + '\n' + "»Ìslo licence: " + licence + '\n' + "Adresa: " + adresa + '\n' + "Email: " + emailadress + '\n' + "Telefon: " + telefon;
            return SendPotvrzeniEmail(typzadosti, body, "mtb@vysocinacycling.cz", emailadress);
        }
        else
            return "Nebyla vyplnÏna vöechna pole.";
    }

    [WebMethod]
    public string SendSilnicniZavodEmail(string jmeno, string prijmeni, string narozeni, string kategorie, string klub, string licence, string mesto, string emailadress, string telefon, string skola, string popis, string typzadosti, bool neposlatemail)
    {
        if ((jmeno != "") && (prijmeni != "") && (narozeni != "") && (kategorie != "") && (mesto != "") && (emailadress != "") && (typzadosti != ""))
        {
            string body = "JmÈno: " + jmeno + '\n' + "P¯ÌjmenÌ: " + prijmeni + '\n' + "Datum narozenÌ: " + narozeni + '\n' + "Kategorie: " + kategorie + '\n' + "Klub: " + klub + '\n' + "»Ìslo a kÛd licence: " + licence + '\n' + "MÏsto: " + mesto + '\n' + "Email: " + emailadress + '\n' + "Telefon: " + telefon;
            string res = SaveSilnicniZavodReqistration(jmeno, prijmeni, narozeni, kategorie, klub, licence, mesto, emailadress, telefon, skola, popis);
            if (!neposlatemail)
            {
                return res + '\n' + SendPotvrzeniEmail(typzadosti, body, "silnice@vysocinacycling.cz", emailadress);
            } else
            {
                return res;
            }
        }
        else
            return "Nebyla vyplnÏna vöechna povin· pole.";
    }

    [WebMethod]
    public string SendPozvanka(string subject, string body)
    {
        string result = "";
        try
        {
            using (HostingEnvironment.Impersonate())
            using (SqlConnection db = this.OpenDatabase())
            using (SqlCommand cmd = new SqlCommand("SELECT DISTINCT EMAIL FROM RaceCompetitors", db))
            {
                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    int sendItems = 0;
                    int allItems = 0;
                    while (reader.Read())
                    {
                        string email = (string)reader["EMAIL"];
                        string send = SendEmail(subject, body, "silnice@vysocinacycling.cz", email);
                        if (send != null)
                        {
                            result += send + "\n";
                        } else
                        {
                            sendItems++;
                        }
                        allItems++;
                    }
                    return result + "\n Odesl·no email˘: " + sendItems.ToString() + " z " + allItems.ToString();
                }
            }
        }
        catch { throw; }
    }

    private int GetRaceCategoryId(string categoryName)
    {
        try
        {
            using (HostingEnvironment.Impersonate())
            using (SqlConnection db = this.OpenDatabase())
            using (SqlCommand cmd = new SqlCommand("SELECT ID_RACE_CATEGORY FROM RaceCategory WHERE NAME = @CategoryName", db))
            {
                cmd.Parameters.Add("@CategoryName", SqlDbType.VarChar, 100).Value = categoryName;
                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    int idRaceCategory = 0;
                    while (reader.Read())
                    {
                        idRaceCategory = (int) reader["ID_RACE_CATEGORY"];
                        break;
                    }
                    return idRaceCategory;
                }
            }
        }
        catch { throw; }
    }

    private int GetRaceActionId(string categoryName)
    {
        try
        {
            using (HostingEnvironment.Impersonate())
            using (SqlConnection db = this.OpenDatabase())
            using (SqlCommand cmd = new SqlCommand("SELECT a.ID_RACE_ACTION FROM RaceCategory c, Races r, RaceActions a WHERE c.NAME = @CategoryName AND c.ID_RACE = r.ID_RACE AND r.ID_RACE_ACTION = a.ID_RACE_ACTION", db))
            {
                cmd.Parameters.Add("@CategoryName", SqlDbType.VarChar, 100).Value = categoryName;
                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    int idRaceAction = 0;
                    while (reader.Read())
                    {
                        idRaceAction = (int)reader["ID_RACE_ACTION"];
                        break;
                    }
                    return idRaceAction;
                }
            }
        }
        catch { throw; }
    }

    private int GetRaceCompetitorId(string firstName, string lastName, DateTime birthDate)
    {
        try
        {
            using (HostingEnvironment.Impersonate())
            using (SqlConnection db = this.OpenDatabase())
            using (SqlCommand cmd = new SqlCommand("SELECT ID_RACE_COMPETITOR FROM RaceCompetitors WHERE FIRST_NAME = @FirstName AND LAST_NAME = @LastName AND BIRTH_DATE = @BirthDate", db))
            {
                cmd.Parameters.Add("@FirstName", SqlDbType.VarChar, 50).Value = firstName;
                cmd.Parameters.Add("@LastName", SqlDbType.VarChar, 50).Value = lastName;
                cmd.Parameters.Add("@BirthDate", SqlDbType.DateTime).Value = birthDate;
                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    int idRaceCompetitor = 0;
                    while (reader.Read())
                    {
                        idRaceCompetitor = (int) reader["ID_RACE_COMPETITOR"];
                        break;
                    }
                    return idRaceCompetitor;
                }
            }
        }
        catch { throw; }
    }

    private bool InsertRaceCompetitor(string firstName, string lastName, DateTime birthDate, string address, string email, string phone, string licence)
    {
        try
        {
            using (HostingEnvironment.Impersonate())
            using (SqlConnection db = this.OpenDatabase())
            using (SqlCommand cmd = new SqlCommand("INSERT INTO RaceCompetitors (FIRST_NAME, LAST_NAME, BIRTH_DATE, ADDRESS, EMAIL, PHONE, LICENCE) VALUES (@FirstName, @LastName, @BirthDate, @Address, @Email, @Phone, @Licence)", db))
            {
                cmd.Parameters.Add("@FirstName", SqlDbType.VarChar, 50).Value = firstName;
                cmd.Parameters.Add("@LastName", SqlDbType.VarChar, 50).Value = lastName;
                cmd.Parameters.Add("@BirthDate", SqlDbType.DateTime).Value = birthDate;
                cmd.Parameters.Add("@Address", SqlDbType.VarChar, 50).Value = address;
                cmd.Parameters.Add("@Email", SqlDbType.VarChar, 50).Value = email;
                cmd.Parameters.Add("@Phone", SqlDbType.VarChar, 20).Value = phone;
                cmd.Parameters.Add("@Licence", SqlDbType.VarChar, 20).Value = licence;
                int rowCount = cmd.ExecuteNonQuery();
                return (rowCount == 1) ? true : false;
            }
        }
        catch { throw; }
    }

    private bool UpdateRaceCompetitor(int idRaceCompetitor, string address, string email, string phone, string licence)
    {
        try
        {
            using (HostingEnvironment.Impersonate())
            using (SqlConnection db = this.OpenDatabase())
            using (SqlCommand cmd = new SqlCommand("UPDATE RaceCompetitors SET ADDRESS = @Address, EMAIL = @Email, PHONE = @Phone, LICENCE = @Licence WHERE ID_RACE_COMPETITOR = @IdRaceCompetitor", db))
            {
                cmd.Parameters.Add("@IdRaceCompetitor", SqlDbType.Int).Value = idRaceCompetitor;
                cmd.Parameters.Add("@Address", SqlDbType.VarChar, 50).Value = address;
                cmd.Parameters.Add("@Email", SqlDbType.VarChar, 50).Value = email;
                cmd.Parameters.Add("@Phone", SqlDbType.VarChar, 20).Value = phone;
                cmd.Parameters.Add("@Licence", SqlDbType.VarChar, 20).Value = licence;
                int rowCount = cmd.ExecuteNonQuery();
                return (rowCount == 1) ? true : false;
            }
        }
        catch { throw; }
    }

    private int GetRaceRegistrationId(int idRaceCompetitor, int idRaceAction)
    {
        try
        {
            using (HostingEnvironment.Impersonate())
            using (SqlConnection db = this.OpenDatabase())
            using (SqlCommand cmd = new SqlCommand("SELECT rr.ID_RACE_REGISTRATION_RESULT FROM RaceRegistrationResults rr, RaceCategory c, Races r WHERE rr.ID_RACE_COMPETITOR = @IdRaceCompetitor AND rr.ID_RACE_CATEGORY = c.ID_RACE_CATEGORY AND c.ID_RACE = r.ID_RACE AND r.ID_RACE_ACTION = @IdRaceAction", db))
            {
                cmd.Parameters.Add("@IdRaceCompetitor", SqlDbType.Int).Value = idRaceCompetitor;
                cmd.Parameters.Add("@IdRaceAction", SqlDbType.Int).Value = idRaceAction;
                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    int idRaceRegistrationResult = 0;
                    while (reader.Read())
                    {
                        idRaceRegistrationResult = (int)reader["ID_RACE_REGISTRATION_RESULT"];
                        break;
                    }
                    return idRaceRegistrationResult;
                }
            }
        }
        catch { throw; }
    }

    private bool InsertRaceRegistration(int idRaceCompetitor, int idRaceCategory, string team, string scool, string description)
    {
        try
        {
            using (HostingEnvironment.Impersonate())
            using (SqlConnection db = this.OpenDatabase())
            using (SqlCommand cmd = new SqlCommand("INSERT INTO RaceRegistrationResults (ID_RACE_COMPETITOR, ID_RACE_CATEGORY, TEAM, SCOOL, REGISTRATION_DATE, START_FEE, PRESENTED, DESCRIPTION) VALUES (@IdRaceCompetitor, @IdRaceCategory, @Team, @Scool, @RegistrationDate, @StartFee, @Presented, @Description)", db))
            {
                cmd.Parameters.Add("@IdRaceCompetitor", SqlDbType.Int).Value = idRaceCompetitor;
                cmd.Parameters.Add("@IdRaceCategory", SqlDbType.Int).Value = idRaceCategory;
                cmd.Parameters.Add("@Team", SqlDbType.VarChar, 50).Value = team;
                cmd.Parameters.Add("@Scool", SqlDbType.VarChar, 50).Value = scool;
                cmd.Parameters.Add("@RegistrationDate", SqlDbType.DateTime).Value = DateTime.Now;
                cmd.Parameters.Add("@StartFee", SqlDbType.Int).Value = 0;
                cmd.Parameters.Add("@Presented", SqlDbType.Bit).Value = false;
                cmd.Parameters.Add("@Description", SqlDbType.VarChar, 100).Value = description;
                int rowCount = cmd.ExecuteNonQuery();
                return (rowCount == 1) ? true : false;
            }
        }
        catch { throw; }
    }

    private bool UpdateRaceRegistration(int idRaceRegistration, int idRaceCategory, string team, string scool, string description)
    {
        try
        {
            using (HostingEnvironment.Impersonate())
            using (SqlConnection db = this.OpenDatabase())
            using (SqlCommand cmd = new SqlCommand("UPDATE RaceRegistrationResults SET ID_RACE_CATEGORY = @IdRaceCategory, TEAM = @Team, SCOOL = @Scool, DESCRIPTION = @Description WHERE ID_RACE_REGISTRATION_RESULT = @IdRaceRegistration", db))
            {
                cmd.Parameters.Add("@IdRaceRegistration", SqlDbType.Int).Value = idRaceRegistration;
                cmd.Parameters.Add("@IdRaceCategory", SqlDbType.Int).Value = idRaceCategory;
                cmd.Parameters.Add("@Team", SqlDbType.VarChar, 50).Value = team;
                cmd.Parameters.Add("@Scool", SqlDbType.VarChar, 50).Value = scool;
                cmd.Parameters.Add("@Description", SqlDbType.VarChar, 50).Value = description;
                int rowCount = cmd.ExecuteNonQuery();
                return (rowCount == 1) ? true : false;
            }
        }
        catch { throw; }
    }

    private string SaveSilnicniZavodReqistration(string jmeno, string prijmeni, string narozeni, string kategorie, string klub, string licence, string mesto, string emailadress, string telefon, string skola, string popis)
    {
        int idRaceAction = 0;
        int idRaceCategory = GetRaceCategoryId(kategorie);
        if (idRaceCategory == 0)
        {
            return "ChybÌ kategorie.";
        } else
        {
            idRaceAction = GetRaceActionId(kategorie);
        }
        int idRaceCompetitor = GetRaceCompetitorId(jmeno, prijmeni, Convert.ToDateTime(narozeni));
        if (idRaceCompetitor == 0)
        {
            if (!InsertRaceCompetitor(jmeno, prijmeni, Convert.ToDateTime(narozeni), mesto, emailadress, telefon, licence))
            {
                return "Nepoda¯ilo se uloûit z·vodnÌka.";
            } else
            {
                idRaceCompetitor = GetRaceCompetitorId(jmeno, prijmeni, Convert.ToDateTime(narozeni));
            }
        } else
        {
            if (!UpdateRaceCompetitor(idRaceCompetitor, mesto, emailadress, telefon, licence))
            {
                return "Nepoda¯ilo se upravit z·vodnÌka.";
            }
        }
        int idRaceRegistration = GetRaceRegistrationId(idRaceCompetitor, idRaceAction);
        if (idRaceRegistration == 0)
        {
            if (!InsertRaceRegistration(idRaceCompetitor, idRaceCategory, klub, skola, popis))
            {
                return "Nepoda¯ilo se uloûit z·vodnÌka.";
            }
        } else
        {
            if (!UpdateRaceRegistration(idRaceRegistration, idRaceCategory, klub, skola, popis))
            {
                return "Nepoda¯ilo se upravit z·vodnÌka.";
            }
        }
        return "Z·znam byl uloûen.";
    } 
    
}
