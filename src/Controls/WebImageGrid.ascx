<%@ Control Language="C#" AutoEventWireup="true" CodeFile="WebImageGrid.ascx.cs" Inherits="WebImageGrid" %>

<asp:ListView runat="server" ID="ImageListView" ItemPlaceholderID="itemPlaceHolder"
    GroupPlaceholderID="groupPlaceHolder">
    <LayoutTemplate>
        <h1 class="nadpish1">
            <asp:Label Text="" runat="server" ID="titleLabel" OnLoad="titleLabel_Load" />
        </h1>
        <div runat="server" id="groupPlaceHolder">
        </div>
    </LayoutTemplate>
    <GroupTemplate>
        <div id="itemPlaceHolder" runat="server"></div>
    </GroupTemplate>
    <ItemTemplate>
        <asp:HyperLink ID="GaleryImageHyperLink" runat="server" NavigateUrl="<%# Container.DataItem %>" OnLoad="GaleryImageHyperLink_Load">
            <asp:Image ID="itemImage" runat="server" ImageUrl="<%# Container.DataItem %>" Height="100" BorderStyle="None" />
        </asp:HyperLink>
    </ItemTemplate>
    <EmptyItemTemplate>
        <td />
    </EmptyItemTemplate>
    <EmptyDataTemplate>
        <h3>No images available</h3>
    </EmptyDataTemplate>
</asp:ListView>
