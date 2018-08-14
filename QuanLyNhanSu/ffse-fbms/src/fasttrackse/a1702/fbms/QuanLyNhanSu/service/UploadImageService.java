package fasttrackse.a1702.fbms.QuanLyNhanSu.service;

import java.io.IOException;

import org.springframework.validation.BindingResult;
import org.springframework.web.multipart.MultipartFile;

public interface UploadImageService {

	public void uploadImage(String filename, MultipartFile image) throws RuntimeException, IOException;

	public String checkImage(MultipartFile image, BindingResult bindingResult, String referer);
}