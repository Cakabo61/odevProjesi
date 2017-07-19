package bootExample.model;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the meetings database table.
 * 
 */
@Entity
@Table(name="meetings")
@NamedQuery(name="Meeting.findAll", query="SELECT m FROM Meeting m")
public class Meeting implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="meetings_id")
	private Integer meetingsId;

	private String description;

	private String name;

	//bi-directional many-to-one association to Department
	@ManyToOne
	@JoinColumn(name="departmentId" , nullable=false , insertable=false , updatable=false)
	private Department departmentBean;

	@Column(name="departmentId" , nullable=false , insertable=true , updatable=true)
	private Integer departmentId;

	public Meeting() {
	}
	
	public Meeting(String description, String name, Department departmentBean) {
		super();
		this.description = description;
		this.name = name;
		this.departmentBean = departmentBean;
	}

	public Integer getDepartmentId() {
		return departmentId;
	}

	public void setDepartmentId(Integer departmentId) {
		this.departmentId = departmentId;
	}

	public Integer getMeetingsId() {
		return this.meetingsId;
	}

	public void setMeetingsId(Integer meetingsId) {
		this.meetingsId = meetingsId;
	}

	public String getDescription() {
		return this.description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Department getDepartmentBean() {
		return departmentBean;
	}

	public void setDepartmentBean(Department departmentBean) {
		this.departmentBean = departmentBean;
	}

	@Override
	public String toString() {
		return "Meeting [meetingsId=" + meetingsId + ", description=" + description + ", name=" + name + ", department="
				+ departmentBean + "]";
	}
	
	

}