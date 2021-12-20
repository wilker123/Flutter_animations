import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
class DeliveryPage extends StatefulWidget {
  const DeliveryPage({ Key? key }) : super(key: key);

  @override
  _DeliveryPageState createState() => _DeliveryPageState();
}

class _DeliveryPageState extends State<DeliveryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        color: Colors.red[900],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: const [
            Padding(
              padding: EdgeInsets.only(top: 120, bottom: 24),
              child: Text("Animação **"),
            ),
            Text(
              "José está a caminho",
              style: TextStyle(fontSize: 32, letterSpacing: -1.2, fontWeight: FontWeight.w600),
            ),
            Padding(
              padding: EdgeInsets.only(top: 12),
              child: Text("Seu pedido deve chegar em 10 minutos", style: TextStyle(fontSize: 15),),
            ),
          ],
        ),
      ),
    );
  }
}