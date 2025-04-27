import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:good_navbar/content/bloc/nav_bloc.dart';
import 'package:good_navbar/content/bloc/nav_event.dart';
import 'package:good_navbar/content/bloc/nav_page.dart';
import 'package:good_navbar/content/bloc/nav_state.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class ContentPageHandler extends StatefulWidget {
  const ContentPageHandler({super.key});

  @override
  State<ContentPageHandler> createState() => _ContentPageHandlerState();
}

class _ContentPageHandlerState extends State<ContentPageHandler> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavBloc, NavState>(
      builder: (context, state) {
        final NavBloc _navBloc = context.read<NavBloc>();

        return Scaffold(
          body: NavPage.values[state.navPage.index].page,
          bottomNavigationBar: Container(
            padding: const EdgeInsets.only(top: 25),
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 52, 31, 89),
              borderRadius: BorderRadius.all(Radius.elliptical(18, 18)),
            ),
            child: SafeArea(
              top: false,
              child: GNav(
                selectedIndex: state.navPage.index,
                onTabChange: (index) {
                  final selectedPage = NavPage.values[index];
                  _navBloc.add(NavPagePressed(selectedPage));
                },
                backgroundColor: const Color.fromARGB(255, 52, 31, 89),
                color: Colors.grey,
                activeColor: Colors.white,
                gap: 16,
                padding: const EdgeInsets.only(left: 40, right: 40, bottom: 25),
                tabs:
                    NavPage.values
                        .map(
                          (page) => GButton(icon: page.icon, text: page.title),
                        )
                        .toList(),
              ),
            ),
          ),
        );
      },
    );
  }
}
