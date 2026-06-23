import 'dart:math';
import 'package:audioplayers/audioplayers.dart';
import 'package:dice/conttainer.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final player = AudioPlayer();
  int rano = 1;
  double scale = 1.2;

  int randNo() {
    return Random().nextInt(6) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 100),
          child: Column(
            children: [
              Text(
                'D i c e',
                style: GoogleFonts.aDLaMDisplay(
                  color: Colors.white,
                  fontSize: 50,
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 15,bottom: 10),
                child: Conttainer(rno: rano, scale: scale),
              ),
              Text(
                rano.toString(),
                style: GoogleFonts.akatab(
                  color: Colors.white,
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(20, 55),
                  elevation: 20,
                  shadowColor: Colors.white
                ),
                onPressed: () async {
                  await player.stop();
                  await player.play(AssetSource('audio/dice-142528.mp3'));

                  setState(() {
                    rano = randNo();
                    scale = 0.5;
                  });
                  await Future.delayed(Duration(milliseconds: 100));
                  setState(() {
                    scale = 1.2;
                  });
                },
                child: Text(
                  'Tap to roll',
                  style: GoogleFonts.aDLaMDisplay(
                    fontSize: 25,
                    color: Colors.red
                   ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
