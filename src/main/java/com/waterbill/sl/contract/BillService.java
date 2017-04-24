package com.waterbill.sl.contract;

import java.util.List;

import org.springframework.stereotype.Service;

import com.waterbill.domain.Bill;

@Service
public interface BillService {
	
	public List<Bill> getBill(String waterConnectionId);
	public List<Bill> getBillByYear(String waterConnectionId, List<String> years);
	public List<Bill> getBillByYearAndMonth(String waterConnectionId, String year, List<String> months);
	public List<Bill> getLastFiveMonthBill(String waterConnectionId);
	public List<Bill> getCurrentYearBill(String waterConnectionId);
	public List<Bill> getPaidBills(String waterConnectionId);
	public List<Bill> getPaidBillsByYears(String waterConnectionId, List<String> year);
	public List<Bill> getPaidCurrentYearBill(String waterConnectionId);
	public List<Bill> getUnPaidBills(String waterConnectionId);
	public List<Bill> getUnPaidBillsByYear(String waterConnectionId, List<String> year);
	
	public void createBill(String waterConnectionId, String Date, String amount);
}
