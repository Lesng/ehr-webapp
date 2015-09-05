package net.tenoner.ehr.saas.service;

import java.util.List;

import net.tenoner.ehr.performance.domain.PerformanceContract;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

public interface PerformanceContractService {

	List<PerformanceContract> getAllContracts();

	Page<PerformanceContract> findContracts(String keywords, String companyCode, Pageable page);

	Long savePerformanceContract(PerformanceContract company);

	void deletePerformanceContract(PerformanceContract company);
}
