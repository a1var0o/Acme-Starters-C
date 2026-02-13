
package acme.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.ManyToOne;
import javax.validation.Valid;

import acme.client.components.basis.AbstractEntity;
import acme.client.components.datatypes.Money;
import acme.client.components.validation.Mandatory;
import acme.client.components.validation.ValidMoney;
import lombok.Getter;
import lombok.Setter;

@Entity
@Getter
@Setter
public class Part extends AbstractEntity {

	// Serialisation identifier -----------------------------------------------

	private static final long	serialVersionUID	= 1L;

	// ------------------------------------------------------------------------

	@Mandatory
	// @ValidHeader
	@Column
	String						name;

	@Mandatory
	// @ValidText
	@Column
	String						description;

	@Mandatory
	@ValidMoney(min = 0)
	@Column
	Money						cost;

	@Mandatory
	@Valid
	@Column
	PartKind					kind;

	@Mandatory
	@Valid
	@ManyToOne(optional = false)
	Invention					invention;

}
