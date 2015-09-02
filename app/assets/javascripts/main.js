// $(document).ready(function(){
//     $('.resize_table, .resize_column').draggable()
//     // $('.defaultTable').draggable()
//     $('.defaultTable').sortable()
// }) 
$(document).ready(function(){
	$(".hide-picture").click(function() {	
		window.alert("Test")
		$('.toggle').slideToggle()
	})

	$("#datepicker").datepicker({dateFormat : "yy-mm-dd"});
	$("#datepicker2").datepicker({dateFormat : "yy-mm-dd "});

      var fileInput = $('#file_upload')[0]; // or var fileInput = document.getElementById('fileInput');

        $("#submit_file").click(function() {
            var file = fileInput.files[0];
            var textType = /text.*/;

            var reader = new FileReader();
            reader.readAsText(file);  
            reader.onload = function(e) {
                $(".transcript_output").after(reader.result.split("\r\n"));
            }  
        });
})

