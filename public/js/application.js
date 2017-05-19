$( document ).ready(function() {
    $('form').submit(function(e) {
    	event.preventDefault()
	      $.ajax({
	        url: '/urls',
	        method: 'post',
	        data: $(this).serialize(),
	        dataType: 'json',
	        success: function(data) {
	        	
	        	if(data.notSaved === true) {
	        		$('#error-link').html(
	        			"<a href='" + data.short_url + "'target='_blank' class='short'>" +
	        			"http://cur.ly/" + data.short_url +    // retrieve latest data
	        			"</a>"
	        		)

	        		$('.test-fade, #btnSubmit').fadeOut('slow', function(){ // header fade out effect to fade in link
				        $('.error-fade, #error-bk').fadeIn('slow');
				    });  

	        		} else {

	        		$('#result-content').html(
	        			"<a href='" + data[0].short_url + "'class='short'>" +
	        			"http://cur.ly/" + data[0].short_url +    // retrieve latest data
	        			"</a>"
	        		)
	        		var resultStr; 
	    			$.each(data, function(index, value) {
	    				resultStr += 
	    				"<tr>" +
			        		"<td>" + data[index].original_url + "</td>" +
			        		"<td><a href='" + data[index].short_url + "' target='_blank' class='short'>" + "http://cur.ly/" + data[index].short_url + "</td>" +
			        		"<td>" + data[index].click_count + "</td>" +
		        		"</tr>"
	        		})

	        		$('.test-fade, #btnSubmit').fadeOut('slow', function(){ // header fade out effect to fade in link
				        $('.result-fade, #btn-bk').fadeIn('slow');
				    });        		


				    $('.display-table, #btnSubmit').fadeOut('slow', function(){  //table fade in and out
				        $('.display-table').fadeIn('slow');
				    });

				    setTimeout(function(){
				    	$('.initial-table').html(resultStr) // timeout to append new data before fade
					},500); 

	        		

		        	// $('.display-table').html(
		        	// 	"<tr>" +
		        	// 	"<td>" + data.original_url + "</td>" +
		        	// 	"<td>" + data.short_url + "</td>" +
		        	// 	"<td>" + data.click_count + "</td>" +
		        	// 	"</tr>"
	        		// )      		
	        	}

	        },
	      })

	 //    if($(".form")[0].checkValidity())
		// {
		//         $('.test-fade, #btnSubmit').fadeOut('slow', function(){
		// 	        $('.result-fade, #btn-bk').fadeIn('slow');
		// 	    });
		//  //will appear if name and email are of valid formats
		// }
		this.reset() // reset form on submit
    })




        		

	        	// $('.display-table').html(
	        	// 	"<tr>" +
	        	// 	"<td>" + data.original_url + "</td>" +
	        	// 	"<td>" + data.short_url + "</td>" +
	        	// 	"<td>" + data.click_count + "</td>" +
	        	// 	"</tr>"
        		// )      		





	$('#btn-bk').click(function(e){    
	    $('.result-fade, #btn-bk').fadeOut('slow', function(){
	        $('.test-fade, #btnSubmit').fadeIn('slow');
	    });
	});	

	$('#error-bk').click(function(e){    
	    $('.error-fade, #error-bk').fadeOut('slow', function(){
	        $('.test-fade, #btnSubmit').fadeIn('slow');
	    });
	});
});