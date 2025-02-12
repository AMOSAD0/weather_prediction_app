import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_prediction_app/features/signup/bloc/auth_event.dart';
import 'package:weather_prediction_app/features/signup/bloc/auth_state.dart';
import 'package:weather_prediction_app/features/signup/domin/use_case/auth_use_case.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthUseCase authUseCase;

  AuthBloc(this.authUseCase) : super(AuthInitial()) {
    on<SignUpEvent>((event, emit) async {
      emit(AuthLoading());
      try {
        final user = await authUseCase.signUp(event.fullName,event.email, event.password);
        emit(AuthSuccess(user: user!));
      } catch (e) {
        emit(AuthFailure(message: e.toString().replaceFirst("Exception: ", "")));
      }
    });
  }
}
