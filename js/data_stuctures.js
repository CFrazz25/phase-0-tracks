//release 0
var colors = ["blue", "orange", "green", "yellow"];
var names = ["Edward", "Chris", "Christina", "Tabitha"];

colors.push("black");
names.push("Henry");

//release 1
thing = {};
for(var i = 0; i < colors.length; i++){
  thing[names[i]] = colors[i];
}

 console.log(thing)

 //release 2:
 function Car(model, year, isFast) {
  
  console.log("Our new car:", this);
  

this.model = model;
this.year = year;
this.isFast = isFast;


this.race = function() {
  console.log("ZOOM!"); 
    
  };
  
  console.log("Ready, Set, Go!.....");
}

console.log("Let's build a car ...");

var anotherCar = new Car("Toyota Camry", 2012, true);
console.log(anotherCar);
console.log("Our car can race:");
anotherCar.race();
console.log("-~-~-");

console.log("Let's build another car ...");
var yetAnotherCar = new Car("Prius C class", 2016, false);
console.log(yetAnotherCar.model);
console.log("This new car can race, too:");
yetAnotherCar.race();
console.log("-~-~-")

console.log("Let's build another car ...");
var ourThirdCar = new Car("Tesla", 1874, false);
console.log(ourThirdCar.model);
console.log("This new car cannot race....");
console.log("-~-~-")


//release 3
// 1. If you wanted to loop through the keys and values of an object, how would you do that? 
// (There are a few ways to accomplish this, and some gotchas that can happen depending on your approach.)

// You can use a for...in loop. You then need to use a .hasOwnPropery function in an if statement inside the loop
// looking for the key-value pair. Can also use a .each function similar to ruby, but with diff. syntax.
// Here's a good resource I found: https://coderwall.com/p/_kakfa/javascript-iterate-through-object-keys-and-values


// 2. Are there advantages to using constructor functions to create objects? 
// Disadvantages? 

// If you want to have multiple instances, it'd be better to use constructor vs literal functions. Also,
// if you want to add behavior, it's better to use constructor.
// Here was a good resource where I reviewed this question: http://stackoverflow.com/questions/4859800/should-i-be-using-object-literals-or-constructor-functions





