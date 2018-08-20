var table;

jQuery(document).ready(function() {
	table = $('#personTable').dataTable({
		  	"bPaginate": true,
		  	"order": [ 0, 'asc' ],
		 	"bServerSide" : true,
		 	"sAjaxSource" : path+"/com/studywithdemo/JqueryDatatablePluginDemo.java",
	      });
			
	});