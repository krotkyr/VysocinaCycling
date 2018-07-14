using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string username = " ";
        HttpCookie myCookie = Request.Cookies.Get("user");
        if (myCookie != null)
            username = myCookie.Value;
        if(SqlDataSource1.InsertParameters.Count == 7)
            SqlDataSource1.InsertParameters.RemoveAt(6);
        SqlDataSource1.InsertParameters.Add("UserName", username);
        if (SqlDataSource2.SelectParameters.Count == 2)
            SqlDataSource2.SelectParameters.RemoveAt(1);
        SqlDataSource2.SelectParameters.Add("UserName", username);

        Label lb = FormView1.FindControl("NewsTitleLabel") as Label;
        Literal lt = FormView1.FindControl("NewsTextLabel") as Literal;
        Image im = FormView1.FindControl("thumbImageNovinky") as Image;
        if (lb != null && lt != null && im != null)
        {
            Boolean rem;
            do
            {
                rem = false;
                foreach (Control tag in Page.Header.Controls)
                {
                    if (tag is HtmlMeta)
                    {
                        foreach (string key in (tag as HtmlMeta).Attributes.Keys)
                        {
                            if (key == "property")
                            {
                                Page.Header.Controls.Remove(tag);
                                rem = true;
                                break;
                            }
                        }
                        if (rem == true)
                            break;
                    }
                }
            } while (rem == true);

            HtmlMeta tag0 = new HtmlMeta();
            tag0.Attributes.Add("property", "fb:admins");
            tag0.Content = "1462823542";
            Page.Header.Controls.Add(tag0);
            HtmlMeta tag1 = new HtmlMeta();
            tag1.Attributes.Add("property", "og:title");
            tag1.Content = lb.Text;
            Page.Header.Controls.Add(tag1);
            HtmlMeta tag2 = new HtmlMeta();
            tag2.Attributes.Add("property", "og:description");
            tag2.Content = lt.Text.Remove(200) + "...";
            Page.Header.Controls.Add(tag2);
            HtmlMeta tag3 = new HtmlMeta();
            tag3.Attributes.Add("property", "og:image");
            string imgProperty = "http://www.vysocinacycling.cz/" + im.ImageUrl;
            tag3.Content = imgProperty.Replace("thumb_", "");
            Page.Header.Controls.Add(tag3);
            HtmlMeta tag4 = new HtmlMeta();
            tag4.Attributes.Add("property", "og:site_name");
            tag4.Content = "Vysočina Cycling";
            Page.Header.Controls.Add(tag4);
            HtmlMeta tag5 = new HtmlMeta();
            Page.Header.Controls.Add(tag5);
            tag5.Attributes.Add("property", "og:type");
            tag5.Content = "article";
            Page.Header.Controls.Add(tag5);
            HtmlMeta tag6 = new HtmlMeta();
            Page.Header.Controls.Add(tag5);
            tag6.Attributes.Add("property", "article:author");
            tag6.Content = "krotkyr";
            Page.Header.Controls.Add(tag6);
        }
    }
    protected void NewsImageTextBox_Init(object sender, EventArgs e)
    {
        (sender as TextBox).Text = "LogoVC.png";
    }
    protected void SqlDataSource1_RedirectHome(object sender, SqlDataSourceStatusEventArgs e)
    {
        Response.Redirect("Default.aspx");
    }
    protected void GridView1_RowCreated(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.Pager)
        {
            Label control = new Label(); //new Label control
            control.Text = "Stránka " + (GridView1.PageIndex + 1) + " z " + GridView1.PageCount; // add text
            Table table = e.Row.Cells[0].Controls[0] as Table;  // get the pager table
            table.Width = Unit.Percentage(100); //apply width style
            TableCell newCell = new TableCell(); //Create new cell
            newCell.Attributes.Add("align", "right"); // apply align right
            newCell.Controls.Add(control);  //Add contol
            table.Rows[0].Cells.Add(newCell); //add cell
        }

    }
}
