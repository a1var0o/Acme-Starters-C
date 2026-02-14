
package acme.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.ManyToOne;
import javax.validation.Valid;

import acme.client.components.basis.AbstractEntity;
import acme.client.components.datatypes.Moment;
import acme.client.components.validation.Mandatory;
import acme.client.components.validation.Optional;
import acme.client.components.validation.ValidMoment;
import acme.client.components.validation.ValidMoment.Constraint;
import acme.client.components.validation.ValidUrl;
import lombok.Getter;
import lombok.Setter;

@Entity
@Getter
@Setter
public class Invention extends AbstractEntity {

	// Serialisation identifier -----------------------------------------------

	private static final long	serialVersionUID	= 1L;

	// ------------------------------------------------------------------------

	@Mandatory
	// @ValidTicker
	@Column(unique = true)
	String						ticker;

	@Mandatory
	// @ValidHeader
	@Column
	String						header;

	@Mandatory
	// @ValidText
	@Column
	String						description;

	@Mandatory
	@ValidMoment(constraint = Constraint.ENFORCE_FUTURE)
	// @Temporal(TemporalType.TIMESTAMP)
	Moment						startMoment;

	@Mandatory
	@ValidMoment(constraint = Constraint.ENFORCE_FUTURE)
	// @Temporal(TemporalType.TIMESTAMP)
	Moment						endMoment;

	@Optional
	@ValidUrl
	@Column
	String						moreInfo;

	//	@Mandatory
	//	@Valid
	//	@Transient
	//	public Double monthsActive() {
	//		
	//	}
	//
	//	@Mandatory
	//	@ValidMoney()
	//	@Transient
	//	public Money cost() {
	//		
	//	}

	@Mandatory
	@Valid
	@Column
	Boolean						draftMode;

	@Mandatory
	@Valid
	@ManyToOne(optional = false)
	Inventor					inventor;
}
