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
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 120, bottom: 24),
              child: Lottie.network("https://assets7.lottiefiles.com/packages/lf20_dn3xsjbz.json"),
            ),
            const Text(
              "José está a caminho",
              style: TextStyle(fontSize: 32, letterSpacing: -1.2, fontWeight: FontWeight.w600),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 12),
              child: Text("Seu pedido deve chegar em 10 minutos", style: TextStyle(fontSize: 15),),
            ),
          ],
        ),
      ),
    );
  }
}