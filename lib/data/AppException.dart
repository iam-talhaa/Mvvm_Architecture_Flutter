class Appexception implements Exception {
  final _message;
  final _prefix;

  Appexception([this._prefix, this._message]);

  String tostring() {
    return '$_prefix $_message';
  }
}

class FetchDataException extends Appexception {
  FetchDataException([String? message])
    : super(message, "Error During Communication");
}

class BadrequestException extends Appexception {
  BadrequestException([String? message]) : super(message, "Invalid Request");
}

class UNAuthorisedException extends Appexception {
  UNAuthorisedException([String? message])
    : super(message, "UnAuthorised Request");
}

class InvalidInputException extends Appexception {
  InvalidInputException([String? message]) : super(message, "Invalid Input");
}
