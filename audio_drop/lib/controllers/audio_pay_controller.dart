import 'package:get/get.dart';
import 'package:just_audio/just_audio.dart';
import 'package:on_audio_query_forked/on_audio_query.dart';

class AudioPayController extends GetxController {
  final AudioPlayer audioPlayer = AudioPlayer();

  SongModel? _nowPlaying;
  int _index = 0;
  bool _isPlaying = false;
  Duration? _audioDuration;

  SongModel? get nowPlaying => _nowPlaying;

  bool get isPlaying => _isPlaying;

  Duration? get audioDuration => _audioDuration;

  int get index => _index;

  Future<void> play(SongModel audio, index) async {
    if (_nowPlaying != null && _nowPlaying!.id == audio.id) {
      _isPlaying = true;
      update();
      await audioPlayer.play();
    } else {
      _nowPlaying = audio;
      _index = index;
      await audioPlayer.stop();
      await audioPlayer
          .setAudioSource(AudioSource.uri(Uri.parse(_nowPlaying!.uri!)));
      _audioDuration = audioPlayer.duration;
      _isPlaying = true;
      update();
      await audioPlayer.play();
    }
  }

  Future<void> pause() async {
    _isPlaying = false;
    update();
    await audioPlayer.pause();
  }
}
