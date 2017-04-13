$( document ).ready(function() {
 
    //alert("Welcome");

    $('div div').click(function(){
    	if (this.style.opacity < 1){
    		$(this).fadeTo('slow',1);
    	}
    	else {
    		$(this).fadeTo('slow',0.01);
    	}
    })

    $("button").click(function(){
    	console.log($(this).siblings('div'));
    	$(this).siblings('div').animate({
    		height: 'toggle'
    	});
    });
 
});