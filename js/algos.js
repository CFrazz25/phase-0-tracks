//release 0

// We need to find the longest word out of a group of words. 
// We will first run through the group of words measuring the length of each word.
// When we run through the group of words, we will compare each word with the previous word.
// We'll start with the first word getting compared, and set that value to a string. If the 
// next word in the group of words is bigger than that first word, then that first word will
// become the new word that's bigger than it, in that set value. With each new word looping through
// the group of words, if that new word is bigger than the new longest word, it will replace it once 
// again. If it's not bigger, it will move onto the next word. 

var words = ["long phrase","longest phrase", "longer phrase"];
var new_words = ["chris", "amy", "francisco"];
var teams = ["blackhawks", "cubs", "white sox", "fire", "ahahahahahahaha"]

function longest_word (array_of_words) {
 var first_word = array_of_words[0]
 for (var i = 0; i < array_of_words.length ; i++) {
  if (array_of_words[i].length > first_word.length) {
     first_word = array_of_words[i];
 
  }
 
 }
 return (first_word);
}


console.log(longest_word(words));
console.log(longest_word(new_words));
console.log(longest_word(teams));


//release 1

// We have two objects, both with a key and value. We need to loop through
// each object. We will have two objects submitted in the function. It will
// loop through both of them. If they have a key-value pair, it will return true
// and break the loop. If they have a key pair, but not a value pair with that key,
// or no match at all, it will return false. 

function showObject(obj, obj2) {
  
  for (var p in obj) {
    if (obj[p] == obj2[p] ){
    return true;
  }
  
  }
     return false;         
  }

person1 = 
{name: "Steven", age: 54}; 
person2 = 
{name: "Thamira", age: 54};
console.log(showObject(person1, person2));


person1 = 
{name: "Steven", age: 54}; 
person2 = 
{name: "Thamira", age: 5};
console.log(showObject(person1, person2));

//release 2
// We want a function that takes an integer to help with length. 
// We want this integer to build and return an array of strings of the given length.
// The words can be anything, non- words if you want to call it. 
// The words will be of random varying length, 1 letter minimum, 10 letter maximum.
// We can use a function that generates random numbers. 



