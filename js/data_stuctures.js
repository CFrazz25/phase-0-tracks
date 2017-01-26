var colors = ["blue", "orange", "green", "yellow"];
var names = ["Edward", "Chris", "Christina", "Tabitha"];

colors.push("black");
names.push("Henry");


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