


   
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
		
		document.getElementById("sizePrice").innerHTML = "$" + sizePrice;
	
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
		
		document.getElementById("crustPrice").innerHTML = "$" + crustPrice;
	}

 
//End of Crust Selection 


//Sauce Selection 
 
let saucePrice= 0; 

		function checkSauce() {
			
			
		
		if (document.getElementById('marinara').checked) {
		saucePrice += 0;	
		}
		
		else if (document.getElementById('white').checked) {
		saucePrice += 0;	
		}
		
		else if (document.getElementById('barbeque').checked) {
		saucePrice += 0;	
		}
		
		else if (document.getElementById('nosauce').checked) {
		saucePrice += 0;	
		}
		
		document.getElementById("saucePrice").innerHTML = "$" + saucePrice;
	
	}
//End of Sauce Selection 








//Cheese Selection 
let cheesePrice= 0; 

		function checkCheese() {
			
			
		
		if (document.getElementById('regular').checked) {
		cheesePrice += 0;	
		}
		
		else if (document.getElementById('nocheese').checked) {
		cheesePrice += 0;	
		}
			
		else if (document.getElementById('xtracheese').checked) {
		cheesePrice += 3;	
		}
		
		document.getElementById("cheesePrice").innerHTML = "$" + cheesePrice;
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


 
 //Meat Price  section 
 
let meatPriceA = 0
		function checkMeatA()
		{
		var meatA = document.forms[4],
		count = 0;

		for (var i=0; i<meatA.length; i++) {       
		if (meatA[i].type == "checkbox" && meatA[i].checked == true){
          count++;
           
           if (count <=1) {
				meatPriceA += 0 ;
			}
			else if (count = 1) {
				meatPriceA += count; 
			 }
 			  
       }
	  
    }
   document.getElementById("meatPrice").innerHTML = "$" + meatPriceA;   
	
 }
 


  //End Meat Price section  







  
 
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
 
  //veggie Price section 
 
let veggiePriceA = 0
		function checkVeggieA()
		{
		var veggieA = document.forms[5],
			count = 0;
	
		for (var i=0; i<veggieA.length; i++) {       
		if (veggieA[i].type == "checkbox" && veggieA[i].checked == true){
          count++;
           
           if (count <=1) {
				veggiePriceA += 0 ;
			}
			else if (count = 1) {
				veggiePriceA += count; 
			 }
 			
  
       }
    }
     document.getElementById("veggiePrice").innerHTML = "$" + veggiePriceA;   
 }


  //End veggie Price section 
 
 





//Calling the selection functions
 checkSize ();
 	 
 checkCrust ();
 
 checkSauce ();
 
 checkCheese ();
 
 checkMeat ();
 
 checkMeatA ();
 
 checkVeggie ();
 
  checkVeggieA ();
 //End of calling the selection functions
 
 
 
 
 
  
 
 
 
////Total calculation  
let total= sizePrice + crustPrice + saucePrice +cheesePrice + meatPrice + veggiePrice;
  
  document.getElementById('totalPrice').innerHTML = "$ " + total;
 
 
//End of the Total calculation part






 
}
//End of update total function 





//Order summary section 
 
 
  function orderSummary() {
	  
	  
	  function sizeSummary() {
                 
                var check = document.forms[0];
                var str = '';
                 
                for ( i = 0; i < check.length; i++) {
                     
                    if ( check[i].checked === true ) {
                        str += check[i].value + " ";
                    }
                     
                }
                
				document.getElementById("orderSize").innerHTML = str;
		}
	  
	    function crustSummary() {
                 
                var check = document.forms[1];
                var str = '';
                 
                for ( i = 0; i < check.length; i++) {
                     
                    if ( check[i].checked === true ) {
                        str += check[i].value + " ";
                    }
                     
                }
                
				document.getElementById("orderCrust").innerHTML = str;
		}
		
		
		  function sauceSummary() {
                 
                var check = document.forms[2];
                var str = '';
                 
                for ( i = 0; i < check.length; i++) {
                     
                    if ( check[i].checked === true ) {
                        str += check[i].value + " ";
                    }
                     
                }
                
				document.getElementById("orderSauce").innerHTML = str;
			}
		
		
		  function cheeseSummary() {
                 
                var check = document.forms[3];
                var str = '';
                 
                for ( i = 0; i < check.length; i++) {
                     
                    if ( check[i].checked === true ) {
                        str += check[i].value + " ";
                    }
                     
                }
                
				document.getElementById("orderCheese").innerHTML = str;
			}
		
		
		  function meatSummary() {
                 
                var check = document.forms[4];
                var str = '';
                 
                for ( i = 0; i < check.length; i++) {
                     
                    if ( check[i].checked === true ) {
                        str += check[i].value + " ";
                    }
                     
                }
                
				document.getElementById("orderMeat").innerHTML = str;
				
				
			}

	  
	    function vegSummary() {
                 
                var check = document.forms[5];
                var str = '';
                 
                for ( i = 0; i < check.length; i++) {
                     
                    if ( check[i].checked === true ) {
                        str += check[i].value + " ";
                    }
                     
                }
                
				document.getElementById("orderVeg").innerHTML = str;
			}
		
				
	sizeSummary();
	crustSummary ();
	sauceSummary ();
	cheeseSummary ();
	meatSummary ();
	vegSummary ();
				
				
				
				
				
				
				
				
}
 
 
 
 
 
 //End Order summary



//Event listener for the order button displays what was ordered and calls the function that updates the total price
 document.getElementById("order-button").addEventListener("click", function(){
	
	//Total price running total will equal all section selections
	
	updateTotal ();
	orderSummary ();
	
});

  
  
  
  
 
