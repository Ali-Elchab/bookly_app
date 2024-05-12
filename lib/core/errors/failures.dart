import 'package:dio/dio.dart';

abstract class Failure {
  final String errMessage;

  const Failure(this.errMessage);
}

class ServerFailure extends Failure {
  ServerFailure(super.errMessage);

  factory ServerFailure.fromDioException(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure('Connection timeout with ApiServer');

      case DioExceptionType.receiveTimeout:
        return ServerFailure('Receive timeout with ApiServer');

      case DioExceptionType.sendTimeout:
        return ServerFailure('Connection timeout');
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
            dioException.response!.statusCode!, dioException.response!.data);
      case DioExceptionType.cancel:
        return ServerFailure('Request cancelled');
      case DioExceptionType.unknown:
        if (dioException.message!.contains('SocketException')) {
          return ServerFailure('No internet connection');
        }
      case DioExceptionType.badCertificate:
        return ServerFailure('Unknown error');
      case DioExceptionType.connectionError:
        return ServerFailure('Unknown error');
    }
    return ServerFailure('Unknown error');
  }

  factory ServerFailure.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailure('Not found, please try again later');
    } else if (statusCode == 500) {
      return ServerFailure('Internal server error');
    } else {
      return ServerFailure('Unknown error');
    }
  }
}
