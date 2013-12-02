<%@ page import="railspergus.Categorie" %>



<div class="fieldcontain ${hasErrors(bean: categorieInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="categorie.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${categorieInstance?.name}"/>
</div>

