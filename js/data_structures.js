var addProperties = function(names, colors){
	object = {};
	for (var i = 0; i < names.length; i++){
		object[names[i]] = colors[i];
	}
	return object;
};

var colors = ["Blue", "Red", "Green", "Black"];
var names = ["Ed", "Jimbo", "Lou", "Rich"];


colors.push("Yellow");
names.push("George");

var result = addProperties(names,colors);

console.log(result);



