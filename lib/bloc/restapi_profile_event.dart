part of 'restapi_profile_bloc.dart';

abstract class RestapiProfileEvent extends Equatable {
  const RestapiProfileEvent();
}

class ButtonClicked extends RestapiProfileEvent{

  @override
  List<Object?> get props => [];

}
