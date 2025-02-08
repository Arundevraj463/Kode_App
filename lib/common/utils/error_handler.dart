import 'package:webinar/common/enums/error_enum.dart';

import '../components.dart';

class ErrorHandler {
  showError(ErrorEnum type, dynamic jsonResponse,
      {String? title, bool readMessage = false}) {
    if (!readMessage) {
      List<String> errors = [];

      jsonResponse['data']?['errors']?.forEach((k, v) {
        errors.add(v.first);
      });

      if (errors.isNotEmpty) {
        String titleCaseText = errors.first.split(' ').map((word) {
          return word.isEmpty
              ? word
              : word[0].toUpperCase() + word.substring(1).toLowerCase();
        }).join(' ');
        showSnackBar(type, null, desc: titleCaseText);
      }
    } else {
      String titleCaseText = jsonResponse['message'].split(' ').map((word) {
        return word.isEmpty
            ? word
            : word[0].toUpperCase() + word.substring(1).toLowerCase();
      }).join(' ');
      showSnackBar(type, null, desc: titleCaseText);
    }
  }
}
