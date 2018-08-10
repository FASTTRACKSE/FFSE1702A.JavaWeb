package fasttrackse.a1702.fbms.QuanLyNhanSu.service;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletContext;

import org.apache.commons.io.FileUtils;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.validation.BindingResult;
import org.springframework.web.context.ServletContextAware;
import org.springframework.web.multipart.MultipartFile;

@Service
public class UploadImageServiceImpl implements UploadImageService, ServletContextAware {

	private ServletContext servletContext;

	@Override
	public void uploadImage(String filename, MultipartFile image) throws RuntimeException, IOException {
		try {
			File file = new File(
					servletContext.getRealPath("/resources/stack-admin/images/nhan-vien/") + "/" + filename);

			FileUtils.writeByteArrayToFile(file, image.getBytes());
			System.out.println("Go to the location:  " + file.toString()
					+ " on your computer and verify that the image has been stored.");
		} catch (IOException e) {
			throw e;
		}
	}

	@Override
	@Transactional
	public String checkImage(MultipartFile image, BindingResult bindingResult, String referer) {
		String filename = null;
		if (!image.isEmpty()) {
			try {
				if (!image.getContentType().equals("image/jpeg") && !image.getContentType().equals("image/png")) {
					throw new RuntimeException("Only JPG and PNG images are accepted");
				}

			} catch (RuntimeException re) {
				bindingResult.reject(re.getMessage());
				return "redirect:" + referer;
			}

			try {
				filename = System.currentTimeMillis() + "." + image.getContentType().substring(6);
				uploadImage(filename, image);
			} catch (IOException e) {
				bindingResult.reject(e.getMessage());
				return "redirect:" + referer;
			}

		}
		return filename;
	}

	@Override
	public void setServletContext(ServletContext servletContext) {
		this.servletContext = servletContext;

	}

}
