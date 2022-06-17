void main (){
  var fixedLengthList = List.filled(5, 4);

  var myList = [30, 8, 34];
  var intList = <int>[5];
  var stringList = <String>[];

  // print(myList.first);
  // print(myList.last);
  // print(myList.reversed.toList());
  // print(intList.single);

  //add and addAll
  intList.add(10); print(intList);
  intList.addAll(myList); print(intList);

  // any and every
var result = intList.any((element) => element>=5);
print(result);
var result1 = intList.every((element) => element>=6);
print(result1);

print(intList.elementAt(2));

intList.forEach((element) {
  print(element);
});

print(intList.indexOf(0));

intList.insert(0, -2);
print(intList);

var newList = [100,200,300];
intList.insertAll(2, newList); print(intList);

//remove
print(intList.remove(200));
print(intList.removeAt(5)); print(intList);
print(intList.removeLast());
intList.removeRange(0, 2); print(intList);

//replace 
intList.replaceRange(0, 2, [2,3]); print(intList);

intList.sort(); print(intList);

var stringList1 = ["David", "SAM", "Samuel"];
stringList1.sort((a, b)=>a.length.compareTo(b.length));
print(stringList1);

print(intList.sublist(1,3));


}