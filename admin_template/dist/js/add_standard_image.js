		
$(function() {
    //hang on event of form with id=myform
    $("#add_image_1").click(function() {			
			
        var str = document.getElementById('reg_no').value;
		var image1="1";
        standard_image(str,image1)

    });
	
	$("#add_image_2").click(function() {			
			
        var str = document.getElementById('reg_no').value;
		var image1="2";
        standard_image(str,image1)

    });
	
	
	$("#add_image_3").click(function() {			
			
        var str = document.getElementById('reg_no').value;
		var image1="3";
        standard_image(str,image1)

    });
	
	$("#add_image_4").click(function() {			
			
        var str = document.getElementById('reg_no').value;
		var image1="4";
        standard_image(str,image1)

    });
	
	$("#add_image_5").click(function() {			
			
        var str = document.getElementById('reg_no').value;
		var image1="5";
        standard_image(str,image1)

    });
	
	$("#add_image_6").click(function() {			
			
        var str = document.getElementById('reg_no').value;
		var image1="6";
        standard_image(str,image1)

    });
	
	$("#add_image_7").click(function() {			
			
        var str = document.getElementById('reg_no').value;
		var image1="7";
        standard_image(str,image1)

    });
	
	$("#add_image_8").click(function() {			
			
        var str = document.getElementById('reg_no').value;
		var image1="8";
        standard_image(str,image1)

    });
	
	
	
	function standard_image(str,buttonid){
	
	
	$.ajax({
					type: "POST",
					url: "../add_standard_image",
					data: { reg_no: str, buttonid: buttonid},
					cache: false,
					success: function(data) {
						
						var data=data.trim();
						
						if(data=="success"){
							window.location.reload();
						}
						else{
							alert(data.trim());
						}
						//$("#msgAdd").html( "<span style='color: green'>Advert specification added successfully</span>" );
						//alert("Redirecxt")
						 //window.location.href = "../List_Vehicle/";
					},
					error: function() {
						
						alert("Something Went Wrong")
						//$("#msgAdd").html( "<span style='color: red'>Error adding a new product</span>" );
					}
				});
				
				
}


});



