part of 'error.dart';

abstract class Failure extends Equatable {
  ///Abstract class to define a failure, if the
  ///subclasses have some properties, they`ll get passed to this
  ///constructor so that Equatable can perform value comparison
  final String? title;
  final int? codeError;
  final String? message;

  const Failure({this.title, this.message, this.codeError});

  @override
  List<Object?> get props => [title, message, codeError];

  ///Old Methot
  // const Failure([this.properties = const <dynamic>[]]);
  // final List<dynamic> properties;
  // @override
  // List<Object?> get props => properties;
}

///When the response status is different than 200
class ServerFailure extends Failure {
  ///When the response status is different than 200
  const ServerFailure(this.statusCode) : super();

  final int statusCode;
  @override
  List<Object> get props => [statusCode];
}

class NetworkFailure extends Failure {
  ///When the app can't connect to the server
  const NetworkFailure();
}

class TimeOutFailure extends Failure {
  ///When the server is slow to respond
  const TimeOutFailure();
}

class AnotherFailure extends Failure {
  ///When an unknown exception occurs
  const AnotherFailure({super.message = '', super.codeError = 0});

  @override
  List<Object> get props => [codeError ?? 0, message ?? ''];
}

class DataNull extends Failure {
  ///When the data is it Null
  const DataNull();
}

class AuthFailure extends Failure {
  ///When an unknown exception occurs
  const AuthFailure();
}

class BadRequest extends Failure {
  ///When the data already exists
  // final int? codeError;
  // final String? message;
  // final String? descriptionCode;

  const BadRequest({super.title, super.message, super.codeError});

  @override
  List<Object> get props => [title ?? '', message ?? '', codeError ?? 0];
}

// abstract class Failured extends Equatable {
//   final int? codeError;
//   final String? message;
//   final String? descriptionCode;

//   const Failured({this.message, this.codeError, this.descriptionCode});

//   @override
//   List<Object?> get props => [message, codeError, descriptionCode];
// }

// class NetworkFaildddure extends Failured {
//   const NetworkFaildddure(
//     int? codeError,
//     String? message,
//     String? descriptionCode,
//   ) : super(
//           codeError: codeError,
//           descriptionCode: descriptionCode,
//           message: message,
//         );

//   // @override
//   // List<Object?> get props => [
//   //       message,
//   //       errorCode,
//   //       descriptionCode,
//   //     ];
// }
