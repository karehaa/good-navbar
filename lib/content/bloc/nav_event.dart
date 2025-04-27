import 'package:equatable/equatable.dart';
import 'package:good_navbar/content/bloc/nav_page.dart';

abstract class NavEvent extends Equatable {
  const NavEvent();

  @override
  List<Object> get props => [];
}

class NavPagePressed extends NavEvent {
  final NavPage newPage;

  const NavPagePressed(this.newPage);

  @override
  List<Object> get props => [newPage];
}
