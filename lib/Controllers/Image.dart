import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerController extends GetxController {
  RxString pathof = "".obs;
  Future getImage() async {
    final ImagePicker _pick = ImagePicker();
    final image = await _pick.pickImage(source: ImageSource.gallery);
    if (image != null) {
      pathof.value = image.path.toString();
      // file = image.path;
    }
  }
}
