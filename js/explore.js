//  We will be taking a string and reversing it. First we will want to separate the word
// and then we will take the letters of each word and print them out backwards. We will then recombine
// the word, but in reverse order. 

function reverse(word) {
  
  var new_word = "";
  
  for (var i = word.length - 1; i >= 0; i--) { 
    
    new_word += word[i];
    
  }
  return new_word
  
  
}
console.log(reverse("hello"));
var reversed_word = ""
reversed_word = reverse("angry");
console.log(reversed_word);
var word = prompt("type a word to be reversed.");
word = (reverse(word));
console.log(word);
var r = confirm("Do you want us to reverse another word?");
if (r === true) {
    var new_word = prompt("cool, type another word to be reversed.");
new_word = (reverse(new_word));
console.log(new_word);
} else {
    console.log("Fine, be that way.... =(");
}


