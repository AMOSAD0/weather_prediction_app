abstract class AuthEvent {}

class SignUpEvent extends AuthEvent {
  final String fullName;
  final String email;
  final String password;

  SignUpEvent({required this.fullName,required this.email, required this.password});
}
