import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:good_navbar/content/pages/content_page_handler.dart';
import 'package:good_navbar/registration/bloc/page_bloc.dart';
import 'package:good_navbar/registration/bloc/page_state.dart';
import 'package:good_navbar/registration/pages/sign_in.dart';
import 'package:good_navbar/registration/pages/sign_up.dart';

class PageRouter extends StatelessWidget {
  const PageRouter({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PageBloc, PageState>(
      builder: (context, state) {
        if (state.pageIndex.isSignIn) {
          return const SignIn();
        } else if (state.pageIndex.isSignUp) {
          return const SignUp();
        } else if (state.pageIndex.isHomePage) {
          return const ContentPageHandler();
        } else {
          return Container();
        }
      },
    );
  }
}
