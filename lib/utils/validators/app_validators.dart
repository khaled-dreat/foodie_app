import 'package:validators/validators.dart' as validators;

class AppValidators {
  // * message Error
  static final String messageEnterValue = "AppLangKey.enterValue.tr()";
  static final String messageCorrectEmail = "AppLangKey.errorEmail.tr()";
  static final String messageCorrectFullName = "FullName";
  static final String messageCorrectPass = "AppLangKey.errorPass.tr()";
  static final String messageConfirmPass = "AppLangKey.errorConfirmPass.tr()";

  static String? isEmail(String? value) => templateValidator(
      value, !validators.isEmail(value ?? ''), messageCorrectEmail);
  static String? checkFullName(String? value) => templateValidator(
      value, !validators.isLength(value ?? '', 0), messageCorrectFullName);

  static String? checkPass(String? value) => templateValidator(
      value, !validators.isLength(value ?? '', 6, 12), messageCorrectPass);

  static String? checkConfirmPass(String? value, String? pass) =>
      templateValidator(
          value, !validators.equals(value?.trim(), pass), messageConfirmPass);

  // * validator
  static String? templateValidator(
      String? value, bool condition, String errorMsg) {
    if (value?.isEmpty ?? true) {
      return messageEnterValue;
    } else if (condition) {
      return errorMsg;
    }
    return null;
  }
}
