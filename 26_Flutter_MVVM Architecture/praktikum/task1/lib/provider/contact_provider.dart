import 'package:flutter/material.dart';
import 'package:task1/services/contact_api.dart';

class ContactProvider extends ChangeNotifier {
  final ContactApi api = ContactApi();
  List contakBook = [];

  void addContact(
    List newContact,
  ) {
    contakBook.add(newContact);
    notifyListeners();
  }
}
