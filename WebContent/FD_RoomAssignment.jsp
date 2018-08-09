<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
  <meta name="description" content="">
  <meta name="author" content="">
  <link rel="shortcut icon" href="Resources/images/favicon.png" type="image/png">

  <title>Holiday Inn | Room Assignment</title>

  <link href="Resources/css/style.default.css" rel="stylesheet">
  <link rel="stylesheet" href="Resources/css/bootstrap-timepicker.min.css" />
  <link rel="stylesheet" href="Resources/css/jquery.tagsinput.css" />
  <link rel="stylesheet" href="Resources/css/colorpicker.css" />
  <link rel="stylesheet" href="Resources/css/dropzone.css" />
  <link href="Resources/css/jquery.datatables.css" rel="stylesheet">

  <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!--[if lt IE 9]>
  <script src="Resources/js/html5shiv.js"></script>
  <script src="Resources/js/respond.min.js"></script>
  <![endif]-->
  <style>
.arrbut {
margin-left:10px;
}
 
</style>
  
</head>

<body class="horizontal-menu-sidebar">


<section>
  
  <div class="leftpanel">

    <div class="logopanel">
        <img src="Resources/images/caps/inn.png" height="50" weight="30" margin-top: 10px;>
    </div><!-- logopanel -->
    
    <div class="leftpanelinner">
        
     <h5 class="sidebartitle">Navigation | Front Desk Tab</h5><br>
      <ul class="nav nav-pills nav-stacked nav-bracket">
        <li class=""><a href="FD_Arrivals.jsp"><i class="fa fa-clock-o"></i> <span>Arrivals</span></a></li>
        <li class=""><a href="FD_InHouseGuest.jsp"><i class="fa fa-home"></i> <span>In House Guest</span></a></li>
        <li class="active"><a href="FD_RoomAssignment.jsp"><i class="fa fa-th"></i> <span>Room Assignment</span></a></li>        
        <br><br>        
        <li><a href="index.html"><i class="fa fa-sign-out"></i> <span>Sign Out</span></a></li>      
      </ul>
      
    </div><!-- leftpanelinner -->
  </div><!-- leftpanel -->
  
  <div class="mainpanel">
    
    <div class="headerbar">
      
      <div class="header-left">
        
        <div class="topnav">
                        
            <ul class="nav nav-horizontal">
                <li class=""><a href="RS_NewReservation.jsp"><i class="fa fa-book"></i><span weight="5">Reservation</span></a></li>
                <li class="active"><a href="FD_Arrivals.jsp"><i class="fa fa-user"></i> <span>Front Desk</span></a></li>
                <li class=""><a href="CS_Billing.jsp"><i class="fa fa-usd"></i> <span>Cashiering</span></a></li>
                <li class=""><a href="Housekeeping.jsp"><i class="fa fa-home"></i> <span>Room Management</span></a></li>
                
    
            </ul>
        </div>
          
      </div><!-- header-left -->
      
      
      
    </div><!-- headerbar -->
        
    <div class="pageheader">
      <h2><i class="fa fa-th"></i>Room Availability</h2>
      <div class="breadcrumb-wrapper">
        <span class="label">You are here:</span>
        <ol class="breadcrumb">
          <li><a href="rassign.jsp">Room Availability</a></li>
          <li><a href="Sample.jsp">Home</a></li>
        </ol>
      </div>
    </div>
    
    <div class="contentpanel">
      
      <div class="row">
        
        <div class="col-md-12 panel panel-default">        
			
          
          
          <div class="panel panel-default">
          	<div class="panel-heading">
          	
               
               <div class="panel-body">
          <!-- <h5 class="subtitle mb5">Basic Table</h5>
          <p class="m20">DataTables has most features enabled by default, so all you need to do to use it with one of your own tables is to call the construction function.</p>
          <br /> -->
          
          
          
          
        </div><!-- panel-body -->
               
               
            <div class="table-responsive">
                <table class="table table-success mb30">
                    <thead>
                      <tr>
                        <th>Room Category</th>
                        <th>Room No.</th>
                        <th>Room Availability</th>
                        
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <td>King</td>
                        <td>101</td>
                        <td> <span class="label label-success">Available</span></td>
                        
                      </tr>
                      <tr>
                        <td>Twin</td>
                        <td>201</td>
                        <td> <span class="label label-success">Available</span></td>
                        
                      </tr>
                      <tr>
                        <td>Suite</td>
                        <td>301</td>
                        <td> <span class="label label-danger">Occupied</span></td>
                        
                      </tr>
                      <tr>
                        <td>Twin</td>
                        <td>202</td>
                        <td> <span class="label label-danger">Occupied</span></td>
                        
                      </tr>
                      <tr>
                        <td>King</td>
                        <td>102</td>
                        <td> <span class="label label-success">Available</span></td>
                        
                      </tr>
                      <tr>
                        <td>Suite</td>
                        <td>304</td>
                        <td> <span class="label label-success">Available</span></td>
                        
                      </tr>
                    </tbody>
                </table>
            </div><!-- table-responsive -->
        
               
          	</div>
          	</div>
        </div><!-- col-md-6 -->
        
        
      </div><!--row -->
      
      
      
    </div><!-- contentpanel -->
     
  </div><!-- mainpanel -->

</section>

<script src="Resources/js/jquery-1.11.1.min.js"></script>
<script src="Resources/js/jquery-migrate-1.2.1.min.js"></script>
<script src="Resources/js/bootstrap.min.js"></script>
<script src="Resources/js/modernizr.min.js"></script>
<script src="Resources/js/jquery.sparkline.min.js"></script>
<script src="Resources/js/toggles.min.js"></script>
<script src="Resources/js/retina.min.js"></script>
<script src="Resources/js/jquery.cookies.js"></script>
<script src="Resources/js/bootstrap-timepicker.min.js"></script>
<script src="Resources/js/jquery-ui-1.10.3.min.js"></script>


<script src="Resources/js/jquery.autogrow-textarea.js"></script>
<script src="Resources/js/bootstrap-timepicker.min.js"></script>
<script src="Resources/js/jquery.maskedinput.min.js"></script>
<script src="Resources/js/jquery.tagsinput.min.js"></script>
<script src="Resources/js/jquery.mousewheel.js"></script>
<script src="Resources/js/select2.min.js"></script>
<script src="Resources/js/dropzone.min.js"></script>
<script src="Resources/js/colorpicker.js"></script>
<script src="Resources/js/jquery.datatables.min.js"></script>


<script src="Resources/js/custom.js"></script>
	
<script>
jQuery(document).ready(function(){
    
    "use strict";
  
  // Tags Input
  jQuery('#tags').tagsInput({width:'auto'});
  
  // Select2
  jQuery(".select2").select2({
    width: '100%'
  });
   
  // Textarea Autogrow
  jQuery('#autoResizeTA').autogrow();
  
  // Color Picker
  if(jQuery('#colorpicker').length > 0) {
	 jQuery('#colorSelector').ColorPicker({
			onShow: function (colpkr) {
				jQuery(colpkr).fadeIn(500);
				return false;
			},
			onHide: function (colpkr) {
				jQuery(colpkr).fadeOut(500);
				return false;
			},
			onChange: function (hsb, hex, rgb) {
				jQuery('#colorSelector span').css('backgroundColor', '#' + hex);
				jQuery('#colorpicker').val('#'+hex);
			}
	 });
  }
  
  // Color Picker Flat Mode
	jQuery('#colorpickerholder').ColorPicker({
		flat: true,
		onChange: function (hsb, hex, rgb) {
			jQuery('#colorpicker3').val('#'+hex);
		}
	});
   
  // Date Picker
  jQuery('#datepicker').datepicker();
  
  jQuery('#datepicker-inline').datepicker();
  
  jQuery('#datepicker-multiple').datepicker({
    numberOfMonths: 3,
    showButtonPanel: true
  });
  
  // Spinner
  var spinner = jQuery('#spinner').spinner();
  spinner.spinner('value', 0);
  
  // Input Masks
  jQuery("#date").mask("99/99/9999");
  jQuery("#phone").mask("(999) 999-9999");
  jQuery("#ssn").mask("999-99-9999");
  
    // Time Picker
    jQuery('#timepicker').timepicker({defaultTIme: false});
    jQuery('#timepicker2').timepicker({showMeridian: false});
    jQuery('#timepicker3').timepicker({minuteStep: 15});

    
  });
  

jQuery(document).ready(function() {
  
  "use strict";
  
  jQuery('#table1').dataTable();
  
  jQuery('#table2').dataTable({
    "sPaginationType": "full_numbers"
  });
  
  // Select2
  jQuery('select').select2({
      minimumResultsForSearch: -1
  });
  
  jQuery('select').removeClass('form-control');
  
  // Delete row in a table
  jQuery('.delete-row').click(function(){
    var c = confirm("Continue delete?");
    if(c)
      jQuery(this).closest('tr').fadeOut(function(){
        jQuery(this).remove();
      });
      
      return false;
  });
  
  // Show aciton upon row hover
  jQuery('.table-hidaction tbody tr').hover(function(){
    jQuery(this).find('.table-action-hide a').animate({opacity: 1});
  },function(){
    jQuery(this).find('.table-action-hide a').animate({opacity: 0});
  });


});
</script>
 
  
  

</body>
</html>
