import 'package:flutter/material.dart';
import 'package:lista_contatos/helpers/contact_helper.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ContactHelper helper = ContactHelper();

  @override
  void initState() {
    super.initState();

    Contact contact = Contact.empty();
    contact.nome = "Fransoar";
    contact.email = "fransoar@hotmail.com";
    contact.phone = "12345678";
    contact.image = "image";
    helper.deleteContact(null);
    print(contact.toMap());
    helper.saveContact(contact);
    helper.getAllContacts().then((contacts) {
      print(contacts);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
