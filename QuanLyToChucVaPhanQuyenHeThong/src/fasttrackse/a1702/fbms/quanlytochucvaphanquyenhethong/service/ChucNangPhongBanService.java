package fasttrackse.a1702.fbms.quanlytochucvaphanquyenhethong.service;

import java.util.List;

import org.springframework.stereotype.Service;

import fasttrackse.a1702.fbms.quanlytochucvaphanquyenhethong.model.entities.ChucNangPhongBan;

@Service
public interface ChucNangPhongBanService {
	public List<ChucNangPhongBan> findAll();

	public void addNew(ChucNangPhongBan cd);

	public void update(ChucNangPhongBan cd);

	public void delete(int id);

	public List<ChucNangPhongBan> findAllForPaging(int startPosition, int maxResult);

	public ChucNangPhongBan findById(int id);
}
