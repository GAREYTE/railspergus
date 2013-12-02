
<%@ page import="railspergus.Salarie" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'salarie.label', default: 'Salarie')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-salarie" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-salarie" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="numero" title="${message(code: 'salarie.numero.label', default: 'Numero')}" />
					
						<g:sortableColumn property="nom" title="${message(code: 'salarie.nom.label', default: 'Nom')}" />
					
						<g:sortableColumn property="visible" title="${message(code: 'salarie.visible.label', default: 'Visible')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${salarieInstanceList}" status="i" var="salarieInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${salarieInstance.id}">${fieldValue(bean: salarieInstance, field: "numero")}</g:link></td>
					
						<td>${fieldValue(bean: salarieInstance, field: "nom")}</td>
					
						<td><g:formatBoolean boolean="${salarieInstance.visible}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${salarieInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
