import 'dart:io';

import 'package:flutter/material.dart';
import 'package:music_flutter_app/data/SongData.dart';
import 'package:music_flutter_app/widgets/InheritedWidget.dart';
import 'package:music_flutter_app/widgets/Playing.dart';

class MusicList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<MaterialColor> _colors = Colors.primaries;
    final lstScreen = MusicHerited.of(context);
    SongData songData = lstScreen.songData;
    return ListView.builder(
      itemCount: songData.songs.length,
      itemBuilder: (context, int index) {
        var s = songData.songs[index];
        final MaterialColor color = _colors[index % _colors.length];
        var artFile = s.albumArt == null ? null : new File.fromUri(Uri.parse(s.albumArt));
        return ListTile(
          title: Text(s.title),
          subtitle: Text("By ${s.artist}",
          style: Theme.of(context).textTheme.caption,
          ),
          trailing: CircleAvatar(
            radius: 5.0,
            child: IconButton(
              alignment: Alignment.center,
              icon: Icon(Icons.play_arrow),
              color: Colors.deepPurpleAccent,
              onPressed: (){
              },
            ),
          ),
          onTap: (){
            songData.setCurrentIndex(index);
            Navigator.push(context, MaterialPageRoute(builder: (context) => Playing()));
          },
        );

      }
    );
  }
}


Widget avatar(File f, String title, MaterialColor color){
  return Material(
    borderRadius: BorderRadius.circular(20),
    elevation: 5.0,
    child: f != null
      ? new Image.file(f, fit: BoxFit.cover)
      : new CircleAvatar(child: Icon(Icons.music_note_sharp,color: Colors.white),
    backgroundColor: color,
    ),
  );
}