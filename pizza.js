 document.getElementById("order-button").addEventListener("click", function(){
    document.getElementById("textarea").innerHTML = "You ordered:";
});


function updateTotal() {
	
 


	//Check the Pizza size which is inside of update total function 

		function checkSize() {
		
		if (document.getElementById('personal').checked) {
		totalPrice = 6;	
		}
		
		if (document.getElementById('medium').checked) {
		totalPrice = 10;	
		}
		
		if (document.getElementById('large').checked) {
		totalPrice = 14;	
		}
		
		if (document.getElementById('xlarge').checked) {
		totalPrice = 16;	
		}
	
	}
	

 let orderButton = document.getElementById('order-button');

 
checkSize();
 //End of the size selection section

 //Total price running total will equal all section selections
 document.getElementById('totalPrice').innerHTML = "$ " + totalPrice;
 
	
}


    





