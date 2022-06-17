void main(){
  int myInt = 10;
  double pi = 3.14;
  bool myBool = true;

  // myBool = null;
  // pi = null;

  int? int1;
  String? myString = null;
  print(int1);

  // ?? - if-null operator
  String? message;
  final text = message ?? "Error";
  print(text);

// ?. 
  int? age;
  print(age?.isNegative);
  print(isNegative(-8));

  // ! - null assertion operator
  bool? isNegative1 = isNegativeOrNull(-20);
  print(isNegative1);
  bool isNegative2 = isNegativeOrNull(null) ?? false;
  print(isNegative2);

  // ?[] null aware index operator
  List? mylist;
  print(mylist?[2]);
 
}

bool isNegative (int? variable){
  if(variable == null){
    return false;
  }else return variable.isNegative;
}
bool? isNegativeOrNull (int? variable){
   return variable?.isNegative;
}