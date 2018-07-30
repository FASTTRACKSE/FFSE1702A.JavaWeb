<footer>
	<div class="text-center copyright">
		© Copyright 2017. Made by Mountain Crab 
	</div>
</footer>
<script type="text/javascript">
	$(document).ready(function(){
		$('.search-click').click(function(){
			$('.show-search').css("display","block");
			$('#request').focus();
		})
		$('.close-search').click(function(){
			$('.show-search').css("display","none");
		})
	})
</script>