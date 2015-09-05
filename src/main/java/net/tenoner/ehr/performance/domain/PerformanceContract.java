package net.tenoner.ehr.performance.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

import net.tenoner.ehr.saas.domain.AbstractCompanyDomain;

import org.hibernate.annotations.DynamicInsert;
import org.hibernate.annotations.DynamicUpdate;
import org.macula.core.hibernate.audit.Auditable;
import org.macula.core.validation.Length2;

@Entity
@DynamicInsert
@DynamicUpdate
@Table(name = "PERFORMANCE_CONTRACT")
@Auditable
public class PerformanceContract extends AbstractCompanyDomain {

	private static final long serialVersionUID = 1L;

	@Column(name = "NAME", nullable = false, unique = true, length = 50)
	@NotNull
	@Length2(min = 1, max = 50)
	private String name;

	@Column(name = "STATE", nullable = false, unique = true, length = 50)
	@NotNull
	@Length2(min = 1, max = 50)
	private String state;

	/**
	 * @return the name
	 */
	public String getName() {
		return name;
	}

	/**
	 * @param name the name to set
	 */
	public void setName(String name) {
		this.name = name;
	}

	/**
	 * @return the state
	 */
	public String getState() {
		return state;
	}

	/**
	 * @param state the state to set
	 */
	public void setState(String state) {
		this.state = state;
	}
}
