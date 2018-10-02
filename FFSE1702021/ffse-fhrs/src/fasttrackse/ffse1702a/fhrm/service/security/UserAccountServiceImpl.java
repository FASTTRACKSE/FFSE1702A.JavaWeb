package fasttrackse.ffse1702a.fhrm.service.security;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import fasttrackse.ffse1702a.fhrm.dao.security.UserAccountDao;
import fasttrackse.ffse1702a.fhrm.entity.security.UserAccount;

@Service
public class UserAccountServiceImpl implements UserAccountService {
	@Autowired
	private UserAccountDao userAccountDao;

	@Override
	@Transactional
	public UserAccount loadUserByUsername(String username) {

		return this.userAccountDao.loadUserByUsername(username);
	}

}
