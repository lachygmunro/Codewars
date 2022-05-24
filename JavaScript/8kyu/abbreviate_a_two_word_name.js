// Write a function to convert a name into initials. This kata strictly takes two words with one space in
// between them.

// The output should be two capital letters with a dot separating them.


function abbrevName(name){
  let names = name.split(" ")
  return (names[0][0] + "." + names[1][0]).toUpperCase()
}
