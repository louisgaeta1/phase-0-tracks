// Longest phrase Function
// define a function that takes in an array of phrases
// sort array by length of the string
// return the last item in the array

function longestPhrase(array){
	var sorted = array.sort(function(a,b){return a.length - b.length});
	return sorted.pop();
}


var input = ["longest phrase", "long phrase", "longer phrase"];
console.log(longestPhrase(input));

input = ["aa","abc", "h", "def", "re", "f","querty", "dog"]
console.log(longestPhrase(input));