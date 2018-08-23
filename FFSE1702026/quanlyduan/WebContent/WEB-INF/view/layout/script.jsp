<!-- BEGIN VENDOR JS-->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<script src="<c:url value="/resources/vendors/js/vendors.min.js" />"
	type="text/javascript"></script>
<!-- BEGIN VENDOR JS-->
<!-- BEGIN PAGE VENDOR JS-->
<!-- END PAGE VENDOR JS-->
<!-- BEGIN STACK JS-->
<script src="<c:url value="/resources/js/core/app-menu.js" />"
	type="text/javascript"></script>
<script src="<c:url value="/resources/js/core/app.js" />"
	type="text/javascript"></script>
<script src="<c:url value="/resources/js/scripts/modal/components-modal.js"/>" type="text/javascript"></script>
<!-- END STACK JS-->
<!-- BEGIN PAGE LEVEL JS-->
<!-- END PAGE LEVEL JS-->
<script>
$(document).ready(function(){
	   setTimeout(function(){ if ( $("#message").css('display') != 'none'){
		   $("#message").hide();
	   } }, 2000);
	});
</script>