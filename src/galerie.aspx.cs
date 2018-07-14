using System;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using System.Text;

public partial class Galerie : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string username = " ";
        HttpCookie myCookie = Request.Cookies.Get("user");
        if (myCookie != null)
            username = myCookie.Value;
        if (SqlDataSourceGalery.InsertParameters.Count == 7)
            SqlDataSourceGalery.InsertParameters.RemoveAt(6);
        SqlDataSourceGalery.InsertParameters.Add("UserName", username);
        if (SqlDataSourceGaleryList.SelectParameters.Count == 2)
            SqlDataSourceGaleryList.SelectParameters.RemoveAt(1);
        SqlDataSourceGaleryList.SelectParameters.Add("UserName", username);
        if (SqlDataSourceVideoList.SelectParameters.Count == 2)
            SqlDataSourceVideoList.SelectParameters.RemoveAt(1);
        SqlDataSourceVideoList.SelectParameters.Add("UserName", username);

        if (sender is Page)
        {
            Boolean rem;
            do
            {
                rem = false;
                foreach (Control tag in (sender as Page).Header.Controls)
                {
                    if (tag is HtmlMeta)
                    {
                        foreach (string key in (tag as HtmlMeta).Attributes.Keys)
                        {
                            if (key == "property")
                            {
                                (sender as Page).Header.Controls.Remove(tag);
                                rem = true;
                                break;
                            }
                        }
                        if (rem == true)
                            break;
                    }
                }
            } while (rem == true);
        }

        Label lb = FormViewGalery.FindControl("GaleryTitleLabelFW") as Label;
        Literal lt = FormViewGalery.FindControl("GaleryDescLabelFW") as Literal;
        Image im = FormViewGalery.FindControl("thumbGaleryTitleImageFW") as Image;
        if (lb == null && lt == null && im == null)
        {
            lb = FormViewVideo.FindControl("VideoTitleLabel") as Label;
            lt = FormViewVideo.FindControl("VideoDescLabelFW") as Literal;
            im = FormViewVideo.FindControl("thumbVideoTitleImageFW") as Image;
        }
        if (lb != null && lt != null && im != null)
        {
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
            tag2.Content = lt.Text;
            Page.Header.Controls.Add(tag2);
            HtmlMeta tag3 = new HtmlMeta();
            tag3.Attributes.Add("property", "og:image");
            string imgProperty = "http://www.vysocinacycling.cz/" + im.ImageUrl;
            tag3.Content = imgProperty.Replace("thumb/thumb_", "");
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
            tag6.Attributes.Add("property", "article:author");
            tag6.Content = "krotkyr";
            Page.Header.Controls.Add(tag6);
        }
        else
        {
            HtmlMeta tag1 = new HtmlMeta();
            tag1.Attributes.Add("property", "og:title");
            tag1.Content = "Vysočina Cycling - Galerie";
            Page.Header.Controls.Add(tag1);
            HtmlMeta tag2 = new HtmlMeta();
            tag2.Attributes.Add("property", "og:description");
            tag2.Content = "Na stránce Galerie naleznete fotografie a videa týmu Vysočina Cycling.";
            Page.Header.Controls.Add(tag2);
            HtmlMeta tag4 = new HtmlMeta();
            tag4.Attributes.Add("property", "og:site_name");
            tag4.Content = "Vysočina Cycling";
            Page.Header.Controls.Add(tag4);
            HtmlMeta tag5 = new HtmlMeta();
            Page.Header.Controls.Add(tag5);
            tag5.Attributes.Add("property", "og:type");
            tag5.Content = "website";
            Page.Header.Controls.Add(tag5);
            HtmlMeta tag6 = new HtmlMeta();
            tag6.Attributes.Add("property", "og:url");
            tag6.Content = "http://www.vysocinacycling.cz/galerie.aspx";
            Page.Header.Controls.Add(tag6);
        }
    }
    protected void SqlDataSourceGalery_RedirectHome(object sender, SqlDataSourceStatusEventArgs e)
    {
        Response.RedirectToRoute("GaleryRoute");
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

    protected string TitleToUrl(string urlToEncode)
    {
        urlToEncode = (urlToEncode ?? "").Trim().ToLower();

        StringBuilder url = new StringBuilder();
        bool minus = false;

        foreach (char ch in urlToEncode)
        {
            switch (ch)
            {
                case ' ':
                    if (!minus)
                        url.Append('-');
                    minus = true;
                    break;
                case '_':
                    if (!minus)
                        url.Append('-');
                    minus = true;
                    break;
                case '.':
                    if (!minus)
                        url.Append('-');
                    minus = true;
                    break;
                case '/':
                    if (!minus)
                        url.Append('-');
                    minus = true;
                    break;
                case '\'':
                    if (!minus)
                        url.Append('-');
                    minus = true;
                    break;
                case 'ě':
                    url.Append('e');
                    minus = false;
                    break;
                case 'š':
                    url.Append('s');
                    minus = false;
                    break;
                case 'č':
                    url.Append('c');
                    minus = false;
                    break;
                case 'ř':
                    url.Append('r');
                    minus = false;
                    break;
                case 'ž':
                    url.Append('z');
                    minus = false;
                    break;
                case 'ý':
                    url.Append('y');
                    minus = false;
                    break;
                case 'á':
                    url.Append('a');
                    minus = false;
                    break;
                case 'í':
                    url.Append('i');
                    minus = false;
                    break;
                case 'é':
                    url.Append('e');
                    minus = false;
                    break;
                case 'ú':
                    url.Append('u');
                    minus = false;
                    break;
                case 'ů':
                    url.Append('u');
                    minus = false;
                    break;
                case 'ď':
                    url.Append('d');
                    minus = false;
                    break;
                case 'ť':
                    url.Append('t');
                    minus = false;
                    break;
                case 'ň':
                    url.Append('n');
                    minus = false;
                    break;
                case 'ó':
                    url.Append('o');
                    minus = false;
                    break;
                case 'ä':
                    url.Append('a');
                    minus = false;
                    break;
                case 'ë':
                    url.Append('e');
                    minus = false;
                    break;
                case 'ö':
                    url.Append('o');
                    minus = false;
                    break;
                case 'ü':
                    url.Append('u');
                    minus = false;
                    break;
                default:
                    if ((ch >= '0' && ch <= '9') ||
                        (ch >= 'a' && ch <= 'z'))
                    {
                        url.Append(ch);
                        minus = false;
                    }
                    else
                    {
                        if (!minus)
                            url.Append('-');
                        minus = true;
                    }
                    break;
            }
        }
        if (url[url.Length - 1] == '-')
            url.Remove(url.Length - 1, 1);

        return url.ToString();
    }
}