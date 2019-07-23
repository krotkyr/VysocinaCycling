using System;
using System.Web.UI.WebControls;
using System.Configuration.Provider;
using System.Data;
using System.Data.SqlClient;
using VysocinaCycling;

public partial class DukovanskeOkruhy : System.Web.UI.Page
{
    private string connectionString;
    private AppService appService;

    protected void Page_Load(object sender, EventArgs e)
    {
        System.Configuration.ConnectionStringSettings ConnectionStringSettings = System.Configuration.ConfigurationManager.ConnectionStrings["VysocinaCycling"];
        if (ConnectionStringSettings == null || ConnectionStringSettings.ConnectionString.Trim() == "") throw new ProviderException("Connection string cannot be blank.");
        this.connectionString = ConnectionStringSettings.ConnectionString;

        this.appService = new AppService();
    }

    protected void TextBoxSilnicniZavodNarozeni_TextChanged(object sender, EventArgs e)
    {
        DateTime datetime;
        try
        {
            datetime = DateTime.ParseExact((sender as TextBox).Text, "d.M.yyyy", System.Globalization.CultureInfo.InvariantCulture);
        } catch {
            datetime = DateTime.Now;
        }
        SQLDataSourceRaceCategory.SelectParameters["Age"].DefaultValue = datetime.Year.ToString();
        
        try
        {
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();
                using (SqlCommand cmd = new SqlCommand("SELECT rr.ID_RACE_REGISTRATION_RESULT FROM RaceRegistrationResults rr, RaceCompetitors rc, RaceCategory c, Races r, RaceActions a WHERE rr.ID_RACE_CATEGORY = c.ID_RACE_CATEGORY AND c.ID_RACE = r.ID_RACE AND r.ID_RACE_ACTION = a.ID_RACE_ACTION AND a.ID_RACE_ACTION = 5 AND rc.ID_RACE_COMPETITOR = rr.ID_RACE_COMPETITOR AND rc.FIRST_NAME = @FirstName AND rc.LAST_NAME = @LastName AND rc.BIRTH_DATE = @BirthDate", connection))
                {
                    cmd.Parameters.Add("@FirstName", SqlDbType.VarChar, 50).Value = TextBoxSilnicniZavodJmeno.Text;
                    cmd.Parameters.Add("@LastName", SqlDbType.VarChar, 50).Value = TextBoxSilnicniZavodPrijmeni.Text;
                    cmd.Parameters.Add("@BirthDate", SqlDbType.DateTime).Value = datetime;
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        int idRegistrationResult = 0;
                        while (reader.Read())
                        {
                            idRegistrationResult = (int)reader["ID_RACE_REGISTRATION_RESULT"];
                            break;
                        }
                        if (idRegistrationResult == 0)
                        {
                            buttonSilnicniZavod.Value = "Odeslat přihlášku";
                        }
                        else
                        {
                            buttonSilnicniZavod.Value = "Odeslat upravenou přihlášku";
                        }

                    }
                }
                connection.Close();
            }
        }
        catch { throw; }
    }

    protected void DropDownListRaceActions_SelectedIndexChanged(object sender, EventArgs e)
    {
        historyFinishTable.InnerHtml = appService.GetFinishTable(int.Parse((sender as DropDownList).SelectedItem.Value));
    }

    protected void DropDownListRaceActions_DataBound(object sender, EventArgs e)
    {
        if ((sender as DropDownList).SelectedIndex >= 0)
        {
            historyFinishTable.InnerHtml = appService.GetFinishTable(int.Parse((sender as DropDownList).SelectedItem.Value));
        }
    }
}