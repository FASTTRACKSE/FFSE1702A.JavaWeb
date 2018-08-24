package fasttrackse.a1702.fbms.quanlytochucvaphanquyenhethong.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import fasttrackse.a1702.fbms.quanlytochucvaphanquyenhethong.model.dao.FunctionRoleDao;
import fasttrackse.a1702.fbms.quanlytochucvaphanquyenhethong.model.entities.FunctionRole;
import fasttrackse.a1702.fbms.quanlytochucvaphanquyenhethong.service.FunctionRoleService;

public class FunctionRoleServiceImpl implements FunctionRoleService{

	@Autowired
	FunctionRoleDao functionRoleDao;
	
	public FunctionRoleDao getFunctionRoleDao() {
		return functionRoleDao;
	}

	public void setFunctionRoleDao(FunctionRoleDao functionRoleDao) {
		this.functionRoleDao = functionRoleDao;
	}

	@Override
	public List<FunctionRole> findAll() {
		return functionRoleDao.findAll();
	}

	@Override
	public void addNew(FunctionRole cd) {
		functionRoleDao.addNew(cd);
	}

	@Override
	public void update(FunctionRole cd) {
		functionRoleDao.update(cd);
	}

	@Override
	public void delete(int id) {
		functionRoleDao.delete(id);
	}

	@Override
	public List<FunctionRole> findAllForPaging(int startPosition, int maxResult) {
		return functionRoleDao.findAllForPaging(startPosition, maxResult);
	}

	@Override
	public FunctionRole findById(int id) {
		return functionRoleDao.findById(id);
	}

}
