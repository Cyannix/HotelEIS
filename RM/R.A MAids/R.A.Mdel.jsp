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
        <h3 class="panel-title">CAUTION</h3>
        <p>Delete Maid Details</p>
    </div>
    <% 
  
    String data = request.getParameter("pkRAM");
	
		
        dbConnection db = new dbConnection();
		Connection conn = db.getConnection();
		
		Statement statement = conn.createStatement() ;
		Statement statement2 = conn.createStatement() ;
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
					 <input type="text" value="<%=rs.getString("Name") %>" id="empname" name="empname" class="form-control" readonly="readonly" />
				  </div>
				</div>
				 <label>Address</label>
                <div class="form-group">
				  <div class="col-sm-12">
					 <input type="text" value="<%=rs.getString("Address") %>" id="address" name="address" class="form-control" readonly="readonly" />
				  </div>
				</div>
        <label>Telephone/Cellphone</label>
                <div class="form-group">
				  <div class="col-sm-12">
					 <input type="text" value="<%=rs.getString("Tele_num") %>" id="tel_num" name="tel_num" class="form-control" readonly="readonly" />
				  </div>
				</div>
                <label>Floor Assign</label>
                               <div class="form-group">
				  <div class="col-sm-12">
					 <input type="text" value="<%=rs.getString("Floor_assgin") %>" id="tel_num" name="tel_num" class="form-control" readonly="readonly" />
				  </div>
				</div>

                <label>Position</label>
                  <div class="col-sm-12">
					 <input type="text" value="<%=rs.getString("Position") %>" id="tel_num" name="tel_num" class="form-control" readonly="readonly" />
				  </div>
				</div>
                <label>Supervisor (If applicable)</label>
            <div class="col-sm-12">
					 <input type="text" value="<%=rs.getString("Maid_Supervisor") %>" id="tel_num" name="tel_num" class="form-control" readonly="readonly" />
					 <% } rs.close(); statement.close();%>
					 
				  </div>
				</div>
       			
               
                <button type="button" class="btn btn-darkblue" id="submit" name="submit">Submit</button>
                  <script>
	$(document).ready(function(){
		$('#submit').on('click',function(){
			$.ajax({
				type: "post",
				url: "RAdel.jsp",
				data: {
					container:$('#container').val(),
					
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
