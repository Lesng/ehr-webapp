package net.tenoner.ehr.saas.service;

import java.util.List;

import net.tenoner.ehr.saas.domain.RegistedCompany;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

public interface RegistedCompanyService {

	List<RegistedCompany> getAllCompanys();

	Page<RegistedCompany> findCompanys(String keywords, Pageable page);

	Long saveRegistedCompany(RegistedCompany company);

	void deleteRegistedCompany(RegistedCompany company);

}
