class Student {
  Student(this.firstName, this.lastName, this.grade);

  final String firstName;
  final String lastName;
  int grade;
  
  String get forPrinting => "$firstName $lastName: $grade";
  
}

void main(List<String> args) {
  Student david = Student("David", "Brewu", 85);
  Student sam = Student("Christian", "Sam", 95);
  print(david.forPrinting);
  print(sam.forPrinting);
}