void main() {
  String fullname = myName("David", "Brewu");
  print(fullname);
  print(myName("David", "Brewu", "Akwasi"));

  print(product(5,2));
  
  print(doorShut());
  print(doorCondition(doorShut));

  print(max_of_two(9, 10));
  print(max_of_three(9, 10, 11));
}

// String myName(String firstName, lastName){
//   String fullName = firstName + " " + lastName;
//   return fullName;
// }
String myName(String firstName, lastName, [String? middleName]){
  String fullName = "";
  if(middleName == null)
     fullName = firstName + " " + lastName;
  else  fullName = firstName + " " + middleName + " " + lastName;
  return fullName;
}

Function product = (int a, b){return a*b;};
Function product1 = (int a, b) => a*b;

enum doorStatus {
  SHUT,
  OPEN,
}
final doorShut = (){
  switch(doorStatus.SHUT){
    case doorStatus.SHUT: return true;
    case doorStatus.OPEN: return false;
  }
};

String doorCondition (Function doorShut){
  if(doorShut.call()){
    return "DOOR CLOSED";
  
  }else{
    return "DOOR OPENED";
  }
}


max_of_two(int x, y) {
  if (x == y)
    return x;
  else if (x > y)
    return x;
  else
    return y;
}

max_of_three(x,y,z){
 return max_of_two(x, max_of_two(y, z));
}