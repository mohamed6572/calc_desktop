import 'package:calc_for_shop/Layout/cubit/cubit.dart';
import 'package:calc_for_shop/Layout/cubit/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../shared/components/components.dart';

class Home_Layout extends StatefulWidget {
  @override
  State<Home_Layout> createState() => _Home_LayoutState();
}

class _Home_LayoutState extends State<Home_Layout> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppStates>(
      listener: (context, state) {},
      builder: (context, state) {
        var cubit = AppCubit.get(context);
        return Scaffold(
            body: Column(
          children: [
            Row(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height,
                  width: 200,
                  color: Colors.grey.shade400,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 40,
                      ),
                      defultButton(text: 'الرئيسية', function: () {
                        cubit.ChangeBotomIndex(0);
                      }),
                      SizedBox(
                        height: 20,
                      ),
                      defultButton(text: 'الادويه', function: () {
                        cubit.ChangeBotomIndex(1);
                      }),
                      SizedBox(
                        height: 20,
                      ),
                      defultButton(text: 'الشركات', function: () {
                        cubit.ChangeBotomIndex(2);
                      }),
                      SizedBox(
                        height: 20,
                      ),
                      defultButton(text: 'اضافة صنف', function: () {
                        cubit.ChangeBotomIndex(3);
                      }),

                      Spacer(),
                      Container(
                          height: 90,
                          width: 90,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.green.shade300,
                          ),
                          child: Center(
                            child: IconButton(
                              icon: Icon(Icons.download),
                              onPressed: () {},
                            ),
                          )),
                      SizedBox(
                        height: 30,
                      )
                    ],
                  ),
                ),
                cubit.Screens[cubit.currentIndex]
              ],
            )
          ],
        ));
      },
    );
  }
}
