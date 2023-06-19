import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:web_rest_api_bloc/bloc/restapi_profile_bloc.dart';

import 'models/profile_api_model.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('Rest Api'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,//context.read<RestapiProfileBloc>().add(ButtonClicked();
          children: [
            BlocBuilder< RestapiProfileBloc, RestapiProfileState>(
                builder: (context,state){
                  if(state is RestapiProfileInitial){
                    return const Text('Click on button for Api Call');
                  }
                  if( state is RestapiProfileLoading){
                    return const CircularProgressIndicator();
                  }
                  if( state is RestapiProfileSuccess){
                    ProfileApiModel model = state.model;
                    return Text('Name: ${model.data![0].firstName}');
                  }
                  if( state is RestapiProfileError){
                    return Text(state.msg);
                  }
                  return const Text('something is wrong');
                }
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          context.read<RestapiProfileBloc>().add(ButtonClicked());
        },
        tooltip: 'Call Api',
        child: Icon(Icons.add),
      ),
    );
  }
}
