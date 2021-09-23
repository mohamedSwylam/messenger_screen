/*
import 'package:flutter/material.dart';
import 'package:flutter_app11/modules/counter/cubit/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cubit/cubit.dart';

class CounterScreen extends StatelessWidget{
  int counter = 1;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => CounterCubit(),
      child: BlocConsumer <CounterCubit,CounterStates> (
        listener: (context,state){
          if(state is CounterMinusState){
            //print('minus state ${state.counter}');
          }
          if(state is CounterPlusState) {
            //print('plus state ${state.counter}');
            }
        },
        builder: (context,state){
          return Scaffold(
            appBar: AppBar(
              title: Text('Counter Screen'),
            ),
            body: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      onPressed: () {
                       CounterCubit.get(context).minus();
                      },
                      child: Text('MINUS'),
                    ),
                    Text('${CounterCubit.get(context).counter}',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 50),),
                    TextButton(
                      onPressed: () {
                        CounterCubit.get(context).plus();
                      },
                      child: Text('PLUS'),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
*/
