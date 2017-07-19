package bootExample.model;

import java.io.Serializable;
import javax.persistence.*;

import com.fasterxml.jackson.annotation.JsonIgnore;

import java.util.List;


/**
 * The persistent class for the department database table.
 * 
 */
@Entity
@NamedQuery(name="Department.findAll", query="SELECT d FROM Department d")
public class Department implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="department_id")
	private Integer departmentId;

	private String description;

	private String name;

	//bi-directional many-to-one association to Employee	
	@OneToOne
    @JoinColumn(name = "employeeId" , updatable = false , insertable = false)
	private Employee employeeBean;
	
    @Column(name = "employeeId"  , updatable = true , insertable = true)
	private Integer employeeId;

	//bi-directional many-to-one association to Meeting
    @JsonIgnore
	@OneToMany(mappedBy="departmentBean" , cascade = CascadeType.ALL)
	private List<Meeting> meetings;

	public Department() {
	}
	
	

	public Department(String description, String name, Employee employeeBean) {
		super();
		this.description = description;
		this.name = name;
		this.employeeBean = employeeBean;
	}

	public Integer getEmployeeId() {
		return employeeId;
	}

	public void setEmployeeId(Integer employeeId) {
		this.employeeId = employeeId;
	}

	public Integer getDepartmentId() {
		return this.departmentId;
	}

	public void setDepartmentId(Integer departmentId) {
		this.departmentId = departmentId;
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

	public Employee getEmployeeBean() {
		return this.employeeBean;
	}

	public void setEmployeeBean(Employee employeeBean) {
		this.employeeBean = employeeBean;
	}

	public List<Meeting> getMeetings() {
		return this.meetings;
	}

	public void setMeetings(List<Meeting> meetings) {
		this.meetings = meetings;
	}
	

	@Override
	public String toString() {
		return "Department [departmentId=" + departmentId + ", description=" + description + ", name=" + name
				+ ", employeeBean=" + employeeBean + "]";
	}	
	

}