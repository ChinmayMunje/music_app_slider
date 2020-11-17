import 'package:flutter/material.dart';
import 'package:music_flutter_app/data/SongData.dart';


class MusicHerited extends InheritedWidget {
  final SongData songData;
  final bool isLoading;

  MusicHerited({this.songData, this.isLoading});

  static MusicHerited of(BuildContext context){
    // ignore: deprecated_member_use
    return context.inheritFromWidgetOfExactType(MusicHerited);
  }

  @override
  bool updateShouldNotify(MusicHerited oldWidget) =>
      songData != oldWidget.songData || isLoading != oldWidget.isLoading;
}