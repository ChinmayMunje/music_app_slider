import 'package:flutter/material.dart';
import 'package:music_flutter_app/widgets/Categories.dart';
import 'package:music_flutter_app/widgets/MusicList.dart';


class MusicHome extends StatefulWidget {
  @override
  _MusicHomeState createState() => _MusicHomeState();
}

class _MusicHomeState extends State<MusicHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: 280,
          color: Colors.white,
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text('Your Songs',
                  style: TextStyle(
                    color: Colors.black87,fontWeight: FontWeight.w600, fontSize: 24.0,
                  ),
                ),
              ),
              SizedBox(height: 5.0),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Material(
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  elevation: 10.0,
                  shadowColor: Colors.grey,
                  child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: 'Search your favorite song',
                      hintStyle: TextStyle(color: Colors.black26),
                      suffixIcon: Icon(Icons.search_rounded, color: Colors.black26),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        borderSide: BorderSide.none,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
              ),

              Categories(),

              MusicList(),

            ],
          ),
        ),
      ),
    );
  }
}
