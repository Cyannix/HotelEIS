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
        ResultSet rs = statement.executeQuery("SELECT `pk_housekeeping`, `R.A_Maid`,  `Room Condition`, `Repair Status` FROM `t_housekeeping` WHERE `pk_housekeeping` = '"+data+"'") ; 
		
	while(rs.next())
	{
	
%>

<div class="panel panel-dark panel-alt">
    <div class="panel-heading">
        <div class="panel-btns">
            <a class="panel-close" data-dismiss="modal" aria-hidden="true">&times;</a>
        </div><!-- panel-btns -->
        <h3 class="panel-title">Edit Details</h3>
        <p>Edit Details</p>
    </div>
    <div class="panel-body">
        <div class="col-sm-5">
                <div class="form-group">
				  <div class="col-sm-15">
					 <input type="hidden" value="<%=rs.getInt("pk_housekeeping") %>" id="container" name="container" class="form-control" readonly="readonly" hidden="hidden" />
				  </div>
				</div>
                <label>R.A Info</label>
                <div class="form-group">
				  <div class="col-sm-12">
					 <input type="text" value="<%=rs.getString("R.A_Maid") %>" id="RA_maid" name="RA_maid" class="form-control"  />
				  </div>
				</div>
				
                <label>Repair Status</label>
                <select class="form-control input-sm mb15" id="repair_stat" name="repair_stat">
                <option><%=rs.getString("Repair Status")%></option>
                  <option>Ongoing</option>
                  <option>Finished</option>
                  <option>Not Started</option>
                 <option>For pickup</option>
                 
                </select>
                <label>Room Status</label>
                <select class="form-control input-sm mb15" id="room_stat" name="room_stat">
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
				url: "edit_OoO.jsp",
				data: {
					container:$('#container').val(),
					RAmaid:$('#RA_maid').val(),
					repairstat:$('#repair_stat').val(),
					roomstat:$('#room_stat').val(),
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
