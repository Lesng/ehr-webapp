package net.tenoner.ehr.saas.service.impl;

import java.util.List;

import net.tenoner.ehr.performance.domain.PerformanceContract;
import net.tenoner.ehr.saas.repository.PerformanceContractRepository;
import net.tenoner.ehr.saas.service.PerformanceContractService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class PerformanceContractServiceImpl implements PerformanceContractService {

	@Autowired
	private PerformanceContractRepository performanceContractRepository;

	@Override
	@Transactional(readOnly = true)
	public List<PerformanceContract> getAllContracts() {
		return performanceContractRepository.findAll();
	}

	@Override
	@Transactional(readOnly = true)
	public Page<PerformanceContract> findContracts(String keywords, String companyCode, Pageable page) {
		if (keywords == null) {
			keywords = "";
		}
		keywords = '%' + keywords + '%';
		return performanceContractRepository.findKeywordsContract(keywords, companyCode, page);
	}

	@Override
	@Transactional
	public Long savePerformanceContract(PerformanceContract contract) {
		return performanceContractRepository.save(contract).getId();
	}

	@Override
	@Transactional
	public void deletePerformanceContract(PerformanceContract contract) {
		performanceContractRepository.delete(contract);

	}

}
