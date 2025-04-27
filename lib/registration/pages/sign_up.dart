import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:good_navbar/registration/bloc/page_bloc.dart';
import 'package:good_navbar/registration/bloc/page_event.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    final PageBloc pageBloc = context.read<PageBloc>();

    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "SIGN UP",
              style: GoogleFonts.inter(
                color: Colors.black,
                fontSize: 24,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed:
                  () => pageBloc.add(HomePageTriggered()),
              child: Text(
                "home page",
                style: GoogleFonts.inter(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed:
                  () => pageBloc.add(SignInPressed()),
              child: Text(
                "sign in",
                style: GoogleFonts.inter(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
