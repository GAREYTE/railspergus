
<%@ page import="railspergus.Produit" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'produit.label', default: 'Produit')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-produit" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-produit" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list produit">
			
				<g:if test="${produitInstance?.categorie}">
				<li class="fieldcontain">
					<span id="categorie-label" class="property-label"><g:message code="produit.categorie.label" default="Categorie" /></span>
					
						<span class="property-value" aria-labelledby="categorie-label"><g:link controller="categorie" action="show" id="${produitInstance?.categorie?.id}">${produitInstance?.categorie?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${produitInstance?.description}">
				<li class="fieldcontain">
					<span id="description-label" class="property-label"><g:message code="produit.description.label" default="Description" /></span>
					
						<span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${produitInstance}" field="description"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${produitInstance?.numero}">
				<li class="fieldcontain">
					<span id="numero-label" class="property-label"><g:message code="produit.numero.label" default="Numero" /></span>
					
						<span class="property-value" aria-labelledby="numero-label"><g:fieldValue bean="${produitInstance}" field="numero"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${produitInstance?.prixUnitaire}">
				<li class="fieldcontain">
					<span id="prixUnitaire-label" class="property-label"><g:message code="produit.prixUnitaire.label" default="Prix Unitaire" /></span>
					
						<span class="property-value" aria-labelledby="prixUnitaire-label"><g:fieldValue bean="${produitInstance}" field="prixUnitaire"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${produitInstance?.id}" />
					<g:link class="edit" action="edit" id="${produitInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
