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
                  <option>R.A 201</option>
                  <option>R.A 301</option>
                  <option>R.A 401</option>
                </select>
                
                <button type="button" class="btn btn-darkblue" id="submit" name="submit">Submit</button>
                  <script>
	$(document).ready(function(){
		$('#submit').on('click',function(){
			$.ajax({
				type: "post",
				url: "insertOoO.jsp",
				data: {
					empname:$('#employee').val(),
					
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
