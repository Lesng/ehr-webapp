package net.tenoner.ehr.saas.service;

import java.util.List;

import net.tenoner.ehr.saas.domain.RegistedCompany;

public interface RegistedCompanyService {

	List<RegistedCompany> getAllCompanys();

	Long saveRegistedCompany(RegistedCompany company);

	void deleteRegistedCompany(RegistedCompany company);

}
