import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  late double width;
  late double height;

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.red,
      /**
       * AppBar
       */
      appBar: AppBar(
        title: const Text("Champion of Africa"),
        backgroundColor: Colors.red,
      ),
      body: Container(
        width: width,
        height: height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/alahly_logo.png"),
            SizedBox(
              height: height * 0.1,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                minimumSize: const Size(89, 45),
              ),
              onPressed: () async {
                final player = AudioPlayer();
                await player.play(AssetSource("sounds/audio.mp3"));
              },
              child: const Text(
                "Play",
                style: TextStyle(fontSize: 20),
              ),
            )
          ],
        ),
      ),
    );
  }
}
