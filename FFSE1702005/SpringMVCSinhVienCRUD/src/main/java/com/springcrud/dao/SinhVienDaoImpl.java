package com.springcrud.dao;

import java.util.List;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.springcrud.entity.LopHocEntity;
import com.springcrud.entity.SinhVienEntity;

@Repository
public class SinhVienDaoImpl implements SinhVienDao{

	@Autowired
    private SessionFactory sessionFactory;
  
   @Override
   public void themSinhVien(SinhVienEntity entity) {
       Session session = sessionFactory.getCurrentSession();
       session.persist(entity);
   }

   @Override
   public void suaSinhVien(SinhVienEntity entity) {
       Session session = sessionFactory.getCurrentSession();
       session.update(entity);
   }

//   @SuppressWarnings("unchecked")
//   public List<SinhVienEntity> danhSachSinhVien() {
//       Session session = sessionFactory.getCurrentSession();
//	List<SinhVienEntity> DanhSanhSinhVien = session.createQuery("FROM SinhVienEntity").getResultList();
//       return DanhSanhSinhVien;
//   }
   @Override
   public List<SinhVienEntity> danhSachSinhVien() {
	      Session session = sessionFactory.getCurrentSession();
	      CriteriaBuilder cb = session.getCriteriaBuilder();
	      CriteriaQuery<SinhVienEntity> cq = cb.createQuery(SinhVienEntity.class);
	      Root<SinhVienEntity> root = cq.from(SinhVienEntity.class);
	      cq.select(root);
	      Query<SinhVienEntity> query = session.createQuery(cq);
	      return query.getResultList();
	   }
   
   @Override
   public List<LopHocEntity> danhSachLop() {
	      Session session = sessionFactory.getCurrentSession();
	      CriteriaBuilder cb = session.getCriteriaBuilder();
	      CriteriaQuery<LopHocEntity> cq = cb.createQuery(LopHocEntity.class);
	      Root<LopHocEntity> root = cq.from(LopHocEntity.class);
	      cq.select(root);
	      Query<LopHocEntity> query = session.createQuery(cq);
	      return query.getResultList();
	   }

   @Override
   public SinhVienEntity layID(int id) {
       Session session = sessionFactory.getCurrentSession();      
       SinhVienEntity  entity = (SinhVienEntity) session.get(SinhVienEntity.class, new Integer(id));
       return  entity;
   }
   
   @Override
   public LopHocEntity layMaLop(int id) {
       Session session = sessionFactory.getCurrentSession();      
       LopHocEntity  entity = (LopHocEntity) session.get(LopHocEntity.class, new Integer(id));
       return  entity;
   }

   @Override
   public void xoaSinhVien(int id) {
       Session session = sessionFactory.getCurrentSession();
       SinhVienEntity  entity = (SinhVienEntity) session.get(SinhVienEntity.class, new Integer(id));
       if(null !=  entity){
           session.delete( entity);
       }
   }
}
