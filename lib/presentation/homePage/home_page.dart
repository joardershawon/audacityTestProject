import 'package:audacity_test_project/application/homepage/bloc/homepage_bloc.dart';
import 'package:audacity_test_project/injection.dart';
import 'package:flutter/material.dart';

import 'package:audacity_test_project/presentation/homePage/home_body.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: BlocProvider<HomepageBloc>(
          create: (context) => getIt!<HomepageBloc>()
            ..add(
              HomepageEvent.started(),
            ),
          child: HomePageBody(size: size),
        ),
      ),
    );
  }
}
