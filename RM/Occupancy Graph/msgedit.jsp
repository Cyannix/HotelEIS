<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<div class="panel panel-dark panel-alt">
    <div class="panel-heading">
        <div class="panel-btns">
            <a class="panel-close" data-dismiss="modal" aria-hidden="true">&times;</a>
        </div><!-- panel-btns -->
        <h3 class="panel-title">Enter Details</h3>
        <p>Edit Details</p>
    </div>
    <div class="panel-body">
        <div class="col-sm-5">
                <label>Date</label>
               <div class="input-group mb15">
                <span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
                <input type="text" placeholder="Date" id="date" class="form-control" />
              </div>
				<label>Name</label>
                <div class="form-group">
				  <div class="col-sm-15">
					 <input type="text" value="Name will be placed here" id="readonlyinput" class="form-control" readonly="readonly" />
				  </div>
				</div>
				 <label class="col-sm-3 control-label">Message</label>
              <div class="col-lg-12">
                <textarea id="autoResizeTA" class="form-control" rows="5" readonly="readonly"></textarea>
              </div>
                
                <button type="button" class="btn btn-darkblue">Submit</button>
              </div>
    </div>
</div>

<script src="js/jquery.autogrow-textarea.js"></script>
<script src="js/jquery.maskedinput.min.js"></script>
<script src="js/custom.js"></script>
<script>
jQuery("#date").mask("99/99/9999");
jQuery('#autoResizeTA').autogrow();
</script>