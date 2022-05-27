import 'package:get/get.dart';
import 'package:localisation/controller.dart';

class LocaleString extends Translations {
  MyController controller = Get.put(MyController());
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          'title': 'Localisation',
          'counter': 'Counter is ',
        },
        'hi_IN': {
          'title': 'स्थानीयकरण',
          'counter': 'काउंटर है ',
        },
        'sp_SP': {
          'title': 'localización',
          'counter': 'contador es ',
        }
      };
}
