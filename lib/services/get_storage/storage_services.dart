import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class StorageService extends GetxService {
  late GetStorage _getStorage;

  static final StorageService _instance = StorageService._internal();
  StorageService._internal();

  factory StorageService() {
    return _instance;
  }

  Future<StorageService> init() async {
    _getStorage = GetStorage();
    return this;
  }

  T read<T>(String key) {
    return _getStorage.read(key);
  }

  Future<void> write(String key, dynamic value) async {
    await _getStorage.write(key, value);
  }
}
