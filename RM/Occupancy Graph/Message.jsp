<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">
        <link rel="shortcut icon" href="images/favicon.png" type="image/png">

        <title>Messages</title>

        <link href="css/style.default.css" rel="stylesheet">
        <link href="css/jquery.datatables.css" rel="stylesheet">

        <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!--[if lt IE 9]>
        <script src="js/html5shiv.js"></script>
        <script src="js/respond.min.js"></script>
        <![endif]-->
    </head>

    <body>
<!-- Preloader -->
<div id="preloader">
    <div id="status"><i class="fa fa-spinner fa-spin"></i></div>
</div>

        

        <section>

            <div class="leftpanel">


                    <!-- This is only visible to small devices -->
        <br>
        <br> 
        <br>
        <br>
                      
        <ul class="nav nav-pills nav-stacked nav-bracket">
        <li ><a href="Housekeeping.jsp"><i class="fa fa-female"></i> <span>Housekeeping</span></a></li>
        <li><a href="OutofOrder.jsp"><i class="fa fa-ban"></i> <span>Out of Order</span></a></li>
        <li><a href="RoomHistory.jsp"><i class="fa fa-inbox"></i> <span>Room History</span></a></li>
        <li><a href="OccupancyGraph.jsp"><i class="fa fa-puzzle-piece"></i> <span>Occupancy Graph</span></a></li>
        <li><a href="Maintainance.jsp"><i class="fa fa-gears"></i> <span>Maintenance</span></a></li>
        <li><a href="RAmaids.jsp"><i class="fa fa-user"></i> <span>R.A Maids</span></a></li>
        <li class="active"><a href="Message.jsp"><i class="fa fa-envelope"></i> <span>Messages</span></a></li>
        
       
        
        <br>
        <br>
        
        <li><a href="index.html"><i class="fa fa-sign-out"></i> <span>Sign Out</span></a></li>
      
</ul>

                   

                </div><!-- leftpanelinner -->
           

            <div class="mainpanel">

                <div class="headerbar">
 
                    <a class="menutoggle"><i class="fa fa-bars"></i></a>
                <div class="topnav">
            <ul class="nav nav-horizontal">
                <li class=""><a href="dunno.jsp"><i class="fa fa-book"></i><span>Reservation</span></a></li>
                <li class=""><a href="frontdesk.jsp"><i class="fa fa-user"></i><span>Front Desk</span></a></li>
                <li class=""><a href="cashiering.jsp"><i class="fa fa-usd"></i><span>Cashiering</span></a></li>
                <li class="active"><a href="index.html"><i class="fa fa-home"></i> <span>Room Management</span></a></li>
            </ul>
</div>
                    <div class="header-right">
                        <ul class="headermenu">
                           
                            
                        </ul>
                        
                    </div><!-- header-right -->

                </div><!-- headerbar -->

                <div class="pageheader">
                    <h2><i class="fa fa-envelope"></i> Messages <span>Check your messages here!</span></h2>
                   <div class="breadcrumb-wrapper">
                        <span class="label">You are here:</span>
                        <ol class="breadcrumb">
                            <li><a href="Message.jsp">Messages</a></li>
                            <li><a href="Housekeeping.jsp">Home</a></li>
                        </ol>
                    </div>
                </div>
                
                <div class="contentpanel">
                    <!-- content goes here... -->
                    
                  <div class="table-responsive">
          <table class="table" id="tb_kepping">
            <thead>
              <tr>  
                <th>Date</th>
                <th>Name</th>
                <th>Message</th>
                <th>Room Number</th>
                <th>options</th>
              </tr>
            </thead>
            <tbody>
              <tr>            
                <td>07/11/18</td>
                <td>Sam Biden</td>               
                <td>This is a message</td>
                <td>102</td>
                <td><div class="panel-body">
                    <a href="msgedit.jsp" class="btn btn-primary mr5" data-toggle="modal" data-target=".msgeditmodal-panel">Edit</a>
                </div><!-- panel --></td>
              </tr>
              <tr>              
                <td>08/21/18</td>
                <td>Joe Wheeler</td>
                <td>This is a message</td>
               	<td>103</td>
                 <td><div class="panel-body">
                    <a href="msgedit.jsp" class="btn btn-primary mr5" data-toggle="modal" data-target=".msgeditmodal-panel">Edit</a>
                </div><!-- panel -->
        </td>
              </tr>
              <tr>             
                <td>08/21/18</td>
                <td>Nicole Bautista</td>
                <td>This is a message</td>
                <td>104</td>
                 <td><div class="panel-body">
                    <a href="msgedit.jsp" class="btn btn-primary mr5" data-toggle="modal" data-target=".msgeditmodal-panel">Edit</a>
                </div><!-- panel --></td>
              </tr>
            </tbody>
          </table>
           <div class="panel-body">
                    <a href="msginsert.jsp" class="btn btn-primary mr5" data-toggle="modal" data-target=".msginsertmodal-panel">Enter Housekeeping Details</a>
                </div><!-- panel -->
        </div>
          </div><!-- table-responsive -->
        </div><!-- col-md-6 -->
       </div>
       
       

            </div><!-- mainpanel -->

            <div class="rightpanel">
                <!-- Nav tabs -->
                <ul class="nav nav-tabs nav-justified">
                    <li class="active"><a href="#rp-alluser" data-toggle="tab"><i class="fa fa-users"></i></a></li>
                    <li><a href="#rp-favorites" data-toggle="tab"><i class="fa fa-heart"></i></a></li>
                    <li><a href="#rp-history" data-toggle="tab"><i class="fa fa-clock-o"></i></a></li>
                    <li><a href="#rp-settings" data-toggle="tab"><i class="fa fa-gear"></i></a></li>
                </ul>

                <!-- Tab panes -->
                

                        
                    <div class="tab-pane" id="rp-favorites">
                    
                    <div class="tab-pane pane-settings" id="rp-settings">

                        <h5 class="sidebartitle mb20">Settings</h5>
                        <div class="form-group">
                            <label class="col-xs-8 control-label">Show Offline Users</label>
                            <div class="col-xs-4 control-label">
                                <div class="toggle toggle-success"></div>
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-xs-8 control-label">Enable History</label>
                            <div class="col-xs-4 control-label">
                                <div class="toggle toggle-success"></div>
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-xs-8 control-label">Show Full Name</label>
                            <div class="col-xs-4 control-label">
                                <div class="toggle-chat1 toggle-success"></div>
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-xs-8 control-label">Show Location</label>
                            <div class="col-xs-4 control-label">
                                <div class="toggle toggle-success"></div>
                            </div>
                        </div>

                    </div><!-- tab-pane -->

                </div><!-- tab-content -->
            </div><!-- rightpanel -->

        </section>

<div class="modal fade msginsertmodal-panel" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content"></div>
  </div>
</div>
<div class="modal fade msgeditmodal-panel" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content"></div>
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


<script src="js/jquery.datatables.min.js"></script>
<script src="js/select2.min.js"></script>

<script src="js/custom.js"></script>
<script type="text/javascript">
  jQuery(document).ready(function() {
    
    "use strict";
    
    jQuery('#tb_kepping').dataTable();
    
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
