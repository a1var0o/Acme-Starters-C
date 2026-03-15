
package acme.features.sponsor.donation;

import javax.annotation.PostConstruct;

import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;

import acme.client.components.principals.Any;
import acme.client.controllers.AbstractController;
import acme.entities.Donation;

@Controller
public class SponsorDonationController extends AbstractController<Any, Donation> {

	// Constructors -----------------------------------------------------------

	@PostConstruct
	protected void initialise() {
		super.setMediaType(MediaType.TEXT_HTML);

		super.addBasicCommand("list", SponsorDonationListService.class);
		super.addBasicCommand("show", SponsorDonationShowService.class);
	}

}
