<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- JQuery & Bootstrap -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<!-- Classtudy Function -->
<script src="/static/js/commonFunction.js"></script>
<script src="/static/js/classboardFunction.js"></script>
<script src="/static/js/freeboardFunction.js"></script>
<!-- Markdown Editor & View -->
<script src="/static/js/editormd.js"></script>
<script src="/static/js/lib/marked.min.js"></script>
<script src="/static/js/lib/prettify.min.js"></script>

<!-- Groupsearch jquery datepicker -->
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>  
<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>

<!-- fontawesome -->
<script src="https://kit.fontawesome.com/b811f09f8a.js" crossorigin="anonymous"></script>

<!-- Bootstrap Tags Input -->
<script src="/static/js/bootstrap-tagsinput.js"></script>


<script>
$(document).ready(function(){
	
	// Multi Dropdown Menu
	$('.dropdown-submenu a.test').on("click", function(e){
		$(this).next('ul').toggle();
		e.stopPropagation();
		e.preventDefault();
	});
	
	$(window).on("load", notiLoad());
	
});
</script>