<%@ page import="railspergus.Client" %>



<div class="fieldcontain ${hasErrors(bean: clientInstance, field: 'numero', 'error')} required">
	<label for="numero">
		<g:message code="client.numero.label" default="Numero" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="numero" type="number" value="${clientInstance.numero}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: clientInstance, field: 'adresse', 'error')} required">
	<label for="adresse">
		<g:message code="client.adresse.label" default="Adresse" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="adresse" name="adresse.id" from="${railspergus.Adresse.list()}" optionKey="id" required="" value="${clientInstance?.adresse?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: clientInstance, field: 'email', 'error')} ">
	<label for="email">
		<g:message code="client.email.label" default="Email" />
		
	</label>
	<g:textField name="email" value="${clientInstance?.email}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: clientInstance, field: 'nom', 'error')} ">
	<label for="nom">
		<g:message code="client.nom.label" default="Nom" />
		
	</label>
	<g:textField name="nom" value="${clientInstance?.nom}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: clientInstance, field: 'prenom', 'error')} ">
	<label for="prenom">
		<g:message code="client.prenom.label" default="Prenom" />
		
	</label>
	<g:textField name="prenom" value="${clientInstance?.prenom}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: clientInstance, field: 'telephone', 'error')} ">
	<label for="telephone">
		<g:message code="client.telephone.label" default="Telephone" />
		
	</label>
	<g:textField name="telephone" value="${clientInstance?.telephone}"/>
</div>

