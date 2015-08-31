package net.tenoner.ehr.saas.repository;

import net.tenoner.ehr.saas.domain.RegistedCompany;

import org.macula.core.repository.MaculaJpaRepository;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

public interface RegistedCompanyRepository extends MaculaJpaRepository<RegistedCompany, Long> {

	@Query("from RegistedCompany t where t.companyName like :keywords or t.companyCode like :keywords")
	Page<RegistedCompany> findKeywordsCompanys(@Param("keywords") String keywords, Pageable page);

}
