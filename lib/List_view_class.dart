import 'package:flutter/material.dart';
class UserModel{
   final int? id;
   final String? name;
   final String? phone;
  UserModel({
    @required this.phone,
    @required this.id,
    @required this.name
});
}
class Model extends StatelessWidget {

  List<UserModel> users=[
    UserModel(
        name: "Abdelrhman Elswalhi",id: 1,phone: "01554696389"),
    UserModel(
        name: "Ahmed Elswalhi",id: 2,phone: "012234567"),
    UserModel(
        name: "Ali Elswalhi",id: 3,phone: "01553345556"),
    UserModel(
        name: "kheled Elswalhi",id: 4,phone: "0155464354"),
    UserModel(
        name: "mona Elswalhi",id: 5,phone: "01143445354"),
    UserModel(
        name: "folan Elswalhi",id: 6,phone: "01435546546"),
    UserModel(
        name: "3lan Elswalhi",id: 7,phone: "0454353434"),
    UserModel(
        name: "hh Elswalhi",id: 8,phone: "015435345654"),

  ];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: const Text("Users"),),
      body:Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView.separated(itemBuilder: (context,index)=>data(users[index]), separatorBuilder: (context,index)=>Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20,
          vertical: 10),
          child: Container(
            height: 1,
            width: double.infinity,
            color: Colors.grey,
          ),
        ), itemCount: users.length),
      ) ,
    );
  }
}
Widget data(UserModel user)=>Row(
  children: [
    CircleAvatar(radius: 25,
      child: Text("${user.id}",style: TextStyle(fontSize: 25,),),),
    SizedBox(width: 20,),
    Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("${user.name}",style: TextStyle(fontSize: 25,),),
        Text("${user.phone}",style: TextStyle(fontSize: 15,color: Colors.grey),)
      ],
    ),
  ],
);