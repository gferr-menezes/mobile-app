class InputValidators {
  InputValidators._();

  static String? requiredValidator(String? value) {
    if (value!.isEmpty) {
      return 'Obrigatório';
    }
    return null;
  }

  static String? emailValidator(String value) {
    const pattern = r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$';
    final regExp = RegExp(pattern);
    if (!regExp.hasMatch(value)) {
      return 'Inválido';
    }
    return null;
  }
}
