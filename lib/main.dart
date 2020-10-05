import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'New WEb Page',
      theme: ThemeData(
       primarySwatch: Colors.green,
      ),
      home: HomePage(),
    );
  }
}
class  HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController controller = TextEditingController();
  String message = "";
  Color themeColor = Colors.blue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: themeColor,
          title: Text("New Web Page"),
        ),
        body: ListView(
          children:<Widget> [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Container(
                height: 600.0,
                color: themeColor,
                child: Center(
                  child: Text(
                    message,
                    style: TextStyle(
                      color:Colors.white,
                      fontSize: 32.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: "cursive",
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: TextField(
                controller: controller,
                maxLength:1000,
                onChanged: (String newValue){
                //  print(newValue);
                  setState(() {
                    message = newValue;
                  });
                },
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                    borderSide : BorderSide(
                      width: 2.0,
                      color: themeColor,
                    ),
                  ),
                  prefixIcon: Icon(
                    Icons.edit,
                    color: themeColor,
                    ),
                  hintText: "Your Message",
                  helperText: "Write your Message",
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: RaisedButton(
                onPressed: () {
                  controller.clear();
                },
                color: themeColor,
                child: Text("Clear the text",style: TextStyle(color: Colors.white,
                ),
                ),
              ),
            ),
            Card(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    InkWell(
                      onTap: () {
                        print("blue color");
                           setState(() {
                          themeColor= Colors.blue;
                        });
                      },
                      child:CircleAvatar(
                        backgroundColor: Colors.blue,
                      ),
                    ),
                     InkWell(
                      onTap: () {
                        setState(() {
                          themeColor= Colors.red;
                        });
                      },
                      child:CircleAvatar(
                        backgroundColor: Colors.red,
                      ),
                    ),
                     InkWell(
                      onTap: () {
                           setState(() {
                          themeColor= Colors.green;
                        });
                      },
                      child: CircleAvatar(
                        backgroundColor: Colors.green,
                      ),
                    ),
                     InkWell(
                      onTap: () {
                           setState(() {
                          themeColor= Colors.orange;
                        });
                      },
                      child: CircleAvatar(
                        backgroundColor: Colors.orange,
                      ),
                    ),
                   
                  ],
                ),
              ),
            ),
          ],
        ),
      );
  }
}
