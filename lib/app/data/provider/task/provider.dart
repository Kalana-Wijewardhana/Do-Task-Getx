import 'dart:html';

import 'package:get/get.dart';
import 'package:to_do_app/app/data/services/storage/services.dart';

class TaskProvider {
  StorageService _storage = Get.find<StorageService>();
}