import 'package:equatable/equatable.dart';
import 'package:good_navbar/content/bloc/nav_page.dart';

class NavState extends Equatable {
  final NavPage navPage;

  const NavState(this.navPage);

  @override
  List<Object> get props => [navPage];
}
