import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get/get.dart';
import 'package:podsriver/constants/colors.dart';
import 'package:podsriver/provider/home_screen.dart';


void main () async{

 runApp(ProviderScope(child: Home()));
}


class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final height =MediaQuery.of(context).size.height;
    final width =MediaQuery.of(context).size.width;
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          useMaterial3: true,
          fontFamily: 'Raleway',
          colorSchemeSeed: AppColors.mainColor,
          scaffoldBackgroundColor: AppColors.backGroundColor,
        ),
     home: HomeScreen(),

    );
  }
}

