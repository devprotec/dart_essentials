void main (){
  var myNumberPositive = 10;
  var myNumberNegative = -10.49;

  // print(myNumberNegative.isNaN);
  // print(myNumberNegative.isFinite);
  // print(myNumberPositive.isInfinite);
  // print(myNumberPositive.sign);
  // print(myNumberNegative.sign);
  // print(myNumberNegative.toInt());
  // print(myNumberPositive.toDouble());
  print(myNumberPositive.toString());
  print(myNumberNegative.abs());
  print(myNumberNegative.floor());
  print(myNumberNegative.ceil());
  print(myNumberNegative.round());
  print(myNumberPositive.remainder(5));

  String try1 = "2022";
  String try2 = "if";

  // print(num.parse(try1));
  // print(num.parse(try2));

  print(num.tryParse(try1));
  print(num.tryParse(try2));
}