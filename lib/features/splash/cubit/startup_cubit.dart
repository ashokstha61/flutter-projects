import 'package:ecommerce_app/common/bloc/common_state.dart';
import 'package:ecommerce_app/common/services/shared_pref_services.dart';
import 'package:ecommerce_app/features/splash/model/startup_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class StartUpCubit extends Cubit<CommonState> {
  StartUpCubit() : super(CommonInitialState());
  fetchData() async {
    emit(CommonLoadingState());
    await Future.delayed(Duration(seconds: 3));
    bool isFirstTime = await SharedPrefServices.isFirstTime;
    emit(
      CommonSuccessState(
        items: StartUpData(
          isFirstTime: isFirstTime,
          isLoggedIn: false,
        ),
      ),
    );
  }
}
