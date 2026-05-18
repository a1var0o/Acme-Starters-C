<%@page%>

<%@taglib prefix="jstl" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="acme" uri="http://acme-framework.org/"%>

<acme:form>
	<jstl:choose>
		<jstl:when test="${acme:anyOf(_command, 'show|assign-project') && draftMode == false && hasProject == false}">
			<acme:form-textbox code="spokesperson.campaign.list.label.ticker" path="ticker" readonly="true"/>
			<acme:form-textbox code="spokesperson.campaign.list.label.name" path="name" readonly="true"/>
			<acme:form-textarea code="spokesperson.campaign.list.label.description" path="description" readonly="true"/>
			<acme:form-moment code="spokesperson.campaign.list.label.startMoment" path="startMoment" readonly="true"/>
			<acme:form-moment code="spokesperson.campaign.list.label.endMoment" path="endMoment" readonly="true"/>
			<acme:form-url code="spokesperson.campaign.form.label.moreInfo" path="moreInfo" readonly="true"/>
			<acme:form-select code="spokesperson.campaign.form.label.project" path="project" choices="${projects}"/>
			<acme:button code="spokesperson.campaign.form.button.milestones" action="/spokesperson/milestone/list?campaignId=${id}"/>
			<acme:submit code="spokesperson.campaign.form.button.assign-project" action="/spokesperson/campaign/assign-project"/>
		</jstl:when>

		<jstl:when test="${_command == 'show' && draftMode == false && hasProject == true}">
			<acme:form-textbox code="spokesperson.campaign.list.label.ticker" path="ticker" readonly="true"/>
			<acme:form-textbox code="spokesperson.campaign.list.label.name" path="name" readonly="true"/>
			<acme:form-textarea code="spokesperson.campaign.list.label.description" path="description" readonly="true"/>
			<acme:form-moment code="spokesperson.campaign.list.label.startMoment" path="startMoment" readonly="true"/>
			<acme:form-moment code="spokesperson.campaign.list.label.endMoment" path="endMoment" readonly="true"/>
			<acme:form-url code="spokesperson.campaign.form.label.moreInfo" path="moreInfo" readonly="true"/>
			<acme:form-select code="spokesperson.campaign.form.label.project" path="project" choices="${projects}" readonly="true"/>
			<acme:button code="spokesperson.campaign.form.button.milestones" action="/spokesperson/milestone/list?campaignId=${id}"/>
		</jstl:when>

		<jstl:when test="${acme:anyOf(_command, 'show|assign-project') && draftMode == true && hasProject == false}">
			<acme:form-textbox code="spokesperson.campaign.list.label.ticker" path="ticker"/>
			<acme:form-textbox code="spokesperson.campaign.list.label.name" path="name"/>
			<acme:form-textarea code="spokesperson.campaign.list.label.description" path="description"/>
			<acme:form-moment code="spokesperson.campaign.list.label.startMoment" path="startMoment"/>
			<acme:form-moment code="spokesperson.campaign.list.label.endMoment" path="endMoment"/>
			<acme:form-url code="spokesperson.campaign.form.label.moreInfo" path="moreInfo"/>
			<acme:form-select code="spokesperson.campaign.form.label.project" path="project" choices="${projects}"/>
			<acme:button code="spokesperson.campaign.form.button.milestones" action="/spokesperson/milestone/list?campaignId=${id}"/>
			<acme:submit code="spokesperson.campaign.form.button.assign-project" action="/spokesperson/campaign/assign-project"/>
			<acme:submit code="spokesperson.campaign.form.button.update" action="/spokesperson/campaign/update"/>
			<acme:submit code="spokesperson.campaign.form.button.delete" action="/spokesperson/campaign/delete"/>
			<acme:submit code="spokesperson.campaign.form.button.publish" action="/spokesperson/campaign/publish"/>
		</jstl:when>

		<jstl:when test="${_command == 'show' && draftMode == true && hasProject == true}">
			<acme:form-textbox code="spokesperson.campaign.list.label.ticker" path="ticker"/>
			<acme:form-textbox code="spokesperson.campaign.list.label.name" path="name"/>
			<acme:form-textarea code="spokesperson.campaign.list.label.description" path="description"/>
			<acme:form-moment code="spokesperson.campaign.list.label.startMoment" path="startMoment"/>
			<acme:form-moment code="spokesperson.campaign.list.label.endMoment" path="endMoment"/>
			<acme:form-url code="spokesperson.campaign.form.label.moreInfo" path="moreInfo"/>
			<acme:form-select code="spokesperson.campaign.form.label.project" path="project" choices="${projects}" readonly="true"/>
			<acme:button code="spokesperson.campaign.form.button.milestones" action="/spokesperson/milestone/list?campaignId=${id}"/>
			<acme:submit code="spokesperson.campaign.form.button.update" action="/spokesperson/campaign/update"/>
			<acme:submit code="spokesperson.campaign.form.button.delete" action="/spokesperson/campaign/delete"/>
			<acme:submit code="spokesperson.campaign.form.button.publish" action="/spokesperson/campaign/publish"/>
		</jstl:when>

		<jstl:when test="${acme:anyOf(_command, 'update|delete|publish') && draftMode == true}">
			<acme:form-textbox code="spokesperson.campaign.list.label.ticker" path="ticker"/>
			<acme:form-textbox code="spokesperson.campaign.list.label.name" path="name"/>
			<acme:form-textarea code="spokesperson.campaign.list.label.description" path="description"/>
			<acme:form-moment code="spokesperson.campaign.list.label.startMoment" path="startMoment"/>
			<acme:form-moment code="spokesperson.campaign.list.label.endMoment" path="endMoment"/>
			<acme:form-url code="spokesperson.campaign.form.label.moreInfo" path="moreInfo"/>
			<acme:button code="spokesperson.campaign.form.button.milestones" action="/spokesperson/milestone/list?campaignId=${id}"/>
			<acme:submit code="spokesperson.campaign.form.button.update" action="/spokesperson/campaign/update"/>
			<acme:submit code="spokesperson.campaign.form.button.delete" action="/spokesperson/campaign/delete"/>
			<acme:submit code="spokesperson.campaign.form.button.publish" action="/spokesperson/campaign/publish"/>
		</jstl:when>

		<jstl:when test="${_command == 'create'}">
			<acme:form-textbox code="spokesperson.campaign.list.label.ticker" path="ticker"/>
			<acme:form-textbox code="spokesperson.campaign.list.label.name" path="name"/>
			<acme:form-textarea code="spokesperson.campaign.list.label.description" path="description"/>
			<acme:form-moment code="spokesperson.campaign.list.label.startMoment" path="startMoment"/>
			<acme:form-moment code="spokesperson.campaign.list.label.endMoment" path="endMoment"/>
			<acme:form-url code="spokesperson.campaign.form.label.moreInfo" path="moreInfo"/>
			<acme:submit code="spokesperson.campaign.form.button.create" action="/spokesperson/campaign/create"/>
		</jstl:when>
	</jstl:choose>
</acme:form>