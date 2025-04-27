enum PageIndexes { signIn, signUp, homePage }

extension PageIndexesx on PageIndexes {
  bool get isSignIn => this == PageIndexes.signIn;
  bool get isSignUp => this == PageIndexes.signUp;
  bool get isHomePage => this == PageIndexes.homePage;
}

class PageState {
  PageIndexes pageIndex;

  PageState(this.pageIndex);
}
