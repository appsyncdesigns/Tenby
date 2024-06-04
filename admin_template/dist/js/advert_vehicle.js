		
$(function() {
    //hang on event of form with id=myform
    $("#add_advert_form").submit(function(e) {

        //prevent Default functionality
        e.preventDefault();
		alert("Advert Form")
        //get the action-url of the form
        var str = $('#add_advert_form').serialize();

        //do your own request an handle the results
        $.ajax({
					type: "POST",
					url: "../add_advertspec",
					data: str,
					cache: false,
					success: function() {
						
						//alert("Sucess");
						
						$("#msgAdd").html( "<span style='color: green'>Advert specification added successfully</span>" );
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





$(function() {
    //hang on event of form with id=myform
    $("#update_advert_form").submit(function(e) {

        //prevent Default functionality
        e.preventDefault();
		//alert("Edit  Advert vehicle")
        //get the action-url of the form
        var str = $('#update_advert_form').serialize();
		var url= '<?php echo site_url(); ?>/Vehicle/update_advert';
		//alert(url);
        //do your own request an handle the results
        $.ajax({
					type: "POST",
					url: '../update_advert',
					data: str,
					cache: false,
					success: function() {
						
						//alert("Sucess");
						
						$("#msgAdd").html( "<span style='color: green'>Advert Specification Updated successfully</span>" );
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


