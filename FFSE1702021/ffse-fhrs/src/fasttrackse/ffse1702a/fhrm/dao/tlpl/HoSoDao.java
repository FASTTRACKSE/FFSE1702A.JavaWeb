package fasttrackse.ffse1702a.fhrm.dao.tlpl;

import java.util.List;


import fasttrackse.ffse1702a.fhrm.entity.tlpl.HoSo;



public interface HoSoDao {
	public void save(HoSo hoso);
	public HoSo getById(int maNhanVien);
	public List<HoSo> getAll();
	public void update(HoSo hoso);
	public void delete(int maNhanVien);
	public List<HoSo> listHoSo(int page);
	public long count();

}
