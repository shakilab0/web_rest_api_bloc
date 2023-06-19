

import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:web_rest_api_bloc/webservice.dart';

import '../models/profile_api_model.dart';

part 'restapi_profile_event.dart';
part 'restapi_profile_state.dart';

class RestapiProfileBloc extends Bloc<RestapiProfileEvent, RestapiProfileState> {
  final _service = WebService();
  RestapiProfileBloc() : super(RestapiProfileInitial()) {
    on<ButtonClicked>((event, emit) => _callprofileApi(event,emit));

  }

  _callprofileApi(ButtonClicked event, Emitter<RestapiProfileState> emit) async{
    emit(RestapiProfileLoading());
   final response =await  _service.callprofileApi();
   if(response == null){
     emit (const RestapiProfileError('error'));
   }else{
     var body = jsonDecode(response.body);
     print('body- $body');
     var data = ProfileApiModel.fromJson(response.body);
     print(data);
     emit (RestapiProfileSuccess(data));
   }
  }
}
