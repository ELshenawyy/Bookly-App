import 'package:dio/dio.dart';

abstract class Failure {
  final String errMessage;

  Failure(this.errMessage);
}

class ServerFailure extends Failure {
  ServerFailure(super.errMessage);

  factory ServerFailure.fromDioError(DioException dioError) {
    switch (dioError.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure("connectionTimeout with api server");
      case DioExceptionType.sendTimeout:
        return ServerFailure("sendTimeout with api server");
      case DioExceptionType.receiveTimeout:
        return ServerFailure("receiveTimeout with api server");
      case DioExceptionType.badCertificate:
        return ServerFailure("badCertificate with api server");
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
            dioError.response!.statusCode!, dioError.response!.data);
      case DioExceptionType.cancel:
        return ServerFailure("Request to api server was canceled");
      case DioExceptionType.connectionError:
        return ServerFailure("No internet connection");

      case DioExceptionType.unknown:
        return ServerFailure("Unexpected Error");
      default:
        return ServerFailure("Oops there was an error");
    }
  }

  factory ServerFailure.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailure('Your request not found,try again later');
    } else if (statusCode == 500) {
      return ServerFailure('Internal server error,try again later');
    } else {
      return ServerFailure("Oops there was an error");
    }
  }
}
