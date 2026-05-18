<%@page%>

<%@taglib prefix="jstl" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="acme" uri="http://acme-framework.org/"%>

<acme:form>
	<jstl:choose>
		<jstl:when test="${acme:anyOf(_command, 'show|assign-project') && draftMode == false && hasProject == false}">
			<acme:form-textbox code="inventor.invention.list.label.ticker" path="ticker" readonly="true"/>
			<acme:form-textbox code="inventor.invention.list.label.name" path="name" readonly="true"/>
			<acme:form-textarea code="inventor.invention.list.label.description" path="description" readonly="true"/>
			<acme:form-moment code="inventor.invention.list.label.startMoment" path="startMoment" readonly="true"/>
			<acme:form-moment code="inventor.invention.list.label.endMoment" path="endMoment" readonly="true"/>
			<acme:form-textarea code="inventor.invention.form.label.moreInfo" path="moreInfo" readonly="true"/>
			<acme:form-select code="inventor.invention.form.label.project" path="project" choices="${projects}"/>
			<acme:button code="inventor.invention.form.button.parts" action="/inventor/part/list?inventionId=${id}"/>
			<acme:submit code="inventor.invention.form.button.assign-project" action="/inventor/invention/assign-project"/>
		</jstl:when>

		<jstl:when test="${_command == 'show' && draftMode == false && hasProject == true}">
			<acme:form-textbox code="inventor.invention.list.label.ticker" path="ticker" readonly="true"/>
			<acme:form-textbox code="inventor.invention.list.label.name" path="name" readonly="true"/>
			<acme:form-textarea code="inventor.invention.list.label.description" path="description" readonly="true"/>
			<acme:form-moment code="inventor.invention.list.label.startMoment" path="startMoment" readonly="true"/>
			<acme:form-moment code="inventor.invention.list.label.endMoment" path="endMoment" readonly="true"/>
			<acme:form-textarea code="inventor.invention.form.label.moreInfo" path="moreInfo" readonly="true"/>
			<acme:form-select code="inventor.invention.form.label.project" path="project" choices="${projects}" readonly="true"/>
			<acme:button code="inventor.invention.form.button.parts" action="/inventor/part/list?inventionId=${id}"/>
		</jstl:when>

		<jstl:when test="${acme:anyOf(_command, 'show|assign-project') && draftMode == true && hasProject == false}">
			<acme:form-textbox code="inventor.invention.list.label.ticker" path="ticker"/>
			<acme:form-textbox code="inventor.invention.list.label.name" path="name"/>
			<acme:form-textarea code="inventor.invention.list.label.description" path="description"/>
			<acme:form-moment code="inventor.invention.list.label.startMoment" path="startMoment"/>
			<acme:form-moment code="inventor.invention.list.label.endMoment" path="endMoment"/>
			<acme:form-textarea code="inventor.invention.form.label.moreInfo" path="moreInfo"/>
			<acme:form-select code="inventor.invention.form.label.project" path="project" choices="${projects}"/>
			<acme:button code="inventor.invention.form.button.parts" action="/inventor/part/list?inventionId=${id}"/>
			<acme:submit code="inventor.invention.form.button.assign-project" action="/inventor/invention/assign-project"/>
			<acme:submit code="inventor.invention.form.button.update" action="/inventor/invention/update"/>
			<acme:submit code="inventor.invention.form.button.delete" action="/inventor/invention/delete"/>
			<acme:submit code="inventor.invention.form.button.publish" action="/inventor/invention/publish"/>
		</jstl:when>

		<jstl:when test="${_command == 'show' && draftMode == true && hasProject == true}">
			<acme:form-textbox code="inventor.invention.list.label.ticker" path="ticker"/>
			<acme:form-textbox code="inventor.invention.list.label.name" path="name"/>
			<acme:form-textarea code="inventor.invention.list.label.description" path="description"/>
			<acme:form-moment code="inventor.invention.list.label.startMoment" path="startMoment"/>
			<acme:form-moment code="inventor.invention.list.label.endMoment" path="endMoment"/>
			<acme:form-textarea code="inventor.invention.form.label.moreInfo" path="moreInfo"/>
			<acme:form-select code="inventor.invention.form.label.project" path="project" choices="${projects}" readonly="true"/>
			<acme:button code="inventor.invention.form.button.parts" action="/inventor/part/list?inventionId=${id}"/>
			<acme:submit code="inventor.invention.form.button.update" action="/inventor/invention/update"/>
			<acme:submit code="inventor.invention.form.button.delete" action="/inventor/invention/delete"/>
			<acme:submit code="inventor.invention.form.button.publish" action="/inventor/invention/publish"/>
		</jstl:when>

		<jstl:when test="${acme:anyOf(_command, 'update|delete|publish') && draftMode == true}">
			<acme:form-textbox code="inventor.invention.list.label.ticker" path="ticker"/>
			<acme:form-textbox code="inventor.invention.list.label.name" path="name"/>
			<acme:form-textarea code="inventor.invention.list.label.description" path="description"/>
			<acme:form-moment code="inventor.invention.list.label.startMoment" path="startMoment"/>
			<acme:form-moment code="inventor.invention.list.label.endMoment" path="endMoment"/>
			<acme:form-textarea code="inventor.invention.form.label.moreInfo" path="moreInfo"/>
			<acme:button code="inventor.invention.form.button.parts" action="/inventor/part/list?inventionId=${id}"/>
			<acme:submit code="inventor.invention.form.button.update" action="/inventor/invention/update"/>
			<acme:submit code="inventor.invention.form.button.delete" action="/inventor/invention/delete"/>
			<acme:submit code="inventor.invention.form.button.publish" action="/inventor/invention/publish"/>
		</jstl:when>

		<jstl:when test="${_command == 'create'}">
			<acme:form-textbox code="inventor.invention.list.label.ticker" path="ticker"/>
			<acme:form-textbox code="inventor.invention.list.label.name" path="name"/>
			<acme:form-textarea code="inventor.invention.list.label.description" path="description"/>
			<acme:form-moment code="inventor.invention.list.label.startMoment" path="startMoment"/>
			<acme:form-moment code="inventor.invention.list.label.endMoment" path="endMoment"/>
			<acme:form-textarea code="inventor.invention.form.label.moreInfo" path="moreInfo"/>
			<acme:submit code="inventor.invention.form.button.create" action="/inventor/invention/create"/>
		</jstl:when>
	</jstl:choose>
</acme:form>
