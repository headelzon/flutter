import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Tab1 extends StatefulWidget {
  Tab1({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _Tab1State();
}

class _Tab1State extends State<Tab1> {
  bool dobry = true;
  Widget dobryZbyszek = Image.asset(
    'assets/images/zbyszek_dobry.png',
    height: 200,
  );
  Widget zlyZbyszek = Image.asset(
    'assets/images/zbyszek_zly.JPG',
    height: 200,
  );

  static AudioPlayer _audioPlayer = AudioPlayer();
  static AudioCache _player =
      AudioCache(prefix: 'sounds/', fixedPlayer: _audioPlayer);
  List<String> files = List.from(FILES, growable: false);

  int index = 0;


  @override
  void initState() {
    super.initState();
    files.shuffle();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          GestureDetector(
            child: Container(
              child: dobry ? dobryZbyszek : zlyZbyszek,
            ),
            onTap: onZbyszekPressed,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Text('Dobry wieczór, kochani',
                style: TextStyle(fontSize: 26.0)),
          )
        ],
        mainAxisAlignment: MainAxisAlignment.center,
      ),
    );
  }

  void onZbyszekPressed() {
    String selectedFile = files.elementAt(index);

    setState(() {
      dobry = false;
      index = index == (files.length - 1) ? 0 : index + 1;
    });

    _player.play(selectedFile);
    _audioPlayer.onPlayerCompletion.listen((event) => {
          setState(() {
            dobry = true;
          })
        });
  }
}

const FILES = [
  'chuj_z_wami.mp3',
  'dramat.mp3',
  'ja_mam_to_w.mp3',
  'jeszcze_dzisiaj.mp3',
  'karakan.mp3',
  'mam_w_dupie.mp3',
  'nie_warto.mp3',
  'odbieraj_telefon.mp3',
  'pisowskie_smiecie.mp3',
  'platforma_was_tak.mp3',
  'sumlinski.mp3',
  'szkoda_gadac.mp3',
  'trzeba_was.mp3',
  'ziobro_zobaczysz.mp3'
];
