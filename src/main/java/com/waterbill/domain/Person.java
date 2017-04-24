package com.waterbill.domain;

import java.util.ArrayList;
import java.util.List;

public class Person {
		
	String personId;
	String personName;
	public String getPersonId() {
		return personId;
	}

	public void setPersonId(String personId) {
		this.personId = personId;
	}

	public String getPersonName() {
		return personName;
	}

	public void setPersonName(String personName) {
		this.personName = personName;
	}

	public String getPersonAddress() {
		return personAddress;
	}

	public void setPersonAddress(String personAddress) {
		this.personAddress = personAddress;
	}

	public String getWaterConnectionId() {
		return waterConnectionId;
	}

	public void setWaterConnectionId(String waterConnectionId) {
		this.waterConnectionId = waterConnectionId;
	}

	public String getEmailId() {
		return emailId;
	}

	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	public List<Bill> getListOfBill() {
		return listOfBill;
	}

	public void setListOfBill(List<Bill> listOfBill) {
		this.listOfBill = listOfBill;
	}

	String personAddress;
	String waterConnectionId;
	String emailId;
	String phoneNumber;
	
	List<Bill> listOfBill= new ArrayList<Bill>();
	
	
}
