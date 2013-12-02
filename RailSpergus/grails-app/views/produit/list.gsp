
<%@ page import="railspergus.Produit" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'produit.label', default: 'Produit')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-produit" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-produit" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<th><g:message code="produit.categorie.label" default="Categorie" /></th>
					
						<g:sortableColumn property="description" title="${message(code: 'produit.description.label', default: 'Description')}" />
					
						<g:sortableColumn property="numero" title="${message(code: 'produit.numero.label', default: 'Numero')}" />
					
						<g:sortableColumn property="prixUnitaire" title="${message(code: 'produit.prixUnitaire.label', default: 'Prix Unitaire')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${produitInstanceList}" status="i" var="produitInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${produitInstance.id}">${fieldValue(bean: produitInstance, field: "categorie")}</g:link></td>
					
						<td>${fieldValue(bean: produitInstance, field: "description")}</td>
					
						<td>${fieldValue(bean: produitInstance, field: "numero")}</td>
					
						<td>${fieldValue(bean: produitInstance, field: "prixUnitaire")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${produitInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
