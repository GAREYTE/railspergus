
<%@ page import="railspergus.CommandeDetail" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'commandeDetail.label', default: 'CommandeDetail')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-commandeDetail" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-commandeDetail" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<th><g:message code="commandeDetail.commande.label" default="Commande" /></th>
					
						<th><g:message code="commandeDetail.produit.label" default="Produit" /></th>
					
						<g:sortableColumn property="quantite" title="${message(code: 'commandeDetail.quantite.label', default: 'Quantite')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${commandeDetailInstanceList}" status="i" var="commandeDetailInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${commandeDetailInstance.id}">${fieldValue(bean: commandeDetailInstance, field: "commande")}</g:link></td>
					
						<td>${fieldValue(bean: commandeDetailInstance, field: "produit")}</td>
					
						<td>${fieldValue(bean: commandeDetailInstance, field: "quantite")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${commandeDetailInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
