import 'package:mvvm_architectute_flutter_/data/response/status.dart';

class ApiResponse<T> {
  Status? _status;
  T? Data;
  String? message;

  ApiResponse([this.Data, this._status, this.message]);

  ApiResponse.loading() : _status = Status.LOADING;
  ApiResponse.Completed() : _status = Status.COMPLETED;
  ApiResponse.Error() : _status = Status.ERROR;

  String tostring() {
    return "Status: $_status \n Data : $Data \n Message : $message ";
  }
}
