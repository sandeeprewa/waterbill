/**
 * 
 */


function resetViewAndPayBillDisplayBoxAndTable(){
	
	$("#personalDetailNameId").html("");
	$("#personalDetailAddressId").html("");
	$("#waterConnectionId").val("");
	$("#billTableId tbody").html("");
	$("#billDisplayId").slideUp	('fast');	
	$("#waterConnectionId").focus();
	enableButton('waterConnectionId');
	enableButton('waterConnectionIdSubmitBtn');
	disableButton('waterConnectionIdResetId');
}

function disableButton(btnId){
	document.getElementById(btnId).disabled=true
}

function enableButton(btnId){
	document.getElementById(btnId).disabled=false
}

function submitNewConnectionFormRequest(formId){
	
	var formID=formId;
	
	
/*	var data = [];
	data["customer_name"] = $("#customer_name").val();
	data["mobile_number"] = $("#mobile_number").val();
	data["plot_number"] = $("#plot_number").val();
	data["email"] = $("#email").val();
	data["property_type"] = $("#property_type").val();
	data["purpose"] = $("#purpose").val();
	data["block"] = $("#block").val();
	data["village_ward"] = $("#village_ward").val();
	data["locality"] = $("#locality").val();
	data["complete_address"] = $("#complete_address").val();
	data["certificate1"] = $("#certificate1").val();
	data["certificate2"] = $("#certificate2").val();
	data["certificate3"] = $("#certificate3").val();

*/	
	createNewWaterConnection(formID)	
		.done( function (data){
			handleData(data)
		})
	    .fail(function (){
	 	   alert("fFFFFFF");
	    })
	    .complete(function (){
	    	setTimeout(function () {
	    		animateToId();
	    	}, 1000);
	    	
	    });

}

function loadingImageFunction(){
	 
	$(document).ajaxStart(function(){
		    $("#loading").removeClass('hide');
	}).ajaxStop(function(){
		    $("#loading").addClass('hide');
	});
}


function handleData(data){
	 	   $.each(data, function (index, objectItem3) {
				console.log(index +'--'+ objectItem3);
	 	   })
}

function animateToId(){
	
	$('html, body').animate({
	    scrollTop: $("#main").offset().top
	}, 0);

}

function getWaterConnectionBill(billId){
	
	getBill(billId)
	.done(function (data){
		var rows="";
		
		$.each(data, function (index, objectItem) {
			console.log(index);
			
			if(index == "personName"){
				$('#personalDetailNameId').html("NAME :-" + "TESTING");
			}
			
			if(index == "personAddress"){
				$('#personalDetailAddressId').html("Address :-" + objectItem);
			}
			
			if(index == "listOfBill"){
				$.each(objectItem, function (index, objectItem2) {
					$.each(objectItem2, function (index, objectItem3) {
						console.log(index +'--'+ objectItem3);
						if(index=="billId"){
							rows += "<tr>"						
						}
							rows += "<td>" + objectItem3 + "</td>"
						if(index=="totalPaymentToBePaid"){
							rows += "<td>View</td>";
							rows += "<td>Pay</td>";
							rows += "</tr>";
							$("#billTableId tbody").append(rows);
						}
					});
					
				});
			}
       }); 
		
		rows ="";
		return data;
	})
	.fail(function(data){
		alert(data);
	});



}

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
		var boxId= "#" +id + 'DisplayBoxId';
		
		if(recentShownBoxId != boxId){
			$(boxId).slideDown('slow');
			
			showIfHidden('myCarousel');
			showIfHidden('footerId');
			if(id=='loginId'){
				hideIfShowOnUserLogin('myCarousel');
				hideIfShowOnUserLogin('footerId');
			}
			recentShownBoxId = boxId;
		}else{
			recentShownBoxId="";
		}
	})	

}

function loginService(formId){
}

function hide(id){
	$('#'+id).hide()
}

function show(id){
	$('#'+id).show()
}

function showIfHidden(id){
	if(isHidden(id)){
		show(id);
	}
}

function hideIfShown(id){
	if(isShown(id)){
		hide(id);
	}
}

function showOrHide(id){
	if(isShown(id)){
		hide(id);
	}else{
		show(id);
	}
}

function hideIfShowOnUserLogin(id){
	if($('#loginIdSpanId').html() != 'Login'){
		hideIfShown(id);
	}
}

function isShown(id){
	var flag=false;
	var currentDisplayValue = jQuery('#'+id)[0].style.display;
	if(currentDisplayValue != 'none'){
		flag=true;
	}
	
	var currentDisplayValueVis = jQuery('#'+id)[0].style.visibility;
	if(currentDisplayValueVis !="" && currentDisplayValueVis != 'hidden'){
		flag=true;
	}
	return flag;
}

function isHidden(id){
	var flag=false;
	var currentDisplayValue = jQuery('#'+id)[0].style.display;
	if(currentDisplayValue == 'none'){
		flag=true;
	}
	var currentDisplayValueVis = jQuery('#'+id)[0].style.visibility;
	if(currentDisplayValueVis == 'hidden'){
		flag=true;
	}
	return flag;
}