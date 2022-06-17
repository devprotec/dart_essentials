import 'package:http/http.dart' as http;

Future<int> getNumberOfUsers() {
  // put actual async fuction here
  return Future.delayed(const Duration(seconds: 10), () => 10);
}

void main() async {
  //print(await getNumberOfUsers());
  print(await fetchFromDatabase());
}

Future<dynamic> fetchFromDatabase() async{
  var response = await http
      .post(Uri.parse("http://davidbrewu.atwebpages.com/retrieve_speed.php"));
  
  if(response.statusCode == 200){
    return response.body;
  }
}
