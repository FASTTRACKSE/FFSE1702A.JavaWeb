package fasttrackse.a1702.fbms.phongban.service;

import java.util.List;

import org.springframework.stereotype.Service;

import fasttrackse.a1702.fbms.phongban.model.entities.PhongBan;

@Service
public interface PhongBanService {
	public List<PhongBan> findAll();

	public void addNew(PhongBan pb);

	public void update(PhongBan pb);

	public void delete(String maPhongBan);

	public List<PhongBan> findAllForPaging(int startPosition, int maxResult);

	public PhongBan findByMaPhongBan(String maPhongBan);
}
