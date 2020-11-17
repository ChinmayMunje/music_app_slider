import 'dart:io';
import 'package:flute_music_player/flute_music_player.dart';
import 'package:flutter/material.dart';
import 'package:music_flutter_app/widgets/InheritedWidget.dart';


class MusicDrawer extends StatefulWidget {
  @override
  _MusicDrawerState createState() => _MusicDrawerState();
}

class _MusicDrawerState extends State<MusicDrawer> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    var lstScreen = MusicHerited.of(context).songData;
    var screenIndex = lstScreen.currentIndex;
    Song song = lstScreen.songs[((screenIndex == null) || (screenIndex < 0)) ? 0 : lstScreen.currentIndex];
    var f = song.albumArt == null
    ? null
    : new File.fromUri(Uri.parse(song.albumArt));
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            padding: EdgeInsets.zero,
            child: f != null
             ? new Image.file(
        f,
      fit: BoxFit.cover,
        gaplessPlayback: true,
      )
                :new Image.network('https://images.pexels.com/photos/1190297/pexels-photo-1190297.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
            fit: BoxFit.fill,
              scale: 5.0,
              gaplessPlayback: true,
            ),

            ),
        ],
      ),
    );
  }
}
