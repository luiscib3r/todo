import 'dart:async';

import 'package:flutter/services.dart';

/// Entry point for the ContactPicker plugin.
///
/// Call [selectContact] to bring up a dialog where the user can pick a contact
/// from his/her address book.
class ContactPicker {
  static const MethodChannel _channel = MethodChannel('contact_picker');

  /// Brings up a dialog where the user can select a contact from his/her
  /// address book.
  ///
  /// Returns the [Contact] selected by the user, or `null` if the user canceled
  /// out of the dialog.
  Future<Contact?> selectContact() async {
    final result = await _channel.invokeMethod('selectContact');
    if (result == null) {
      return null;
    }
    return Contact.fromMap(result as Map<String, dynamic>);
  }
}

/// Represents a contact selected by the user.
class Contact {
  const Contact({
    required this.fullName,
    required this.phoneNumber,
  });

  factory Contact.fromMap(Map<String, dynamic> map) => Contact(
        fullName: map['fullName'] as String,
        phoneNumber: PhoneNumber.fromMap(
          map['phoneNumber'] as Map,
        ),
      );

  /// The full name of the contact, e.g. "Dr. Daniel Higgens Jr.".
  final String fullName;

  /// The phone number of the contact.
  final PhoneNumber phoneNumber;

  @override
  String toString() => '$fullName: $phoneNumber';
}

/// Represents a phone number selected by the user.
class PhoneNumber {
  const PhoneNumber({required this.number, required this.label});

  factory PhoneNumber.fromMap(Map<dynamic, dynamic> map) => PhoneNumber(
        number: map['number'] as String,
        label: map['label'] as String,
      );

  /// The formatted phone number, e.g. "+1 (555) 555-5555"
  final String number;

  /// The label associated with the phone number, e.g. "home" or "work".
  final String label;

  @override
  String toString() => '$number ($label)';
}
