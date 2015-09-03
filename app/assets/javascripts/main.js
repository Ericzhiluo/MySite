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

      // transcript output:
      var fileInput = $('#file_upload')[0]; // or var fileInput = document.getElementById('fileInput');
      var fileDisplayArea = document.getElementById('fileDisplayArea');
            $("#submit_file").click(function() {
                  $('.trans_output').empty();
                  var file = fileInput.files[0];
                  var textType = /text.*/;
                  var reader = new FileReader();
                  reader.readAsText(file);  
                  reader.onload = function(e) {
                        var x = reader.result.split("\r\n")
                        $(".trans_output").prepend("<h4 class='text-center'>Here is the output: </h4>" + 
                              "<br><li><strong>Company Name: </strong></li>" + x[6].split("-")[1] + 
                              "<li><strong>Ticker: </strong></li>" + x[6].split("-")[0] +
                              "<li><strong>Event: </strong></li>" + x[7] +
                              "<li><strong>Date: </strong></li>" + x[8]
                        );
                  }
            });

      $(".hide-code").click(function() {
            $('.toggle').slideToggle()
            $('.code_display').css('display','initial')
      })
})

