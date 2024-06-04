

    /*function add_enquiry(val) {
		

        //prevent Default functionality
       // e.preventDefault();
        //get the action-url of the form
      var str = $('#add_vehicle_form').serialize();


        //do your own request an handle the results
        $.ajax({
					type: "POST",
					url: "../add_enq_action",
					data: {id:val},
					cache: false,
					success: function() {
						
						alert("Sucess");
						
						//$("#msgAdd").html( "<span style='color: green'>Status Changed successfully</span>" );
						//alert("Redirecxt")
						 //window.location.reload();
					},
					error: function() {
						
						alert("Something Went Wrong")
						//$("#msgAdd").html( "<span style='color: red'>Error adding a new product</span>" );
					}
				});

    }*/
	





$(function() {
	
    //hang on event of form with id=myform
    $("#vehicle_order_form").submit(function(e) {

        //prevent Default functionality
        e.preventDefault();
		//alert("Enquirty")
        //get the action-url of the form
        var str = $('#vehicle_order_form').serialize();
		
        //do your own request an handle the results
        $.ajax({
					type: "POST",
					url: '../add_enq_action',
					data: str,
					cache: false,
					success: function() {
						
						//alert("Sucess");
						
						//$("#msgAdd").html( "<span style='color: green'>Vehicle Edited successfully</span>" );
						//alert("Redirecxt")
						 window.location.href = "../List_Vehicle/";
					},
					error: function() {
						
						alert("Something Went Wrong")
						//$("#msgAdd").html( "<span style='color: red'>Error adding a new product</span>" );
					}
				});

    });

});









