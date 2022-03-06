import 'package:flutter/material.dart';
import 'package:audioplayers/src/audio_cache.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "xylophone",
      home: Xylo(),
    );
  }
}
class Xylo extends StatefulWidget {
  const Xylo({Key? key}) : super(key: key);

  @override
  _XyloState createState() => _XyloState();
}

class _XyloState extends State<Xylo> {
  @override
  void PlayAudio(int i){
    final player = AudioCache();
    player.play("note$i.wav");
  }
  Expanded musicTile(Color color,int noteNum){
   return  Expanded(
      child: TextButton(onPressed: () {PlayAudio(noteNum) ; },
        style: TextButton.styleFrom(backgroundColor:color),
        child: const Text(" "),
      ),
    );
  }
  Widget build(BuildContext context) {
    return SafeArea(child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        musicTile(Colors.red, 1),
        musicTile(Colors.orange, 2),
        musicTile(Colors.yellow, 3),
        musicTile(Colors.green, 4),
        musicTile(Colors.blue, 5),
        musicTile(Colors.indigo, 6),
        musicTile(Colors.purple, 7),


      ],
    ));
  }
}

