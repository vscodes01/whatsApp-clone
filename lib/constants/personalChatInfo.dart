class PersonalChatInfo {
  String? message;
  bool? isSender, tail;

  PersonalChatInfo(
      {required this.message, required this.isSender, required this.tail});
}

List<PersonalChatInfo> personalChatInfo = [
  PersonalChatInfo(message: 'Hi', isSender: true, tail: true),
  PersonalChatInfo(
      message: 'Can you plz grab a pepsi for me from the mall nearby?',
      isSender: true,
      tail: false),
  PersonalChatInfo(
      message: 'Sure! What capacity bottle?', isSender: false, tail: true),
  PersonalChatInfo(
      message: 'Any thing will work just don\'t forget it.',
      isSender: true,
      tail: true),
  PersonalChatInfo(
      message: 'reprehenderit qui in ea voluptate',
      isSender: true,
      tail: false),
  PersonalChatInfo(
      message: 'vitae dicta sunt explicabo.', isSender: false, tail: true),
  PersonalChatInfo(
      message: 'magnam aliquam quaerat voluptatem.',
      isSender: false,
      tail: false),
  PersonalChatInfo(
      message: 'reprehenderit qui in ea voluptate',
      isSender: true,
      tail: false),
  PersonalChatInfo(
      message: 'vitae dicta sunt explicabo.', isSender: false, tail: true),
  PersonalChatInfo(
      message: 'magnam aliquam quaerat voluptatem.',
      isSender: false,
      tail: false),
  PersonalChatInfo(
      message: 'reprehenderit qui in ea voluptate',
      isSender: false,
      tail: false),
  PersonalChatInfo(
      message: 'vitae dicta sunt explicabo.', isSender: true, tail: true),
  PersonalChatInfo(
      message: 'magnam aliquam quaerat voluptatem.',
      isSender: false,
      tail: true),
  PersonalChatInfo(
      message: 'reprehenderit qui in ea voluptate',
      isSender: false,
      tail: false),
  PersonalChatInfo(
      message: 'vitae dicta sunt explicabo.', isSender: true, tail: true),
  PersonalChatInfo(
      message: 'reprehenderit qui in ea voluptate',
      isSender: false,
      tail: true),
  PersonalChatInfo(
      message: 'vitae dicta sunt explicabo.', isSender: false, tail: true),
  PersonalChatInfo(
      message: 'magnam aliquam quaerat voluptatem.',
      isSender: false,
      tail: false),
  PersonalChatInfo(
      message: 'reprehenderit qui in ea voluptate',
      isSender: true,
      tail: false),
  PersonalChatInfo(
      message: 'vitae dicta sunt explicabo.', isSender: false, tail: true),
];
