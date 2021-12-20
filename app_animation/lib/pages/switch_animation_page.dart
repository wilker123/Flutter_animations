import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
class SwitchAnimationPage extends StatefulWidget {
  const SwitchAnimationPage({Key? key}) : super(key: key);

  @override
  _SwitchAnimationPageState createState() => _SwitchAnimationPageState();
}

class _SwitchAnimationPageState extends State<SwitchAnimationPage> with TickerProviderStateMixin {

  late final AnimationController _controller;
  bool checked = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
    _controller.duration = Duration(milliseconds: 600);
  }

  @override
  void dispose(){
    super.dispose();

    _controller.dispose();
  }

  toggle(){
    (!checked) ? _controller.forward() : _controller.reverse();
    checked = !checked;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Opção animada"),
        elevation: 0,
      ),
      body: Center(
        child: GestureDetector(
          onTap: toggle,
          child: Container(
            width: 100,
            child: Lottie.asset("lottie/63587-switch.json", controller: _controller),
          ),
        ),
      ),
    );
  }
}
