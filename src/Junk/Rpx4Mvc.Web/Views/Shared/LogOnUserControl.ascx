﻿<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl" %>
<%
    if (Request.IsAuthenticated) {
%>
    Welcome, <b><%= Html.Encode(Page.User.Identity.Name) %></b>!
    <%= Html.ActionLink("Logout", "Logout", "Account") %>
<%
    }
    else {
%> 
    <%=Html.RpxLoginPopup("", "", "Login") %>
<%
    }
%>
