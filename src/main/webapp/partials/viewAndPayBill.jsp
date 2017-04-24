
		<div class="container" id="viewAndPayBillIdDisplayBoxId" style="display:none;margin-top:85px;margin-left:0%">
			<div class="row" id="viewApplicationBoxId">
			  <div class="col-lg-offset-3 col-lg-6">
			    <div class="input-group">
			      <span class="input-group-btn">
				      <input style="width:40px" type="text" class="form-control" disabled id="" value="ID" placeholder="ID">
			      </span>
			      <input type="text" class="form-control" id="waterConnectionId" placeholder="Water Connection Id">
			      <span class="input-group-btn" >
			        <button class="btn btn-secondary btn-success" style="margin-left:10px" id="waterConnectionIdSubmitBtn" type="button">GET BILL</button>
			      </span>
    			  <span class="input-group-btn" >
			        <button class="btn btn-secondary btn-success" style="margin-left:10px" id="waterConnectionIdResetId" type="button">RESET</button>
			      </span>
			    </div>
			  </div>
			</div>

			<div id="billDisplayId" style="display:none">
				<br/>
				
				<div id="personalDetail" style="">
				     <div class="panel panel-default" style="width:50%">
					    <div class="panel-heading" id="personalDetailNameId"></div>
	    				<div class="panel-body" id="personalDetailAddressId"></div>
					</div>
			   </div>
				<div id="filterDisplayBoxId">
				     <div class="panel panel-default" style="">
					    <div class="panel-heading" id="">
					    FILTER BILL
					    </div>
					    <div class="panel-body" style="height: 10%">
					    
			      <div class="" style="display:inline">
                     <label for="property_type">Payment status:</label>
                     <select style="display:inline;" tabindex="" name="property_type" id="property_type" class="" data-show-subtext="true" style=" ;">
                        <option >Payment status</option>
                        <option data-subtext="paid">Paid</option>
                        <option data-subtext="paid">Unpaid</option>
                     </select>
                  </div>

                  <div class="" style="display:inline">
                     <label for="property_type">Year :</label>
                        <select style="display:inline;" tabindex="6" name="property_type" id="property_type" class="" data-show-subtext="true" style="display: ;">
                        <option>Year</option>
                        <option data-subtext="Heinz">2016</option>
                     </select>
                  </div>
					    		
                  <div class="" style="display:inline">
                     <label for="property_type">Month :</label>
                        <select style="display:inline;" tabindex="6" name="property_type" id="property_type" class="" data-show-subtext="true" style="display: ;">
                        <option>Month</option>
                        <option data-subtext="Heinz">Jan</option>
                     </select>
                  </div>
                   <button class="btn btn-secondary btn-small" style="margin-left:10px" id="" type="button">Apply Filter <span class="glyphicon glyphicon-search" area-hidden="true"></span></button>
                  

					    </div>
					</div>
				</div>			   

				<table class="table table-striped  table-inverse" id="billTableId" style="margin-top: 25px">
				    <thead>
				        <tr>
				            <th>BillId</th>
				            <th>Month Bill</th>
				            <th>Payment Last Date</th>
				            <th>Water Charge</th>
				            <th>Fine</th>     
				            <th>Paid Status</th>
				            <th>Total Payment</th>     
				            <th>Paid By</th>
				            <th>View</th>     
				            <th>Pay</th>     
				        </tr>
				    </thead>
				    <tbody>
				    </tbody>
				</table>
				
				
				<div id="totalUnpaidDisplayBoxId">
						<div id="totalUnpaidDisplayBoxIdPanel" style="">
				     		<div class="panel panel-success" style="">
							    <div class="panel-heading" id="">Total Unpaid Payment</div>
	    						<div class="panel-body" id="">
	    							<span id="finalUnpaidAmountId">Amount to be paid :</span>
	    							<span id="finalUnpaidAmountIdValue">:121:</span>
	    							<a href="#" id="finalAmountView">VIEW</a>
	    							<a href="#" id="finalAmountPay">PAY</a>
	    						</div>
							</div>
					   </div>
				</div>
		</div>
	</div>
