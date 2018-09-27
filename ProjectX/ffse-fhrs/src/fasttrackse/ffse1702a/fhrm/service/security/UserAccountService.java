package fasttrackse.ffse1702a.fhrm.service.security;

import fasttrackse.ffse1702a.fhrm.entity.security.UserAccount;

public interface UserAccountService {
	public UserAccount loadUserByUsername(final String username);
}
