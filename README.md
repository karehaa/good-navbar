# good_navbar

This is a small project to try and implement BLoC along with google_nav_bar which is a package that gives some help on making a good modern bottom navigation bar.

## What i learn from this project?

I learn mostly about how to use BLoC on page redirection and navbar page navigation, it is such an interesting small project because now i learned that BLoC runs by requiring 3 files, that is:

- xxxx_bloc.dart
- xxxx_event.dart
- xxxx_state.dart

Where the _bloc.dart have the responsibility to have the logic on how things is working/changin, _event.dart have the responsibility to tell on "what" to do without any logic inside it, and _state.dart is responsible for showing what is the current state of the thing we're working on (like page or indexes).

Other than that i also learn about implementing Enums with this, along with Equatable where it compares two thing by the content of it and not the address of it, all the while exploring the awesome package of google_nav_bar.

## TL;DR:
- BLoC requires filename_bloc.dart, filename_event.dart, filename_state.dart
- google_nav_bar navigation have a lot to do with page indexes
- Enum can have a constructor which in this case really helps to declare what page each enum is associated with
- Equatable is useful to help with comparing two things by its content (by field) rather than its address in the memory.