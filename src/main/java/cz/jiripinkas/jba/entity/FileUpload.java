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

@Entity
@SelectBeforeUpdate(value=true)
@DynamicUpdate(value=true)
public class FileUpload {
	@Id
	@GeneratedValue
	private Integer id;

	private String url;

	@OneToOne
	@JoinColumn(name = "accept_id")
	private Accept accept;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public Accept getAccept() {
		return accept;
	}

	public void setAccept(Accept accept) {
		this.accept = accept;
	}


}
