import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingsInfo {
  String? title, subtitle;
  Icon icon;

  SettingsInfo(
      {required this.title, required this.subtitle, required this.icon});
}

List<SettingsInfo> settingsInfo = [
  SettingsInfo(
      title: 'Account',
      subtitle: 'Security notifications, change number',
      icon: const Icon(
        Icons.key_rounded,
        size: 30,
        color: Colors.grey,
      )),
  SettingsInfo(
      title: 'Privacy',
      subtitle: 'Block contacts, disappearing messages',
      icon: const Icon(
        Icons.lock,
        size: 30,
        color: Colors.grey,
      )),
  SettingsInfo(
      title: 'Avatar',
      subtitle: 'Create, edit, profile photo',
      icon: const Icon(
        Icons.person_2_outlined,
        size: 30,
        color: Colors.grey,
      )),
  SettingsInfo(
      title: 'Chats',
      subtitle: 'Theme, wallpapers, chat history',
      icon: const Icon(
        Icons.chat_rounded,
        size: 30,
        color: Colors.grey,
      )),
  SettingsInfo(
      title: 'Notifications',
      subtitle: 'Message, group & call tones',
      icon: const Icon(
        Icons.notifications,
        size: 30,
        color: Colors.grey,
      )),
  SettingsInfo(
      title: 'Storage and Data',
      subtitle: 'Network usage, auto-download',
      icon: const Icon(
        Icons.data_saver_off_rounded,
        size: 30,
        color: Colors.grey,
      )),
  SettingsInfo(
      title: 'App language',
      subtitle: 'English (phone\'s language)',
      icon: const Icon(
        Icons.language,
        size: 30,
        color: Colors.grey,
      )),
  SettingsInfo(
      title: 'Help',
      subtitle: 'Help centre, contact us, privacy policy',
      icon: const Icon(
        Icons.help,
        size: 30,
        color: Colors.grey,
      )),
  SettingsInfo(
      title: 'Invite a friend',
      subtitle: '',
      icon: const Icon(
        Icons.group,
        size: 30,
        color: Colors.grey,
      )),
];
