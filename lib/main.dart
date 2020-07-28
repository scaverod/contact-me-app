import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart' as UrlLauncher;


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  String phone = '+34 654 300 200';
  String mail = 'yourmail@mail.com';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightBlue,
        body: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                  radius: 80.0,
                  backgroundImage: AssetImage('images/person.png'),
                ),
                Text(
                  'Your Name',
                  style: TextStyle(
                    fontFamily: 'Gill Sans Bold',
                    fontSize: 40.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'SOFTWARE DEVELOPER',
                  style: TextStyle(
                    fontFamily: 'Gill Sans',
                    color: Colors.teal.shade100,
                    fontSize: 20.0,
                    letterSpacing: 2.5,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 20.0,
                  width: 150.0,
                  child: Divider(
                    color: Colors.white,
                    thickness: 1.0,

                  ),
                ),
                Card(
                    margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                    child: InkWell(
                      onTap: () => UrlLauncher.launch('tel://$phone'),
                      child: ListTile(
                        leading: Icon(
                          Icons.phone,
                          color: Colors.blueAccent,
                        ),
                        title: Text(
                          phone,
                          style: TextStyle(
                            color: Colors.blueAccent.shade700,
                            fontFamily: 'Gill Sans',
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                    )
                ),
                Card(
                    margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                    child: InkWell(
                      onTap: () => UrlLauncher.launch('mailto:$mail'),
                      child: ListTile(
                        leading: Icon(
                          Icons.email,
                          color: Colors.blueAccent,
                        ),
                        title: Text(
                          mail,
                          style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.blueAccent.shade700,
                              fontFamily: 'Gill Sans'),
                        ),
                      ),
                    )
                )
              ],
            )),
      ),
    );
  }
}
