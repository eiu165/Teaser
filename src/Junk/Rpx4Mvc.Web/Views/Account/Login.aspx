<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>

<asp:Content ID="titleContent" ContentPlaceHolderID="TitleContent" runat="server">
	Login
</asp:Content>

<asp:Content ID="mainContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Login</h2>
    
    <div>token: <%= Html.Encode(ViewData["token"]) %></div>
    <div>message: <%= Html.Encode(ViewData["message"])%></div>
    <%--
    <%=Html.RpxLoginEmbedded("",   Request.Url.Authority + Request.ApplicationPath + "/Account/Login/")%>
     
   --%>
   
</asp:Content>
