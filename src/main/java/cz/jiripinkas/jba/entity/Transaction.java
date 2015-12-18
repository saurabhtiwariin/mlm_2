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
public class Transaction {

	@Id
	@GeneratedValue
	private Integer id;
	
	private Integer amount;
	
	private Integer afterTransactionAmount;

	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date dateTransaction;

	private String remark;
	
	@ManyToOne
	@JoinColumn(name="status_id")
	private Status status;

	@ManyToOne
	@JoinColumn(name="user_id")
	private User user;

	@ManyToOne
	@JoinColumn(name="bankDetails_id")
	private BankDetails bankDetails;

	@OneToOne
	@JoinColumn(name="accept_id")
	private Accept accept;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getAmount() {
		return amount;
	}

	public void setAmount(Integer amount) {
		this.amount = amount;
	}

	public Integer getAfterTransactionAmount() {
		return afterTransactionAmount;
	}

	public void setAfterTransactionAmount(Integer afterTransactionAmount) {
		this.afterTransactionAmount = afterTransactionAmount;
	}

	public Date getDateTransaction() {
		return dateTransaction;
	}

	public void setDateTransaction(Date dateTransaction) {
		this.dateTransaction = dateTransaction;
	}

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	public Status getStatus() {
		return status;
	}

	public void setStatus(Status status) {
		this.status = status;
	}

	public User getUser() {
	    return user;
	}

	public void setUser(User param) {
	    this.user = param;
	}

	public BankDetails getBankDetails() {
	    return bankDetails;
	}

	public void setBankDetails(BankDetails param) {
	    this.bankDetails = param;
	}

	public Accept getAccept() {
	    return accept;
	}

	public void setAccept(Accept param) {
	    this.accept = param;
	}

	
}
