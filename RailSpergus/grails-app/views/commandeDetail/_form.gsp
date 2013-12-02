<%@ page import="railspergus.CommandeDetail" %>



<div class="fieldcontain ${hasErrors(bean: commandeDetailInstance, field: 'commande', 'error')} required">
	<label for="commande">
		<g:message code="commandeDetail.commande.label" default="Commande" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="commande" name="commande.id" from="${railspergus.Commande.list()}" optionKey="id" required="" value="${commandeDetailInstance?.commande?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: commandeDetailInstance, field: 'produit', 'error')} required">
	<label for="produit">
		<g:message code="commandeDetail.produit.label" default="Produit" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="produit" name="produit.id" from="${railspergus.Produit.list()}" optionKey="id" required="" value="${commandeDetailInstance?.produit?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: commandeDetailInstance, field: 'quantite', 'error')} required">
	<label for="quantite">
		<g:message code="commandeDetail.quantite.label" default="Quantite" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="quantite" value="${fieldValue(bean: commandeDetailInstance, field: 'quantite')}" required=""/>
</div>

