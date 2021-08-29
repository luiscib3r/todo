import 'package:fluttercontactpicker/fluttercontactpicker.dart';

Future<String> getContactPhoneNumber() async {
  final contact = await FlutterContactPicker.pickPhoneContact();

  return contact.phoneNumber
      .toString()
      .replaceAll('+53', '')
      .replaceAll(' ', '')
      .replaceAll(RegExp('([a-zA-Z])'), '')
      .replaceAll('()', '');
}
