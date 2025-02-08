import 'dart:io';
import 'package:get/get.dart';
import 'package:just_audio/just_audio.dart';
import 'package:on_audio_query_forked/on_audio_query.dart';

class AudioPayController extends GetxController{

  final AudioPlayer _audioPlayer = AudioPlayer();

  SongModel? _nowPlaying = null;
  bool _isPlaying = false;

  SongModel? get nowPlaying => _nowPlaying;
  bool get isPlaying => _isPlaying;

  Future<void> play(SongModel audio) async{
    _nowPlaying = audio;
    _isPlaying = true;
    update();
    await _audioPlayer.setAudioSource(AudioSource.uri(Uri.parse(_nowPlaying!.uri!)));
    await _audioPlayer.play();
  }
  Future<void> pause() async{
    _isPlaying = false;
    update();
    await _audioPlayer.pause();
  }
}