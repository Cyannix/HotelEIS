<%@page import="java.sql.*"%>
<%@page import="systemSetup.dbConnection" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
  <meta name="description" content="">
  <meta name="author" content="">
  <link rel="shortcut icon" href="Resources/images/favicon.png" type="image/png">
  <link href="Resources/css/style.default.css" rel="stylesheet">
  
<title>HPMS | System Setup</title>

	<style>
	.vl {
	    border-left: 1px solid grey;
	    position: absolute;
	    left: 50%;
	    top: 28%;
	    
	}
	
	.mr {
		margin-right: 10px;
	}
	
	.foo {
	  resize: none;
	}
	
	</style>
	
	<script type="text/javascript" src="jquery-1.8.3.min.js"></script>
	

</head>
<body>


<!-- Preloader -->
<div id="preloader">
    <div id="status"><i class="fa fa-spinner fa-spin"></i></div>
</div>


<section>

  <div class="leftpanel">

    <div class="logopanel">
        <h1><span>[</span> Holiday Inn <span>]</span></h1>
    </div><!-- logopanel -->

    <div class="leftpanelinner">

	<h5 class="sidebartitle">Navigation | System Setup</h5><br>
      <ul class="nav nav-pills nav-stacked nav-bracket">
         <li class="active"><a href="AD_RoomSetup.jsp"><i class="fa fa-book"></i><span weight="5">System Setup</span></a></li>
         <li class=""><a href="#"><i class="fa fa-home"></i> <span>Packages</span></a></li>
         <li class=""><a href="#"><i class="fa fa-home"></i> <span>User Management</span></a></li>
         <li class="nav-parent"><a href=""><i class="fa fa-edit"></i> <span>Configurables</span></a>
             <ul class="children">
                 <li><a href="general-forms.html"><i class="fa fa-caret-right"></i> Charges </a></li>
                 <li><a href="form-layouts.html"><i class="fa fa-caret-right"></i> ...</a></li>
                 <li><a href="form-validation.html"><i class="fa fa-caret-right"></i> ...</a></li>
                 <li><a href="form-wizards.html"><i class="fa fa-caret-right"></i> ...</a></li>
                 <li><a href="wysiwyg.html"><i class="fa fa-caret-right"></i> ...</a></li>
                 <li><a href="code-editor.html"><i class="fa fa-caret-right"></i> ...</a></li>
                 <li><a href="x-editable.html"><i class="fa fa-caret-right"></i> ...</a></li>
             </ul>
         </li>
     </ul>
	
    </div><!-- leftpanelinner -->
  </div><!-- leftpanel -->

  <div class="mainpanel">

    <div class="headerbar">

 
 		<div class="header-left">
        
        <div class="topnav">
                        
            <ul class="nav nav-horizontal">
                <li class=""><a href="RS_NewReservation.jsp"><i class="fa fa-book"></i>Reservation</a></li>
                <li ><a href="FD_Arrivals.jsp"><i class="fa fa-user"></i> <span>Front Desk</span></a></li>
                <li class=""><a href="CS_Billing.jsp"><i class="fa fa-usd"></i> <span>Cashiering</span></a></li>
                <li class=""><a href="room.jsp"><i class="fa fa-home"></i> <span>Room Management</span></a></li>
                <li class="active"><a href="AD_RoomSetup.jsp"><i class="fa fa-usd"></i> <span>Setup</span></a></li>
            </ul>
        </div>
        </div>
 		
      <div class="header-right">
        <ul class="headermenu">
          <li>
            <div class="btn-group">
              <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
                <img src="images/photos/loggeduser.png" alt="" />
                Sample user
                <span class="caret"></span>
              </button>
              <ul class="dropdown-menu dropdown-menu-usermenu pull-right">
                <li><a href="profile.html"><i class="glyphicon glyphicon-user"></i> My Profile</a></li>
                <li><a href="#"><i class="glyphicon glyphicon-cog"></i> Account Settings</a></li>
                <li><a href="#"><i class="glyphicon glyphicon-question-sign"></i> Help</a></li>
                <li><a href="signin.html"><i class="glyphicon glyphicon-log-out"></i> Log Out</a></li>
              </ul>
            </div>
          </li>
          <li>
            <button id="chatview" class="btn btn-default tp-icon chat-icon">
                <i class="glyphicon glyphicon-comment"></i>
            </button>
          </li>
        </ul>
      </div><!-- header-right -->

    </div><!-- headerbar -->
    
    <div class="pageheader">
      <h2><i class="fa fa-usd"></i> System Setup <span> Admin Side </span></h2>
      <div class="breadcrumb-wrapper">
        <span class="label">You are here:</span>
        <ol class="breadcrumb">
          <li><a href="index.html">Home</a></li>
          <li class="active">System Setup</li>
        </ol>
      </div>
    </div>

    <div class="contentpanel">
 
   
    <% 
	
	dbConnection db = new dbConnection();//initialize yung class then use the function
	Connection conn = db.getConnection();
	if(conn == null)
		out.print("failasded");
	else
		out.print("succeasdss");


	%>
	
        
        <div class="row" >
        	<div class="col-md-8">
		        <!-- Nav tabs -->
		        <ul class="nav nav-tabs nav-justified">
		          <li class="active"><a href="#rct" data-toggle="tab"><strong>Room Category</strong></a></li>
		          <li><a href="#cr" data-toggle="tab"><strong>Charge Rate</strong></a></li>
		        </ul>
		        
		        <!-- Tab panes -->
		        <div class="tab-content">
		          <div class="tab-pane active" id="rct">
			          <div class="panel panel-default">
			            <div class="panel-heading">
			              <div class="panel-btns">
			                <!-- <a href="" class="panel-close">&times;</a> -->
			                <!-- <a href="" class="minimize">&minus;</a> -->
			              </div>
			              <h4 class="panel-title">Category Type Creation</h4>
			            </div>
			            <div class="panel-body">
			              <div class="row">
			                <div class="col-sm-6">
			                  <div class="form-group" style="margin-right: 3%">
			                    <label class="control-label">Category Type *</label>
			                    <input type="text" name="rct-name" id="rct-name" class="form-control" required/>
			                  </div>
			                  <div class="form-group" style="margin-right: 3%">
			                  	<label class="control-label">Description</label>
			                    <textarea class="form-control foo" id="rct-desc" name="rct-desc" rows="6" placeholder="Room Type Information"></textarea>
			                  </div>
			                </div><!-- col-sm-6 -->
			                
			                <div class="vl" style="height:160px; margin-top: 8%; margin-left:3%" > </div>
		                
			               <div class="col-sm-4">
			               	<h3 style="margin-left: 3%">Occupancy</h3>
			                  <div class="form-group" style="margin-top: 7%; margin-left: 20%">
			                    <label class="control-label">Adult *</label>
			                    <input type="number" name="occ-adult" id="occ-adult" min="1" max="100" class="form-control" required/>
			                  </div>
			                  <div class="form-group" style="margin-left: 20%">
			                    <label class="control-label">Children</label>
			                    <input type="number" name="occ-child" id="occ-child" min="0" max="100" class="form-control" />
			                  </div>
			                </div><!-- col-sm-2 -->	
			                
			              </div><!-- row -->	
			              
			            </div><!-- panel-body -->
			            <div class="panel-footer">
			              <button class="btn btn-primary" id="savebtntype" >Submit Card</button>
			            </div>
			          </div><!-- End of room creation -->			        
		          </div> <!-- tab id="rc" -->
		          
		          
		          <div class="tab-pane" id="cr">
		            <div class="panel panel-default">
			            <div class="panel-heading">
			              <div class="panel-btns">
			                <!-- <a href="" class="panel-close">&times;</a> -->
			                <!-- <a href="" class="minimize">&minus;</a> -->
			              </div>
			              <h4 class="panel-title">Charge Rate Registration</h4>
			            </div>
			            <div class="panel-body">			              			              
			              <div class="row">
				            <div class="col-sm-6">
			                  <div class="form-group" style="margin-right: 3%">
			                    <label class="control-label">Rate Name/ Room Code *</label>
			                    <input type="text" name="rate-name" id="rate-name" class="form-control" required/>
			                  </div>
			                  <div class="form-group" style="margin-right: 3%">
			                    <label class="control-label">Unit *</label>
			                    <select class="form-control input-sm mb15" required>          
				                  <option value=""></option>
								</select>
			                  </div>
			                  <div class="form-group" style="margin-right: 3%">
			                    <label class="control-label">Unit *</label>
			                    <select class="form-control input-sm mb15" required>          
				                  <option value=""></option>
								</select>
			                  </div>
			                  <div class="form-group" style="margin-right: 3%">
			                  	<label class="control-label">Description</label>
			                    <textarea class="form-control" id="foo" name="rate-desc" id="rateDesc" rows="5" placeholder="Room Type Information"></textarea>
			                  </div>
			                </div><!-- col-sm-6 -->
			                
			                <div class="vl" style="height:240px; margin-left:5%; margin-top: 6%" > </div> 
			                
			               <div class="col-sm-4">
			               	<h3 style="margin-left: 10%">Charge Rate </h3> 
			                  <div class="form-group" style="margin-top: 7%; margin-left: 25%">
			                    <label class="control-label">Basic *</label>
			                    <input type="number" name="basic-rate" id="basic-rate" min="1" max="3500" class="form-control" required/>
			                  </div>
			                  <div class="form-group" style="margin-left: 25%">
			                    <label class="control-label">Per Extra Adult *</label>
			                    <input type="number" name="ext-adult" id="ext-adult" min="1" max="3500" class="form-control" required/>
			                  </div>
			                  <div class="form-group" style="margin-left: 25%">
			                    <label class="control-label">Per Extra Child</label>
			                    <input type="number" name="ext-child" id="ext-child" class="form-control" />
			                  </div>
			                  
			                </div><!-- col-sm-4 -->
				            
			              </div><!-- row -->			              
			              			              
			            </div><!-- panel-body -->
			            <div class="panel-footer">
			              <button class="btn btn-primary" id="save-charge">Submit Card</button>
			            </div>
			          </div><!-- End of room creation -->		
		          </div>
		          
		        </div>
        	</div>        
        
    
        	<div class="col-md-4">
		        <!-- Nav tabs -->
		        <ul class="nav nav-tabs nav-justified">
		          <li class="active"><a href="#rc" data-toggle="tab"><strong>Room</strong></a></li>
		          <li><a href="#fc" data-toggle="tab"><strong>Floor</strong></a></li>
		        </ul>
		        
		        <!-- Tab panes -->
		        <div class="tab-content">
		          <div class="tab-pane active" id="rc">
			          <div class="panel panel-default">
			            <div class="panel-heading">
			              <div class="panel-btns">
			                <!-- <a href="" class="panel-close">&times;</a> -->
			                <!-- <a href="" class="minimize">&minus;</a> -->
			              </div>
			              <h4 class="panel-title">Room Creation</h4>
			            </div>
			            <div class="panel-body">
			              <div class="row">
			                <div class="col-sm-12">
			                  <div class="form-group">
			                    <label class="control-label">Room Type *</label>
				                    <select class="form-control input-sm mb15" required>
					                  <option>King</option>
					                  <option>Deluxe</option>
					                  <option>Suite</option>
					                </select>
			                  </div>
			                </div><!-- col-sm-6 -->
			                
			              </div><!-- row -->
			              
			              <div class="row">
				            <div class="col-sm-6">
				                <div class="form-group">
				                 <label class="control-label">Room No. *</label>
						   		 <input type="number" name="roomNo" class="form-control" required/>
				                </div>
				            </div><!-- col-sm-6 -->
			                <div class="col-sm-6">
			                  <div class="form-group">
			                    <label class="control-label">Floor No. *</label>
							    <input type="number" name="floorNo" class="form-control" required/>
			                  </div>
			                </div><!-- col-sm-6 -->                
			              </div><!-- row -->
			              
			              <div class="row">
			              <div class="col-sm-12">
			                <div class="form-group">
			                  <label class="control-label">Description</label>
					    		<textarea class="form-control foo" name="roomDesc" rows="5" placeholder="Room Information"></textarea>
			                </div>
				          </div><!-- col-sm-12 -->	              
			              </div><!-- row -->
			              
			            </div><!-- panel-body -->
			            <div class="panel-footer">
			              <button class="btn btn-primary">Submit Card</button>
			            </div>
			          </div><!-- End of room creation -->			        
		          </div> <!-- tab id="rc" -->
		          
		          
		          <div class="tab-pane" id="fc">
		            <div class="panel panel-default">
			            <div class="panel-heading">
			              <div class="panel-btns">
			                <!-- <a href="" class="panel-close">&times;</a> -->
			                <!-- <a href="" class="minimize">&minus;</a> -->
			              </div>
			              <h4 class="panel-title">Floor Creation</h4>
			            </div>
			            <div class="panel-body">			              			              
			              <div class="row">
				            <div class="col-sm-12">
				                <div class="form-group">
				                 <label class="control-label">Floor No. *</label>
						   		 <input type="number" name="originFloorNo" class="form-control" required/>
				                </div>
				            </div><!-- col-sm-12 -->
			              </div><!-- row -->			              
			              <div class="row">
			              <div class="col-sm-12">
			                <div class="form-group">
			                  <label class="control-label">Description</label>
					    		<textarea class="form-control foo" name="floorDesc" rows="5" placeholder="Floor Information"></textarea>
			                </div>
				          </div><!-- col-sm-12 -->	              
			              </div><!-- row -->
			              
			            </div><!-- panel-body -->
			            <div class="panel-footer">
			              <button class="btn btn-primary">Submit Card</button>
			            </div>
			          </div><!-- End of room creation -->		
		          </div>
		          
		        </div>
        	</div>        
        </div>
    	
    	
    </div><!-- Content Panel -->
      
  </div><!-- mainpanel -->

  <div class="rightpanel">
    <!-- Nav tabs -->

    <!-- Tab panes -->
    <div class="tab-content">
       
    </div><!-- tab-content -->
      
  </div><!-- rightpanel -->


</section>

<script src="Resources/js/jquery-1.11.1.min.js"></script>
<script src="Resources/js/jquery-migrate-1.2.1.min.js"></script>
<script src="Resources/js/bootstrap.min.js"></script>
<script src="Resources/js/modernizr.min.js"></script>
<script src="Resources/js/jquery.sparkline.min.js"></script>
<script src="Resources/js/toggles.min.js"></script>
<script src="Resources/js/retina.min.js"></script>
<script src="Resources/js/jquery.cookies.js"></script>


<script src="Resources/js/bootstrap-wizard.min.js"></script>
<script src="Resources/js/select2.min.js"></script>
<script src="Resources/js/jquery.validate.min.js"></script>

<script src="Resources/js/custom.js"></script>

<script type="text/javascript">
	$(document).ready(function(){
		
		$('#savebtntype').on('click', function(){		
			
			var type = $('#rct-name').val();
			var desc = $('#rct-desc').val();
			var adult = $('#occ-adult').val();
			var child = $('#occ-child').val();
			//next nating gagawin ay gagamitin na natin ang ajax para makasend sa server
			$.ajax({
				type: 'POST',
				url: 'insert_roomCateg_Controller',//link ito na makukuha sa servlet na ginawa
				data: {
					_type: type,//unang var ay para sa may server, ito yung parameter para makuha ang value
					_desc: desc,
					_adult: adult,
					_child: child
				},
				success: function (response) {
					alert('naka inser kana');
				   
				},
				error: function (response) {
					swal("Error encountered while adding data", "Please try again", "error");
				}
			});
		});
			
	});



</script>


<script>
jQuery(document).ready(function(){
    
    "use strict";
    
  // With Form Validation Wizard
  var $validator = jQuery("#firstForm").validate({
    highlight: function(element) {
      jQuery(element).closest('.form-group').removeClass('has-success').addClass('has-error');
    },
    success: function(element) {
      jQuery(element).closest('.form-group').removeClass('has-error');
    }
  });
  
  jQuery('#validationWizard').bootstrapWizard({
    tabClass: 'nav nav-pills nav-justified nav-disabled-click',
    onTabClick: function(tab, navigation, index) {
      return false;
    },
    onNext: function(tab, navigation, index) {
      var $valid = jQuery('#firstForm').valid();
      if(!$valid) {
        
        $validator.focusInvalid();
        return false;
      }
    }
  });
  
  jQuery(".select2").select2({
    width: '100%',
    minimumResultsForSearch: -1
  });
  
  
});
</script>

</body>
</html>