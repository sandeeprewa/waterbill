package com.waterbill.pl.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.waterbill.domain.Bill;
import com.waterbill.domain.PaidBy;
import com.waterbill.domain.PaidStatus;
import com.waterbill.domain.Person;
import com.waterbill.domain.Revoke;

@Controller
public class BillController {
	
	/*
	 * 
	 * user/1/bills/2014/2/Paid
	 */
	
	
	@RequestMapping(value="user/{userId}/bills/", method=RequestMethod.GET)
	@ResponseBody
	public Person getBill(@PathVariable("userId")  String billID){
	
		Bill bill1=new Bill();
		Bill bill2= new Bill();
		Bill bill3=new Bill();
		
		bill1.setBillMonth("DEC");
		bill1.setBillYear("2016");
		bill1.setBillId("11111111");
		bill1.setBillAmount("123");
		bill1.setBillDiscount("3");
		bill1.setBillEndDate("12/12/12");
		bill1.setBillFine("222");
		bill1.setBillPaymentLastDate("222");
		bill1.setTotalPaymentToBePaid("122121212");
        bill1.setPaidBy(PaidBy.Cash);		
        bill1.setChequeNumber("1111111");
        bill1.setPaidStatus(PaidStatus.Yes);
        bill1.setRevokeStatus(Revoke.Yes);
        bill1.setSubmitId("Yes");

        bill2.setBillMonth("DEC");
		bill2.setBillYear("2016");
		bill2.setBillId("11111111");
		bill2.setBillAmount("123");
		bill2.setBillDiscount("3");
		bill2.setBillEndDate("12/12/12");
		bill2.setBillFine("222");
		bill2.setBillPaymentLastDate("222");
		bill2.setTotalPaymentToBePaid("122121212");
        bill2.setPaidBy(PaidBy.Cheque);		
        bill2.setChequeNumber("1111111");
        bill2.setPaidStatus(PaidStatus.Yes);
        bill2.setRevokeStatus(Revoke.Yes);
        bill2.setSubmitId("Yes");
		
        
        bill3.setBillMonth("DEC");
		bill3.setBillYear("2016");
		bill3.setBillId("11111111");
		bill3.setBillAmount("123");
		bill3.setBillDiscount("3");
		bill3.setBillEndDate("12/12/12");
		bill3.setBillFine("222");
		bill3.setBillPaymentLastDate("222");
		bill3.setTotalPaymentToBePaid("122121212");
        bill3.setPaidBy(PaidBy.NotPaid);		
        bill3.setChequeNumber("1111111");
        bill3.setPaidStatus(PaidStatus.No);
        bill3.setRevokeStatus(Revoke.No);
        bill3.setSubmitId("No");
		
        
        
		List<Bill> billList = new ArrayList<Bill>();
		billList.add(bill1);
		billList.add(bill2);
		billList.add(bill3);
		
		Person person= new Person();
		person.setPersonId("121");
		person.setPersonName("TTTTTTT");
		person.setPersonAddress("hariom");
		person.setEmailId("sp.sendmail@gmail.com");
		person.setPhoneNumber("1234");
		person.setWaterConnectionId("1111111");
		person.setListOfBill(billList);

		return person;
	}
	

	@RequestMapping(value="user/{userId}/bills/{year}/{month}/{paidStatus}", method=RequestMethod.GET)
	@ResponseBody
	public Person getFilteredBill(@PathVariable("userId")  String userId,
			@PathVariable("year")  String year,
			@PathVariable("month")  String month,
			@PathVariable("paidStatus")  String paidStatus			
			){
	
		
		System.out.println(userId +"-"+year+"-"+month+"-"+paidStatus);
		Bill bill1=new Bill();
		Bill bill2= new Bill();
		
		bill1.setBillMonth("DEC");
		bill1.setBillYear("2016");
		bill1.setBillId("11111111");
		bill1.setBillAmount("123");
		bill1.setBillDiscount("3");
		bill1.setBillEndDate("12/12/12");
		bill1.setBillFine("222");
		bill1.setBillPaymentLastDate("222");
		bill1.setTotalPaymentToBePaid("122121212");
        bill1.setPaidBy(PaidBy.Cash);		
        bill1.setChequeNumber("1111111");
        bill1.setPaidStatus(PaidStatus.No);
        bill1.setRevokeStatus(Revoke.No);
        bill1.setSubmitId("No");
		bill2.setBillMonth("DEC");
		bill2.setBillYear("2016");
		bill2.setBillId("11111111");
		bill2.setBillAmount("123");
		bill2.setBillDiscount("3");
		bill2.setBillEndDate("12/12/12");
		bill2.setBillFine("222");
		bill2.setBillPaymentLastDate("222");
		bill2.setTotalPaymentToBePaid("122121212");
        bill2.setPaidBy(PaidBy.Cheque);		
        bill2.setChequeNumber("1111111");
        bill2.setPaidStatus(PaidStatus.Yes);
        bill2.setRevokeStatus(Revoke.Yes);
        bill2.setSubmitId("Yes");
		
        
		List<Bill> billList = new ArrayList<Bill>();
		billList.add(bill1);
		billList.add(bill2);

		
		Person person= new Person();
		person.setPersonId("121");
		person.setPersonName("TTTTTTT");
		person.setPersonAddress("hariom");
		person.setEmailId("sp.sendmail@gmail.com");
		person.setPhoneNumber("1234");
		person.setWaterConnectionId("1111111");
		person.setListOfBill(billList);

		return person;
	}

}
