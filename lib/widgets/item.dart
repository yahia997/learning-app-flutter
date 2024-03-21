import 'package:flutter/material.dart';
import 'package:flutter_application_2/models/model.dart';
import 'package:audioplayers/audioplayers.dart';

class Item extends StatelessWidget {
  Item({super.key, required this.data});
  final Model data;

  final player = AudioPlayer();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: data.color,
      child: Row(
        children: [
          data.image != ""
              ? Container(
                  color: const Color(0xfffff3db),
                  margin: const EdgeInsets.only(right: 15),
                  child: Image.asset(
                    data.image,
                    width: 85,
                    height: 85,
                  ),
                )
              : const SizedBox(
                  width: 15,
                ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                data.jpname,
                style: const TextStyle(color: Colors.white, fontSize: 20),
              ),
              Text(
                data.enname,
                style: const TextStyle(color: Colors.white, fontSize: 20),
              ),
            ],
          ),
          const Spacer(
            flex: 1,
          ),
          IconButton(
              // play sound
              onPressed: () {
                  player.setReleaseMode(ReleaseMode.stop);
                  WidgetsBinding.instance.addPostFrameCallback((_) async {
                  await player.setSource(AssetSource(data.sound));
                  await player.resume();
                });
              },
              icon: const Icon(
                Icons.play_arrow,
                color: Colors.white,
              )),
        ],
      ),
    );
  }
}
