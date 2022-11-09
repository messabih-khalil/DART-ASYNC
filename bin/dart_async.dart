import 'dart:ffi';

void main() {
  connection();
  print("out of async block");
}

// database
Future<String> databaseConnection() {
  return Future.delayed(Duration(seconds: 5), () {
    return "Connected !!!";
  });
}

connection() async {
  print("before connection");
  String? connectionDB = await databaseConnection();
  print(connectionDB);
  print("after connection");
}
