<%@ page import="railspergus.Produit" %>



<div class="fieldcontain ${hasErrors(bean: produitInstance, field: 'categorie', 'error')} required">
	<label for="categorie">
		<g:message code="produit.categorie.label" default="Categorie" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="categorie" name="categorie.id" from="${railspergus.Categorie.list()}" optionKey="id" required="" value="${produitInstance?.categorie?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: produitInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="produit.description.label" default="Description" />
		
	</label>
	<g:textField name="description" value="${produitInstance?.description}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: produitInstance, field: 'numero', 'error')} required">
	<label for="numero">
		<g:message code="produit.numero.label" default="Numero" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="numero" type="number" value="${produitInstance.numero}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: produitInstance, field: 'prixUnitaire', 'error')} required">
	<label for="prixUnitaire">
		<g:message code="produit.prixUnitaire.label" default="Prix Unitaire" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="prixUnitaire" value="${fieldValue(bean: produitInstance, field: 'prixUnitaire')}" required=""/>
</div>

