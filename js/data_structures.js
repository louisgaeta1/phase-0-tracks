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

function Car(type,color,operational){
	this.type = type;
	this.color = color;
	this.isOperational = operational;

	this.canRev = function (){
		if (this.isOperational){
			console.log("Vroom Vroom");
		}
		else {
			console.log("Whoops!");
		};
	}
}


nissan = new Car ("sedan","white",true);
jeep = new Car ("SUV","black",false);

nissan.canRev();
jeep.canRev();


for (i in result){
	console.log(i + ': ' + result[i] )
};
