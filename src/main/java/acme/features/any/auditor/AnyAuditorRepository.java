
package acme.features.any.auditor;

import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import acme.client.repositories.AbstractRepository;
import acme.entities.AuditReport;

@Repository
public interface AnyAuditorRepository extends AbstractRepository {

	@Query("select i from AuditReport i where i.id = :auditreportId")
	AuditReport findAuditReport(int auditreportId);

}
