<div class="" id="new_connection_id_display_box_id" style="display:none;margin-top:85px;margin-left:15%">

<!-- Water Connection Form Starts -->
	<form onSubmit="event.preventDefault()" id="new_water_connection_form_id">
   <div class="container">
   			
				<div class="row" id="application_status_display_box_id_additional" style="display:none">
					<p id="remark_id">
						NOHTTTTTT NOHTTTTTTNOHTTTTTTNOHTTTTTTNOHTTTTTT
					</p>
				<p id="update_application_status_pid">
				  <span class="input-group-btn" >
			        <button class="btn btn-secondary btn-success" style="margin-left:0px" id="update_application_status_btn_id" value="sa" type="button">Update Details</button>
			      </span>
				</p>
			</div>			


      <div class="row">
         <div class="col-xs-12 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3">
               <hr class="colorgraph">
               <div class="row">
               	        <input type="text" name="application_hidden_name" style="display:none" id="application_hidden_id">
                  <div class="col-xs-12 col-sm-6 col-md-6">
                     <div class="form-group">
                        <label for="customer_name">Customer Name:</label>
                        <input type="text" name="customer_name" id="customer_name_id" class="form-control input-lg" placeholder="Customer Name" tabindex="1">
                     </div>
                  </div>
                  <div class="col-xs-12 col-sm-6 col-md-6">
                     <div class="form-group">
                        <label for="mobile_number">Mobile Number:</label>
                        <input type="text" name="mobile_number" id="mobile_number_id" class="form-control input-lg" placeholder="Mobile Number" tabindex="2">
                     </div>
                  </div>
               </div>
               <div class="row">
                  <div class="col-xs-12 col-sm-6 col-md-6">
                     <div class="form-group">
                        <label for="plot_number">Plot Number:</label>
                        <input type="text" name="plot_number" id="plot_number_id" class="form-control input-lg" placeholder="Plot Number" tabindex="3">
                     </div>
                  </div>
                  <div class="col-xs-12 col-sm-6 col-md-6">
                     <div class="form-group">
                        <label for="email">Email:</label>
                        <input type="text" name="email" id="email_id" class="form-control input-lg" placeholder="Email Address" tabindex="4">
                     </div>
                  </div>
               </div>
               <div class="row">
                  <div class="col-xs-12 col-sm-6 col-md-6">
                     <label for="property_type">Property Type:</label><br/>
                     <select tabindex="6" name="property_type" id="property_type_id" class="" data-show-subtext="true" style="display: ;">
                        <option >Property Type</option>
                        <option data-subtext="Heinz">Ketchupwwwwwwwwww</option>
                     </select>
                  </div>
                  <div class="col-xs-12 col-sm-6 col-md-6">
                     <label for="purpose">Purpose:</label><br/>
                     <select tabindex="7" name="purpose" id="purpose_id" class="" data-show-subtext="true" style="display: ;">
                        <option >XXXX</option>
                        <option data-subtext="Heinz">Ketchupwwwwwwwwww</option>
                     </select>
                  </div>
               </div>
               `
               <div class="row">
                  <div class="col-xs-12 col-sm-6 col-md-6">
                     <label for="block">Block:</label><br/>
                     <select tabindex=8" name="block" id="block_id"  class="" data-show-subtext="true" style="display: ;">
                        <option >XXXX</option>
                        <option data-subtext="Heinz">Ketchupwwwwwwwwww</option>
                     </select>
                  </div>
                  <div class="col-xs-12 col-sm-6 col-md-6">
                     <label for="village_ward">village/Ward:</label><br/>
                     <select tabindex="10" name="village_ward" id="village_ward_id" class="" data-show-subtext="true" style="display: ;">
                        <option >XXXX</option>
                        <option data-subtext="Heinz">Ketchupwwwwwwwwww</option>
                     </select>
                  </div>
               </div>
               `                    
               <div class="form-group">
                  <div>
                     <label for="locality">Locality:</label><br/>
                     <select tabindex="11" name="locality" id="locality_id" class="" data-show-subtext="true" style="display: ;">
                        <option >XXXX</option>
                        <option data-subtext="Heinz">Ketchupwwwwwwwwww</option>
                     </select>
                  </div>
               </div>
               <div class="form-group">
                  <label for="complete_address">Complete Address:</label>
                  <textarea tabindex="13" name="complete_address" id="complete_address_id" class="form-control" rows="3"></textarea>
               </div>
               
               <div class="form-group" style="">
                  <label class="control-label">Upload Certificate 1:</label>
                  <input type="file" id="certificate1_id" name="file[0]" class="file">
                  <div class="input-group col-xs-12">
                     <span class="input-group-addon"><i class="glyphicon glyphicon-picture"></i></span>
                     <input type="text" class="form-control input-lg" disabled placeholder="Upload Image" >
                     <span class="input-group-btn">
                     <button tabindex="13" class="browse btn btn-primary input-lg" type="button"><i class="glyphicon glyphicon-search"></i> Browse your Certificcate</button>
                     </span>
                  </div>
               </div>
               <div class="form-group" style="">
                  <label class="control-label">Upload Certificate 2:</label>
                  <input type="file" id="certificate2_id" name="file[1]" class="file">
                  <div class="input-group col-xs-12">
                     <span class="input-group-addon"><i class="glyphicon glyphicon-picture"></i></span>
                     <input type="text" class="form-control input-lg" disabled placeholder="Upload Image">
                     <span class="input-group-btn">
                     <button tabindex="14" class="browse btn btn-primary input-lg" type="button"><i class="glyphicon glyphicon-search"></i> Browse your Certificcate</button>
                     </span>
                  </div>
               </div>
               <div class="form-group" style="">
                  <label class="control-label">Upload Certificate 3:</label>
                  <input type="file" name="file[2]" id="certificate3_id" class="file">
                  <div class="input-group col-xs-12">
                     <span class="input-group-addon"><i class="glyphicon glyphicon-picture"></i></span>
                     <input type="text" class="form-control input-lg" disabled placeholder="Upload Image">
                     <span class="input-group-btn">
                     <button tabindex="15" class="browse btn btn-primary input-lg" type="button"><i class="glyphicon glyphicon-search"></i> Browse your Certificcate</button>
                     </span>
                  </div>
               </div>
               
               <div class="row">
                  
                  <div class="col-xs-4 col-sm-3 col-md-3">
                     <span class="button-checkbox">
                     <button type="button" id="i_agree_btn_id" class="btn" data-color="info" tabindex="16">I Agree</button>
                     <input type="checkbox" name="t_and_c" id="t_and_c" class="hidden" value="1">
                     </span>
                  </div>
                  
                  <div class="col-xs-8 col-sm-9 col-md-9">
                     By clicking <strong class="label label-primary">Get Me New Connection</strong>, you agree to the <a href="#" data-toggle="modal" data-target="#t_and_c_m">Terms and Conditions</a> set out by this site.
                  </div>
               </div> 	
               
               <hr class="colorgraph">
               <div class="row">
                  <div class="col-xs-12 col-md-6">
                  	<input type="submit" id="new_water_connection_btn_id" value="GET ME NEW CONNECTION" class="btn btn-primary  btn-lg" tabindex="17">
                  	<input type="button" value="RESET" class="btn btn-danger  btn-lg" id="reset_new_water_connection_btn_id" tabindex="18">
                  </div>
               </div>
         </div>
      </div>
      <!-- Modal -->
      <div class="modal fade" id="t_and_c_m" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
         <div class="modal-dialog modal-lg">
            <div class="modal-content">
               <div class="modal-header">
                  <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                  <h4 class="modal-title" id="myModalLabel">Terms & Conditions</h4>
               </div>
               <div class="modal-body">
                  <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Similique, itaque, modi, aliquam nostrum at sapiente consequuntur natus odio reiciendis perferendis rem nisi tempore possimus ipsa porro delectus quidem dolorem ad.</p>
                  <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Similique, itaque, modi, aliquam nostrum at sapiente consequuntur natus odio reiciendis perferendis rem nisi tempore possimus ipsa porro delectus quidem dolorem ad.</p>
                  <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Similique, itaque, modi, aliquam nostrum at sapiente consequuntur natus odio reiciendis perferendis rem nisi tempore possimus ipsa porro delectus quidem dolorem ad.</p>
                  <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Similique, itaque, modi, aliquam nostrum at sapiente consequuntur natus odio reiciendis perferendis rem nisi tempore possimus ipsa porro delectus quidem dolorem ad.</p>
                  <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Similique, itaque, modi, aliquam nostrum at sapiente consequuntur natus odio reiciendis perferendis rem nisi tempore possimus ipsa porro delectus quidem dolorem ad.</p>
                  <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Similique, itaque, modi, aliquam nostrum at sapiente consequuntur natus odio reiciendis perferendis rem nisi tempore possimus ipsa porro delectus quidem dolorem ad.</p>
                  <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Similique, itaque, modi, aliquam nostrum at sapiente consequuntur natus odio reiciendis perferendis rem nisi tempore possimus ipsa porro delectus quidem dolorem ad.</p>
               </div>
               <div class="modal-footer">
                  <button type="button" class="btn btn-primary" data-dismiss="modal">I Agree</button>
               </div>
            </div>
            <!-- /.modal-content -->
         </div>
         <!-- /.modal-dialog -->
      </div>
      <!-- /.modal -->
   </div>
   
   <!-- Water Connection Form Ends -->
   <div>
   
   </div>
   </form>
	
	<div id="application_no_display_box_id" style="display:none" >
		   <div class="input-group-btn">
		        <button class="btn btn-primary btn-lg" type="button" value="Create New Connection" id="create_new_water_connection_id">Create New Connection</button>
		   </div>
		   <br/>
		     <div class="panel panel-sucess" style="width:50%">
				<div class="panel-heading" id="">Generated Application ID:</div>
	   				<div class="panel-body" id="">		
	  			    	<p>Please Note Of Your Application ID. This will be used to trace your application.</p>
		    		  <input type="text" class="form-control btn btn-danger" disabled id="generated_application_no_id" value="121">
					</div>
			</div>	
	</div>
</div>