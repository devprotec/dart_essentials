void main (){
  var map1 = Map(); 
  var map2 = {};
  var map3 = <String, int>{"":2};
  var map4 = <String, String>{"firstName":"David", "surName":"Brewu"};
  var map5 = <String, String>{"age":"30"};

  print(map4.keys.toList());
  print(map4.values.toList());

  map4.addAll(map5); print(map4);

  print(map4.containsKey("firsName"));
  print(map4.containsValue("David"));

  map4.forEach((key, value) { 
    if(key.length<8){
      print(key + ": is shorter than 8 characters");
    }
  });

  map4.putIfAbsent("country", () => "US");
  print(map4);

  map4.remove("surName"); print(map4);

  map4.removeWhere((key, value) => key.length<6);
  print(map4);

  map4.update("country", (value) => "UK");
  print(map4);

  map4.updateAll((key, value) => value.toUpperCase());
  print(map4);


}