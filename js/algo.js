// Longest phrase Function
// define a function that takes in an array of phrases
// sort array by length of the string
// return the last item in the array

function longestPhrase(array){
	var sorted = array.sort(function(a,b){return a.length - b.length});
	return sorted.pop();
}


// Key match function
// define a function that takes in two objects
// declare arrays containting the keys of both objects 
// for each item in key array 1
// 
// 	for each item in key array 2
// 		if keys match
// 			compare values
// 			if they match return true
// 	end loop
// end loop
// return false
				
function keyMatch(object1,object2){
	var array1 = Object.keys(object1);
	var array2 = Object.keys(object2);
	for (i = 0; i < array1.length; i++){
		for(j=0; j < array2.length; j++){
			if(array1[i] == array2[j]){
				if (object1[array1[i]] == object2[array2[j]]){
					return true;
				}
			}
		}
	}
	return false;
}


// var input = ["longest phrase", "long phrase", "longer phrase"];
// console.log(longestPhrase(input));

// input = ["aa","abc", "h", "def", "re", "f","querty", "dog"]
// console.log(longestPhrase(input));



var x = {name: "Lou", age: 24};
var y = {name: "Carlo", age: 23};
var z = {name: "Ryan", age: 23};


console.log(keyMatch(x,y));
console.log(keyMatch(y,z));
console.log(keyMatch(x,z));