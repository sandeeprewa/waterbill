/**
 * New node file
 */
var dataServices = new function () {
		
	   var serviceUrl='./user';
	
	   getBill = function (id) {
		   console.log(serviceUrl + '/' + id + "/bills/");
		   return $.getJSON(serviceUrl + '/' + id + "/bills/");
	   }
	
	   getBillByYear = function (applicationId, year){
		   //
	   }
	   
	   getBillByMonth = function (applicationId, month){
		   //
	   }

	   getBillByPaidStatus = function (applicationId, paidStatus){
		   //
	   }
	   
	   getBillByYearMonthPaid = function (applicationId,year,month, paidStatus){
		   //
		   console.log(serviceUrl + '/' + applicationId + "/bills/"+year+"/"+month+"/"+paidStatus);
		   return $.getJSON(serviceUrl + '/' + applicationId + "/bills/"+year+"/"+month+"/"+paidStatus);
			
	   }
	   
	   createNewWaterConnection = function (formID){
	     return   $.ajax({
	            url: 'waterConnection',
	            type: "POST",
	            data: new FormData(document.getElementById(formID)),
	            enctype: 'multipart/form-data',
	            processData: false,
	            contentType: false,
	       }) 
	   }

	   login = function (formID){
			var markers = { "userName": "Shari", "password": "Shari" };
			
		return	jQuery.ajax(
				{    
					type: "POST",
					url: "./login",
					data: {
						"userName":"Shari",
						"password":"Shari"
					},
					dataType:"json",
					beforeSend: function(xhr) {
/*						xhr.setRequestHeader("Accept", "application/json");
						xhr.setRequestHeader("Content-Type", "application/json");
*/					}		
			});
 
		   }
	   
	    getApplicationStatusById = function (id) {
			   console.log(serviceUrl + '/' + id + "/bills/");
			   return $.getJSON(serviceUrl + '/' + '2' + "/bills/");
		   }
	   
	    updateWaterConnection = function (formID, applicationId){
		     return   $.ajax({
		            url: 'waterConnection',
		            type: "POST",
		            data: new FormData(document.getElementById(formID)),
		            enctype: 'multipart/form-data',
		            processData: false,
		            contentType: false,
		       }) 
		   } 
	   
		return {
			getBill : getBill,
			createNewWaterConnection : createNewWaterConnection,
			login : login,
			getBillByYear : getBillByYear,
			getBillByMonth: getBillByMonth,
			getBillByPaidStatus: getBillByPaidStatus,
			getBillByYearMonthPaid:getBillByYearMonthPaid,
			getApplicationStatusById:getApplicationStatusById,
			updateWaterConnection:updateWaterConnection
		}
}();