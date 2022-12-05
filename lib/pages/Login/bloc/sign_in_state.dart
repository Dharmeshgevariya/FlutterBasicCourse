abstract class SignInState {}

class SignInInitialState extends SignInState {}

class SignInvalidState extends SignInState {}

class SignInErrorState extends SignInState {
  final String errorMessage;
  SignInErrorState(this.errorMessage);
}

class SignInLodingState extends SignInState {}
