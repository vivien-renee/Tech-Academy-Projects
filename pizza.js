 
//Whole function that updates the total price
function updateTotal() {
	



	//Check the Pizza size which is inside of update total function 
let sizePrice= 0; 

		function checkSize() {
			
			
		
		if (document.getElementById('personal').checked) {
		sizePrice += 6;	
		}
		
		else if (document.getElementById('medium').checked) {
		sizePrice += 10;	
		}
		
		else if (document.getElementById('large').checked) {
		sizePrice += 14;	
		}
		
		else if (document.getElementById('xlarge').checked) {
		sizePrice += 16;	
		}
	
	}

	
 

 //End of Size Check
 
 //Crust Selection 
 
 let crustPrice= 0; 

		function checkCrust() {
			
			
		
		if (document.getElementById('plain').checked) {
		crustPrice += 0;	
		}
		
		else if (document.getElementById('garlic').checked) {
		crustPrice += 0;	
		}
		
		else if (document.getElementById('cheese').checked) {
		crustPrice += 3;	
		}
		
		else if (document.getElementById('spicy').checked) {
		crustPrice += 0;	
		}
		
		else if (document.getElementById('house').checked) {
		crustPrice += 0;	
		}
	
	}

 
//End of Crust Selection 


//Cheese Selection 
let cheesePrice= 0; 

		function checkCheese() {
			
			
		
		if (document.getElementById('regular').checked) {
		crustPrice += 0;	
		}
		
		else if (document.getElementById('nocheese').checked) {
		crustPrice += 0;	
		}
			
		else if (document.getElementById('xtracheese').checked) {
		crustPrice += 3;	
		}
	
	}



//End of cheese Selection 

 
 //Meat checkbox section 
 
let meatPrice = 0
function checkMeat()
  {
   var meat = document.forms[4],
    count = 0;

    for (var i=0; i<meat.length; i++) {       
       if (meat[i].type == "checkbox" && meat[i].checked == true){
          count++;
           
           if (count <=1) {
				meatPrice += 0 ;
			}
			else if (count = 1) {
				meatPrice += count; 
			 }
 			
  
       }
    }
   
 }
 

  //End Meat checkbox section  
 
 //veggie checkbox section 
 
let veggiePrice = 0
function checkVeggie()
  {
   var veggie = document.forms[5],
    count = 0;

    for (var i=0; i<veggie.length; i++) {       
       if (veggie[i].type == "checkbox" && veggie[i].checked == true){
          count++;
           
           if (count <=1) {
				veggiePrice += 0 ;
			}
			else if (count = 1) {
				veggiePrice += count; 
			 }
 			
  
       }
    }
   
 }
 

  //End veggie checkbox section 
 
 
 





//Calling the selection functions
 checkSize ();
 	 
 checkCrust ();
 
 checkCheese ();
 
 checkMeat ();
 
 checkVeggie ();
 //End of calling the selection functions
 
 

 
 
 
 
////Total calculation  
let total= sizePrice + crustPrice + cheesePrice + meatPrice + veggiePrice;
 document.getElementById('totalPrice').innerHTML = "$ " + total;
//End of the Total calculation part






 
}
//End of update total function 





//Order summary section 
 
 
  function orderSummary() {
                 
                var check = document.forms[1];
                var str = '';
                 
                for ( i = 0; i < check.length; i++) {
                     
                    if ( check[i].checked === true ) {
                        str += check[i].value + " ";
                    }
                     
                }
                alert(str);
				document.getElementById("orderSummary").innerHTML = str;
            }
 
 
 
 
 
 //End Order summary



//Event listener for the order button displays what was ordered and calls the function that updates the total price
 document.getElementById("order-button").addEventListener("click", function(){
	
	//Total price running total will equal all section selections
	
	updateTotal ();
	orderSummary ();
});

    





