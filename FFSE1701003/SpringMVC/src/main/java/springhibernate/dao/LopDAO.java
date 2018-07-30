package springhibernate.dao;

import java.util.List;

import springhibernate.entities.Lop;

public interface LopDAO {
	public void Save(Lop lop);

	public List<Lop> list();

	public void updateLop(Lop sv);

	public void deleteLop(int id);

	public void getLopById(int id);
}
