import 'package:equatable/equatable.dart';

class MovieError extends Equatable {
  final int status_code;
  final String status_message;
  final bool success;
  MovieError({
    required this.status_code,
    required this.success,
    required this.status_message,
  });
  factory MovieError.fromJson(Map<String, dynamic> json) => MovieError(
        status_code: json['status_code'],
        status_message: json['status_message'],
        success: json['success'],
      );
  @override
  // TODO: implement props
  List<Object?> get props => [status_code, status_message, success];
}
