class HomeFailure {
  final String message;
  HomeFailure._({this.message = ''});

  factory HomeFailure.server({String message = ''}) =>
      HomeFailure._(message: message);

  factory HomeFailure.unexpected() => HomeFailure._();
}
