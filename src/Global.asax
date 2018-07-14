<%@ Application Language="C#" %>
<%@ Import Namespace="System.IO" %>
<%@ Import Namespace="System.IO.Compression" %>
<%@ Import Namespace="System.Web.Routing" %>

<script runat="server">
    void Application_PreRequestHandlerExecute(object sender, EventArgs e)
    {
        HttpApplication app = sender as HttpApplication;
        string acceptEncoding = app.Request.Headers["Accept-Encoding"];
        Stream prevUncompressedStream = app.Response.Filter;

        if (!(app.Context.CurrentHandler is Page ||
            app.Context.CurrentHandler.GetType().Name == "SyncSessionlessHandler") ||
            app.Request["HTTP_X_MICROSOFTAJAX"] != null)
            return;

        if (acceptEncoding == null || acceptEncoding.Length == 0)
            return;

        acceptEncoding = acceptEncoding.ToLower();

        if (acceptEncoding.Contains("deflate") || acceptEncoding == "*")
        {
            // defalte
            app.Response.Filter = new DeflateStream(prevUncompressedStream,
                CompressionMode.Compress);
            app.Response.AppendHeader("Content-Encoding", "deflate");
        }
        else if (acceptEncoding.Contains("gzip"))
        {
            // gzip
            app.Response.Filter = new GZipStream(prevUncompressedStream,
                CompressionMode.Compress);
            app.Response.AppendHeader("Content-Encoding", "gzip");
        }
    }

    void Application_Start(object sender, EventArgs e) 
    {
        // Code that runs on application startup
        RegisterRoutes(System.Web.Routing.RouteTable.Routes);
    }
    
    void Application_End(object sender, EventArgs e) 
    {
        //  Code that runs on application shutdown

    }
        
    void Application_Error(object sender, EventArgs e) 
    { 
        // Code that runs when an unhandled error occurs

    }

    void Session_Start(object sender, EventArgs e) 
    {
        // Code that runs when a new session is started
    }

    void Session_End(object sender, EventArgs e) 
    {
        // Code that runs when a session ends. 
        // Note: The Session_End event is raised only when the sessionstate mode
        // is set to InProc in the Web.config file. If session mode is set to StateServer 
        // or SQLServer, the event is not raised.

    }

    public static void RegisterRoutes(System.Web.Routing.RouteCollection routes)
    {
        routes.MapPageRoute("HomeRoute", "", "~/Default.aspx");
        routes.MapPageRoute("TymRoute", "tym", "~/tym.aspx");
        routes.MapPageRoute("TreninkRoute", "trenink", "~/trenink.aspx");
        routes.MapPageRoute("VyzivaRoute", "vyziva", "~/vyziva.aspx");
        routes.MapPageRoute("AkceRoute", "akce", "~/akce.aspx");
        routes.MapPageRoute("GalerieRoute", "galerie", "~/galerie.aspx");
        routes.MapPageRoute("GaleryRoute", "{GaleryId}-galerie-{GaleryUrlTitle}", "~/galerie.aspx", true,
            new RouteValueDictionary { { "GaleryId", "0" } });
        routes.MapPageRoute("VideoRoute", "{VideoId}-video-{VideoUrlTitle}", "~/galerie.aspx", true,
            new RouteValueDictionary { { "VideoId", "0" } });
        routes.MapPageRoute("ProdejRoute", "prodej", "~/prodej.aspx");
        routes.MapPageRoute("DenikRoute", "denik", "~/denik.aspx");
        routes.MapPageRoute("DukovanskeOkruhyRoute", "dukovanske-okruhy", "~/dukovanske-okruhy.aspx");
    }
</script>
