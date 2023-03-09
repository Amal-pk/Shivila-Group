import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shivila_group/App/Splash/Controller/splash_controller.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<SplashController>(context, listen: false);
    WidgetsBinding.instance.addPostFrameCallback(((timeStamp) {
      controller.timer(context);
    }));
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset("asset/logo (1).png"),
            const CircularProgressIndicator(
              color: Colors.purple,
            ),
          ],
        ),
      ),
    );
  }
}
