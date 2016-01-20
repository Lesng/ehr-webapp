package net.tenoner.ehr.saas.domain;

import java.sql.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

import org.hibernate.annotations.DynamicInsert;
import org.hibernate.annotations.DynamicUpdate;
import org.macula.base.acl.domain.Organization;
import org.macula.core.hibernate.audit.Auditable;
import org.macula.core.validation.Length2;

@Entity
@DynamicInsert
@DynamicUpdate
@Table(name = "SS_ORG")
@Auditable
public class CompanyOrganization extends AbstractCompanyDomain {

	private static final long serialVersionUID = 1L;

	@ManyToOne(targetEntity = CompanyOrganization.class)
	@JoinColumn(name = "PARENT_ID")
	private Organization parent;

	@OneToMany(targetEntity = CompanyOrganization.class, mappedBy = "parent")
	private List<Organization> children;

	@Column(name = "SIMPLE_NAME", nullable = false, length = 50)
	@NotNull
	@Length2(min = 1, max = 50)
	private String simpleName;

	@Column(name = "NICK_NAME", length = 255)
	@Length2(min = 0, max = 255)
	private String nickName;

	@Column(name = "ORDERED", nullable = false)
	private int ordered;
	@Column(name = "LEADER_ACCOUNT", length = 255)
	@Length2(min = 0, max = 255)
	private String leaderAccount;
	@Column(name = "ORG_LEVEL", nullable = false)
	private int level;
	@Column(name = "ORG_TYPE", nullable = false, length = 2)
	@NotNull
	@Length2(min = 1, max = 2)
	private String type;
	@Column(name = "ENABLED", nullable = false)
	private boolean enabled;

	@Column(name = "FOUND_DATE", nullable = false)
	@NotNull
	private Date foundDate;

}
