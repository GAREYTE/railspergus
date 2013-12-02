
<%@ page import="railspergus.Commande" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'commande.label', default: 'Commande')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-commande" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-commande" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="annee" title="${message(code: 'commande.annee.label', default: 'Annee')}" />
					
						<th><g:message code="commande.client.label" default="Client" /></th>
					
						<g:sortableColumn property="dateCommande" title="${message(code: 'commande.dateCommande.label', default: 'Date Commande')}" />
					
						<g:sortableColumn property="dateLivraison" title="${message(code: 'commande.dateLivraison.label', default: 'Date Livraison')}" />
					
						<g:sortableColumn property="datePreparation" title="${message(code: 'commande.datePreparation.label', default: 'Date Preparation')}" />
					
						<th><g:message code="commande.livrePar.label" default="Livre Par" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${commandeInstanceList}" status="i" var="commandeInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${commandeInstance.id}">${fieldValue(bean: commandeInstance, field: "annee")}</g:link></td>
					
						<td>${fieldValue(bean: commandeInstance, field: "client")}</td>
					
						<td><g:formatDate date="${commandeInstance.dateCommande}" /></td>
					
						<td><g:formatDate date="${commandeInstance.dateLivraison}" /></td>
					
						<td><g:formatDate date="${commandeInstance.datePreparation}" /></td>
					
						<td>${fieldValue(bean: commandeInstance, field: "livrePar")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${commandeInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
