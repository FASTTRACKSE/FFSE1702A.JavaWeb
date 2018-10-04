package fasttrackse.ffse1702a.fhrm.service.tlpl;

import java.util.List;

import fasttrackse.ffse1702a.fhrm.entity.tlpl.HoSo;

public interface HoSoService {
	public void save(HoSo hoso);
	public HoSo getById(String maNhanVien);
	public List<HoSo> getAll();
	public void update(HoSo hoso);
	public void delete(String maNhanVien);
}
