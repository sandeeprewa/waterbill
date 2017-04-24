/**
 * 
 */
$(document).ready(function () {		
	
       $("#success-alert").hide();
		workAroundHandleFileBrowsing();
		collapseMenuOptionOnClick();
		hideAndShowUponMenuOptionClick();
		addEventToMenuOptions();
	
		clickHandleForGetBillId();
		clickHandleForResetGetBillResult();
		
       
		$("#bill_number_edit_id").click(function (){
    	   	$("#bill_number_save_id").show();
    	   	enableButton("bill_mobile_number_id");
    	   	focus("bill_mobile_number_id");
       });		
    
   	
       $("#bill_number_save_id").click(function (){
    	   	$("#bill_number_save_id").hide();
    	   	disableButton("bill_mobile_number_id");
       });		
      
       
       $("#bill_email_edit_id").click(function (){
    	   $("#bill_email_save_id").show();
   	   		enableButton("bill_email_id");
   	   		focus("bill_email_id");
       });		

       $("#bill_email_save_id").click(function (){
    	    $("#bill_email_save_id").hide();
   	   		disableButton("bill_email_id");
      });		

       $("#bill_message_send_id").click(function (){
    	   alert("HIY");//bill_email_save_id //bill_email_edit_id
       });		
       
       $("#total_amount_paid_by_id").change(function (){
    	   	var paidByValue = $(this).val();
    	   	if(equal(paidByValue,"cash")){
    	   		$("#total_amount_cheque_number_span_id").hide();
    	   	}else{
    	   		$("#total_amount_cheque_number_span_id").show();
    	   	}
    	   	
       });
       
       
       $("#filter_display_box_filter_id").click(function (){
    	   resetTable();
    	   var yearVal=$("#filter_display_box_year_id").val();
    	   var monthVal=$("#filter_display_box_month_id").val();
    	   var paidStatusVal=$("#filter_display_box_payment_status_id").val();

    	   getBillByYearMonthPaid(yearVal,monthVal,paidStatusVal);
       });
       
       $("#collect_status_checkbox_id").change(function (){
    	   if($("#revoke_status_checkbox_id").is(':checked')){
    		  // 	$("#revoke_status_checkbox_id").toggle("checked");
    		   document.getElementById('revoke_status_checkbox_id').checked=false;
    		   document.getElementById('collect_status_checkbox_id').checked=true;

    	   }else{
    		   document.getElementById('collect_status_checkbox_id').checked=true;
    	   }
       });
       $("#revoke_status_checkbox_id").change(function (){

    	   if($("#collect_status_checkbox_id").is(':checked')){
     		  // 	$("#revoke_status_checkbox_id").toggle("checked");
     		   document.getElementById('revoke_status_checkbox_id').checked=true;
     		   document.getElementById('collect_status_checkbox_id').checked=false;

     	   }else{
     		   document.getElementById('revoke_status_checkbox_id').checked=true;
     	   }
       });

       
       $("#new_water_connection_btn_id").click(function (){
    	   alert("--");
    	   var actionValue = $("#new_water_connection_btn_id").val();
    	   if(equal(actionValue,"Update")){
    		   var applicationStatusId = $("#application_hidden_id").val();
    		   console.log(applicationStatusId);
    	       submitUpdateConnectionFormRequest("new_water_connection_form_id",applicationStatusId);
    	       show('application_status_display_box_id');
    	       resetForm('new_water_connection_form_id');
    	       
    	       enableFormButton('new_water_connection_form_id');
    	       //new_water_connection_btn_id
    	       $('#new_water_connection_btn_id').attr("value","GET ME NEW CONNECTION");
    	       hide('application_status_display_box_id_additional');
    	       hide('new_connection_id_display_box_id');
    	       

    	   }else{
	    	   submitNewConnectionFormRequest("new_water_connection_form_id");
	    	   $('#new_water_connection_form_id').hide('fast');
	           $('#application_no_display_box_id').show('fast');
    	   }
       });
       
       $('#create_new_water_connection_id').click( function(){
    	    resetForm('new_water_connection_form_id');
    	   	$('#new_water_connection_form_id').show('fast');
		    $('#application_no_display_box_id').hide('fast');
		    $('#customer_name').focus();
       })
       
       $("#reset_new_water_connection_btn_id").click(function (){
    	   	resetForm('new_water_connection_form_id');
	       	$('#customer_name').focus();
       });
       
       
       $("#application_status_submit_btn_id").click(function (){
    	   
    		hide('application_status_display_box_id');
    	    var applicationId= $("#application_status_id").val();
    	   	//put applicationId on hidden param html
    	    $("#application_hidden_id").val(applicationId);
	    	show("application_status_display_box_id_additional");
    	    getApplicationStatus(applicationId);
    	
       });
       
       $("#update_application_status_btn_id").click(function (){
    	   enableFormButton('new_water_connection_form_id');
       });
});

function addEventToMenuOptions(){
	
	$("#collect_bill_id").click(function (){
		//collect_bill_id_display_box_id 
		
	});
	
	$("#application_detail_id").click(function (){
		//application_detail_id_display_box_id 
	});

	$("#new_connection_id").click(function (){
		//new_water_connection_id
	});
	
	$("#connection_request_id").click(function (){
		//connection_request_id_display_box_id
	});
	
	$("#complaint_id").click(function (){
		//complaint_id_display_box_id
	});

	$("#login_id").click(function (){
		
	});
}

function clickHandleForGetBillId(){
	$("#get_bill_id").click(function (){
		resetRecentShownBill();
		var applicationId= $("#water_connection_id").val();
		getBillById(applicationId);
		showBillDisplayBoxId();
		disableButton("water_connection_id");
		enableButton("reset_get_bill_result_id");
		hide("search_name_display_box_id");
	});
}

function showBillDisplayBoxId(){
	show("bill_display_box_id");
}

function clickHandleForResetGetBillResult(){
	$("#reset_get_bill_result_id").click(function (){
		resetRecentShownBill();
		show("search_name_display_box_id");
	});
}

function resetRecentShownBill(){
	resetTable();
	hide("bill_display_box_id");
	enableButton("water_connection_id");
	disableButton("reset_get_bill_result_id")
	focusOn("water_connection_id");
}

function resetTable(){
	removeHTMLValue("bill_table_id tbody");
	removeHTMLValue("bill_name_id");
	removeHTMLValue("bill_address_id");
}