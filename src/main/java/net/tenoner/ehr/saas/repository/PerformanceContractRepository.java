package net.tenoner.ehr.saas.repository;

import net.tenoner.ehr.performance.domain.PerformanceContract;

import org.macula.core.repository.MaculaJpaRepository;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

public interface PerformanceContractRepository extends MaculaJpaRepository<PerformanceContract, Long> {

	@Query("from PerformanceContract t where (t.name like :keywords or t.state like :keywords) and t.companyCode = :companyCode")
	Page<PerformanceContract> findKeywordsContract(@Param("keywords") String keywords,
			@Param("companyCode") String companyCode, Pageable page);

}
