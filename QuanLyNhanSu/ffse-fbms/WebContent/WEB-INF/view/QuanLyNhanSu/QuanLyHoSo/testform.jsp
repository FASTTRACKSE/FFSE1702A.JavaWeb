<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
<link href="http://cdn.datatables.net/1.10.3/css/jquery.dataTables.css" rel="stylesheet" type="text/css">
<script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
<script src="http://cdn.datatables.net/1.10.3/js/jquery.dataTables.min.js"></script>
<title>Person Form</title>
</head>
<body>
<form>
   <div class="form">
      <table class="row-border tableHeader" id="personTable">
         <thead>
            <tr>
               <th>maNhanVien</th>
               <th>anhAnhDien</th>
               <th>hoDem</th>
               <th>ten</th>
               <th>gioiTinh</th>
               <th>phongBan</th>
               <th>chucDanh</th>
               <th>trangThai</th>
            </tr>
         </thead>
         <tbody>
         </tbody>
      </table>
   </div>
</form>

<script type="text/javascript">
var path = '${pageContext.request.contextPath}';
var table;

jQuery(document).ready(function() {
   table = $('#personTable').dataTable({
         "bPaginate": true,
         "order": [ 0, 'desc' ],
         "bServerSide" : true,
         "sAjaxSource" : path + "/ns/getListHoSo",
         });
   });
</script>
</body>
</html>