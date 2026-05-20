
package acme.features.projectmember.project;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import acme.client.services.AbstractService;
import acme.entities.Project;
import acme.realms.ProjectMember;

@Service
public class ProjectMemberJobicyListService extends AbstractService<ProjectMember, Project> {

	@Autowired
	private ProjectMemberProjectRepository	repository;

	private Project							project;


	@Override
	public void load() {
		int id = super.getRequest().getData("projectId", int.class);
		this.project = this.repository.findProjectById(id);
	}

	@Override
	public void authorise() {
		boolean status = this.repository.isMemberOfProject(this.getRequest().getPrincipal().getActiveRealm().getId(), this.project.getId());
		super.setAuthorised(status);
	}

	@Override
	public void bind() {
		;
	}

	@Override
	public void unbind() {
		super.unbindGlobal("keyWords", this.project.getKeywords());
		super.unbindGlobal("projectId", this.project.getId());
	}
}
