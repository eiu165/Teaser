﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" 
    Inherits="System.Web.Mvc.ViewPage<Teaser.Web.Models.RpxUserModel[]>" %>


<asp:Content ID="indexTitle" ContentPlaceHolderID="head" runat="server">
    <title>UserList</title>
    
    <style type="text/css" >
        .hiddenLinks{ position:absolute; bottom:1%; left:0; }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

	<input type="hidden" name="pageId" value="<%= StableSite.Screen.Account.UserList %>" />
    <h2>UserList</h2>
    
    
    <% var users = Model; %>
    
    <table>
		<thead>
			<tr>
				<td>Id</td>
				<td>Identifier</td>
				<td>ProviderName</td>
				<td>SiteUserName</td>
				<td>DisplayName</td>
				<td>JsonData</td>
			</tr>
		</thead>
		<tbody>
		<% var i = 0; %>
		<% foreach (var user in users) { %>
			<tr>
				<td><%= Html.Span(m => m[i].Id)  %></td>
				<td><%= Html.Span(m => m[i].Identifier)%></td>
				<td><%= Html.Span(m => m[i].ProviderName)%></td>
				<td><%= Html.Span(m => m[i].SiteUserName)%></td>
				<td><%= Html.Span(m => m[i].DisplayName)%></td>
				<td><%= Html.Span(m => m[i].JsonData)%></td>
			</tr>
		<%
			i++;
	 } %>
		</tbody>
    </table>
    
    <div class="hiddenLinks">
        <div><%= Html.ActionLink("Welcome", "Welcome", "Account")%></div>
        <div><%= Html.ActionLink("Login", "Login", "Account")%></div>
        <div><%= Html.ActionLink("RpxUsers", "UserList", "Account")%></div>
    </div>


</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="javascript" runat="server">
    <script type="text/javascript">
        google.setOnLoadCallback(function() {
            // Place init code here instead of $(document).ready()
        });
  </script>
</asp:Content>
