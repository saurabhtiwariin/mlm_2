package cz.jiripinkas.jba.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.Lob;
import javax.persistence.OneToOne;

import org.hibernate.annotations.DynamicUpdate;
import org.hibernate.annotations.SelectBeforeUpdate;
import org.hibernate.annotations.Type;
//
//import org.hibernate.type.;

@Entity
@SelectBeforeUpdate(value=true)
@DynamicUpdate(value=true)
public class FileUpload {
	@Id
	@GeneratedValue
	private Integer id;

	private String fileName;

	@Lob
	@Type(type = "org.hibernate.type.BinaryType")
	@Column(length = Integer.MAX_VALUE)
	private byte[] image;

	@OneToOne
	@JoinColumn(name = "accept_id")
	private Accept accept;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getFileName() {
		return fileName;
	}

	public void setFileName(String fileName) {
		this.fileName = fileName;
	}

	public byte[] getImage() {
		return image;
	}

	public void setImage(byte[] image) {
		this.image = image;
	}

	public Accept getAccept() {
		return accept;
	}

	public void setAccept(Accept param) {
		this.accept = param;
	}

}
