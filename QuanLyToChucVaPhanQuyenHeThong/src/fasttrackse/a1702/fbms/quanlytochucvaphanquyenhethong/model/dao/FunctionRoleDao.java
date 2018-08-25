package fasttrackse.a1702.fbms.quanlytochucvaphanquyenhethong.model.dao;

import java.util.List;

import fasttrackse.a1702.fbms.quanlytochucvaphanquyenhethong.model.entities.FunctionRole;

public interface FunctionRoleDao {
	public List<FunctionRole> findAll();

	public void addNew(FunctionRole cd);

	public void update(FunctionRole cd);

	public void delete(int id);

	public List<FunctionRole> findAllForPaging(int startPosition, int maxResult);

	public FunctionRole findById(int id);
}
