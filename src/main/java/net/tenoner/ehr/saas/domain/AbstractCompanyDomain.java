package net.tenoner.ehr.saas.domain;

import javax.persistence.Column;
import javax.validation.constraints.NotNull;

import org.macula.core.domain.AbstractAuditable;
import org.macula.core.validation.Length2;

public abstract class AbstractCompanyDomain extends AbstractAuditable<Long> {

	private static final long serialVersionUID = 1L;

	@Column(name = "COMPANY_CODE", nullable = false, length = 50)
	@NotNull
	@Length2(min = 1, max = 50)
	private String companyCode;

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

}
