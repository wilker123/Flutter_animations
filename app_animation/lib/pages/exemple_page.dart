import 'package:flutter/material.dart';

import 'delivery_page.dart';

class Exemple extends StatefulWidget {
  const Exemple({ Key? key }) : super(key: key);

  @override
  _ExempleState createState() => _ExempleState();
}

class _ExempleState extends State<Exemple> {

  open(pagina){
    Navigator.push(context, MaterialPageRoute(builder: pagina));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text("Exemples"),
      ),
      body: Column(
        children: [
          ListTile(
            title: const Text("Exemple delivery"),
            onTap: () => open((_) => const DeliveryPage())
          ),
          const Divider(),
        ],
      ),
    );
  }
}