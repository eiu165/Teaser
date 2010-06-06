<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<ProductListModel[]>" %>
<%@ Import Namespace="Stable"%>
<%@ Import Namespace="Stable.Models"%>
<%@ Import Namespace="Stable.Core.Domain"%>
<%@ Import Namespace="Stable.Core.UiCore"%>

<asp:Content ID="indexTitle" ContentPlaceHolderID="TitleContent" runat="server">
    Home Page
</asp:Content>

<asp:Content ID="indexContent" ContentPlaceHolderID="MainContent" runat="server">
	<input type="hidden" name="pageId" value="<%= Stable.Core.UiCore.StableSite.Screen.Product.Index %>" />
    
    <h2>Products</h2>
    <% var products = Model; %>
    
    <table>
		<thead>
			<tr>
				<td>Details</td>
				<td>Name</td>
				<td>Manufacturer</td>
				<td>Price</td>
			</tr>
		</thead>
		<tbody>
		<% var i = 0; %>
		<% foreach (var product in products) { %>
			<tr>
				<td><%= Html.ActionLink("Edit", "Edit", new { id = product.Id }) %></td>
				<td><%= Html.Span(m => m[i].Name) %></td>
				<td><%= Html.Span(m => m[i].ManufacturerName) %></td>
				<td><%= Html.Span(m => m[i].Price) %></td>
			</tr>
		<%
			i++;
	 } %>
		</tbody>
    </table>
    
</asp:Content>
