<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
	<meta name="description" content="">
	<meta name="author" content="">
	<link rel="shortcut icon" href="images/favicon.png" type="image/png">
	
	<title>Room History</title>
	
	<link href="css/style.default.css" rel="stylesheet">
	<link href="css/jquery.datatables.css" rel="stylesheet">
</head>
<body>

<section>
  
  <div class="leftpanel">

    <div class="logopanel">
        <img src="images/caps/inn.png" height="50" weight="30" margin-top: 10px;>
    </div><!-- logopanel -->
    
    <div class="leftpanelinner">
        <!-- This is only visible to small devices -->
        <div class="visible-xs hidden-sm hidden-md hidden-lg">   
            <div class="media userlogged">
                <img alt="" src="images/photos/loggeduser.png" class="media-object">
                <div class="media-body">
                    <h4>John Doe</h4>
                    <span>"Life is so..."</span>
                </div>
            </div>
          
            <h5 class="sidebartitle actitle">Account</h5>
            <ul class="nav nav-pills nav-stacked nav-bracket mb30">
              <li><a href="profile.html"><i class="fa fa-user"></i> <span>Profile</span></a></li>
              <li><a href=""><i class="fa fa-cog"></i> <span>Account Settings</span></a></li>
              <li><a href=""><i class="fa fa-question-circle"></i> <span>Help</span></a></li>
              <li><a href="signout.html"><i class="fa fa-sign-out"></i> <span>Sign Out</span></a></li>
            </ul>
        </div>
        
       <br>
       <br>
       <br> 
       
      <ul class="nav nav-pills nav-stacked nav-bracket">
       	
       	<li><a href="dunno.jsp"><i class="fa fa-female"></i> <span>Housekeeping</span></a></li>
        <li><a href="index.html"><i class="fa fa-ban"></i> <span>Out of Order</span></a></li>
        <li class="active"><a href="RoomHistory.jsp"><i class="fa fa-inbox"></i> <span>Room History</span></a></li>
        <li><a href="index.html"><i class="fa fa-puzzle-piece"></i> <span>Occupancy Graph</span></a></li>
        <li><a href="Maintenance.jsp"><i class="fa fa-gears"></i> <span>Maintenance</span></a></li>
       	
        <br>
        <br>
        
        <li><a href="index.html"><i class="fa fa-sign-out"></i> <span>Sign Out</span></a></li>
      
      </ul>
      
    </div><!-- leftpanelinner -->
  </div><!-- leftpanel -->
  
  <div class="mainpanel">
    
    <div class="headerbar">
      <div class="header-left">
        <div class="topnav">
            <ul class="nav nav-horizontal">
                <li class=""><a href="dunno.jsp"><i class="fa fa-book"></i><span weight="5">Reservation</span></a></li>
                <li ><a href="frontdesk.jsp"><i class="fa fa-user"></i> <span>Front Desk</span></a></li>
                <li class=><a href="cashiering.jsp"><i class="fa fa-usd"></i> <span>Cashiering</span></a></li>
                <li class="active"><a href="RoomHistory.jsp"><i class="fa fa-home"></i> <span>Room Management</span></a></li>
            </ul>
        </div>
      </div><!-- header-left -->
    </div><!-- headerbar -->
        
    <div class="pageheader">
      <h2><i class="fa fa-inbox"></i> Room History</h2>
      <div class="breadcrumb-wrapper">
        <span class="label">You are here:</span>
        <ol class="breadcrumb">
          <li><a href="RoomHistory.jsp">Room Management</a></li>
          <li><a href="RoomHistory.jsp">Room History</a></li>
        </ol>
      </div>
    </div>
    
    <div class="contentpanel">
      <!-- content goes here... -->
      <div class="table-responsive">
          <table class="table" id="table1">
            <thead>
               <tr>
               	  <th>Date</th>
                  <th>Room Number</th>
                  <th>Details</th>
                  <th>Action</th>
               </tr>
            </thead>
            <tbody>
               <tr class="odd gradeX">
               	  <td>01/05/2018</td>
                  <td>QCA201</td>
                  <td>2nd floor room number 201 has been occupied by Mr. Manalansan</td>
                  <td><button class="btn btn-success btn-sm" data-toggle="modal" data-target=".bs-example-modal-lg">View</button></td>
               </tr>
               <tr class="odd gradeX">
                  <td>12/01/2018</td>
                  <td>ROTH101</td>
                  <td>1st floor room number 101 is now available</td>
                  <td><button class="btn btn-success btn-sm" data-toggle="modal" data-target=".bs-example-modal-lg">View</button></td>
               </tr>
               <tr class="odd gradeX">
                  <td>04/25/2018</td>
                  <td>MISE102</td>
                  <td>1st floor room number 102 has been occupied by Ms. Dela Cruz</td>
                  <td><button class="btn btn-success btn-sm" data-toggle="modal" data-target=".bs-example-modal-lg">View</button></td>
               </tr>
               <tr class="odd gradeX">
               	  <td>03/15/2018</td>
                  <td>QCA206</td>
                  <td>2nd floor room number 206 is now available</td>
                  <td><button class="btn btn-success btn-sm" data-toggle="modal" data-target=".bs-example-modal-lg">View</button></td>
               </tr>
               <tr class="odd gradeX">
               	  <td>07/30/2018</td>
                  <td>MISE101</td>
                  <td>1st floor room number 101 is now available</td>
                  <td><button class="btn btn-success btn-sm" data-toggle="modal" data-target=".bs-example-modal-lg">View</button></td>
               </tr>
               <tr class="odd gradeX">
               	  <td>01/05/2018</td>
                  <td>QCA201</td>
                  <td>2nd floor room number 201 has been occupied by Mr. Manalansan</td>
                  <td><button class="btn btn-success btn-sm" data-toggle="modal" data-target=".bs-example-modal-lg">View</button></td>
               </tr>
               <tr class="odd gradeX">
                  <td>12/01/2018</td>
                  <td>ROTH101</td>
                  <td>1st floor room number 101 is now available</td>
                  <td><button class="btn btn-success btn-sm" data-toggle="modal" data-target=".bs-example-modal-lg">View</button></td>
               </tr>
               <tr class="odd gradeX">
                  <td>04/25/2018</td>
                  <td>MISE102</td>
                  <td>1st floor room number 102 has been occupied by Ms. Dela Cruz</td>
                  <td><button class="btn btn-success btn-sm" data-toggle="modal" data-target=".bs-example-modal-lg">View</button></td>
               </tr>
               <tr class="odd gradeX">
               	  <td>03/15/2018</td>
                  <td>QCA206</td>
                  <td>2nd floor room number 206 is now available</td>
                  <td><button class="btn btn-success btn-sm" data-toggle="modal" data-target=".bs-example-modal-lg">View</button></td>
               </tr>
               <tr class="odd gradeX">
               	  <td>07/30/2018</td>
                  <td>MISE101</td>
                  <td>1st floor room number 101 is now available</td>
                  <td><button class="btn btn-success btn-sm" data-toggle="modal" data-target=".bs-example-modal-lg">View</button></td>
               </tr>
            </tbody>
         </table>
      </div><!-- table-responsive -->
   </div>
    
  </div><!-- mainpanel -->
  
</section>

<div class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
        <div class="modal-header">
            <button aria-hidden="true" data-dismiss="modal" class="close" type="button">&times;</button>
            <h4 class="modal-title">Sample Modal lang to</h4>
        </div>
        <div class="modal-body">lagyan ng laman sample lang naman pede tanggalin kung trip</div>
    </div>
  </div>
</div>

<script src="js/jquery-1.11.1.min.js"></script>
<script src="js/jquery-migrate-1.2.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/modernizr.min.js"></script>
<script src="js/jquery.sparkline.min.js"></script>
<script src="js/toggles.min.js"></script>
<script src="js/retina.min.js"></script>
<script src="js/jquery.cookies.js"></script>
<script src="js/custom.js"></script>
<script src="js/jquery.datatables.min.js"></script>
<script src="js/select2.min.js"></script>

<script>
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