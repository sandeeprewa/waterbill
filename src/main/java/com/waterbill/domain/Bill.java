package com.waterbill.domain;

public class Bill {
		
	String billId;
	String billMonth;
	String billAmount;
	String billFine;
	String totalPaymentToBePaid;
	
	public PaidStatus getPaidStatus() {
		return paidStatus;
	}
	public void setPaidStatus(PaidStatus paidStatus) {
		this.paidStatus = paidStatus;
	}
	public String getChequeNumber() {
		return chequeNumber;
	}
	public void setChequeNumber(String chequeNumber) {
		this.chequeNumber = chequeNumber;
	}
	public Revoke getRevokeStatus() {
		return revokeStatus;
	}
	public void setRevokeStatus(Revoke revokeStatus) {
		this.revokeStatus = revokeStatus;
	}
	public String getSubmitId() {
		return submitId;
	}
	public void setSubmitId(String submitId) {
		this.submitId = submitId;
	}
	PaidBy paidBy;	
	PaidStatus   paidStatus;
	String chequeNumber;
	Revoke revokeStatus;
	String submitId;

	String billYear;
	String billPaymentLastDate;
	String billDiscount;
	String billStartDate;
	String billEndDate;
	
	public String getBillId() {
		return billId;
	}
	public void setBillId(String billId) {
		this.billId = billId;
	}
	public String getBillStartDate() {
		return billStartDate;
	}
	public void setBillStartDate(String billStartDate) {
		this.billStartDate = billStartDate;
	}
	public String getBillEndDate() {
		return billEndDate;
	}
	public void setBillEndDate(String billEndDate) {
		this.billEndDate = billEndDate;
	}
	public String getBillMonth() {
		return billMonth;
	}
	public void setBillMonth(String billMonth) {
		this.billMonth = billMonth;
	}
	public String getBillYear() {
		return billYear;
	}
	public void setBillYear(String billYear) {
		this.billYear = billYear;
	}
	public String getBillPaymentLastDate() {
		return billPaymentLastDate;
	}
	public void setBillPaymentLastDate(String billPaymentLastDate) {
		this.billPaymentLastDate = billPaymentLastDate;
	}
	public String getBillAmount() {
		return billAmount;
	}
	public void setBillAmount(String billAmount) {
		this.billAmount = billAmount;
	}
	public String getBillDiscount() {
		return billDiscount;
	}
	public void setBillDiscount(String billDiscount) {
		this.billDiscount = billDiscount;
	}
	public String getBillFine() {
		return billFine;
	}
	public void setBillFine(String billFine) {
		this.billFine = billFine;
	}
	public PaidBy getPaidBy() {
		return paidBy;
	}
	public void setPaidBy(PaidBy paidBy) {
		this.paidBy = paidBy;
	}
	public String getTotalPaymentToBePaid() {
		return totalPaymentToBePaid;
	}
	public void setTotalPaymentToBePaid(String totalPaymentToBePaid) {
		this.totalPaymentToBePaid = totalPaymentToBePaid;
	}


}
