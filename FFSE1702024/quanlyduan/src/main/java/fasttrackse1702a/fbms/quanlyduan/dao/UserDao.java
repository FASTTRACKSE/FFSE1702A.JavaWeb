package fasttrackse1702a.fbms.quanlyduan.dao;

import fasttrackse1702a.fbms.quanlyduan.entity.User;

public interface UserDao {
	public User loadUserByUsername(final String username);
}
