part of 'restapi_profile_bloc.dart';

abstract class RestapiProfileState extends Equatable {
  const RestapiProfileState();
}

class RestapiProfileInitial extends RestapiProfileState {
  @override
  List<Object> get props => [];
}

class RestapiProfileLoading extends RestapiProfileState {
  @override
  List<Object> get props => [];
}

class RestapiProfileSuccess extends RestapiProfileState {
  final ProfileApiModel model;
  const RestapiProfileSuccess (this.model);
  @override
  List<Object> get props => [model];
}

class RestapiProfileError extends RestapiProfileState {
     final String msg ;
    const RestapiProfileError (this.msg);
  @override
  List<Object> get props => [msg];
}


