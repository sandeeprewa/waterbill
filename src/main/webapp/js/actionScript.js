/**
 * 
 */

$(document).ready(function () {	
	
	 loadingImageFunction();	
	 workAroundHandleFileBrowsing();	
	 collapseMenuOptionOnClick();
	 hideAndShowUponMenuOptionClick();
    
    
    $("#waterConnectionIdSubmitBtn").click(function (){

    	$('#billDisplayId').slideDown('fast');
	    disableButton('waterConnectionIdSubmitBtn');
		enableButton('waterConnectionIdResetId');
		disableButton('waterConnectionId');
    	var billData = getWaterConnectionBill(1);
    })
    
    $("#waterConnectionIdResetId").click(function (){
    	resetViewAndPayBillDisplayBoxAndTable();
    })
    
    $("#getMeNewWaterConnectionId").click(function (){
    	submitNewConnectionFormRequest("newWaterConnectionFormId");
    	$('#newWaterConnectionFormId').hide('fast');
    	$('#applicationNumberPanelId').show('fast');
    });
    
    $('#resetNewWaterConnectionRestBtnId').click( function(){
    	$('#newWaterConnectionFormId')[0].reset();
    	$('#customer_name').focus();
    })
    
    $("#createAnotherFormId").click(function (){
//    	$('#applicationId').val('');
    	$('#newWaterConnectionFormId')[0].reset();
    	$('#applicationNumberPanelId').hide();
    	$('#newWaterConnectionFormId').show('slow');
    	$('#customer_name').focus();
    });
    
    $("#loginSumbitBtnId").click(function () {
    	
    })


});

