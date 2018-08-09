<%@page import="java.sql.*"%>
<%@page import="configuration.dbConnection" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <script type="text/javascript" src="jquery-1.8.3.min.js"></script>
<div class="panel panel-dark panel-alt">
    <div class="panel-heading">
        <div class="panel-btns">
            <a class="panel-close" data-dismiss="modal" aria-hidden="true">&times;</a>
        </div><!-- panel-btns -->
        <h3 class="panel-title">Enter Details</h3>
        <p>Enter housekeeping Request</p>
    </div>
   
    <div class="panel-body">
    <%
    dbConnection db = new dbConnection();
	Connection conn = db.getConnection(); 
	
	%>
        <div class="col-sm-5">
       
                <label>Employee</label>
                <select class="form-control input-sm mb15" id="employee" name="employee">
                  <option>R.A 101</option>
                  <option>R.A 102</option>
                  <option>R.A 103</option>
                  <option>R.A 104</option>
                  <option>R.A 105</option>
                  <option>R.A 201</option>
                  <option>R.A 202</option>
                  <option>R.A 203</option>
                  <option>R.A 204</option>
                  <option>R.A 205</option>
                  <option>R.A 301</option>
                  <option>R.A 302</option>
                  <option>R.A 303</option>
                  <option>R.A 304</option>
                  <option>R.A 305</option>
                  <option>R.A 401</option>
                  <option>R.A 402</option>
                  <option>R.A 403</option>
                  <option>R.A 404</option>
                  <option>R.A 405</option>
                  <option>R.A 501</option>
                  <option>R.A 502</option>
                  <option>R.A 503</option>
                  <option>R.A 504</option>
                  <option>R.A 505</option>     
                </select>
                <label>Cleaning Status</label>
                <select class="form-control input-sm mb15" id= "clean_stat" name="clean_stat">
                  <option>Cleaning</option>
                  <option>Finished</option>
                  <option>Canceled</option>
                  <option>Not Started</option>
                 
                </select>
                <label>Room Status</label>
                <select class="form-control input-sm mb15" id="room_stat" name="room_stat">
                  <option>Good</option>
                  <option>Moderate</option>
                  <option>Bad</option>
                  <option>Out of Order</option>
                </select>        
                <button type="button" class="btn btn-darkblue" id="submit" name="submit">Submit</button>
                  <script>
	$(document).ready(function(){
		$('#submit').on('click',function(){
			$.ajax({
				type: "post",
				url: "inserttest2.jsp",
				data: {
					empname:$('#employee').val(),
					roomstat:$('#room_stat').val(),
					cleanstat:$('#clean_stat').val(),
				},
				success: function (response) {
					alert('successfuly entered')
					location.reload();
				   
				},
				error: function (response) {
					alert("Error encountered while adding data", "Please try again", "error");
				}

			});
		});
	});

</script>


              </div>
    </div>
</div>
