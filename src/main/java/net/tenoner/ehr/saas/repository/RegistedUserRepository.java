package net.tenoner.ehr.saas.repository;

import net.tenoner.ehr.saas.domain.RegistedUser;

import org.macula.core.repository.MaculaJpaRepository;

public interface RegistedUserRepository extends MaculaJpaRepository<RegistedUser, Long> {

	RegistedUser findByUserName(String userName);

}
