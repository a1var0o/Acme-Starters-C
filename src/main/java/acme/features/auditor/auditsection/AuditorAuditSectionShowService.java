
package acme.features.auditor.auditsection;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import acme.client.components.models.Tuple;
import acme.client.services.AbstractService;
import acme.entities.AuditSection;
import acme.realms.Auditor;

@Service
public class AuditorAuditSectionShowService extends AbstractService<Auditor, AuditSection> {

	@Autowired
	private AuditorAuditSectionRepository	repository;

	private AuditSection					auditsection;


	@Override
	public void load() {
		int id;

		id = super.getRequest().getData("id", int.class);
		this.auditsection = this.repository.findAuditSectionById(id);
	}

	@Override
	public void authorise() {
		boolean status;
		status = this.auditsection != null && (this.auditsection.getAuditReport().getAuditor().isPrincipal() || !this.auditsection.getAuditReport().getDraftMode());
		super.setAuthorised(status);
	}

	@Override
	public void unbind() {
		Tuple tuple;

		tuple = super.unbindObject(this.auditsection, "name", "notes", "hours", "kind", "auditreport");
		tuple.put("auditReportId", this.auditsection.getAuditReport().getId());
		tuple.put("draftMode", this.auditsection.getAuditReport().getDraftMode());
	}
}
