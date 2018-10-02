package fasttrackse.ffse1702a.fhrm.dao.tlpl;

import java.util.List;

import fasttrackse.ffse1702a.fhrm.entity.tlpl.VaiTro;

public interface VaiTroDao {
	public void save(VaiTro vaitro);
	public VaiTro getById(String maVaiTro);
	public List<VaiTro> getAll();
	public void update(VaiTro vaitro);
	public void delete(String maVaiTro);
}
