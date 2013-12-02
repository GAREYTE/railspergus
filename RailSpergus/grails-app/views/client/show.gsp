
<%@ page import="railspergus.Client" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'client.label', default: 'Client')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-client" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-client" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list client">
			
				<g:if test="${clientInstance?.numero}">
				<li class="fieldcontain">
					<span id="numero-label" class="property-label"><g:message code="client.numero.label" default="Numero" /></span>
					
						<span class="property-value" aria-labelledby="numero-label"><g:fieldValue bean="${clientInstance}" field="numero"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${clientInstance?.adresse}">
				<li class="fieldcontain">
					<span id="adresse-label" class="property-label"><g:message code="client.adresse.label" default="Adresse" /></span>
					
						<span class="property-value" aria-labelledby="adresse-label"><g:link controller="adresse" action="show" id="${clientInstance?.adresse?.id}">${clientInstance?.adresse?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${clientInstance?.email}">
				<li class="fieldcontain">
					<span id="email-label" class="property-label"><g:message code="client.email.label" default="Email" /></span>
					
						<span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${clientInstance}" field="email"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${clientInstance?.nom}">
				<li class="fieldcontain">
					<span id="nom-label" class="property-label"><g:message code="client.nom.label" default="Nom" /></span>
					
						<span class="property-value" aria-labelledby="nom-label"><g:fieldValue bean="${clientInstance}" field="nom"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${clientInstance?.prenom}">
				<li class="fieldcontain">
					<span id="prenom-label" class="property-label"><g:message code="client.prenom.label" default="Prenom" /></span>
					
						<span class="property-value" aria-labelledby="prenom-label"><g:fieldValue bean="${clientInstance}" field="prenom"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${clientInstance?.telephone}">
				<li class="fieldcontain">
					<span id="telephone-label" class="property-label"><g:message code="client.telephone.label" default="Telephone" /></span>
					
						<span class="property-value" aria-labelledby="telephone-label"><g:fieldValue bean="${clientInstance}" field="telephone"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${clientInstance?.id}" />
					<g:link class="edit" action="edit" id="${clientInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
