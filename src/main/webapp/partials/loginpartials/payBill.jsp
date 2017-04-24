
		<div class="container" id="collect_bill_id_display_box_id" style="display:none;margin-top:85px;margin-left:10%">

			<div class="row" id="application_id_enter_display_box_id">
			  
			  <div class="row">
			  <div class="col-lg-offset-3 col-lg-6">
			    <div class="input-group">
			      <span class="input-group-btn">
				      <input style="width:40px" type="text" class="form-control" disabled id="" value="ID" placeholder="ID">
			      </span>
			      <input type="text" class="form-control" id="water_connection_id" placeholder="Water Connection Id">
			    </div>

			    <br class="rwd-break">
			    
			    <div class="input-group">
			      <span class="input-group-btn" >
			        <button class="btn btn-secondary btn-success" style="margin-left:0px" id="get_bill_id" type="button">GET BILL</button>
			        <button class="btn btn-secondary btn-success" style="margin-left:0px" id="reset_get_bill_result_id" type="button">RESET</button>
			      </span>
			    </div>
			  </
>
			  </div>

			  <div class="row" id="search_name_display_box_id">
				  	<br/>
				  	<p class="row" style="margin-left:20%">OR</p>
			  <div class="col-lg-offset-3 col-lg-6">
			    <div class="input-group">
			      <span class="input-group-btn">
				      <span class="glyphicon glyphicon-user"></span>
			      </span>
			      <input type="text" class="form-control" id="search_name_id" placeholder="Search Name">
			    </div>
			    <br class="rwd-break">
			    <div class="input-group">
			      <span class="input-group-btn" >
			        <button class="btn btn-secondary btn-success" style="margin-left:10px" id="search_name_id" type="button">Search Name</button>
			        <button class="btn btn-secondary btn-success" style="margin-left:0px" id="reset_search_name_id" type="button">RESET</button>
			      </span>
			    </div>
			  </div>
			  </div>
			  
			</div>

			<div id="bill_display_box_id" style="display:none">
				<br/>
				
				<div class="row" id="bill_owner_personal_information_display_box_id" style="">
				     <div class="panel panel-default" style="width:100%">
					    <div class="panel-heading" id="">Details :</div>
	    				<div class="panel-body" id="bill_owner_personal_detail_id">

<form class="form-inline">

  <div class="form-group col-xs-12 col-sm-6 col-md-6">
    <label for="bill_id">Water Connection Id</label>
    <input type="text" class="form-control" disabled id="bill_water_connection_id" placeholder="Jane Doe">
  </div>

  <div class="form-group col-xs-12 col-sm-6 col-md-6">
    <label for="bill_name_id">Name</label>
    <input type="text" class="form-control" disabled id="bill_name_id" placeholder="">
  </div>

  <div class="form-group col-xs-12 col-sm-6 col-md-6">
    <label for="bill_email_id">Email</label>
    <input type="email" class="form-control" aria-describedby='emailHelp' disabled id="bill_email_id" placeholder="jane.doe@example.com">
    <small id="emailHelp" class="form-text">
    
    <span class="glyphicon glyphicon-edit" id="bill_email_edit_id" style="margin-right:10%">Edit Email </span>
    <span class="glyphicon glyphicon-envelope" id="bill_email_send_id" style="margin-right:10%">Send Email </span>
    <span class="glyphicon glyphicon-ok" id="bill_email_save_id" style="margin-right:10%;display:none">Save Changes</span>
    
    </small>
 
  </div>

  <div class="form-group col-xs-12 col-sm-6 col-md-6">
    <label for="bill_mobile_number_id">Phone Number</label>
    <input type="number" aria-describedby='phoneHelp' class="form-control" disabled id="bill_mobile_number_id" placeholder="jane.doe@example.com">
     <small id="phoneHelp" class="form-text"><span id="bill_number_edit_id" class="glyphicon glyphicon-edit" style="margin-right:10%">Edit Number</span>     
     <span class="glyphicon glyphicon-envelope" id="bill_message_send_id" style="margin-right:10%">Send Message</span>
    <span class="glyphicon glyphicon-ok" id="bill_number_save_id" style="display:none">Save Changes</span>
	</small>
  </div>

  <div class="form-group">
    <label for="bill_address_id">Bill Address</label>
    <input type="text" class="form-control" id="bill_address_id" disabled placeholder="jane.doe@example.com">
  </div>

</form>
	    				</div>
					</div>
			   </div>
			   
				<div class="row" id="bill_filter_display_box_id">
				     <div class="panel panel-default" style="">
					    <div class="panel-heading" id="">
					    FILTER BILL
					    </div>
			       <div class="panel-body" style="height: 10%">
					    
			      <div class="" style="display:inline">
                     <label for="filter_display_box_payment_status_id">Payment status:</label>
                     <select style="display:inline;" tabindex="" name="filter_display_box_payment_status_id" id="filter_display_box_payment_status_id" class="" data-show-subtext="true" style=" ;">
                        <option >Payment status</option>
                        <option data-subtext="paid" value="paid">Paid</option>
                        <option data-subtext="unpaid" value="unpaid">Unpaid</option>
                     </select>
                  </div>

                  <div class="" style="display:inline">
                     <label for="filter_display_box_year_id">Year :</label>
                        <select style="display:inline;" tabindex="6" name="filter_display_box_year_id" id="filter_display_box_year_id" class="" data-show-subtext="true" style="display: ;">
                        <option>Year</option>
                        <option value="2016">2016</option>
                        <option value="2015">2015</option>
                        <option value="2014">2014</option>
                     </select>
                  </div>
					    		
                  <div class="" style="display:inline">
                     <label for="filter_display_box_month_id">Month :</label>
                        <select style="display:inline;" tabindex="6" name="filter_display_box_month_id" id="filter_display_box_month_id" class="" data-show-subtext="true" style="display: ;">
                        <option>Month</option>
                        <option data-subtext="Jan" value="Jan">Jan</option>
                        <option data-subtext="Jan" value="Jan">Feb</option>
                        <option data-subtext="Jan" value="Jan">Mar</option>
                        <option data-subtext="Jan" value="Jan">Apr</option>
                     </select>
                  </div>
                   <button class="btn btn-secondary btn-small" style="margin-left:10px" id="filter_display_box_filter_id" type="button">Apply Filter <span class="glyphicon glyphicon-search" area-hidden="true"></span></button>
					    </div>
					</div>
				</div>			   

				<table class="row table table-striped  table-inverse" id="bill_table_id" style="margin-top: 25px">
				    <thead>
				        <tr>
				            <th>BillId</th>
				            <th>Month</th>
				            <th>Water Charge</th>
				            <th>Fine</th>     
				            <th>Total Payment</th>     
				            <th>Paid By</th>
				            <th>Collect</th>     
				            <th>Cheque No</th>
				            <th>Revoke</th>     
				            <th>Submit</th>     
				        </tr>
				    </thead>
				    <tbody>
				    </tbody>
				</table>
				
				
				<div class="row" id="total_unpaid_display_box_id">
						<div id="total_unpaid_display_box_id_panel" style="">
				     		<div class="panel panel-success" style="">
							    <div class="panel-heading" id="">Total Unpaid Payment</div>
	    						<div class="panel-body" id="">
	    							<span id="total_unpaid_amount_id">Amount to be paid:</span>
	    							<h1 style="display:inline"><span id="total_unpaid_amount_value_id">121</span></h1>
	    							
								<div class='' style='display:inline;'>
									<select style='display:inline;' tabindex='' name='total_amount_paid_by_id' id='total_amount_paid_by_id' class='' data-show-subtext='true' style=''>
										<option data-subtext='cash' value="cash">Cash</option>
										<option data-subtext='cheque' value="cheque">Cheque</option>
									</select>
										<span style="display:none" id="total_amount_cheque_number_span_id">										
										Cheque No: <input type="text"  id="total_amount_cheque_number_id" placeholder="Cheque nO"> 
										</span>
										<span>										
										Collected: <input type="checkbox" placeholder=""> 
										</span>
										<span>										
										Revoke: <input type="checkbox" placeholder=""> 
										</span>
										<span>										
										 <input type="submit" value="Submitted"> 
										</span>

									</div>
	    							
	    						</div>
							</div>
					   </div>
				</div>
		</div>
	</div>
