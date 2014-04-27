// If we list all the natural numbers below 10 that are multiples of 3 or 5,
// we get 3, 5, 6 and 9. The sum of these multiples is 23.

// Find the sum of all the multiples of 3 or 5 below 1000.

var multiple_of = function (divisor) {
  return function (dividend) {
            return dividend % divisor === 0;
        };
    };

var multiple_of_3 = multiple_of(3);
var multiple_of_5 = multiple_of(6);

var sum = 0,i=0;

for(i=0;i<=1000;i++){
  if (multiple_of_3(i) || multiple_of_5(i)) {
    sum += i;
  }
}

console.log(sum);