import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:good_navbar/registration/bloc/page_event.dart';
import 'package:good_navbar/registration/bloc/page_state.dart';

class PageBloc extends Bloc<PageEvent, PageState> {
  PageBloc() : super(PageState(PageIndexes.signIn)) {
    on<SignInPressed>((event, emit) {
      emit(PageState(state.pageIndex = PageIndexes.signIn));
    });
    on<SignUpPressed>((event, emit) {
      emit(PageState(state.pageIndex = PageIndexes.signUp));
    });
    on<HomePageTriggered>((event, emit) {
      emit(
        PageState(state.pageIndex = PageIndexes.homePage),
      );
    });
  }
}
