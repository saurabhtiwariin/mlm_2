package cz.jiripinkas.jba.service;

import java.util.List;

import org.apache.commons.codec.binary.Base64;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import cz.jiripinkas.jba.entity.Accept;
import cz.jiripinkas.jba.entity.FileUpload;
import cz.jiripinkas.jba.repository.AcceptRepository;
import cz.jiripinkas.jba.repository.FileUploadRepository;

@Service
public class FileUploadService {
	private static final Logger logger = Logger
			.getLogger(FileUploadService.class);

	@Autowired
	private FileUploadRepository fileUploadRepository;

	@Autowired
	private AcceptRepository acceptRepository;

	@Autowired
	private AcceptService acceptService;
	
	@Autowired
	private CommitService commitService;
	
	public void save(String url, int acceptId) {
		// TODO Auto-generated method stub
		FileUpload uploadFile = new FileUpload();
		uploadFile.setUrl(url);
		// uploadFile.setImage(decodeImage());
		
		Accept accept = acceptRepository.findOne(acceptId);
		uploadFile.setAccept(accept);
		acceptService.setStatus(accept,2);
		commitService.setChequeUploadDate(accept.getCommit());
		fileUploadRepository.save(uploadFile);
	}
	
	public void save(CommonsMultipartFile aFile, Integer acceptId) {
		// TODO Auto-generated method stub
/*
		logger.info("inside save **************");
		logger.info("Filename : " + aFile.getOriginalFilename());
		logger.info("Data : " + aFile.getBytes());
		logger.info("Accept id : " + acceptId);
		logger.info("file size : " + aFile.getSize());
		logger.info("file size : " + aFile.getStorageDescription());
		logger.info("file size : " + aFile.getName());

		
		 * new CommonsMultipartFile().transferTo(arg0); BufferedImage
		 * bufferedImage = ImageIO.read(aFile);
		 
		// String encodedImageString = encodeImage(aFile.getBytes());

		FileUpload uploadFile = new FileUpload();
		uploadFile.setFileName(aFile.getOriginalFilename());
		uploadFile.setImage(aFile.getBytes());
		// uploadFile.setImage(decodeImage());
		
		Accept accept = acceptRepository.findOne(acceptId);
		uploadFile.setAccept(accept);
		acceptService.setStatus(accept,2);
		commitService.setChequeUploadDate(accept.getCommit());
		fileUploadRepository.save(uploadFile);
*/	}

	/*
	 * public FileUpload findByID(Integer id) { // TODO Auto-generated method
	 * stub return fileUploadRepository.findOne(id); }
	 */
	public FileUpload findByName(String name) {
		// TODO Auto-generated method stub
		return null;/*fileUploadRepository.findByFileName(name);*/
	}

	public String encodeImage(byte[] imageByteArray) {
		return Base64.encodeBase64URLSafeString(imageByteArray);
	}

	public byte[] decodeImage(String imageDataString) {
		return Base64.decodeBase64(imageDataString);
	}

	public FileUpload findById(Integer id) {
		// TODO Auto-generated method stub
		return fileUploadRepository.findOne(id);
	}

	public List<FileUpload> getTableData() {
		// TODO Auto-generated method stub
		logger.info("inside getTableData service");
		return fileUploadRepository.findAll(
				new PageRequest(0, 20, Direction.ASC, "id")).getContent();
	}

	public void updateFileUploadTable(FileUpload tmp) {
		logger.info("inside updateFileUploadTable service");
/*
		Integer idtmp = tmp.getId();
		FileUpload fileUpload = fileUploadRepository.findOne(idtmp);
		fileUpload.setAccept(tmp.getAccept());
		fileUpload.setFileName(tmp.getFileName());
		fileUpload.setImage(tmp.getImage());
		fileUploadRepository.save(fileUpload);*/

	}

	
}
