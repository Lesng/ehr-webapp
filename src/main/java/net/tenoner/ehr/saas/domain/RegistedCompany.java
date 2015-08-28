package net.tenoner.ehr.saas.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

import org.hibernate.annotations.DynamicInsert;
import org.hibernate.annotations.DynamicUpdate;
import org.macula.core.domain.AbstractAuditable;
import org.macula.core.hibernate.audit.Auditable;
import org.macula.core.validation.Length2;

@Entity
@DynamicInsert
@DynamicUpdate
@Table(name = "SS_COMPANY")
@Auditable
public class RegistedCompany extends AbstractAuditable<Long> {

	private static final long serialVersionUID = 1L;

	@Column(name = "COMPANY_CODE", nullable = false, unique = true, length = 50)
	@NotNull
	@Length2(min = 1, max = 50)
	private String companyCode;

	@Column(name = "COMPANY_NAME", nullable = false, length = 50)
	@NotNull
	@Length2(min = 1, max = 50)
	private String companyName;

	@Column(name = "SECURE_KEY", nullable = false, length = 1024)
	@NotNull
	@Length2(min = 1, max = 1024)
	private String secureKey;
	@Column(name = "PRIVATE_KEY", nullable = false, length = 1024)
	@NotNull
	@Length2(min = 1, max = 1024)
	private String privateKey;
	@Column(name = "HOME_PAGE", nullable = false, length = 255)
	@NotNull
	@Length2(min = 1, max = 255)
	private String homepage;

	@Column(name = "SUPERVISOR", length = 255)
	@Length2(min = 0, max = 255)
	private String supervisor;

	@Column(name = "CONTACT", length = 255)
	@Length2(min = 0, max = 255)
	private String contact;

	@Column(name = "COMMENTS", length = 255)
	@Length2(min = 0, max = 255)
	private String comments;

	/**
	 * @return the companyCode
	 */
	public String getCompanyCode() {
		return companyCode;
	}

	/**
	 * @param companyCode the companyCode to set
	 */
	public void setCompanyCode(String companyCode) {
		this.companyCode = companyCode;
	}

	/**
	 * @return the companyName
	 */
	public String getCompanyName() {
		return companyName;
	}

	/**
	 * @param companyName the companyName to set
	 */
	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}

	/**
	 * @return the secureKey
	 */
	public String getSecureKey() {
		return secureKey;
	}

	/**
	 * @param secureKey the secureKey to set
	 */
	public void setSecureKey(String secureKey) {
		this.secureKey = secureKey;
	}

	/**
	 * @return the privateKey
	 */
	public String getPrivateKey() {
		return privateKey;
	}

	/**
	 * @param privateKey the privateKey to set
	 */
	public void setPrivateKey(String privateKey) {
		this.privateKey = privateKey;
	}

	/**
	 * @return the homepage
	 */
	public String getHomepage() {
		return homepage;
	}

	/**
	 * @param homepage the homepage to set
	 */
	public void setHomepage(String homepage) {
		this.homepage = homepage;
	}

	/**
	 * @return the supervisor
	 */
	public String getSupervisor() {
		return supervisor;
	}

	/**
	 * @param supervisor the supervisor to set
	 */
	public void setSupervisor(String supervisor) {
		this.supervisor = supervisor;
	}

	/**
	 * @return the contact
	 */
	public String getContact() {
		return contact;
	}

	/**
	 * @param contact the contact to set
	 */
	public void setContact(String contact) {
		this.contact = contact;
	}

	/**
	 * @return the comments
	 */
	public String getComments() {
		return comments;
	}

	/**
	 * @param comments the comments to set
	 */
	public void setComments(String comments) {
		this.comments = comments;
	}

}
