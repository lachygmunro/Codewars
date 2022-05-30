// Write a function which calculates the average of the numbers in a given list.

// Note: Empty arrays should return 0.

function find_average(array) {
  let total = 0;
  if (array.length === 0){
    return 0
  } else {
    array.forEach((num) => {
    total += num
    })
  }
  return total / array.length;
}
