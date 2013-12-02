<%@ page import="railspergus.Adresse" %>



<div class="fieldcontain ${hasErrors(bean: adresseInstance, field: 'codePostal', 'error')} ">
	<label for="codePostal">
		<g:message code="adresse.codePostal.label" default="Code Postal" />
		
	</label>
	<g:textField name="codePostal" value="${adresseInstance?.codePostal}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: adresseInstance, field: 'rue', 'error')} ">
	<label for="rue">
		<g:message code="adresse.rue.label" default="Rue" />
		
	</label>
	<g:textField name="rue" value="${adresseInstance?.rue}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: adresseInstance, field: 'ville', 'error')} ">
	<label for="ville">
		<g:message code="adresse.ville.label" default="Ville" />
		
	</label>
	<g:textField name="ville" value="${adresseInstance?.ville}"/>
</div>

