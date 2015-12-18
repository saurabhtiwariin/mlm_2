package cz.jiripinkas.jba.entity;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.hibernate.annotations.DynamicUpdate;
import org.hibernate.annotations.SelectBeforeUpdate;
import org.springframework.format.annotation.DateTimeFormat;

@Entity
@SelectBeforeUpdate(value=true)
@DynamicUpdate(value=true)
public class Commit {

	@Id
	@GeneratedValue
	private Integer id;

	private long amount;

	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date dateCommit;

	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date dateChequeUploaded;

	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date dateConf;

	@ManyToOne
	@JoinColumn(name = "user_id")
	private User user;

	@ManyToOne
	@JoinColumn(name = "status_id")
	private Status status;

	@OneToOne(mappedBy = "commit")
	private Accept accept;

	public Status getStatus() {
		return status;
	}

	public void setStatus(Status status) {
		this.status = status;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public long getAmount() {
		return amount;
	}

	public void setAmount(long amount) {
		this.amount = amount;
	}

	public Date getDateCommit() {
		return dateCommit;
	}

	public void setDateCommit(Date dateCommit) {
		this.dateCommit = dateCommit;
	}

	public Date getDateConf() {
		return dateConf;
	}

	public void setDateConf(Date dateConf) {
		this.dateConf = dateConf;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Accept getAccept() {
		return accept;
	}

	public void setAccept(Accept accept) {
		this.accept = accept;
	}

	public Date getDateChequeUploaded() {
		return dateChequeUploaded;
	}

	public void setDateChequeUploaded(Date dateCheckUploaded) {
		this.dateChequeUploaded = dateCheckUploaded;
	}

}
