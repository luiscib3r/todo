import 'package:contact_picker/contact_picker.dart';

final ContactPicker _contactPicker = ContactPicker();

Future<String?> getContactPhoneNumber() async {
  final contact = await _contactPicker.selectContact();

  return contact?.phoneNumber
      .toString()
      .replaceAll('+53', '')
      .replaceAll(' ', '')
      .replaceAll(RegExp('([a-zA-Z])'), '')
      .replaceAll('()', '')
      .replaceAll('-', '');
}
