void main() {
  String fullname = myName("David", "Brewu");
  print(fullname);
  print(myName("David", "Brewu", "Akwasi"));

  print(product(5, 2));

  print(doorShut());
  print(doorCondition(doorShut));

  print(max_of_two(9, 10));
  print(max_of_three(9, 10, 11));

  // testing the solutions to the questions
  //Question 1
  print(productOfList([1, 2, 3, 4, 5, 6, 7, 8, 9, 10]));

  //Question 2
  print(primeNumber(13));
}

// String myName(String firstName, lastName){
//   String fullName = firstName + " " + lastName;
//   return fullName;
// }
String myName(String firstName, lastName, [String? middleName]) {
  String fullName = "";
  if (middleName == null)
    fullName = firstName + " " + lastName;
  else
    fullName = firstName + " " + middleName + " " + lastName;
  return fullName;
}

Function product = (int a, b) {
  return a * b;
};
Function product1 = (int a, b) => a * b;

enum doorStatus {
  SHUT,
  OPEN,
}
final doorShut = () {
  switch (doorStatus.SHUT) {
    case doorStatus.SHUT:
      return true;
    case doorStatus.OPEN:
      return false;
  }
};

String doorCondition(Function doorShut) {
  if (doorShut.call()) {
    return "DOOR CLOSED";
  } else {
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

max_of_three(x, y, z) {
  return max_of_two(x, max_of_two(y, z));
}

// answers to questions on functions

// Question 1 - Write a Dart function to multiply all the numbers in a list.
int productOfList(List<int> list) {
  int product = 1;
  list.forEach((element) {
    product *= element;
  });
  return product;
}

// Question 2 - Write a Dart function that takes a number as a parameter
//and check the number is prime or not.
bool? primeNumber(int n) {
  if(!n.isNegative && n != 0){
    if (n == 1)
      return false;
    else if (n == 2)
      return true;
    else {
      for (var i = 2; i < n; i++) {
        if (n % i == 0) return false;
      }
      return true;
    }
  }else return null;
}
