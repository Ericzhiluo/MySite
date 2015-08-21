// $(document).ready(function(){
//     $('.resize_table, .resize_column').draggable()
//     // $('.defaultTable').draggable()
//     $('.defaultTable').sortable()
// }) 
$(document).ready(function(){
	$(".hide-picture").click(function() {	
		$('.toggle').slideToggle()
	})

	$("#datepicker").datepicker({dateFormat : "yy-mm-dd"});
	$("#datepicker2").datepicker({dateFormat : "yy-mm-dd "});

})

