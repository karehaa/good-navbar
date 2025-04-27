import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:good_navbar/content/bloc/nav_event.dart';
import 'package:good_navbar/content/bloc/nav_page.dart';
import 'package:good_navbar/content/bloc/nav_state.dart';

class NavBloc extends Bloc<NavEvent, NavState> {
  NavBloc() : super(const NavState(NavPage.navHome)) {
    on<NavPagePressed>((event, emit) {
      emit(NavState(event.newPage));
    });
  }
}
