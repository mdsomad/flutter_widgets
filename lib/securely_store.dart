import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';


// First Add dependencies package -->  flutter_secure_storage: ^6.0.0

// Another way Terminal Run this command --> flutter pub add flutter_secure_storage

// Code is Error


class Securely_Store extends StatefulWidget {
  const Securely_Store({Key? key}) : super(key: key);

  @override
  State<Securely_Store> createState() => _Securely_StoreState();
}

class _Securely_StoreState extends State<Securely_Store> {

final TextEditingController name = TextEditingController();
final TextEditingController email = TextEditingController();
final TextEditingController address = TextEditingController();

FlutterSecureStorage  secureStorage = FlutterSecureStorage();
  
  
@override
  void initState() {
    // TODO: implement initState
    super.initState();
    getvaluess();
  }



  void getvaluess()async{
    name.text = await getvalue("Name");
    email.text = await getvalue("Email");
    address.text = await getvalue("Address");

  }
  

  
 Future<void> save(String keys, String values)async{
    await secureStorage.write(key: keys, value: values);
  }
  


Future<String> getvalue(String key) async{
 return await secureStorage.read(key: key)?? "";
}


void saveDetails(){
  save("Name",name.text);
  save("Eamil",email.text);
  save("Address",address.text);
}
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Securely Store"),
      ),
      body: Container(
        child:Column(
          children: [
            costomTextField("Name",name),
            costomTextField("Email",email),
            costomTextField("Address",address),

            SizedBox(
              height: 15,
            ),

            ElevatedButton(onPressed: (){
             saveDetails();
            }, 
            child: Text("Save Details"))
            
            
          ],
        )),
    );
  }

Widget costomTextField(String text,TextEditingController controller){
     return Padding(
       padding: const EdgeInsets.all(15.0),
       child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: text
        ),
       ),
     );
}

}