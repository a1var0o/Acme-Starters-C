
package acme.features.any.tactic;

import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import acme.client.repositories.AbstractRepository;
import acme.entities.Tactic;

@Repository
public interface AnyTacticRepository extends AbstractRepository {

	@Query("select t from Tactic t where t.id = :id")
	Tactic findTacticById(int id);

	//@Query("select t from Tactic t where t.strategy.id == :strategyId")
	//Collection<Tactic> findTacticsByStrategy(int strategyId);
}
