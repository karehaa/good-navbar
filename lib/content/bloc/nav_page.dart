import 'package:flutter/material.dart';
import 'package:good_navbar/content/pages/home_page.dart';
import 'package:good_navbar/content/pages/profile_page.dart';
import 'package:good_navbar/content/pages/search_page.dart';

enum NavPage {
  navHome(0, 'Home', Icons.home, HomePage()),
  navSearch(1, 'Search', Icons.search, SearchPage()),
  navProfile(2, 'Profile', Icons.person, ProfilePage());

  final int indexPage;
  final String title;
  final IconData icon;
  final Widget page;

  const NavPage(
    this.indexPage,
    this.title,
    this.icon,
    this.page,
  );
}
