/**
 * New node file
 */

var paidByCashHTMLVar="<div class='' style='display:inline;'>" +"<select disabled style='display:inline;' tabindex='' name='property_type' id='property_type_id' class='' data-show-subtext='true' style=''>"+"Paid By"+"<option data-subtext='paid' select>Cash</option><option data-subtext='unpaid'>Cheque</option></select></div>";
var paidByChequeHTMLVar="<div class='' style='display:inline;'>" +"<select style='display:inline;' disabled tabindex='' name='property_type' id='property_type_id' class='' data-show-subtext='true' style=''>"+"Paid By"+"<option data-subtext='paid'>Cash</option><option data-subtext='unpaid' select>Cheque</option></select></div>";
var paidByHTML="<div class='' style='display:inline;'>" +"<select  style='display:inline;' tabindex='' name='property_type' id='property_type_id' class='' data-show-subtext='true' style=''>"+"Paid By"+"<option data-subtext='paid' >Cash</option><option data-subtext='unpaid'>Cheque</option></select></div>";

var collectCheckboxHTMLVarUnChecked="<div class='checkbox'><label><input type='checkbox' id='collect_status_checkbox_id'  value='option1'></label></div>";
var collectCheckboxHTMLVarChecked="<div class='checkbox'><label><input type='checkbox' id='collect_status_checkbox_id' checked disabled value='option1'></label></div>";
var chequeHTMLVar="<input type='text' class='form-control' style='' value='1,000.00' size='10'>";
var revokeHTMLVarChecked="<div class='checkbox'><label><input type='checkbox' id='revoke_status_checkbox_id' checked disabled  value='option1'></label></div>";
var revokeHTMLVarUnChecked="<div class='checkbox'><label><input type='checkbox' id='revoke_status_checkbox_id' value='option1'></label></div>";

var finalSubmitHTMLVar="<input type='submit' class='form-control' style='' value='Submit' size=''>";


function workAroundHandleFileBrowsing(){

	$(document).on('click', '.browse', function(){
		  var file = $(this).parent().parent().parent().find('.file');
		  file.trigger('click');
	});
	
	$(document).on('change', '.file', function(){
		  $(this).parent().find('.form-control').val($(this).val().replace(/C:\\fakepath\\/i, ''));
	});

}

function collapseMenuOptionOnClick(){
	
	 /*
	 * On Collapse of Menu, Once Menu's option clicked to hide the drop down
	 */
	$("nav").find("li").on("click", "a", function () {
        $('.navbar-collapse.in').collapse('hide');
    });    
    
}


function hideAndShowUponMenuOptionClick(){
	/*
	 * To Hide And Show box upon click of Menu data
	 */
	var recentShownBoxId="";
	$("ul.navbar-nav > li >a").click(function (){

		$(recentShownBoxId).slideUp('slow');
		
		var id = $(this).attr('id');
		var boxId= "#" +id + '_display_box_id';
		
		if(recentShownBoxId != boxId){
			$(boxId).slideDown('slow');
			recentShownBoxId = boxId;
		}else{
			recentShownBoxId="";
		}
	})	
}


var billObject = new function (){
	var applicationId;
	getBillById = function (applicationId){
		this.applicationId= applicationId;
		console.log(this.applicationId);
		dataServices.getBill(applicationId)
		.done(function (data){
			handleBillResultData(data);
		})
		.fail(function (){
			console.log(fail);
		});
	}
	
	
	getBillByYear = function (applicationId,year){
		console.log(this.applicationId);
		
		dataServices.getBillByYear(applicationId,year)
		.done(function (data){
			handleBillResultData(data);
		})
		.fail(function (){
			console.log(fail);
		});
	}
	
	
	getBillByYearMonthPaid = function (year,month,paidStatus){
		console.log(this.applicationId);
		dataServices.getBillByYearMonthPaid(this.applicationId,year,month,paidStatus)
		.done(function (data){
			handleBillResultData(data);
		})
		.fail(function (){
			alert("Failure");
		});
	}
	
	return {
		getBillById:getBillById,
		getBillByYear:getBillByYear,
		getBillByYearMonthPaid : getBillByYearMonthPaid
	}
}();


function handleBillResultData(data){
	
	var rows="";
	
	$.each(data, function (index, objectItem) {
		console.log(index);
		
		if(index == "personId"){
			// nothing
		}
		
		if(index == "personName"){
			//bill_name_id
			$("#bill_name_id").val(objectItem);
		}
		
		if(index == "personAddress"){
			//bill_address_id
			$("#bill_address_id").val(objectItem);

		}
		
		if(index == "waterConnectionId"){
			//bill_water_connection_id
			$("#bill_water_connection_id").val(objectItem);

		}

		if(index == "emailId"){
			//bill_email_id
			$("#bill_email_id").val(objectItem);

		}
		
		if(index == "phoneNumber"){
			//bill_mobile_number_id
			$("#bill_mobile_number_id").val(objectItem);

		}
		
		
		if(index == "listOfBill"){
			$.each(objectItem, function (index, objectItem2) {
				var rows = "<tr>";						
				$.each(objectItem2, function (index, objectItem3) {
					console.log(index +'--'+ objectItem3);					
						
						if(index=="billId"){
							rows += "<td>" + objectItem3 +"</td>";
						}if(index=="billMonth"){
							rows += "<td>" + objectItem3 +"</td>";
						}if(index=="billAmount"){
							rows += "<td>" + objectItem3 +"</td>";
						}if(index=="billFine"){
							rows += "<td>" + objectItem3 +"</td>";
						}if(index=="totalPaymentToBePaid"){
							rows += "<td>" + objectItem3 +"</td>";
						}if(index=="paidBy"){
							if(equal(objectItem3,"Cheque")){
								rows += "<td>" + paidByChequeHTMLVar +"</td>";
							}else if(equal(objectItem3,"Cash")){
								rows += "<td>" + paidByCashHTMLVar +"</td>";
							}else{
								rows += "<td>" + paidByHTML +"</td>";
							}

						}if(index=="paidStatus"){
							if(objectItem3=="Yes"){
									rows += "<td>" + collectCheckboxHTMLVarChecked +"</td>";
								}else{
									rows += "<td>" + collectCheckboxHTMLVarUnChecked +"</td>";
							}
						}
						if(index=="chequeNumber"){
							if(objectItem3=="null"){
								rows += "<td>" + "---" +"</td>";
							}else{
								rows += "<td>" + objectItem3 +"</td>";
							}
						}if(index=="revokeStatus"){
							if(objectItem3=="Yes"){
								rows += "<td>" + revokeHTMLVarChecked +"</td>";
								}else{
								rows += "<td>" + revokeHTMLVarUnChecked +"</td>";	
								}
						}if(index=="submitId"){
							if(objectItem3=="Yes"){
								rows += "<td>" + "<span><input disabled type='submit' value='submit'></span>" +"</td></tr>";
								}else{
									rows += "<td>" + "<span><input type='submit' value='submit'></span>" +"</td></tr>";
								}
						}
				});
				$("#bill_table_id tbody").append(rows);
				
			});
			rows ="";
		}
   }); 
	
}

function submitNewConnectionFormRequest(formId){
	
	var formID=formId;
	createNewWaterConnection(formID)	
		.done( function (data){
			//handleData(data)
			console.log(data);
			fillDataInPanel(data);
		})
	    .fail(function (){
	 	   alert("fFFFFFF");
	    })
	    .complete(function (){
	    	setTimeout(function () {
	    		animateToTop();
	    	}, 1000);
	    	
	    });

}

function submitUpdateConnectionFormRequest(formId, applicationStatusId){
		
	var formID=formId;
	updateWaterConnection(formID, applicationStatusId)	
		.done( function (data){
			//handleData(data)
			console.log(data);
            $("#success-alert").alert();
            $("#success-alert").fadeTo(2000, 500).slideUp(500, function(){
           $("#success-alert").slideUp(500);
            }); 
		})
	    .fail(function (){
	 	   alert("fFFFFFF");
	    })
}


function getApplicationStatus(applicationId){
	getApplicationStatusById(applicationId)	
	.done( function (data){
		fillInDisplayBox(data);
	})
    .fail(function (){
 	   alert("fFFFFFF");
    })
}

function fillInDisplayBox(data){
	//application_detail_display_box_id
	//Remark if any
	//data on disabled mode
	//update detail button
	//application_status_display_box_id
	//new_connection_id_display_box_id
	
	viewDisabledForm('new_connection_id_display_box_id');
}

function viewDisabledForm(id){	
	$("#"+id).show();	
	disableFormButton(id);
 //   putDivInTopOfAnotherDiv("application_status_display_box_id_additional","new_connection_id_display_box_id");
}

function putDivInTopOfAnotherDiv(idToPutOnTop, anotherId){
	
	// .position() uses position relative to the offset parent, 
    var pos = $("#"+anotherId).position();

    // .outerWidth() takes into account border and padding.
    var width = $("#"+anotherId).outerWidth();
    
	 $("#"+idToPutOnTop).css({
	        position: "absolute",
	        top: pos.top + "px",
	        left: (pos.left + width) + "px"
	    }).show();
}

function disableFormButton(id){
	$('#'+id).find(':input').each(
		    function(index){  
		        var input = $(this);
		        var inputId=input.attr('id');
		        	
//		        	update_application_status_btn_id
			        if(inputId){
			        	
			        	disableButton(inputId);
			        	if(equal(inputId,'update_application_status_btn_id')){
			        		enableButton(inputId);
			        	 }
	    		         if(equal(inputId,'new_water_connection_btn_id')){
				        	 input.attr("value","Update");
			        	}
		        }
		    }
		);
}

function enableFormButton(id){
	$('#'+id).find(':input').each(
		    function(index){  
		        var input = $(this);
		        var inputId=input.attr('id');
		        if(inputId){
		        	enableButton(inputId);
		        	if(equal(inputId,"new_water_connection_btn_id")){
		        		var inputVal=input.val();
		        		
		        		if(equal(inputVal,"Update")){
		        			input.attr("value","Update");
		        	    }else{
		        	    	input.attr("value","GET ME NEW CONNECTION");
		        	    }
		        		
		        }
		        }
		    }
		);
}




function fillDataInPanel(data){
	$("#generated_application_no_id").val("123");
}