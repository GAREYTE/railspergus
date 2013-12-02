<%@ page import="railspergus.Salarie" %>



<div class="fieldcontain ${hasErrors(bean: salarieInstance, field: 'numero', 'error')} required">
	<label for="numero">
		<g:message code="salarie.numero.label" default="Numero" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="numero" type="number" value="${salarieInstance.numero}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: salarieInstance, field: 'nom', 'error')} ">
	<label for="nom">
		<g:message code="salarie.nom.label" default="Nom" />
		
	</label>
	<g:textField name="nom" value="${salarieInstance?.nom}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: salarieInstance, field: 'visible', 'error')} ">
	<label for="visible">
		<g:message code="salarie.visible.label" default="Visible" />
		
	</label>
	<g:checkBox name="visible" value="${salarieInstance?.visible}" />
</div>

