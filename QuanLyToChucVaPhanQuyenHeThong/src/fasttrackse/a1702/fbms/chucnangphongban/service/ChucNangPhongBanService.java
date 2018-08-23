package fasttrackse.a1702.fbms.chucnangphongban.service;

import java.util.List;

import org.springframework.stereotype.Service;

import fasttrackse.a1702.fbms.chucnangphongban.model.entities.ChucNangPhongBan;

@Service
public interface ChucNangPhongBanService {
	public List<ChucNangPhongBan> findAll();

	public void addNew(String maPhongBan, List<String> maChucNang);

	public void update(String maPhongBan, List<String> maChucNang);

	public void delete(String maPhongBan);

	public List<Object> findAllForPaging(int startPosition, int maxResult);
	
	public List<Object> getMaChucNangByMaPhongBan(String maPhongBan);
}
