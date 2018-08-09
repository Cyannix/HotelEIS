<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*"%>
    <%@page import="java.util.*"%>
<%@page import="configuration.dbConnection" %>

    <% 
  
    String data = request.getParameter("pkhouse");
	try{
		
        dbConnection db = new dbConnection();
		Connection conn = db.getConnection();
		
		Statement statement = conn.createStatement() ;
        ResultSet rs = statement.executeQuery("SELECT `pk_housekeeping`, `R.A_Maid`, `Cleaning_Status`, `Room Condition` FROM `t_housekeeping` WHERE `pk_housekeeping` = '"+data+"'") ; 
		
	while(rs.next())
	{
	
%>

<div class="panel panel-dark panel-alt">
    <div class="panel-heading">
        <div class="panel-btns">
            <a class="panel-close" data-dismiss="modal" aria-hidden="true">&times;</a>
        </div><!-- panel-btns -->
        <h3 class="panel-title">Delete Information</h3>
        <p>Delete Details</p>
    </div>
    <div class="panel-body">
        <div class="col-sm-5">
                <div class="form-group">
				  <div class="col-sm-15">
					 <input type="hidden" value="<%=rs.getInt("pk_housekeeping") %>" id="container" name="container" class="form-control" readonly="readonly" hidden="hidden" />
				  </div>
				</div>
                <label>Employee Name</label>
                <div class="form-group">
				  <div class="col-sm-12">
					 <input type="text" value="<%=rs.getString("R.A_Maid") %>" id="RA_maid" name="RA_maid" class="form-control" readonly="readonly" />
				  </div>
				</div>
				
                <label>Rooms</label>
                <select class="form-control input-sm mb15" id="clean_stat" name="clean_stat">
                <option><%=rs.getString("Cleaning_Status")%></option>
                  <option>Cleaning</option>
                  <option>Finished</option>
                  <option>Cancel</option>
                 
                </select>
                <label>Cleaning Status</label>
                <select class="form-control input-sm mb15" id="room_con" name="room_con">
                <option><%=rs.getString("Room Condition")%></option>
                  <option>Good</option>
                  <option>Moderate</option>
                  <option>Bad</option>
                  <option>Out of Order</option>
                </select>
                 <%}
				rs.close();
				statement.close();
				conn.close();
	  }
	catch(Exception e)
	{
	    e.printStackTrace();
	    }; %>
                <button type="button" class="btn btn-darkblue" id="submit" name="submit">Submit</button>
                <script>
	$(document).ready(function(){
		$('#submit').on('click',function(){
			$.ajax({
				type: "post",
				url: "hedeltest.jsp",
				data: {
					container:$('#container').val(),
					
				},
				success: function (response) {
					alert('successfuly edited')
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
