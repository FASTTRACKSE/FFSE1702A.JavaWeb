package fasttrackse.ffse1702a.fhrm.service.tlpl;

import java.util.List;

import fasttrackse.ffse1702a.fhrm.entity.tlpl.PB;

public interface PBService {
	public void save(PB phongban);
	public PB getById(String maPhongBan);
	public List<PB> getAll();
	public void update(PB phongban);
	public void delete(String maPhongBan);
}
