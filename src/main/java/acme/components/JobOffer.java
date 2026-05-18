
package acme.components;

import java.util.Collection;
import java.util.Date;

import acme.client.components.basis.AbstractEntity;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class JobOffer extends AbstractEntity {

	public Integer				jobId;

	public String				url;

	public String				jobSlug;

	public String				jobTitle;

	public String				companyLogo;

	public Collection<String>	jobIndustry;

	public Collection<String>	jobType;

	public String				jobGeo;

	public String				jobLevel;

	public String				jobExcerpt;

	public String				jobDescription;

	public Date					pubDate;

	public Integer				salaryMin;

	public String				salaryCurrency;

	public String				salaryPeriod;
}
