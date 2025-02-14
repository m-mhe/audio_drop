import 'dart:io';
import 'package:get/get.dart';
import 'package:on_audio_query_forked/on_audio_query.dart';
import 'package:permission_handler/permission_handler.dart';

class AudioFetchController extends GetxController {
  final OnAudioQuery _audioQuery = OnAudioQuery();

  List<SongModel> _audios = [];

  List<SongModel> get audios => _audios;

  List<PlaylistModel> _playlists = [];

  List<PlaylistModel> get playlists => _playlists;

  List<AlbumModel> _albums = [];

  List<AlbumModel> get albums => _albums;

  Future<bool> _requestPermission() async {
    if (Platform.isAndroid) {
      return await Permission.audio.request().isGranted ||
          await Permission.storage.request().isGranted;
    } else if (Platform.isIOS) {
      return await Permission.mediaLibrary.request().isGranted;
    }
    return false;
  }

  Future<void> fetchAudios() async {
    bool permission = await _requestPermission();
    if (!permission) {
      return;
    } else {
      _audios = await _audioQuery.querySongs(sortType: SongSortType.DATE_ADDED);
      _audios = _audios.reversed.toList();
      update();
    }
  }

  Future<void> fetchPlaylist() async {
    bool permission = await _requestPermission();
    if (!permission) {
      return;
    } else {
      _playlists = await _audioQuery.queryPlaylists(
          sortType: PlaylistSortType.DATE_ADDED);
      update();
    }
  }

  Future<void> fetchAlbum() async {
    bool permission = await _requestPermission();
    if (!permission) {
      return;
    } else {
      _albums =
          await _audioQuery.queryAlbums(sortType: AlbumSortType.NUM_OF_SONGS);
      update();
    }
  }
}
