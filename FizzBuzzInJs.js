//Create a prgram Where if the Number is Divisible by 3 print "Fizz" and if divisible by 5 print "Buzz" and by 3 and 5 print "FizzBuzz" else print the number 
//To this till 100

for(var i=1;i<=100;i++){
  if( i % 15 === 0){
    console.log("FizzBuzz")
  }
  else if(i % 3 === 0) {
    console.log("Fizz");
  }
  else if(i % 5 === 0) {
    console.log("Buzz")
  }
  else{
    console.log(i)
  }
}

//The Output will be :
//1 2 Fizz 4 Buzz Fizz 7 8 Fizz Buzz 11 Fizz 13 14 FizzBuzz  and so on ... till 100
