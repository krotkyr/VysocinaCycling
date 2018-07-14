using System;
using System.Collections.Generic;
using System.Linq;
using System.IO;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class WebImageGrid : System.Web.UI.UserControl
{
    private string virtualPath;
    private string physicalPath;

    /// <summary>
    /// Relative path to the Images Folder
    /// </summary>
    public string ImageFolderPath { get; set; }

    /// <summary>
    /// Title to be displayed on top of Images
    /// </summary>
    public string Title { get; set; }

    protected void Page_Load(object sender, EventArgs e)
    {
        //Update the path
        UpdatePath();
    }

    protected void titleLabel_Load(object sender, EventArgs e)
    {
        var titleLabel = sender as Label;
        if (titleLabel == null) return;

        titleLabel.Text = Title;
    }

    protected void Page_PreRender(object sender, EventArgs e)
    {
        //Binds the Data Before Rendering
        BindData();
    }

    private void UpdatePath()
    {
        //use a default path
        virtualPath = "~/images";
        physicalPath = Server.MapPath(virtualPath);

        //If ImageFolderPath is specified then use that path
        if (!string.IsNullOrEmpty(ImageFolderPath))
        {
            physicalPath = Server.MapPath(ImageFolderPath);
            virtualPath = ImageFolderPath;
        }

    }

    private void BindData()
    {
        ImageListView.DataSource = GetListOfImages();
        ImageListView.DataBind();

    }

    private List<string> GetListOfImages()
    {
        var images = new List<string>();

        try
        {
            var imagesFolder = new DirectoryInfo(physicalPath);
            foreach (var item in imagesFolder.EnumerateFiles())
            {
                if (item is FileInfo)
                {
                    //add virtual path of the image to the images list
                    images.Add(string.Format("{0}/{1}", virtualPath, item.Name));
                }
            }
        }
        catch (Exception ex)
        {
            //log exception
        }

        return images;

    }
    protected void GaleryImageHyperLink_Load(object sender, EventArgs e)
    {
        var tooltipHyperLink = sender as HyperLink;
        if (tooltipHyperLink == null) return;

        tooltipHyperLink.ToolTip = Title;
    }
}