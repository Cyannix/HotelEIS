<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
	<meta name="description" content="">
	<meta name="author" content="">
	<link rel="shortcut icon" href="Resources/images/favicon.png" type="image/png">
	
	<title>Holiday Inn | Update Reservation</title>
	
	<link href="Resources/css/style.default.css" rel="stylesheet">
	<link href="Resources/css/jquery.datatables.css" rel="stylesheet">
</head>
<body>

<section>
  
  <div class="leftpanel">

    <div class="logopanel">
        <img src="Resources/images/caps/inn.png" height="50" weight="30" margin-top: 10px;>
    </div><!-- logopanel -->
    
    <div class="leftpanelinner">
      
      <h5 class="sidebartitle">Navigation | Reservation Tab</h5><br>  
      <ul class="nav nav-pills nav-stacked nav-bracket">
        <li ><a href="RS_NewReservation.jsp"><i class="fa fa-check"></i> <span>New Reservation</span></a></li>
        <li class="active"><a href="RS_UpdateReservation.jsp"><i class="fa fa-edit"></i> <span>Update Reservation</span></a></li>
        <li><a href="RS_Calendar.jsp"><i class="fa fa-calendar"></i> <span>Calendar</span></a></li>     
        <li><br><br><br><a href="login.jsp"><i class="fa fa-sign-out"></i> <span>Sign Out</span></a></li>      
      </ul>
      
    </div><!-- leftpanelinner -->
  </div><!-- leftpanel -->
  
  <div class="mainpanel">
    
    <div class="headerbar">
      
      <div class="header-left">
        
        <div class="topnav">
                        
            <ul class="nav nav-horizontal">
                <li class="active"><a href="RS_NewReservation.jsp"><i class="fa fa-book"></i><span weight="5">Reservation</span></a></li>
                <li class=""><a href="FD_Arrivals.jsp"><i class="fa fa-user"></i> <span>Front Desk</span></a></li>
                <li class=""><a href="CS_Billing.jsp"><i class="fa fa-usd"></i> <span>Cashiering</span></a></li>
                <li class=""><a href="Housekeeping.jsp"><i class="fa fa-home"></i> <span>Room Management</span></a></li>
                
    
            </ul>
        </div>
          
      </div><!-- header-left -->
     
        
      
    </div><!-- headerbar -->
        
    <div class="pageheader">
      <h2><i class="fa fa-book"></i> Reservation</h2>
      <div class="breadcrumb-wrapper">
        <span class="label">You are here:</span>
        <ol class="breadcrumb">
          <li><a href="Sample.jsp">Reservation</a></li>
          <li><a href="Sample.jsp">Home</a></li>
        </ol>
      </div>
    </div>
    
    <div class="contentpanel">
      <!-- content goes here... -->
      <div class="table-responsive">
          <table class="table" id="table1">
            <thead>
               <tr>
               	  <th>Name</th>
                  <th>Room Type</th>
                  <th>Children</th>
                  <th>Adult</th>
                  <th>Price</th>
                  <th>Date of Checkin</th>
                  <th>Status</th>
                  <th>Action</th>
               </tr>
            </thead>
            <tbody>
               <tr class="odd gradeX">
               	  <td>Daniel Balmoria</td>
                  <td>King</td>
                  <td>3</td>
                  <td>3</td>
                  <td>7000</td>
                  <td>12/07/18</td>
                  <td> <span class="label label-success">Guaranteed</span></td>
                  <td><button class="btn btn-warning btn-sm" data-toggle="modal" data-target=".modal2">Edit</button>
                  <button class="btn btn-info btn-sm" data-toggle="modal" data-target=".modal1">Profile</button>
                  <button class="btn btn-primary btn-sm" data-toggle="modal" data-target=".bs-example-modal-lg">Check In</button>
                  </td>
               </tr>
               <tr class="odd gradeX">
               	  <td>Andrea Nicole</td>
                  <td>Suite</td>
                  <td>3</td>
                  <td>2</td>
                  <td>6000</td>
                  <td>12/05/18</td>
                  <td> <span class="label label-success">Guaranteed</span></td>
                  <td><button class="btn btn-warning btn-sm" data-toggle="modal" data-target=".modal2">Edit</button>
                  <button class="btn btn-info btn-sm" data-toggle="modal" data-target=".modal1">Profile</button>
                  <button class="btn btn-primary btn-sm" data-toggle="modal" data-target=".bs-example-modal-lg">Check In</button>
                  </td>
               </tr>
               <tr class="odd gradeX">
               	  <td>Anne Nicole Cagulang</td>
                  <td>Suite</td>
                  <td>2</td>
                  <td>2</td>
                  <td>50000</td>
                  <td>12/06/18</td>
                  <td> <span class="label label-success">Guaranteed</span></td>
                  <td><button class="btn btn-warning btn-sm" data-toggle="modal" data-target=".modal2">Edit</button>
                  <button class="btn btn-info btn-sm" data-toggle="modal" data-target=".modal1">Profile</button>
                  <button class="btn btn-primary btn-sm" data-toggle="modal" data-target=".bs-example-modal-lg">Check In</button>
                  </td>
               </tr>
               <tr class="odd gradeX">
               	  <td>Maria Gomez</td>
                  <td>Suite</td>
                  <td>3</td>
                  <td>2</td>
                  <td>6000</td>
                  <td>12/06/18</td>
                  <td> <span class="label label-success">Guaranteed</span></td>
                  <td><button class="btn btn-warning btn-sm" data-toggle="modal" data-target=".modal2">Edit</button>
                  <button class="btn btn-info btn-sm" data-toggle="modal" data-target=".modal1">Profile</button>
                  <button class="btn btn-primary btn-sm" data-toggle="modal" data-target=".bs-example-modal-lg">Check In</button>
                  </td>
               </tr>
               <tr class="odd gradeX">
               	  <td>Joshua Garcia</td>
                  <td>King</td>
                  <td>3</td>
                  <td>2</td>
                  <td>6000</td>
                  <td>12/08/18</td>
                  <td> <span class="label label-success">Guaranteed</span></td>
                  <td><button class="btn btn-warning btn-sm" data-toggle="modal" data-target=".modal2">Edit</button>
                  <button class="btn btn-info btn-sm" data-toggle="modal" data-target=".modal1">Profile</button>
                  <button class="btn btn-primary btn-sm" data-toggle="modal" data-target=".bs-example-modal-lg">Check In</button>
                  </td>
               </tr>
               <tr class="odd gradeX">
               	  <td>Nicole Holandes</td>
                  <td>King</td>
                  <td>2</td>
                  <td>0</td>
                  <td>6000</td>
                  <td>12/05/18</td>
                  <td> <span class="label label-success">Guaranteed</span></td>
                  <td><button class="btn btn-warning btn-sm" data-toggle="modal" data-target=".modal2">Edit</button>
                  <button class="btn btn-info btn-sm" data-toggle="modal" data-target=".modal1">Profile</button>
                  <button class="btn btn-primary btn-sm" data-toggle="modal" data-target=".bs-example-modal-lg">Check In</button>
                  </td>
               </tr>
               <tr class="odd gradeX">
               	  <td>Johnroi Manalansan</td>
                  <td>King</td>
                  <td>2</td>
                  <td>2</td>
                  <td>6000</td>
                  <td>10/02/18</td>
                  <td> <span class="label label-success">Guaranteed</span></td>
                  <td><button class="btn btn-warning btn-sm" data-toggle="modal" data-target=".modal2">Edit</button>
                  <button class="btn btn-info btn-sm" data-toggle="modal" data-target=".modal1">Profile</button>
                  <button class="btn btn-primary btn-sm" data-toggle="modal" data-target=".bs-example-modal-lg">Check In</button>
                  </td>
               </tr>
               <tr class="odd gradeX">
               	  <td>Vincent Montes</td>
                  <td>Twin</td>
                  <td>2</td>
                  <td>0</td>
                  <td>8000</td>
                  <td>10/10/18</td>
                  <td><span class="label label-success">Guaranteed</span></td>
                  <td><button class="btn btn-warning btn-sm" data-toggle="modal" data-target=".modal2">Edit</button>
                  <button class="btn btn-info btn-sm" data-toggle="modal" data-target=".modal1">Profile</button>
                  <button class="btn btn-primary btn-sm" data-toggle="modal" data-target=".bs-example-modal-lg">Check In</button>
                  </td>
               </tr>
               <tr class="odd gradeX">
               	  <td>Dan Angelo Corporal</td>
                  <td>Twin</td>
                  <td>3</td>
                  <td>0</td>
                  <td>8000</td>
                  <td>10/10/18</td>
                  <td><span class="label label-success">Guaranteed</span></td>
                  <td><button class="btn btn-warning btn-sm" data-toggle="modal" data-target=".modal2">Edit</button>
                  <button class="btn btn-info btn-sm" data-toggle="modal" data-target=".modal1">Profile</button>
                  <button class="btn btn-primary btn-sm" data-toggle="modal" data-target=".bs-example-modal-lg">Check In</button>
                  </td>
               </tr>
               <tr class="odd gradeX">
               	  <td>Michaela Alejandria</td>
                  <td>Twin</td>
                  <td>3</td>
                  <td>0</td>
                  <td>8000</td>
                  <td>10/10/18</td>
                  <td><span class="label label-success">Guaranteed</span></td>
                  <td><button class="btn btn-warning btn-sm" data-toggle="modal" data-target=".modal2">Edit</button>
                  <button class="btn btn-info btn-sm" data-toggle="modal" data-target=".modal1">Profile</button>
                  <button class="btn btn-primary btn-sm" data-toggle="modal" data-target=".bs-example-modal-lg">Check In</button>
                  </td>
               </tr>
               <tr class="odd gradeX">
               	  <td>Patrick Loyola</td>
                  <td>Twin</td>
                  <td>3</td>
                  <td>0</td>
                  <td>8000</td>
                  <td>10/10/18</td>
                  <td><span class="label label-success">Guaranteed</span></td>
                  <td><button class="btn btn-warning btn-sm" data-toggle="modal" data-target=".modal2">Edit</button>
                  <button class="btn btn-info btn-sm" data-toggle="modal" data-target=".modal1">Profile</button>
                  <button class="btn btn-primary btn-sm" data-toggle="modal" data-target=".bs-example-modal-lg">Check In</button>
                  </td>
               </tr>
            </tbody>
         </table>
      </div><!-- table-responsive -->
   </div>
    
  </div><!-- mainpanel -->
  
</section>

<div class="modal fade modal1" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
        <div class="modal-header">
            <button aria-hidden="true" data-dismiss="modal" class="close" type="button">&times;</button>
            <h4 class="modal-title">Profile</h4>
        </div>
        <div class="modal-body">
            
        </div>
    </div>
  </div>
</div>
<div class="modal fade modal2" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
        <div class="modal-header">
            <button aria-hidden="true" data-dismiss="modal" class="close" type="button">&times;</button>
            <h4 class="modal-title">Edit</h4>
        </div>
        <div class="modal-body">
                
         </div>
      </div>
    </div>
  </div>
                
                 

<script src="Resources/js/jquery-1.11.1.min.js"></script>
<script src="Resources/js/jquery-migrate-1.2.1.min.js"></script>
<script src="Resources/js/bootstrap.min.js"></script>
<script src="Resources/js/modernizr.min.js"></script>
<script src="Resources/js/jquery.sparkline.min.js"></script>
<script src="Resources/js/toggles.min.js"></script>
<script src="Resources/js/retina.min.js"></script>
<script src="Resources/js/jquery.cookies.js"></script>
<script src="Resources/js/custom.js"></script>
<script src="Resources/js/jquery.datatables.min.js"></script>
<script src="Resources/js/select2.min.js"></script>

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