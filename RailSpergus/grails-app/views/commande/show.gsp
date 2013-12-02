
<%@ page import="railspergus.Commande" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'commande.label', default: 'Commande')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-commande" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-commande" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list commande">
			
				<g:if test="${commandeInstance?.annee}">
				<li class="fieldcontain">
					<span id="annee-label" class="property-label"><g:message code="commande.annee.label" default="Annee" /></span>
					
						<span class="property-value" aria-labelledby="annee-label"><g:fieldValue bean="${commandeInstance}" field="annee"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${commandeInstance?.client}">
				<li class="fieldcontain">
					<span id="client-label" class="property-label"><g:message code="commande.client.label" default="Client" /></span>
					
						<span class="property-value" aria-labelledby="client-label"><g:link controller="client" action="show" id="${commandeInstance?.client?.id}">${commandeInstance?.client?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${commandeInstance?.dateCommande}">
				<li class="fieldcontain">
					<span id="dateCommande-label" class="property-label"><g:message code="commande.dateCommande.label" default="Date Commande" /></span>
					
						<span class="property-value" aria-labelledby="dateCommande-label"><g:formatDate date="${commandeInstance?.dateCommande}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${commandeInstance?.dateLivraison}">
				<li class="fieldcontain">
					<span id="dateLivraison-label" class="property-label"><g:message code="commande.dateLivraison.label" default="Date Livraison" /></span>
					
						<span class="property-value" aria-labelledby="dateLivraison-label"><g:formatDate date="${commandeInstance?.dateLivraison}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${commandeInstance?.datePreparation}">
				<li class="fieldcontain">
					<span id="datePreparation-label" class="property-label"><g:message code="commande.datePreparation.label" default="Date Preparation" /></span>
					
						<span class="property-value" aria-labelledby="datePreparation-label"><g:formatDate date="${commandeInstance?.datePreparation}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${commandeInstance?.livrePar}">
				<li class="fieldcontain">
					<span id="livrePar-label" class="property-label"><g:message code="commande.livrePar.label" default="Livre Par" /></span>
					
						<span class="property-value" aria-labelledby="livrePar-label"><g:link controller="salarie" action="show" id="${commandeInstance?.livrePar?.id}">${commandeInstance?.livrePar?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${commandeInstance?.livreePar}">
				<li class="fieldcontain">
					<span id="livreePar-label" class="property-label"><g:message code="commande.livreePar.label" default="Livree Par" /></span>
					
						<span class="property-value" aria-labelledby="livreePar-label"><g:link controller="salarie" action="show" id="${commandeInstance?.livreePar?.id}">${commandeInstance?.livreePar?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${commandeInstance?.numero}">
				<li class="fieldcontain">
					<span id="numero-label" class="property-label"><g:message code="commande.numero.label" default="Numero" /></span>
					
						<span class="property-value" aria-labelledby="numero-label"><g:fieldValue bean="${commandeInstance}" field="numero"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${commandeInstance?.preparePar}">
				<li class="fieldcontain">
					<span id="preparePar-label" class="property-label"><g:message code="commande.preparePar.label" default="Prepare Par" /></span>
					
						<span class="property-value" aria-labelledby="preparePar-label"><g:link controller="salarie" action="show" id="${commandeInstance?.preparePar?.id}">${commandeInstance?.preparePar?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${commandeInstance?.prisePar}">
				<li class="fieldcontain">
					<span id="prisePar-label" class="property-label"><g:message code="commande.prisePar.label" default="Prise Par" /></span>
					
						<span class="property-value" aria-labelledby="prisePar-label"><g:link controller="salarie" action="show" id="${commandeInstance?.prisePar?.id}">${commandeInstance?.prisePar?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${commandeInstance?.remarque}">
				<li class="fieldcontain">
					<span id="remarque-label" class="property-label"><g:message code="commande.remarque.label" default="Remarque" /></span>
					
						<span class="property-value" aria-labelledby="remarque-label"><g:fieldValue bean="${commandeInstance}" field="remarque"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${commandeInstance?.tva}">
				<li class="fieldcontain">
					<span id="tva-label" class="property-label"><g:message code="commande.tva.label" default="Tva" /></span>
					
						<span class="property-value" aria-labelledby="tva-label"><g:fieldValue bean="${commandeInstance}" field="tva"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${commandeInstance?.id}" />
					<g:link class="edit" action="edit" id="${commandeInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
