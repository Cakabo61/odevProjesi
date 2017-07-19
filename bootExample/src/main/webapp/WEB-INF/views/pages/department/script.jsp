<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>


<script type="text/javascript">

	$(function() {
	
// 		$("#addEmployee").validate({
// 			rules : {
// 				name : {
// 					maxlength : 30
// 				},
// 				salary : {
// 					maxlength : 3
// 				}
// 			}
// 		});
	
		
		$(".departments").click(function(){
			var id = $(this).attr("id");
            
			
			
			
			$("#editButton").attr('disabled', true);
			$("#deleteButton").attr('disabled', true);
			$("#addButton").attr('disabled', false);

			
			$.ajax({
				url: '${pageContext.request.contextPath}/department/'+id,
				success : function(data){

				alert(data.name);
				alert(data.description);
					
							$("#name").val(data.name);
							$("#description").val(data.description);
							$("#employeeId option[value='" + data.employeeBean.employeeId + "']").prop('selected', true);                    
							$("#departmentId").val(id);
							
							
							$("#editButton").attr('disabled', false);
							$("#deleteButton").attr('disabled', false);
							$("#addButton").attr('disabled', true);
						}
					});
			
			});		
		
        $('#departments').DataTable({
            "paging": true,
            "lengthChange": true,
            "searching": true,
            "ordering": true,
            "info": false,
            "autoWidth": false
          });
        
        $("#resetButton").click(function(){
        	$("#departmentId").val("");
        	$("#editButton").attr('disabled', true);
        	$("#deleteButton").attr('disabled', true);
        	$("#addButton").attr('disabled', false);
        });
        
        
        $("#deleteButton").click(function(e) {
		       e.preventDefault();
		       
					var dialog = bootbox.dialog({
			  			title: 'Alert',
			  			message: 'Are you sure you want to delete this item?',
			  			onEscape: true,      
			  			buttons: {
			    			cancel: {
			      			label: 'No',
			      			className: 'btn-default'
			    			},
			    			confirm: {
			      				label: 'Yes',
			     				className: 'btn-primary',
			      				callback: function () {
			      					$('#addDepartment').append('<input type="hidden" name="action" value="delete" />');
		      						document.getElementById("addDepartment").submit();
			      				}
			    			}
			  			}
				});
		 });

	});
</script>