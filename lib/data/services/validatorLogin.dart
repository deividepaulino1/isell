import 'package:flutter/cupertino.dart';

class ValidatorLogin {
  ValidatorLogin._();

  static FormFieldValidator validaEmail(String message) {
    return (value) {
      if (value != 'daniel.manoel@djsystem.com.br'){
        return message;
      }
      return null;

    };
  }
  static FormFieldValidator validaSenha(String message) {
    return (value) {
      if (value != '123456'){
        return message;
      }
      return null;

    };
  }
}