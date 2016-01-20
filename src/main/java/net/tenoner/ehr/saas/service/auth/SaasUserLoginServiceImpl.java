package net.tenoner.ehr.saas.service.auth;

import net.tenoner.ehr.saas.domain.RegistedUser;
import net.tenoner.ehr.saas.repository.RegistedUserRepository;

import org.macula.base.security.principal.CustomUserLoginRepository;
import org.macula.base.security.principal.UserPrincipal;
import org.macula.base.security.principal.impl.UserPrincipalImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

@Service
public class SaasUserLoginServiceImpl implements CustomUserLoginRepository {

	@Autowired
	private RegistedUserRepository registedUserRepository;

	@Override
	public UserPrincipal loadUserByUsername(String username) {
		RegistedUser user = registedUserRepository.findByUserName(username);
		if (user != null) {
			UserPrincipalImpl principal = new UserPrincipalImpl(user.getUserName());
			principal.setPassword(user.getPassword());
			return principal;
		}
		throw new UsernameNotFoundException("AbstractUserDetailsAuthenticationProvider.badCredentials");
	}

	@Override
	public void postValidateUserPrincipal(UserPrincipal principal) {
		if (principal.isIllegalRequest()) {
			// throw exception
		}
	}

}
