import 'package:email_validator/email_validator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_catelog/pages/Login/bloc/sign_in_event.dart';
import 'package:flutter_catelog/pages/Login/bloc/sign_in_state.dart';

class SignInBloc extends Bloc<SignInEvent, SignInState> {
  SignInBloc() : super(SignInInitialState()) {
    on<SignInTextChangedEvent>((event, emit) {
      if (EmailValidator.validate(event.emailValue) == false) {
        emit(SignInErrorState("Please Enter a Valid Email Address"));
      } else if (event.passwordValue.length < 7) {
        emit(SignInErrorState("Please Enter a Valid Password"));
      } else {
        emit(SignInvalidState());
      }
    });

    on<SignInSubmittedEvent>((event, emit) {
      emit(SignInLodingState());
    });
  }
}
