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

	$(".transcript_upload").click(function() {
            window.alert("Test")
            // var openFile = function(event) {
            //     var input = event.target;

            //     var reader = new FileReader();
            //     reader.onload = function(){
            //         var text = reader.result;
            //         console.log(reader.result.substring(0, 200));
            //         $(".transcript_output").after("<p>" + reader.result + "</p>");
            //     };
            //     reader.readAsText(input.files[0]);
            // };
        })
})

