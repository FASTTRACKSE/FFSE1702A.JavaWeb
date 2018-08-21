package fasttrackse.ffse1702a.fbms.quanlytailieu.model;

import java.io.File;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import fasttrackse.ffse1702a.fbms.quanlytailieu.entity.TaiLieu;
@Repository
public class QuanLyTaiLieuDAOImpl implements QuanLyTaiLieuDAO {
	@Autowired
	private SessionFactory sessionFactory;
	@Transactional
	@Override
	public List<TaiLieu> listTaiLieu() {
		Session session = sessionFactory.getCurrentSession();
		List<TaiLieu> taiLieuList = session.createQuery("from TaiLieu",TaiLieu.class).list();
		return taiLieuList;
	}
	
	public String uploadfile(@RequestParam(value="file") CommonsMultipartFile commonsMultipartFiles,HttpServletRequest request,ModelMap modelMap) {
		String nameFile = commonsMultipartFiles.getOriginalFilename();
		String fileType = commonsMultipartFiles.getContentType();
		//File docx
		if (fileType.length()==71) {
			fileType = commonsMultipartFiles.getContentType().substring(63);
		  }
		//File excel
		else if(fileType.length()==65) {
			fileType = commonsMultipartFiles.getContentType().substring(55);
		}
		//File image
		else if(fileType.length()==10) {
			fileType = commonsMultipartFiles.getContentType().substring(6);
		}
		//File zip
		else if(fileType.length()==28) {
			fileType = commonsMultipartFiles.getContentType().substring(12);
		}
		//File pdf
		else if(fileType.length()==15) {
			fileType = commonsMultipartFiles.getContentType().substring(12);
		}
		//File sql
		else if(fileType.length()==25) {
			fileType = commonsMultipartFiles.getContentType().substring(12);
		}
		//In Loại file (Lấy đuôi file)
		System.out.println(fileType);
		//In ra tên file
		System.out.println(nameFile);
		if(!"".equals(nameFile)){
            //Đường dẫn link đến file
			String dirFile = request.getServletContext().getRealPath("upload");
			//In ra đường link dẫn đến file
			System.out.println(dirFile+"/"+nameFile);
			//In đường link dẫn đến thư mục chứa file
			System.out.println(dirFile);
			File fileDir = new File(dirFile);
			if(!fileDir.exists()){
				fileDir.mkdir();				
			}
			try {
				//Upload file lên sever
				commonsMultipartFiles.transferTo(new File(fileDir+File.separator+nameFile));
				System.out.println("Upload file thành công!");
				modelMap.addAttribute("filename", nameFile);
			} catch (Exception e) {
				System.out.println(e.getMessage());
				System.out.println("Upload file thất bại!");
			}
			return dirFile.substring(121)+"/"+nameFile;
		}
		return null;
	}
	@Transactional
	public void addTaiLieu(TaiLieu TaiLieu) {		
		Session session = sessionFactory.getCurrentSession();
		session.persist(TaiLieu);
	}
	}
	

