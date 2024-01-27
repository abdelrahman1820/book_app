import 'package:dio/dio.dart';

abstract class Failure {
  final String errorMessage;

  Failure({required this.errorMessage});
}

class ServerFailure extends Failure {
  ServerFailure({required String errorMessage})
      : super(errorMessage: errorMessage);

  factory ServerFailure.fromDioError(DioError dioError) {
    switch (dioError.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure(errorMessage: "Connection Timeout with ApiServer");
      case DioExceptionType.sendTimeout:
        return ServerFailure(
            errorMessage: "Connection sendtimeout with ApiServer");
      case DioExceptionType.receiveTimeout:
        return ServerFailure(
            errorMessage: "Connection receicetimeout with ApiServer");
      case DioExceptionType.badCertificate:
        return ServerFailure(errorMessage: "Bad certificate error occurred");
      case DioExceptionType.badResponse:
        return ServerFailure.fromrespnse(
            dioError.response!.statusCode!, dioError.response!.data!);
      case DioExceptionType.cancel:
        return ServerFailure(errorMessage: "Request Cancel");
      case DioExceptionType.connectionError:
        return ServerFailure(errorMessage: "Connection error");
      case DioExceptionType.unknown:
        if (dioError.message!.contains("SocketException")) {
          return ServerFailure(errorMessage: "No internet connection");
        }
        return ServerFailure(errorMessage: "Unexpected error");
      default:
        return ServerFailure(errorMessage: "error message");
    }
  }
  factory ServerFailure.fromrespnse(int statuscode, dynamic response) {
    if (statuscode == 400 || statuscode == 401 || statuscode == 403) {
      return ServerFailure(errorMessage: response["error"]["message"]);
    } else if (statuscode == 404) {
      return ServerFailure(
          errorMessage: "Your Request not found Please try again");
    } else if (statuscode == 500) {
      return ServerFailure(errorMessage: "internal server error");
    } else {
      return ServerFailure(errorMessage: "Opps there was an error ");
    }
  }
}
