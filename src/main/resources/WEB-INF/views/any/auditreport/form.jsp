<%@page%>

<%@taglib prefix="jstl" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="acme" uri="http://acme-framework.org/"%>

<acme:form>
	<acme:form-textbox code="any.auditreport.show.label.name" path="name"/>
	<acme:form-textarea code="any.auditreport.show.label.description" path="description"/>
	<acme:form-moment code="any.auditreport.show.label.startMoment" path="startMoment"/>
	<acme:form-moment code="any.auditreport.show.label.endMoment" path="endMoment"/>
	<acme:button code="any.auditreport.show.label.auditor" action="/any/auditor/show?id=${id}"/>
	<acme:button code="any.auditreport.show.label.auditsection" action="/any/auditsection/list?id=${id}"/>
</acme:form>