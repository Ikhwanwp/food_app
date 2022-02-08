import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_app/cubit/cubit.dart';
import 'package:food_app/models/models.dart';
import 'package:food_app/ui/pages/pages.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => UserCubit()),
        BlocProvider(create: (_) => FoodCubit()),
        BlocProvider(create: (_) => TransactionCubit())
      ],
      child:
          GetMaterialApp(debugShowCheckedModeBanner: false, home: SignInPage()
              // PaymentPage(
              //   transactions: Transactions(
              //       food: mockFoods[0],
              //       user: mockUser,
              //       quantity: 2,
              //       total: (mockFoods[0].price! * 2 * 1.1).toInt() + 50000),
              // )
              ),
    );
  }
}
