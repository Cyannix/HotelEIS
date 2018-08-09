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
        <p>Edit Maid Details</p>
    </div>
    <% 
  
    String data = request.getParameter("pkRAM");
	
		
        dbConnection db = new dbConnection();
		Connection conn = db.getConnection();
		
		Statement statement = conn.createStatement() ;
		Statement statement2 = conn.createStatement() ; 
        ResultSet rs2 = statement2.executeQuery("SELECT  `Name`  FROM `tb_r.a_maid` WHERE `Position` ='Supervisor' OR `Position`='Manager'") ;
        ResultSet rs = statement.executeQuery("SELECT `R.A_Maid_ID`, `Name`, `Address`, `Tele_num`, `Floor_assgin`, `Position`,`Maid_Supervisor` FROM `tb_r.a_maid` WHERE `R.A_Maid_ID` = '"+data+"'") ; 
        
	while(rs.next())
	{
	
%>
    <div class="panel-body">
        <div class="col-sm-5">
        <div class="form-group">
				  <div class="col-sm-15">
					 <input type="hidden" value="<%=rs.getString("R.A_Maid_ID") %>" id="container" name="container" class="form-control" readonly="readonly" hidden="hidden" />
				  </div>
				</div>	
         <label>Employee Name</label>
                <div class="form-group">
				  <div class="col-sm-12">
					 <input type="text" value="<%=rs.getString("Name") %>" id="empname" name="empname" class="form-control"  />
				  </div>
				</div>
				 <label>Address</label>
                <div class="form-group">
				  <div class="col-sm-12">
					 <input type="text" value="<%=rs.getString("Address") %>" id="address" name="address" class="form-control"  />
				  </div>
				</div>
        <label>Telephone/Cellphone</label>
                <div class="form-group">
				  <div class="col-sm-12">
					 <input type="text" value="<%=rs.getString("Tele_num") %>" id="tel_num" name="tel_num" class="form-control"  />
				  </div>
				</div>
                <label>Floor Assign</label>
                <select class="form-control input-sm mb15" id="floorassgin" name="floorassgin">
                 <option><%=rs.getString("Floor_assgin") %></option>
                  <option>R.A 100</option>
                  <option>R.A 102</option>
                  <option>R.A 200</option>
                  <option>R.A 300</option>
                  <option>R.A 400</option>               
                  <option>R.A 500</option>    
                </select>
                <label>Position</label>
                <select class="form-control input-sm mb15" id="position" name="position">
                <option><%=rs.getString("Position") %></option>
                  <option>Manager</option>
                  <option>Supervisor</option>
                  <option>Regular</option>
                </select>
                <label>Supervisor (If applicable)</label>
            <select class="form-control input-sm mb15" id="Supervior" name="Supervior">
                  <option><%=rs.getString("Maid_Supervisor") %><% } rs.close(); statement.close();%><option> 
                  <%while(rs2.next()){%><option><%=rs2.getString("Name") %><% } rs2.close(); statement2.close(); conn.close();  %></option>
                  <option>Not Applicable</option>
       			</select> 
       			
               
                <button type="button" class="btn btn-darkblue" id="submit" name="submit">Submit</button>
                  <script>
	$(document).ready(function(){
		$('#submit').on('click',function(){
			$.ajax({
				type: "post",
				url: "R.A.Medit.jsp",
				data: {
					container:$('#container').val(),
					empname:$('#empname').val(),
					address:$('#address').val(),
					tel_num:$('#tel_num').val(),
					floorassgin:$('#floorassgin').val(),
					position:$('#position').val(),
					Supervior:$('#Supervior').val(),
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
