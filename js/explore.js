// Reverse Method/Function
// Define a method that takes in a string as a parameter
// Initialize an empty result string
// for each character in the parameter string, beginning from the end and decrementing
// 	add the character to the result
// end loop
// return result string

function reverse(string){
	var result = "";
	for (var i = string.length - 1; i >= 0; i--){
		result += string[i];
	}
	return result;
}

var reverseString =reverse("hello");

if (1 == 1){
	console.log(reverseString);
}