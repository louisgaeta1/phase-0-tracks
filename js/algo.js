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


// Random data function
// define a function that takes in an integer for the array length
// set iterator to 0
// declare empty result array
// declare string of the alphabet
// until the iterator reaches the parameter length , incrementing by 1
// 	generate a random string and add it to result array
// end loop
// return the result array

function testData(results){
	var data = [];
	var alphabet = "abcdefghijklmnopqrstuvwxyz";
	for (var i = 0; i < results; i ++){
		var string = "";
		for(var j = 0; j < Math.floor((Math.random()*10)+1); j++){
			string += alphabet[Math.floor((Math.random()*26))];
		}
		data.push(string);
	}
	return data;
}


for (var i = 0; i < 10; i++){
	data = testData(3);
	console.log(data);
	console.log("Longest Phrase is " + longestPhrase(data)+ '\n');
}


// var input = ["longest phrase", "long phrase", "longer phrase"];
// console.log(longestPhrase(input));

// input = ["aa","abc", "h", "def", "re", "f","querty", "dog"]
// console.log(longestPhrase(input));



// var x = {name: "Lou", age: 24};
// var y = {name: "Carlo", age: 23};
// var z = {name: "Ryan", age: 23};


// console.log(keyMatch(x,y));
// console.log(keyMatch(y,z));
// console.log(keyMatch(x,z));