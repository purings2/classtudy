<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- JQuery & Bootstrap -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<!-- Classtudy Function -->
<script src="/static/js/csfunction.js"></script>
<!-- Markdown Editor & View -->
<script src="/static/js/editormd.js"></script>
<script src="/static/js/lib/marked.min.js"></script>
<script src="/static/js/lib/prettify.min.js"></script>
<!-- Multi Dropdown Menu -->
<script>
$(document).ready(function(){
	$('.dropdown-submenu a.test').on("click", function(e){
		$(this).next('ul').toggle();
		e.stopPropagation();
		e.preventDefault();
	});
});
</script>