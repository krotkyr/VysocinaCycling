using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Hosting;
using System.Data;
using System.Data.SqlClient;
using System.Configuration.Provider;

namespace VysocinaCycling
{
    /// <summary>
    /// Summary description for AppService
    /// </summary>
    public class AppService
    {
        private string connectionString;

        public AppService()
        {
            //
            // TODO: Add constructor logic here
            //
            System.Configuration.ConnectionStringSettings ConnectionStringSettings = System.Configuration.ConfigurationManager.ConnectionStrings["VysocinaCycling"];
            if (ConnectionStringSettings == null || ConnectionStringSettings.ConnectionString.Trim() == "") throw new ProviderException("Connection string cannot be blank.");
            this.connectionString = ConnectionStringSettings.ConnectionString;
        }

        private SqlConnection OpenDatabase()
        {
            SqlConnection db = new SqlConnection(this.connectionString);
            db.Open();
            return db;
        }

        public string GetFinishTable(int idRaceAction)
        {
            string category = "";
            string finishtable = "";
            try
            {
                using (HostingEnvironment.Impersonate())
                using (SqlConnection db = this.OpenDatabase())
                using (SqlCommand cmd = new SqlCommand("SELECT rr.ID_RACE_REGISTRATION_RESULT, rr.START_NUMBER, rr.FINISH_TIME, cm.FIRST_NAME, cm.LAST_NAME, cm.BIRTH_DATE, c.CODE, c.NAME as CATEGORY, r.NAME as RACE, rr.TEAM, cm.ADDRESS, (rr.FINISH_TIME - rr.START_TIME) as RACE_TIME FROM RaceRegistrationResults rr, RaceCompetitors cm, RaceCategory c, Races r, RaceActions a WHERE cm.ID_RACE_COMPETITOR = rr.ID_RACE_COMPETITOR AND c.ID_RACE_CATEGORY = rr.ID_RACE_CATEGORY AND c.ID_RACE = r.ID_RACE AND a.ID_RACE_ACTION = r.ID_RACE_ACTION AND a.ID_RACE_ACTION = @IdRaceAction AND rr.FINISH_TIME is not null ORDER BY c.ID_RACE_CATEGORY ASC, RACE_TIME ASC, rr.GROUP_ORDER ASC", db))
                {
                    cmd.Parameters.Add("@IdRaceAction", SqlDbType.Int).Value = idRaceAction;
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        int order = 0;
                        DateTime firstTime = DateTime.Now;
                        while (reader.Read())
                        {
                            if (reader["CATEGORY"].ToString() != category)
                            {
                                if (category != "")
                                {
                                    finishtable += "</table>";
                                    finishtable += "<br />";
                                    finishtable += "</div>";
                                }
                                finishtable += "<div id=\"f" + reader["CODE"] + "\">";
                                finishtable += "<table><tr><td width=\"820px\"><h3>" + reader["CATEGORY"] + " - " + reader["RACE"] + "</h3></td>";
                                finishtable += "<td class='notPrintable'><input id=\"finished" + reader["CODE"] + "\" type=\"button\" runat=\"server\" value=\"Tisk výsledků\" class=\"printCategoryFinished userRoleEditor\" style=\"height:30px; width:100px; font-size:8px; padding:1px; display:none;\" /></td></tr></table>";
                                finishtable += "<table>";
                                finishtable += "<tr style='font-weight: bold; font-style: italic; font-size: small;'>";
                                finishtable += "<td width='30px'>Poř.</td>";
                                finishtable += "<td width='30px'>St.č.</td>";
                                finishtable += "<td width='80px'>Jméno</td>";
                                finishtable += "<td width='80px'>Příjmení</td>";
                                finishtable += "<td width='60px'>Ročník</td>";
                                finishtable += "<td width='180px'>Tým</td>";
                                finishtable += "<td width='80px'>Čas</td>";
                                finishtable += "<td width='80px'>Ztráta</td>";
                                finishtable += "</tr>";
                                order = 0;
                                firstTime = (DateTime)reader["RACE_TIME"];
                            }
                            order++;
                            finishtable += "<tr>";
                            finishtable += "<td>" + order.ToString() + "</td>";
                            finishtable += "<td>" + ((reader["START_NUMBER"] == null) ? "" : reader["START_NUMBER"].ToString()) + "</td>";
                            finishtable += "<td>" + reader["FIRST_NAME"] + "</td>";
                            finishtable += "<td>" + reader["LAST_NAME"] + "</td>";
                            finishtable += "<td>" + ((DateTime)reader["BIRTH_DATE"]).Year.ToString() + "</td>";
                            if (reader["TEAM"] == null || reader["TEAM"].ToString() == "")
                            {
                                finishtable += "<td>" + reader["ADDRESS"] + "</td>";
                            }
                            else
                            {
                                finishtable += "<td>" + reader["TEAM"] + "</td>";
                            }
                            finishtable += "<td>" + ((DateTime)reader["RACE_TIME"]).ToString("HH:mm:ss") + "</td>";
                            TimeSpan diff = (DateTime)reader["RACE_TIME"] - firstTime;
                            if (diff.ToString() == "00:00:00")
                            {
                                finishtable += "<td></td>";
                            }
                            else
                            {
                                finishtable += "<td>" + diff.ToString() + "</td>";
                            }
                            finishtable += "</tr>";
                            category = reader["CATEGORY"].ToString();
                        }
                        finishtable += "</table>";
                        finishtable += "<br />";
                        finishtable += "<br />";
                        finishtable += "</div>";
                    }
                }
                string race = "";
                using (HostingEnvironment.Impersonate())
                using (SqlConnection db = this.OpenDatabase())
                using (SqlCommand cmd = new SqlCommand("SELECT rr.ID_RACE_REGISTRATION_RESULT, rr.START_NUMBER, rr.FINISH_TIME, cm.FIRST_NAME, cm.LAST_NAME, cm.BIRTH_DATE, c.CODE, c.NAME as CATEGORY, r.NAME as RACE, rr.TEAM, cm.ADDRESS, (rr.FINISH_TIME - rr.START_TIME) as RACE_TIME FROM RaceRegistrationResults rr, RaceCompetitors cm, RaceCategory c, Races r, RaceActions a WHERE cm.ID_RACE_COMPETITOR = rr.ID_RACE_COMPETITOR AND c.ID_RACE_CATEGORY = rr.ID_RACE_CATEGORY AND c.ID_RACE = r.ID_RACE AND a.ID_RACE_ACTION = r.ID_RACE_ACTION AND a.ID_RACE_ACTION = @IdRaceAction AND rr.FINISH_TIME is not null ORDER BY r.ID_RACE ASC, RACE_TIME ASC, rr.GROUP_ORDER ASC", db))
                {
                    cmd.Parameters.Add("@IdRaceAction", SqlDbType.Int).Value = idRaceAction;
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        int order = 0;
                        DateTime firstTime = DateTime.Now;
                        while (reader.Read())
                        {
                            if (reader["RACE"].ToString() != race)
                            {
                                if (race != "")
                                {
                                    finishtable += "</table>";
                                    finishtable += "<br />";
                                    finishtable += "</div>";
                                }
                                finishtable += "<div id=\"f" + reader["RACE"] + "\">";
                                finishtable += "<table><tr><td width=\"820px\"><h3>" + reader["RACE"] + "</h3></td>";
                                finishtable += "<td class='notPrintable'><input id=\"finished" + reader["CODE"] + "\" type=\"button\" runat=\"server\" value=\"Tisk výsledků\" class=\"printCategoryFinished userRoleEditor\" style=\"height:30px; width:100px; font-size:8px; padding:1px; display:none;\" /></td></tr></table>";
                                finishtable += "<table>";
                                finishtable += "<tr style='font-weight: bold; font-style: italic; font-size: small;'>";
                                finishtable += "<td width='30px'>Poř.</td>";
                                finishtable += "<td width='30px'>St.č.</td>";
                                finishtable += "<td width='80px'>Jméno</td>";
                                finishtable += "<td width='80px'>Příjmení</td>";
                                finishtable += "<td width='60px'>Ročník</td>";
                                finishtable += "<td width='240px'>Kategorie</td>";
                                finishtable += "<td width='180px'>Tým</td>";
                                finishtable += "<td width='80px'>Čas</td>";
                                finishtable += "<td width='80px'>Ztráta</td>";
                                finishtable += "</tr>";
                                order = 0;
                                firstTime = (DateTime)reader["RACE_TIME"];
                            }
                            order++;
                            finishtable += "<tr>";
                            finishtable += "<td>" + order.ToString() + "</td>";
                            finishtable += "<td>" + ((reader["START_NUMBER"] == null) ? "" : reader["START_NUMBER"].ToString()) + "</td>";
                            finishtable += "<td>" + reader["FIRST_NAME"] + "</td>";
                            finishtable += "<td>" + reader["LAST_NAME"] + "</td>";
                            finishtable += "<td>" + ((DateTime)reader["BIRTH_DATE"]).Year.ToString() + "</td>";
                            finishtable += "<td>" + reader["CATEGORY"] + "</td>";
                            if (reader["TEAM"] == null || reader["TEAM"].ToString() == "")
                            {
                                finishtable += "<td>" + reader["ADDRESS"] + "</td>";
                            }
                            else
                            {
                                finishtable += "<td>" + reader["TEAM"] + "</td>";
                            }
                            finishtable += "<td>" + ((DateTime)reader["RACE_TIME"]).ToString("HH:mm:ss") + "</td>";
                            TimeSpan diff = (DateTime)reader["RACE_TIME"] - firstTime;
                            if (diff.ToString() == "00:00:00")
                            {
                                finishtable += "<td></td>";
                            }
                            else
                            {
                                finishtable += "<td>" + diff.ToString() + "</td>";
                            }
                            finishtable += "</tr>";
                            race = reader["RACE"].ToString();
                        }
                        finishtable += "</table>";
                        finishtable += "<br />";
                        finishtable += "<br />";
                        finishtable += "</div>";
                    }
                }
            }
            catch { throw; }
            return finishtable;
        }
    }
}