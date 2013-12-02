
<%@ page import="railspergus.CommandeDetail" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'commandeDetail.label', default: 'CommandeDetail')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-commandeDetail" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-commandeDetail" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list commandeDetail">
			
				<g:if test="${commandeDetailInstance?.commande}">
				<li class="fieldcontain">
					<span id="commande-label" class="property-label"><g:message code="commandeDetail.commande.label" default="Commande" /></span>
					
						<span class="property-value" aria-labelledby="commande-label"><g:link controller="commande" action="show" id="${commandeDetailInstance?.commande?.id}">${commandeDetailInstance?.commande?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${commandeDetailInstance?.produit}">
				<li class="fieldcontain">
					<span id="produit-label" class="property-label"><g:message code="commandeDetail.produit.label" default="Produit" /></span>
					
						<span class="property-value" aria-labelledby="produit-label"><g:link controller="produit" action="show" id="${commandeDetailInstance?.produit?.id}">${commandeDetailInstance?.produit?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${commandeDetailInstance?.quantite}">
				<li class="fieldcontain">
					<span id="quantite-label" class="property-label"><g:message code="commandeDetail.quantite.label" default="Quantite" /></span>
					
						<span class="property-value" aria-labelledby="quantite-label"><g:fieldValue bean="${commandeDetailInstance}" field="quantite"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${commandeDetailInstance?.id}" />
					<g:link class="edit" action="edit" id="${commandeDetailInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
