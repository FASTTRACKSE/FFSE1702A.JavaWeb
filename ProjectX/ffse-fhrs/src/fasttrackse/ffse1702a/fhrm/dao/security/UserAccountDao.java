package fasttrackse.ffse1702a.fhrm.dao.security;

import fasttrackse.ffse1702a.fhrm.entity.security.UserAccount;

public interface UserAccountDao {
	public UserAccount loadUserByUsername(final String username);
}