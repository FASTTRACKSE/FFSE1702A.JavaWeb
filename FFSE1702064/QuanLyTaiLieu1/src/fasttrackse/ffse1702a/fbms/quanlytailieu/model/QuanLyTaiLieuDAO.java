package fasttrackse.ffse1702a.fbms.quanlytailieu.model;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import fasttrackse.ffse1702a.fbms.quanlytailieu.entity.TaiLieu;


public interface QuanLyTaiLieuDAO  {
	public List<TaiLieu> listTaiLieu();
	
	public void addTaiLieu(TaiLieu TaiLieu);
	
	public String uploadfile(@RequestParam(value="file") CommonsMultipartFile commonsMultipartFiles,HttpServletRequest request,ModelMap modelMap);
}
