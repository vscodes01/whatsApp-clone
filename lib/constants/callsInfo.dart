import 'package:flutter/cupertino.dart';

class CallsInfo {
  String? name, day, time, profilePicture;
  bool? received, success;
  
  CallsInfo({required this.name, required this.day, required this.time, required this.profilePicture, required this.received, required this.success});
}

List<CallsInfo> callsInfo = [
  CallsInfo(name: 'Rahul', day: 'Yesterday,', time: '19:18', profilePicture: 'assets/images/varun-photo.jpg', received: true, success: true),
  CallsInfo(name: 'Rahul', day: '17 April,', time: '19:18', profilePicture: 'assets/images/varun-photo.jpg', received: true, success: false),
  CallsInfo(name: 'Rahul', day: 'Yesterday,', time: '19:18', profilePicture: 'assets/images/varun-photo.jpg', received: false, success: true),
  CallsInfo(name: 'Rahul', day: 'Yesterday,', time: '19:18', profilePicture: 'assets/images/varun-photo.jpg', received: true, success: false),
  CallsInfo(name: 'Rahul', day: 'Yesterday,', time: '19:18', profilePicture: 'assets/images/varun-photo.jpg', received: false, success: false),
  CallsInfo(name: 'Rahul', day: 'Yesterday,', time: '19:18', profilePicture: 'assets/images/varun-photo.jpg', received: false, success: true),
  CallsInfo(name: 'Rahul', day: 'Yesterday,', time: '19:18', profilePicture: 'assets/images/varun-photo.jpg', received: true, success: true),
  CallsInfo(name: 'Rahul', day: 'Yesterday,', time: '19:18', profilePicture: 'assets/images/varun-photo.jpg', received: true, success: false),
  CallsInfo(name: 'Rahul', day: 'Yesterday,', time: '19:18', profilePicture: 'assets/images/varun-photo.jpg', received: false, success: true),
  CallsInfo(name: 'Rahul', day: 'Yesterday,', time: '19:18', profilePicture: 'assets/images/varun-photo.jpg', received: true, success: true),
  CallsInfo(name: 'Rahul', day: 'Yesterday,', time: '19:18', profilePicture: 'assets/images/varun-photo.jpg', received: true, success: false),
  CallsInfo(name: 'Rahul', day: 'Yesterday,', time: '19:18', profilePicture: 'assets/images/varun-photo.jpg', received: true, success: true),
  CallsInfo(name: 'Rahul', day: 'Yesterday,', time: '19:18', profilePicture: 'assets/images/varun-photo.jpg', received: true, success: false),
];