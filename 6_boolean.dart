void main(){
  
  int int1 = 10;  int int2 = 20; int int3 = 5;
  //var compare =  int1 < int2; print(compare);
  // var compare = int1<int2 && int1 < int3; print(compare);
  var compare = int1<int2 || int1 < int3; print(compare);

  var doorClose = "yes";
  var beltOn = "yes";
  var carStart = "";

  if(doorClose == "yes" && beltOn == "yes"){
    carStart = "yes";
  }else {
    carStart = "no";
  }
// ternary conditional operator
doorClose == "yes" && beltOn == "yes" ? carStart = "yes" : carStart = "no";

// var ballColor = "purple";
// var ball = "";
// if(ballColor == "blue"){
//   ball = "blue"; print("blue ball");
// }else if (ballColor == "red"){
//   ball = "red";print("red ball");
// }else if( ballColor == "green"){
//   ball = "green"; print("green ball");
// }else {
//   print("buy a ball of any color");
// }

// switch(ballColor){
//   case "blue":
//     print("blue ball"); break;
//   case "red":
//     print("red ball"); break;
//   case "green":
//     print("green ball"); break;
//   default: print("buy a ball of any color"); break;
// }

for(var i = 0; i<10; i++){
  print(i);
}
for(var i = 0; i<10; i++){
  if(i%2 == 0){
    print("${i} is even");
  }
  else 
    continue;
}

var addToTen = 0;
var sum = 0;
while(addToTen <10){
  sum += addToTen;
  addToTen ++;
}
print(sum);
int countTo100 = 0;
while(true){
  countTo100 ++;
  if( countTo100 == 100){
    print(countTo100); break;
  } 
}
}

