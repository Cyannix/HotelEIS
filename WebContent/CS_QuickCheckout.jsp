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
  
<title>Holiday Inn | Fast Posting</title>

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

	<h5 class="sidebartitle">Navigation | Cashiering Tab</h5><br>
      <ul class="nav nav-pills nav-stacked nav-bracket">
        <li><a href="CS_Billing.jsp"><i class="fa fa-credit-card"></i> <span>Billing</span></a></li>
       <li><a href="CS_FastPosting.jsp"><i class="fa fa-list-alt"></i> <span>Fast Posting</span></a></li>
        <li class="active"><a href="CS_QuickCheckout.jsp"><i class="fa fa-barcode"></i> <span>Quick Check out</span></a></li>
      	<br><br>
        <li><a href="index.html"><i class="fa fa-sign-out"></i> <span>Sign Out</span></a></li>
	 </ul>
	
	<!-- 
      <div class="infosummary">
        <h5 class="sidebartitle">Information Summary</h5>
        <ul>
            <li>
                <div class="datainfo">
                    <span class="text-muted">Daily Traffic</span>
                    <h4>630, 201</h4>
                </div>
                <div id="sidebar-chart" class="chart"></div>
            </li>
            <li>
                <div class="datainfo">
                    <span class="text-muted">Average Users</span>
                    <h4>1, 332, 801</h4>
                </div>
                <div id="sidebar-chart2" class="chart"></div>
            </li>
            <li>
                <div class="datainfo">
                    <span class="text-muted">Disk Usage</span>
                    <h4>82.2%</h4>
                </div>
                <div id="sidebar-chart3" class="chart"></div>
            </li>
            <li>
                <div class="datainfo">
                    <span class="text-muted">CPU Usage</span>
                    <h4>140.05 - 32</h4>
                </div>
                <div id="sidebar-chart4" class="chart"></div>
            </li>
            <li>
                <div class="datainfo">
                    <span class="text-muted">Memory Usage</span>
                    <h4>32.2%</h4>
                </div>
                <div id="sidebar-chart5" class="chart"></div>
            </li>
        </ul>
      </div><!-- infosummary --> 
     

    </div><!-- leftpanelinner -->
  </div><!-- leftpanel -->

  <div class="mainpanel">

    <div class="headerbar">

 
 		<div class="header-left">
        
        <div class="topnav">
                        
            <ul class="nav nav-horizontal">
                <li class=""><a href="RS_NewReservation.jsp"><i class="fa fa-book"></i>Reservation</a></li>
                <li ><a href="FD_Arrivals.jsp"><i class="fa fa-user"></i> <span>Front Desk</span></a></li>
                <li class="active"><a href="CS_Billing.jsp"><i class="fa fa-usd"></i> <span>Cashiering</span></a></li>
                <li class=""><a href="room.jsp"><i class="fa fa-home"></i> <span>Room Management</span></a></li>
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
      <h2><i class="fa fa-usd"></i> Fast Posting<span>Posting Customer Expenses</span></h2>
      <div class="breadcrumb-wrapper">
        <span class="label">You are here:</span>
        <ol class="breadcrumb">
          <li><a href="index.html">Home</a></li>
          <li class="active">Cashiering</li>
        </ol>
      </div>
    </div>

    <div class="contentpanel">
    	//Maintenance
    </div>
      
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
<script src="Resources/js/jquery-ui-1.10.3.min.js"></script>
<script src="Resources/js/bootstrap.min.js"></script>
<script src="Resources/js/modernizr.min.js"></script>
<script src="Resources/js/jquery.sparkline.min.js"></script>
<script src="Resources/js/toggles.min.js"></script>
<script src="Resources/js/retina.min.js"></script>
<script src="Resources/js/jquery.cookies.js"></script>

<script src="Resources/js/flot/jquery.flot.min.js"></script>
<script src="Resources/js/flot/jquery.flot.resize.min.js"></script>
<script src="Resources/js/flot/jquery.flot.spline.min.js"></script>
<script src="Resources/js/morris.min.js"></script>
<script src="Resources/js/raphael-2.1.0.min.js"></script>

<script src="Resources/js/custom.js"></script>
<script src="Resources/js/dashboard.js"></script>


</body>
</html>