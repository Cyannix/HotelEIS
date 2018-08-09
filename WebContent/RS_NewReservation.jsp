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

  <title>Holiday Inn | Reservation</title>

  <link href="Resources/css/style.default.css" rel="stylesheet">

  <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!--[if lt IE 9]>
  <script src="Resources/js/html5shiv.js"></script>
  <script src="Resources/js/respond.min.js"></script>
  <![endif]-->
</head>

<body>

<section>
  
  <div class="leftpanel">
  <div class="logopanel">
        <img src="Resources/images/caps/inn.png" height="50" weight="30" margin-top: 10px;>
    </div><!-- logopanel -->
    <div class="leftpanelinner">
    <h5 class="sidebartitle">Navigation | Reservation</h5><br>
      <ul class="nav nav-pills nav-stacked nav-bracket">
        <li class="active"><a href="RS_NewReservation.jsp"><i class="fa fa-check"></i> <span>New Reservation</span></a></li>
        <li><a href="RS_UpdateReservation.jsp"><i class="fa fa-edit"></i> <span>Update Reservation</span></a></li>
        <li><a href="Calendar.jsp"><i class="fa fa-calendar"></i> <span>Calendar</span></a></li>
     
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
                <li class=""><a href="#"><i class="fa fa-home"></i> <span>Room Management</span></a></li>
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
      
      <div class="row">
        
        <div class="col-md-20">
          <div class="panel panel-default">
            <div class="panel-body panel-body-nopadding">
              
              <!-- BASIC WIZARD -->
              <div id="validationWizard" class="basic-wizard">
                
                <ul class="nav nav-pills nav-justified">
                  <li><a href="#vtab1" data-toggle="tab"><span>Step 1:</span> Reservation Info</a></li>
                  <li><a href="#vtab2" data-toggle="tab"><span>Step 2:</span> Rate Query</a></li>
                  <li><a href="#vtab3" data-toggle="tab"><span>Step 3:</span> Basic Info</a></li>
                </ul>
                
                <form class="form" id="firstForm">  
                <div class="tab-content">
                  
                  <div class="tab-pane" id="vtab1">
                      <div class="row" >
                <div class="col-sm-3">
                  <div class="form-group">
                    <label class="control-label">Arrival</label>
              <div class="input-group">
                <input type="date" placeholder="mm/dd/yyyy" id="datepicker1" style= "width: 18em" class = "input-xs-2 ">
              </div> 
                  </div>
                </div><!-- col-sm-3 -->
                <div class="col-sm-3">
                  <div class="form-group">
                    <label class="control-label">Nights</label>
                    <input type="text" class="form-control input-xs-2 mb15" id = "nights" >
                  </div>
                </div><!-- col-sm-3 -->
                
                <div class="col-sm-3">
                  <div class="form-group">
                    <label class="control-label">Departure</label>
                    <div class="input-group">
                <input type="date" placeholder="mm/dd/yyyy" id="datepicker2" style= "width: 18em" >
              </div> 
                  </div>
                </div><!-- col-sm-3 -->
                
              </div><!-- row -->
               <div class="row" >
                <div class="col-sm-2">
                  <div class="form-group">
                    <label class="control-label">Adults</label><br>
                    <input type="number" id = "adults" min="1" max="100" style= "width: 10em" >
                  </div>
                </div><!-- col-sm-2 -->
                <div class="col-sm-2">
                  <div class="form-group">
                    <label class="control-label">Children</label><br>
                    <input type="number" id = "child" min="1" max="100" style= "width: 10em">
                  </div>
                </div><!-- col-sm-2 -->
                <div class="col-sm-3">
                  <div class="form-group">
                    <label class="control-label">Room Type</label>
                    <select id="RoomType" class="form-control input-sm mb15"  data-placeholder="Choose One">
                      <option value=""></option>
                      <option value="King">King</option>
                      <option value="twin">Twin</option>
                      <option value="suiteEx">Executive Suite</option>
                      <option value="suite">Suite</option>
                      
                    </select>
                  </div>
                </div><!-- col-sm-3 -->
                <div class="col-sm-3">
                  <div class="form-group">
                    <label class="control-label">Status</label>
                    <select id="RoomType" class="form-control input-sm mb15"  data-placeholder="Choose One">
                      <option value=""></option>
                      <option value="guaranteed">Guaranteed</option>
                      <option value="nonguaranteed">Non Guaranteed</option> 
                    </select>
                  </div>
                </div><!-- col-sm-3 -->
                 </div><!-- row -->
               <div class="row" >
                
                
                <div class="col-sm-3">
                  <div class="form-group">
                    <label class="control-label">Number of Rooms</label><br>
                    <input type="number" id = "numofrooms" min="1" max="100" style= "width: 10em">
                  </div>
                </div><!-- col-sm-3 -->
              </div><!-- row -->
              
                  </div>
                  <div class="tab-pane" id="vtab2">
                       <div class="row" >
                         
                         
          <div class="table-responsive">
          <table class="table" id="table1">
            <thead>
               <tr>
                  <th>Room Type</th>
                  <th>Total Rooms</th>
                  <th>Available Room</th>
               </tr>
            </thead>
            <tbody>
               <tr class="odd gradeX">
               	 
                  <td>King</td>
                  <td>30</td>
                  <td>20</td>
               </tr>
               <tr class="odd gradeX">
               	 
                  <td>Twin</td>
                  <td>30</td>
                  <td>20</td>
               </tr>
               <tr class="odd gradeX">
               	 
                  <td>Suite</td>
                  <td>30</td>
                  <td>20</td>
               </tr>
               <tr class="odd gradeX">
               	 
                  <td> Executive Suite</td>
                  <td>30</td>
                  <td>20</td>
               </tr>
               
    
            </tbody>
         </table>
      </div><!-- table-responsive -->
      <br><br>
      <div class="table-responsive">
          <table class="table" id="table1">
            <thead>
               <tr>
                  <th>Rate Type</th>
                  <th>Price</th>
                  
               </tr>
            </thead>
            <tbody>
               <tr class="odd gradeX">
               	 <td>AAA</td>
               	 <td>6000</td>
               </tr>
               <tr class="odd gradeX">
               	 
               	 <td>Senior Rate</td>
               	 <td>4000</td>
               </tr>

            </tbody>
         </table>
      </div><!-- table-responsive -->
      
                         
                         
                      
                 </div>
                 <div align = "right">
                 <a class="btn btn-danger" href = "">Cancel</a></div>
                 </div>
                      
                  
                  
              <div class="tab-pane" id="vtab3">
               <div class="row" >
                <div class="col-sm-2">
                  <div class="form-group">
                    <label class="control-label">Firstname<span class="asterisk">*</span></label>
                    <input type="text" class="form-control input-sm mb15" >
                  </div>
                </div><!-- col-sm-2 -->
                <div class="col-sm-2">
                  <div class="form-group">
                    <label class="control-label">Lastname<span class="asterisk">*</span></label>
                    <input type="text" class="form-control input-sm mb15" >
                  </div>
                </div><!-- col-sm-2 -->
                <div class="col-sm-2">
                  <div class="form-group">
                    <label class="control-label">Middle Name</label>
                    <input type="text" class="form-control input-sm mb15">
                  </div>
                </div><!-- col-sm-2 -->
               
              </div><!-- row -->
              
              <div class="row">
                <div class="col-sm-2">
                  <div class="form-group">
                    <label class="control-label">Phone</label>
                    <input type="text" class="form-control input-sm mb15">
                  </div>
                </div><!-- col-sm-2 -->
                <div class="col-sm-4">
                  <div class="form-group">
                    <label class="control-label">Email<span class="asterisk">*</span></label>
                    <input type="text" class="form-control input-sm mb15">
                  </div>
                </div><!-- col-sm-4 -->
                
                <div class="col-sm-4">
                  <div class="form-group">
                    <label class="control-label">Address<span class="asterisk">*</span></label>
                    <input type="text" class="form-control input-sm mb15" >
                  </div>
                </div><!-- col-sm-4 -->
                
              </div><!-- row -->
              
              <div class="row">
                <div class="col-sm-3">
                  <div class="form-group">
                    <label class="control-label">City</label>
                    <input type="text" class="form-control input-sm mb15" id = "city">
                  </div>
                </div><!-- col-sm-3 -->
                <div class="col-sm-3">
                  <div class="form-group">
                    <label class="control-label">State</label>
                    <input type="text" class="form-control input-sm mb15" id = "state">
                  </div>
                </div><!-- col-sm-3 -->
                
                <div class="col-sm-3">
                  <div class="form-group">
                    <label class="control-label">Country</label>
                    <input type="text" class="form-control input-sm mb15" id = "country">
                  </div>
                </div><!-- col-sm-3 -->
                
              </div><!-- row -->
              
              <div class="row">
                <div class="col-sm-3">
                  <div class="form-group">
                    <label class="control-label">Agent</label>
                    <input type="text" class="form-control input-sm mb15" id ="agent">
                  </div>
                </div><!-- col-sm-3 -->
                <div class="col-sm-3">
                  <div class="form-group">
                    <label class="control-label">Group</label>
                    <input type="text" class="form-control input-sm mb15" id = "group">
                  </div>
                </div><!-- col-sm-3 -->
                <div class="col-sm-3">
                  <div class="form-group">
                    <label class="control-label">Company</label>
                    <input type="text" class="form-control input-sm mb15" id = "company">
                  </div>
                </div><!-- col-sm-3 -->
                <div class="col-sm-3">
                  <div class="form-group">
                    <label class="control-label">Credit Card no.</label>
                    <input type="text" class="form-control input-sm mb15" id = "ccnum">
                  </div>
               </div>     
                 </div>
                 <div align = "right">
                 <a class="btn btn-primary" href = "">Submit</a></div>
            </div>
                  
                </div><!-- tab-content -->
                </form>
                
                <ul class="pager wizard">
                    <li class="previous"><a href="javascript:void(0)">Previous</a></li>
                    <li class="next"><a href="javascript:void(0)">Next</a></li>
                  </ul>
                
              </div><!-- #validationWizard -->
              
            </div><!-- panel-body -->
          </div><!-- panel -->
        </div><!-- col-md-6 -->
        
      </div><!-- row -->
      
    </div><!-- contentpanel -->
    
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
    <div class="tab-content">
        <div class="tab-pane active" id="rp-alluser">
            <h5 class="sidebartitle">Online Users</h5>
            <ul class="chatuserlist">
                <li class="online">
                    <div class="media">
                        <a href="#" class="pull-left media-thumb">
                            <img alt="" src="Resources/images/photos/userprofile.png" class="media-object">
                        </a>
                        <div class="media-body">
                            <strong>Eileen Sideways</strong>
                            <small>Los Angeles, CA</small>
                        </div>
                    </div><!-- media -->
                </li>
                <li class="online">
                    <div class="media">
                        <a href="#" class="pull-left media-thumb">
                            <img alt="" src="Resources/images/photos/user1.png" class="media-object">
                        </a>
                        <div class="media-body">
                            <span class="pull-right badge badge-danger">2</span>
                            <strong>Zaham Sindilmaca</strong>
                            <small>San Francisco, CA</small>
                        </div>
                    </div><!-- media -->
                </li>
                <li class="online">
                    <div class="media">
                        <a href="#" class="pull-left media-thumb">
                            <img alt="" src="Resources/images/photos/user2.png" class="media-object">
                        </a>
                        <div class="media-body">
                            <strong>Nusja Nawancali</strong>
                            <small>Bangkok, Thailand</small>
                        </div>
                    </div><!-- media -->
                </li>
                <li class="online">
                    <div class="media">
                        <a href="#" class="pull-left media-thumb">
                            <img alt="" src="Resources/images/photos/user3.png" class="media-object">
                        </a>
                        <div class="media-body">
                            <strong>Renov Leongal</strong>
                            <small>Cebu City, Philippines</small>
                        </div>
                    </div><!-- media -->
                </li>
                <li class="online">
                    <div class="media">
                        <a href="#" class="pull-left media-thumb">
                            <img alt="" src="Resources/images/photos/user4.png" class="media-object">
                        </a>
                        <div class="media-body">
                            <strong>Weno Carasbong</strong>
                            <small>Tokyo, Japan</small>
                        </div>
                    </div><!-- media -->
                </li>
            </ul>
            
            <div class="mb30"></div>
            
            <h5 class="sidebartitle">Offline Users</h5>
            <ul class="chatuserlist">
                <li>
                    <div class="media">
                        <a href="#" class="pull-left media-thumb">
                            <img alt="" src="Resources/images/photos/user5.png" class="media-object">
                        </a>
                        <div class="media-body">
                            <strong>Eileen Sideways</strong>
                            <small>Los Angeles, CA</small>
                        </div>
                    </div><!-- media -->
                </li>
                <li>
                    <div class="media">
                        <a href="#" class="pull-left media-thumb">
                            <img alt="" src="Resources/images/photos/user2.png" class="media-object">
                        </a>
                        <div class="media-body">
                            <strong>Zaham Sindilmaca</strong>
                            <small>San Francisco, CA</small>
                        </div>
                    </div><!-- media -->
                </li>
                <li>
                    <div class="media">
                        <a href="#" class="pull-left media-thumb">
                            <img alt="" src="Resources/images/photos/user3.png" class="media-object">
                        </a>
                        <div class="media-body">
                            <strong>Nusja Nawancali</strong>
                            <small>Bangkok, Thailand</small>
                        </div>
                    </div><!-- media -->
                </li>
                <li>
                    <div class="media">
                        <a href="#" class="pull-left media-thumb">
                            <img alt="" src="Resources/images/photos/user4.png" class="media-object">
                        </a>
                        <div class="media-body">
                            <strong>Renov Leongal</strong>
                            <small>Cebu City, Philippines</small>
                        </div>
                    </div><!-- media -->
                </li>
                <li>
                    <div class="media">
                        <a href="#" class="pull-left media-thumb">
                            <img alt="" src="Resources/images/photos/user5.png" class="media-object">
                        </a>
                        <div class="media-body">
                            <strong>Weno Carasbong</strong>
                            <small>Tokyo, Japan</small>
                        </div>
                    </div><!-- media -->
                </li>
                <li>
                    <div class="media">
                        <a href="#" class="pull-left media-thumb">
                            <img alt="" src="Resources/images/photos/user4.png" class="media-object">
                        </a>
                        <div class="media-body">
                            <strong>Renov Leongal</strong>
                            <small>Cebu City, Philippines</small>
                        </div>
                    </div><!-- media -->
                </li>
                <li>
                    <div class="media">
                        <a href="#" class="pull-left media-thumb">
                            <img alt="" src="Resources/images/photos/user5.png" class="media-object">
                        </a>
                        <div class="media-body">
                            <strong>Weno Carasbong</strong>
                            <small>Tokyo, Japan</small>
                        </div>
                    </div><!-- media -->
                </li>
            </ul>
        </div>
        <div class="tab-pane" id="rp-favorites">
            <h5 class="sidebartitle">Favorites</h5>
            <ul class="chatuserlist">
                <li class="online">
                    <div class="media">
                        <a href="#" class="pull-left media-thumb">
                            <img alt="" src="Resources/images/photos/user2.png" class="media-object">
                        </a>
                        <div class="media-body">
                            <strong>Eileen Sideways</strong>
                            <small>Los Angeles, CA</small>
                        </div>
                    </div><!-- media -->
                </li>
                <li>
                    <div class="media">
                        <a href="#" class="pull-left media-thumb">
                            <img alt="" src="Resources/images/photos/user1.png" class="media-object">
                        </a>
                        <div class="media-body">
                            <strong>Zaham Sindilmaca</strong>
                            <small>San Francisco, CA</small>
                        </div>
                    </div><!-- media -->
                </li>
                <li>
                    <div class="media">
                        <a href="#" class="pull-left media-thumb">
                            <img alt="" src="Resources/images/photos/user3.png" class="media-object">
                        </a>
                        <div class="media-body">
                            <strong>Nusja Nawancali</strong>
                            <small>Bangkok, Thailand</small>
                        </div>
                    </div><!-- media -->
                </li>
                <li class="online">
                    <div class="media">
                        <a href="#" class="pull-left media-thumb">
                            <img alt="" src="Resources/images/photos/user4.png" class="media-object">
                        </a>
                        <div class="media-body">
                            <strong>Renov Leongal</strong>
                            <small>Cebu City, Philippines</small>
                        </div>
                    </div><!-- media -->
                </li>
                <li class="online">
                    <div class="media">
                        <a href="#" class="pull-left media-thumb">
                            <img alt="" src="Resources/images/photos/user5.png" class="media-object">
                        </a>
                        <div class="media-body">
                            <strong>Weno Carasbong</strong>
                            <small>Tokyo, Japan</small>
                        </div>
                    </div><!-- media -->
                </li>
            </ul>
        </div>
        <div class="tab-pane" id="rp-history">
            <h5 class="sidebartitle">History</h5>
            <ul class="chatuserlist">
                <li class="online">
                    <div class="media">
                        <a href="#" class="pull-left media-thumb">
                            <img alt="" src="Resources/images/photos/user4.png" class="media-object">
                        </a>
                        <div class="media-body">
                            <strong>Eileen Sideways</strong>
                            <small>Hi hello, ctc?... would you mind if I go to your...</small>
                        </div>
                    </div><!-- media -->
                </li>
                <li>
                    <div class="media">
                        <a href="#" class="pull-left media-thumb">
                            <img alt="" src="Resources/images/photos/user2.png" class="media-object">
                        </a>
                        <div class="media-body">
                            <strong>Zaham Sindilmaca</strong>
                            <small>This is to inform you that your product that we...</small>
                        </div>
                    </div><!-- media -->
                </li>
                <li>
                    <div class="media">
                        <a href="#" class="pull-left media-thumb">
                            <img alt="" src="Resources/images/photos/user3.png" class="media-object">
                        </a>
                        <div class="media-body">
                            <strong>Nusja Nawancali</strong>
                            <small>Are you willing to have a long term relat...</small>
                        </div>
                    </div><!-- media -->
                </li>
            </ul>
        </div>
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
<script>
jQuery(document).ready(function(){
    
    "use strict";

  // Basic Wizard
  jQuery('#basicWizard').bootstrapWizard();
  
  // Progress Wizard
  $('#progressWizard').bootstrapWizard({
    'nextSelector': '.next',
    'previousSelector': '.previous',
    onNext: function(tab, navigation, index) {
      var $total = navigation.find('li').length;
      var $current = index+1;
      var $percent = ($current/$total) * 100;
      jQuery('#progressWizard').find('.progress-bar').css('width', $percent+'%');
    },
    onPrevious: function(tab, navigation, index) {
      var $total = navigation.find('li').length;
      var $current = index+1;
      var $percent = ($current/$total) * 100;
      jQuery('#progressWizard').find('.progress-bar').css('width', $percent+'%');
    },
    onTabShow: function(tab, navigation, index) {
      var $total = navigation.find('li').length;
      var $current = index+1;
      var $percent = ($current/$total) * 100;
      jQuery('#progressWizard').find('.progress-bar').css('width', $percent+'%');
    }
  });
  
  // Disabled Tab Click Wizard
  jQuery('#disabledTabWizard').bootstrapWizard({
    tabClass: 'nav nav-pills nav-justified nav-disabled-click',
    onTabClick: function(tab, navigation, index) {
      return false;
    }
  });
  
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