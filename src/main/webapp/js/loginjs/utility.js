/**
 * New node file
 */

function animateToTop(){
	
	$('html, body').animate({
	    scrollTop: $("#main").offset().top
	}, 0);

}

function resetForm(id){
   	$('#'+id)[0].reset();
}

function equal(val1,val2){
	return val1==val2;
}
function removeHTMLValue(id){
 $("#"+id).html("");
}

function focusOn(id){
	$("#"+id).focus();
}

function disableButton(btnId){
	document.getElementById(btnId).disabled=true
}

function enableButton(btnId){
	document.getElementById(btnId).disabled=false
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