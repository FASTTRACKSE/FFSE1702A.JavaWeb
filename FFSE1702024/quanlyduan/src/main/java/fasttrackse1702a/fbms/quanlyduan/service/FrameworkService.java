package fasttrackse1702a.fbms.quanlyduan.service;

import java.util.List;

import fasttrackse1702a.fbms.quanlyduan.entity.Framework;

public interface FrameworkService {
	public void save(Framework framework);
	public Framework getById(String maFramework);
	public List<Framework> getAll();
	public void update(Framework framework);
	public void delete(String maFramework);
}
