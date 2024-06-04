		
$(function() {
    //hang on event of form with id=myform
    $("#add_vehicle_form").submit(function(e) {

        //prevent Default functionality
        e.preventDefault();
        //get the action-url of the form
        var str = $('#add_vehicle_form').serialize();

        //do your own request an handle the results
        $.ajax({
					type: "POST",
					url: "add_vehicle_action",
					data: str,
					cache: false,
					success: function() {
						
						alert("Vehicle Added Successfully...");
						
						$("#msgAdd").html( "<span style='color: green'>Vehicle added successfully</span>" );
						//alert("Redirecxt")
						 window.location.href = "Add_Vehicle/";
					},
					error: function() {
						
						alert("Something Went Wrong")
						//$("#msgAdd").html( "<span style='color: red'>Error adding a new product</span>" );
					}
				});

    });

});





$(function() {
    //hang on event of form with id=myform
    $("#edit_vehicle_form").submit(function(e) {

        //prevent Default functionality
        e.preventDefault();
		//alert("Edit  vehicle")
        //get the action-url of the form
        var str = $('#edit_vehicle_form').serialize();
		var url= '<?php echo site_url(); ?>/Vehicle/edit_vehicle_action';
		//alert(url);
        //do your own request an handle the results
        $.ajax({
					type: "POST",
					url: "../edit_vehicle_action",
					data: str,
					cache: false,
					success: function() {
						
				// 		alert(url);
						
						$("#msgAdd").html( "<span style='color: green'>Vehicle Edited successfully</span>" );
						//alert("Redirecxt")
						 window.location.href = "../List_Vehicle/";
					},
					error: function() {
						
						alert("Vehicle Already exist...");
						//$("#msgAdd").html( "<span style='color: red'>Error adding a new product</span>" );
					}
				});

    });

});


