import 'package:tinder_cloan/model/UserModel.dart';

class BindUser {
  List<UserModel> _users = [
    UserModel(img: "assets/Mode1.jpg",name: "Angela",age: 30,city: "Hyderabad"),
    UserModel(img: "assets/Mode2.jpg",name: "Annie",age: 25,city: "Mumbai"),
    UserModel(img: "assets/Mode3.jpg",name: "Cheri",age: 30,city: "Bangalore"),
    UserModel(img: "assets/Mode4.jpg",name: "Ivy",age: 28,city: "Pune"),
    UserModel(img: "assets/Mode5.jpg",name: "Haley",age: 19,city: "ahmedabad"),
    UserModel(img: "assets/Mode6.jpg",name: "Jessie",age: 31,city: "Bangalore"),
    UserModel(img: "assets/Mode7.jpg",name: "Julia",age: 35,city: "Pune"),
    UserModel(img: "assets/Mode8.jpg",name: "Lisa",age: 23,city: "hyderabad"),
    UserModel(img: "assets/Mode9.jpg",name: "Michelle",age: 30,city: "ahmedabad"),
  ];

  List<UserModel> get users => _users;

}