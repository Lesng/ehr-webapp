package net.tenoner.ehr.saas.service.impl;

import java.util.List;

import net.tenoner.ehr.saas.domain.RegistedCompany;
import net.tenoner.ehr.saas.repository.RegistedCompanyRepository;
import net.tenoner.ehr.saas.service.RegistedCompanyService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class RegistedCompanyServiceImpl implements RegistedCompanyService {

	@Autowired
	private RegistedCompanyRepository registedCompanyRepository;

	@Override
	@Transactional(readOnly = true)
	public List<RegistedCompany> getAllCompanys() {
		return registedCompanyRepository.findAll();
	}

	@Override
	@Transactional(readOnly = true)
	public Page<RegistedCompany> findCompanys(String keywords, Pageable page) {
		if (keywords == null) {
			keywords = "";
		}
		keywords = '%' + keywords + '%';
		return registedCompanyRepository.findKeywordsCompanys(keywords, page);
	}

	@Override
	@Transactional
	public Long saveRegistedCompany(RegistedCompany company) {
		registedCompanyRepository.save(company);
		return company.getId();
	}

	@Override
	@Transactional
	public void deleteRegistedCompany(RegistedCompany company) {
		registedCompanyRepository.delete(company);
	}

}
