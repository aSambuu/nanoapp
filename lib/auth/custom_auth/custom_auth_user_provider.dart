import 'package:rxdart/rxdart.dart';

import 'custom_auth_manager.dart';

class NanoAuthUser {
  NanoAuthUser({required this.loggedIn, this.uid});

  bool loggedIn;
  String? uid;
}

/// Generates a stream of the authenticated user.
BehaviorSubject<NanoAuthUser> nanoAuthUserSubject =
    BehaviorSubject.seeded(NanoAuthUser(loggedIn: false));
Stream<NanoAuthUser> nanoAuthUserStream() =>
    nanoAuthUserSubject.asBroadcastStream().map((user) => currentUser = user);
