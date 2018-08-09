<%@page import="java.sql.*"%>
<%@page import="newConn.dbConn" %>

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

  <title>Holiday Inn | Arrivals </title>

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
    
    <h5 class="sidebartitle">Navigation | Check-In </h5><br>
      <ul class="nav nav-pills nav-stacked nav-bracket">
        <li class="active"><a href="FD_Arrivals.jsp"><i class="fa fa-clock-o"></i> <span>Arrivals</span></a></li>
        <li><a href="FD_InHouseGuest.jsp"><i class="fa fa-home"></i> <span>In House Guest</span></a></li>
        <li><a href="FD_RoomAssignment.jsp"><i class="fa fa-th"></i> <span>Room Assignment</span></a></li> 
        <br><br>        
        <li><a href="login.jsp"><i class="fa fa-sign-out"></i> <span>Sign Out</span></a></li>      
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
      <h2><i class="fa fa-clock-o"></i>Arrivals</h2>
      <div class="breadcrumb-wrapper">
        <span class="label">You are here:</span>
        <ol class="breadcrumb">
          <li><a href="frontdesk.jsp"></a></li>
          <li><a href="Sample.jsp">Home</a></li>
        </ol>
      </div>
    </div>
    
    
    
    <div class="contentpanel">
    
    <% 
	
	dbConn db = new dbConn();//initialize yung class then use the function
	Connection conn = db.getConnection();
	if(conn == null)
		out.print("failasded");
	else
		out.print("succeasdss");


	%>
    
    
      
      <div class="row">
        
        <div class="col-md-12 panel panel-default">        
			
          <form id="basicForm" action="form-validation.html" class="form-horizontal">
          <div class="panel panel-default">
          	<div class="panel-heading">
          		  <div class="btn-demo">
          	
                <a class="btn btn-success" onclick="btnCheck()" style="margin-left:94%; margin-bottom:0%;">Check-in</a>
               
               
              </div>
          	<!-- <h3 class="panel-title"style="margin-top:-6.5%;">Arrivals- Confirmation No. 3425</h3> -->
          	
          	</div>
              
              <div class="col-md-4 panel-body ">
                <div class="form-group">
                  <label class="col-md-3 control-label">Name <span class="asterisk">*</span></label>
                  <div class="col-sm-9">
                    <input type="text" placeholder="Default Input" class="form-control" id="name" />
                  </div>
                </div>
                
                <div class="form-group">
                  <label class="col-md-3 control-label">Company <span class=""></span></label>
                  <div class="col-sm-9">
                    <input type="email" name="email" class="form-control" placeholder="Type your email..." required id="comp" />
                  </div>
                </div>
                
                <div class="form-group">
                  <label class="col-sm-3 control-label">Group</label>
                  <div class="col-sm-9">
                    <input type="url" name="url" class="form-control" id="grp" />
                  </div>
                </div>
                
                <div class="form-group">
                  <label class="col-md-3 control-label">Source <span class="asterisk"></span></label>
                  <div class="col-sm-9">
                    <input type="email" name="email" class="form-control" placeholder="Type your email..." required id="src" />
                  </div>
                </div>
                
                <div class="form-group">
                  <label class="col-md-3 control-label">Agent <span class=""></span></label>
                  <div class="col-sm-9">
                    <input type="email" name="email" class="form-control" placeholder="Type your email..." required id="agent" />
                  </div>
                </div>
                
                
                <div class="form-group">
                  <label class="col-sm-3 control-label">Contact</label>
                  <div class="col-sm-9">
                    <input type="url" name="url" class="form-control" id="contact" />
                  </div>
                </div>
                
                <div class="form-group">
                  <label class="col-sm-3 control-label">Room No.</label>
                  <select class="col-sm-9">
                  <option>Option 1</option>
                  <option>Option 2</option>
                  <option>Option 3</option>
                </select>
                </div>
                
                
              </div><!-- panel-body -->
              
              <div class="col-md-4 panel-body panel-body">
                <div class="form-group">
                  <label class="col-md-3 control-label">Last Name <span class="asterisk">*</span></label>
                  <div class="col-sm-9">
                    <input type="text" name="name" class="form-control" placeholder="Type your name..." required id="lname"/>
                  </div>
                </div>
                
                <div class="form-group">
                  <label class="col-md-3 control-label">Corp No. <span class="asterisk"></span></label>
                  <div class="col-sm-9">
                    <input type="email" name="email" class="form-control" placeholder="Type your email..." required />
                  </div>
                </div>
                
                <div class="form-group">
                  <label class="col-md-3 control-label">Block<span class="asterisk"></span></label>
                  <div class="col-sm-9">
                    <input type="email" name="email" class="form-control" placeholder="Type your email..." required />
                  </div>
                </div>
                
                <div class="form-group">
                  <label class="col-sm-3 control-label">Arrival From <span class="asterisk">*</span></label>
                  <div class="col-sm-9 input-group">
                    <input type="text" class="col-sm-9 form-control" placeholder="mm/dd/yyyy" id="datepicker1">
                		<span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
                  </div>
                </div>
                
                <div class="form-group">
                  <label class="col-sm-3 control-label">iATA No.</label>
                  <div class="col-sm-9">
                    <input type="url" name="url" class="form-control" />
                  </div>
                </div>
                
                
                <div class="form-group">
                  <label class="col-sm-3 control-label">Postal Code</label>
                  <div class="col-sm-9">
                    <input type="url" name="url" class="form-control" />
                  </div>
                </div>
                
                
                
                <div class="form-group">
                  <label class="col-sm-3 control-label">Room Type</label>
                  <select class="col-sm-9">
                  <option>Option 1</option>
                  <option>Option 2</option>
                  <option>Option 3</option>
                </select>
                </div>
                
                
              </div><!-- panel-body -->
              
             <div class="col-md-4 panel-body panel-body">
                <div class="form-group">
                  <label class="col-md-3 control-label">CRS No. <span class="asterisk"></span></label>
                  <div class="col-sm-9">
                    <input type="text" name="name" class="form-control" placeholder="Type your name..." required />
                  </div>
                </div>
                
                <div class="form-group">
                  <label class="col-md-3 control-label">Context No. <span class="asterisk"></span></label>
                  <div class="col-sm-9">
                    <input type="email" name="email" class="form-control" placeholder="Type your email..." required />
                  </div>
                </div>
                
                <div class="form-group">
                  <label class="col-sm-3 control-label">Mem. Type No.</label>
                  <div class="col-sm-9">
                    <input type="url" name="url" class="form-control" />
                  </div>
                </div>
                
                 <div class="form-group">
                  <label class="col-sm-3 control-label">Arrival To <span class="asterisk"></span></label>
                  <div class="col-sm-9 input-group">
                    <input type="text" class="col-sm-9 form-control" placeholder="mm/dd/yyyy" id="datepicker">
                		<span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
                  </div>
                </div>
                
                <div class="form-group">
                  <label class="col-md-3 control-label">Party<span class="asterisk">*</span></label>
                  <div class="col-sm-9">
                    <input type="email" name="email" class="form-control" placeholder="Type your email..." required />
                  </div>
                </div>
                
                
                <div class="form-group">
                  <label class="col-sm-3 control-label">Communication</label>
                  <div class="col-sm-9">
                    <input type="url" name="url" class="form-control" />
                  </div>
                </div>
                
              
                
                
              </div><!-- panel-body -->
              <div class="panel-footer">
              </div>
              
             
            
          </div><!-- panel -->
          </form>
          
          <div class="panel panel-default">
          	<div class="panel-heading">
          	<div class="btn-demo">
          		  <!-- <h3 class="panel-title"> Arrivals- Confirmation No. 3425 </h3> -->
                <a class="btn btn-primary" style="margin-left:47%; margin-bottom:0%;">Reg. Card</a>
                <a class="btn btn-primary">Reg. Card</a>
                <a class="btn btn-primary">Profile</a>
                <a class="btn btn-primary">Edit</a>
                <a class="btn btn-danger">Close</a>
               </div>
               
               <div class="panel-body">
          <!-- <h5 class="subtitle mb5">Basic Table</h5>
          <p class="m20">DataTables has most features enabled by default, so all you need to do to use it with one of your own tables is to call the construction function.</p>
          <br /> -->
          <div class="table-responsive">
            <table class="table" id="table1">
              <thead>
                 <tr>
                    <th>Property</th>
                    <th>Name</th>
                    <th>Att.Name</th>
                    <th>Room Type</th>
                    <th>Arrival</th>
                    <th>RMS</th>
                    <th>PRS</th>
                    <th>Status</th>
                 </tr>
              </thead>
              <!-- <tbody>
                 <tr class="odd gradeX">
                    <td>Trident</td>
                    <td>Internet
                        Explorer 4.0</td>
                    <td>Win 95+</td>
                    <td class="center"> 4</td>
                    <td class="center">X</td>
                 </tr>
                 <tr class="even gradeC">
                    <td>Trident</td>
                    <td>Internet
                        Explorer 5.0</td>
                    <td>Win 95+</td>
                    <td class="center">5</td>
                    <td class="center">C</td>
                 </tr>
                 <tr class="odd gradeA">
                    <td>Trident</td>
                    <td>Internet
                        Explorer 5.5</td>
                    <td>Win 95+</td>
                    <td class="center">5.5</td>
                    <td class="center">A</td>
                 </tr>
                 <tr class="even gradeA">
                    <td>Trident</td>
                    <td>Internet
                        Explorer 6</td>
                    <td>Win 98+</td>
                    <td class="center">6</td>
                    <td class="center">A</td>
                 </tr>
                 <tr class="odd gradeA">
                    <td>Trident</td>
                    <td>Internet Explorer 7</td>
                    <td>Win XP SP2+</td>
                    <td class="center">7</td>
                    <td class="center">A</td>
                 </tr>
                 <tr class="even gradeA">
                    <td>Trident</td>
                    <td>AOL browser (AOL desktop)</td>
                    <td>Win XP</td>
                    <td class="center">6</td>
                    <td class="center">A</td>
                 </tr>
                 <tr class="gradeA">
                    <td>Gecko</td>
                    <td>Firefox 1.0</td>
                    <td>Win 98+ / OSX.2+</td>
                    <td class="center">1.7</td>
                    <td class="center">A</td>
                 </tr>
                 <tr class="gradeA">
                    <td>Gecko</td>
                    <td>Firefox 1.5</td>
                    <td>Win 98+ / OSX.2+</td>
                    <td class="center">1.8</td>
                    <td class="center">A</td>
                 </tr>
                 <tr class="gradeA">
                    <td>Gecko</td>
                    <td>Firefox 2.0</td>
                    <td>Win 98+ / OSX.2+</td>
                    <td class="center">1.8</td>
                    <td class="center">A</td>
                 </tr>
                 <tr class="gradeA">
                    <td>Gecko</td>
                    <td>Firefox 3.0</td>
                    <td>Win 2k+ / OSX.3+</td>
                    <td class="center">1.9</td>
                    <td class="center">A</td>
                 </tr>
                 <tr class="gradeA">
                    <td>Gecko</td>
                    <td>Camino 1.0</td>
                    <td>OSX.2+</td>
                    <td class="center">1.8</td>
                    <td class="center">A</td>
                 </tr>
                 <tr class="gradeA">
                    <td>Gecko</td>
                    <td>Camino 1.5</td>
                    <td>OSX.3+</td>
                    <td class="center">1.8</td>
                    <td class="center">A</td>
                 </tr>
                 <tr class="gradeA">
                    <td>Gecko</td>
                    <td>Netscape 7.2</td>
                    <td>Win 95+ / Mac OS 8.6-9.2</td>
                    <td class="center">1.7</td>
                    <td class="center">A</td>
                 </tr>
                 <tr class="gradeA">
                    <td>Gecko</td>
                    <td>Netscape Browser 8</td>
                    <td>Win 98SE+</td>
                    <td class="center">1.7</td>
                    <td class="center">A</td>
                 </tr>
                 <tr class="gradeA">
                    <td>Gecko</td>
                    <td>Netscape Navigator 9</td>
                    <td>Win 98+ / OSX.2+</td>
                    <td class="center">1.8</td>
                    <td class="center">A</td>
                 </tr>
                 <tr class="gradeA">
                    <td>Gecko</td>
                    <td>Mozilla 1.0</td>
                    <td>Win 95+ / OSX.1+</td>
                    <td class="center">1</td>
                    <td class="center">A</td>
                 </tr>
                 <tr class="gradeA">
                    <td>Gecko</td>
                    <td>Mozilla 1.1</td>
                    <td>Win 95+ / OSX.1+</td>
                    <td class="center">1.1</td>
                    <td class="center">A</td>
                 </tr>
                 <tr class="gradeA">
                    <td>Gecko</td>
                    <td>Mozilla 1.2</td>
                    <td>Win 95+ / OSX.1+</td>
                    <td class="center">1.2</td>
                    <td class="center">A</td>
                 </tr>
                 <tr class="gradeA">
                    <td>Gecko</td>
                    <td>Mozilla 1.3</td>
                    <td>Win 95+ / OSX.1+</td>
                    <td class="center">1.3</td>
                    <td class="center">A</td>
                 </tr>
                 <tr class="gradeA">
                    <td>Gecko</td>
                    <td>Mozilla 1.4</td>
                    <td>Win 95+ / OSX.1+</td>
                    <td class="center">1.4</td>
                    <td class="center">A</td>
                 </tr>
                 <tr class="gradeA">
                    <td>Gecko</td>
                    <td>Mozilla 1.5</td>
                    <td>Win 95+ / OSX.1+</td>
                    <td class="center">1.5</td>
                    <td class="center">A</td>
                 </tr>
                 <tr class="gradeA">
                    <td>Gecko</td>
                    <td>Mozilla 1.6</td>
                    <td>Win 95+ / OSX.1+</td>
                    <td class="center">1.6</td>
                    <td class="center">A</td>
                 </tr>
                 <tr class="gradeA">
                    <td>Gecko</td>
                    <td>Mozilla 1.7</td>
                    <td>Win 98+ / OSX.1+</td>
                    <td class="center">1.7</td>
                    <td class="center">A</td>
                 </tr>
                 <tr class="gradeA">
                    <td>Gecko</td>
                    <td>Mozilla 1.8</td>
                    <td>Win 98+ / OSX.1+</td>
                    <td class="center">1.8</td>
                    <td class="center">A</td>
                 </tr>
                 <tr class="gradeA">
                    <td>Gecko</td>
                    <td>Seamonkey 1.1</td>
                    <td>Win 98+ / OSX.2+</td>
                    <td class="center">1.8</td>
                    <td class="center">A</td>
                 </tr>
                 <tr class="gradeA">
                    <td>Gecko</td>
                    <td>Epiphany 2.20</td>
                    <td>Gnome</td>
                    <td class="center">1.8</td>
                    <td class="center">A</td>
                 </tr>
                 <tr class="gradeA">
                    <td>Webkit</td>
                    <td>Safari 1.2</td>
                    <td>OSX.3</td>
                    <td class="center">125.5</td>
                    <td class="center">A</td>
                 </tr>
                 <tr class="gradeA">
                    <td>Webkit</td>
                    <td>Safari 1.3</td>
                    <td>OSX.3</td>
                    <td class="center">312.8</td>
                    <td class="center">A</td>
                 </tr>
                 <tr class="gradeA">
                    <td>Webkit</td>
                    <td>Safari 2.0</td>
                    <td>OSX.4+</td>
                    <td class="center">419.3</td>
                    <td class="center">A</td>
                 </tr>
                 <tr class="gradeA">
                    <td>Webkit</td>
                    <td>Safari 3.0</td>
                    <td>OSX.4+</td>
                    <td class="center">522.1</td>
                    <td class="center">A</td>
                 </tr>
                 <tr class="gradeA">
                    <td>Webkit</td>
                    <td>OmniWeb 5.5</td>
                    <td>OSX.4+</td>
                    <td class="center">420</td>
                    <td class="center">A</td>
                 </tr>
                 <tr class="gradeA">
                    <td>Webkit</td>
                    <td>iPod Touch / iPhone</td>
                    <td>iPod</td>
                    <td class="center">420.1</td>
                    <td class="center">A</td>
                 </tr>
                 <tr class="gradeA">
                    <td>Webkit</td>
                    <td>S60</td>
                    <td>S60</td>
                    <td class="center">413</td>
                    <td class="center">A</td>
                 </tr>
                 <tr class="gradeA">
                    <td>Presto</td>
                    <td>Opera 7.0</td>
                    <td>Win 95+ / OSX.1+</td>
                    <td class="center">-</td>
                    <td class="center">A</td>
                 </tr>
                 <tr class="gradeA">
                    <td>Presto</td>
                    <td>Opera 7.5</td>
                    <td>Win 95+ / OSX.2+</td>
                    <td class="center">-</td>
                    <td class="center">A</td>
                 </tr>
                 <tr class="gradeA">
                    <td>Presto</td>
                    <td>Opera 8.0</td>
                    <td>Win 95+ / OSX.2+</td>
                    <td class="center">-</td>
                    <td class="center">A</td>
                 </tr>
                 <tr class="gradeA">
                    <td>Presto</td>
                    <td>Opera 8.5</td>
                    <td>Win 95+ / OSX.2+</td>
                    <td class="center">-</td>
                    <td class="center">A</td>
                 </tr>
                 <tr class="gradeA">
                    <td>Presto</td>
                    <td>Opera 9.0</td>
                    <td>Win 95+ / OSX.3+</td>
                    <td class="center">-</td>
                    <td class="center">A</td>
                 </tr>
                 <tr class="gradeA">
                    <td>Presto</td>
                    <td>Opera 9.2</td>
                    <td>Win 88+ / OSX.3+</td>
                    <td class="center">-</td>
                    <td class="center">A</td>
                 </tr>
                 <tr class="gradeA">
                    <td>Presto</td>
                    <td>Opera 9.5</td>
                    <td>Win 88+ / OSX.3+</td>
                    <td class="center">-</td>
                    <td class="center">A</td>
                 </tr>
                 <tr class="gradeA">
                    <td>Presto</td>
                    <td>Opera for Wii</td>
                    <td>Wii</td>
                    <td class="center">-</td>
                    <td class="center">A</td>
                 </tr>
                 <tr class="gradeA">
                    <td>Presto</td>
                    <td>Nokia N800</td>
                    <td>N800</td>
                    <td class="center">-</td>
                    <td class="center">A</td>
                 </tr>
                 <tr class="gradeA">
                    <td>Presto</td>
                    <td>Nintendo DS browser</td>
                    <td>Nintendo DS</td>
                    <td class="center">8.5</td>
                    <td class="center">C/A<sup>1</sup></td>
                 </tr>
                 <tr class="gradeC">
                    <td>KHTML</td>
                    <td>Konqureror 3.1</td>
                    <td>KDE 3.1</td>
                    <td class="center">3.1</td>
                    <td class="center">C</td>
                 </tr>
                 <tr class="gradeA">
                    <td>KHTML</td>
                    <td>Konqureror 3.3</td>
                    <td>KDE 3.3</td>
                    <td class="center">3.3</td>
                    <td class="center">A</td>
                 </tr>
                 <tr class="gradeA">
                    <td>KHTML</td>
                    <td>Konqureror 3.5</td>
                    <td>KDE 3.5</td>
                    <td class="center">3.5</td>
                    <td class="center">A</td>
                 </tr>
                 <tr class="gradeX">
                    <td>Tasman</td>
                    <td>Internet Explorer 4.5</td>
                    <td>Mac OS 8-9</td>
                    <td class="center">-</td>
                    <td class="center">X</td>
                 </tr>
                 <tr class="gradeC">
                    <td>Tasman</td>
                    <td>Internet Explorer 5.1</td>
                    <td>Mac OS 7.6-9</td>
                    <td class="center">1</td>
                    <td class="center">C</td>
                 </tr>
                 <tr class="gradeC">
                    <td>Tasman</td>
                    <td>Internet Explorer 5.2</td>
                    <td>Mac OS 8-X</td>
                    <td class="center">1</td>
                    <td class="center">C</td>
                 </tr>
                 <tr class="gradeA">
                    <td>Misc</td>
                    <td>NetFront 3.1</td>
                    <td>Embedded devices</td>
                    <td class="center">-</td>
                    <td class="center">C</td>
                 </tr>
                 <tr class="gradeA">
                    <td>Misc</td>
                    <td>NetFront 3.4</td>
                    <td>Embedded devices</td>
                    <td class="center">-</td>
                    <td class="center">A</td>
                 </tr>
                 <tr class="gradeX">
                    <td>Misc</td>
                    <td>Dillo 0.8</td>
                    <td>Embedded devices</td>
                    <td class="center">-</td>
                    <td class="center">X</td>
                 </tr>
                 <tr class="gradeX">
                    <td>Misc</td>
                    <td>Links</td>
                    <td>Text only</td>
                    <td class="center">-</td>
                    <td class="center">X</td>
                 </tr>
                 <tr class="gradeX">
                    <td>Misc</td>
                    <td>Lynx</td>
                    <td>Text only</td>
                    <td class="center">-</td>
                    <td class="center">X</td>
                 </tr>
                 <tr class="gradeC">
                    <td>Misc</td>
                    <td>IE Mobile</td>
                    <td>Windows Mobile 6</td>
                    <td class="center">-</td>
                    <td class="center">C</td>
                 </tr>
                 <tr class="gradeC">
                    <td>Misc</td>
                    <td>PSP browser</td>
                    <td>PSP</td>
                    <td class="center">-</td>
                    <td class="center">C</td>
                 </tr>
                 <tr class="gradeU">
                    <td>Other browsers</td>
                    <td>All others</td>
                    <td>-</td>
                    <td class="center">-</td>
                    <td class="center">U</td>
                 </tr>
                 <tr class="gradeC">
                    <td>Misc</td>
                    <td>IE Mobile</td>
                    <td>Windows Mobile 6</td>
                    <td class="center">-</td>
                    <td class="center">C</td>
                 </tr>
                 <tr class="gradeC">
                    <td>Misc</td>
                    <td>PSP browser</td>
                    <td>PSP</td>
                    <td class="center">-</td>
                    <td class="center">C</td>
                 </tr>
                 <tr class="gradeU">
                    <td>Other browsers</td>
                    <td>All others</td>
                    <td>-</td>
                    <td class="center">-</td>
                    <td class="center">U</td>
                 </tr>
              </tbody> -->
           </table>
          </div><!-- table-responsive -->
          
          
          
        </div><!-- panel-body -->
               
               
               
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
  jQuery('#datepicker1').datepicker();
  
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
