package cz.jiripinkas.jba.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import cz.jiripinkas.jba.entity.FileUpload;

public interface FileUploadRepository extends
		JpaRepository<FileUpload, Integer> {

	FileUpload findByFileName(String name);

}
