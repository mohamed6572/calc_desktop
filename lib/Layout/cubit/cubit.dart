import 'package:calc_for_shop/Layout/cubit/states.dart';
import 'package:calc_for_shop/modules/company.dart';
import 'package:calc_for_shop/modules/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../modules/add_product.dart';

class AppCubit extends Cubit<AppStates> {
  AppCubit() : super(AppInitialState());

  static AppCubit get(context) => BlocProvider.of(context);

  List<Widget> Screens = [Home(), Company(),Add_Product(),Add_Product()];

  int currentIndex = 0;

  void ChangeBotomIndex(index) {
    currentIndex = index;
    emit(AppchangeScreenState());
  }
}
