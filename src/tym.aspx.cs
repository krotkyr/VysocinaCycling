using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Services;

public partial class Tym : System.Web.UI.Page
{
    WebService myWebService = new WebService();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void DropDownListRaceYear_SelectedIndexChanged(object sender, EventArgs e)
    {
        string RacesYear = (sender as DropDownList).SelectedValue;
        myWebService.SetRacesYear(RacesYear);
    }
}
