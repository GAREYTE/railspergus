<%@ page import="railspergus.Commande" %>



<div class="fieldcontain ${hasErrors(bean: commandeInstance, field: 'annee', 'error')} required">
	<label for="annee">
		<g:message code="commande.annee.label" default="Annee" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="annee" type="number" value="${commandeInstance.annee}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: commandeInstance, field: 'client', 'error')} required">
	<label for="client">
		<g:message code="commande.client.label" default="Client" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="client" name="client.id" from="${railspergus.Client.list()}" optionKey="id" required="" value="${commandeInstance?.client?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: commandeInstance, field: 'dateCommande', 'error')} required">
	<label for="dateCommande">
		<g:message code="commande.dateCommande.label" default="Date Commande" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="dateCommande" precision="day"  value="${commandeInstance?.dateCommande}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: commandeInstance, field: 'dateLivraison', 'error')} required">
	<label for="dateLivraison">
		<g:message code="commande.dateLivraison.label" default="Date Livraison" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="dateLivraison" precision="day"  value="${commandeInstance?.dateLivraison}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: commandeInstance, field: 'datePreparation', 'error')} required">
	<label for="datePreparation">
		<g:message code="commande.datePreparation.label" default="Date Preparation" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="datePreparation" precision="day"  value="${commandeInstance?.datePreparation}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: commandeInstance, field: 'livrePar', 'error')} required">
	<label for="livrePar">
		<g:message code="commande.livrePar.label" default="Livre Par" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="livrePar" name="livrePar.id" from="${railspergus.Salarie.list()}" optionKey="id" required="" value="${commandeInstance?.livrePar?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: commandeInstance, field: 'livreePar', 'error')} required">
	<label for="livreePar">
		<g:message code="commande.livreePar.label" default="Livree Par" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="livreePar" name="livreePar.id" from="${railspergus.Salarie.list()}" optionKey="id" required="" value="${commandeInstance?.livreePar?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: commandeInstance, field: 'numero', 'error')} required">
	<label for="numero">
		<g:message code="commande.numero.label" default="Numero" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="numero" type="number" value="${commandeInstance.numero}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: commandeInstance, field: 'preparePar', 'error')} required">
	<label for="preparePar">
		<g:message code="commande.preparePar.label" default="Prepare Par" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="preparePar" name="preparePar.id" from="${railspergus.Salarie.list()}" optionKey="id" required="" value="${commandeInstance?.preparePar?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: commandeInstance, field: 'prisePar', 'error')} required">
	<label for="prisePar">
		<g:message code="commande.prisePar.label" default="Prise Par" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="prisePar" name="prisePar.id" from="${railspergus.Salarie.list()}" optionKey="id" required="" value="${commandeInstance?.prisePar?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: commandeInstance, field: 'remarque', 'error')} ">
	<label for="remarque">
		<g:message code="commande.remarque.label" default="Remarque" />
		
	</label>
	<g:textField name="remarque" value="${commandeInstance?.remarque}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: commandeInstance, field: 'tva', 'error')} required">
	<label for="tva">
		<g:message code="commande.tva.label" default="Tva" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="tva" type="number" value="${commandeInstance.tva}" required=""/>
</div>

