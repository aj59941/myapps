import 'package:flutter/material.dart';
class Profile extends StatefulWidget {
  const Profile({Key? Key}) : super(key: Key);

  @override
  State<Profile> createState() => ProfileState();
}

class ProfileState extends State<Profile>{

  @override
  Widget build(BuildContext context) {
return Scaffold(
  backgroundColor: Colors.black,
  body: Center(
    child: Container(
        height: 300,
        width: 400,
        child: Image(image: NetworkImage('https://media.istockphoto.com/id/1300512215/photo/headshot-portrait-of-smiling-ethnic-businessman-in-office.jpg?s=1024x1024&w=is&k=20&c=tq1C4HoZraH5szwBZqUf7sGVp7EPO-VB8PVbAPjagqY='))),
  ),

);

  }
}
