import 'dart:async';

import 'custom_auth_user_provider.dart';

export 'custom_auth_manager.dart';

class CustomAuthManager {
  // Auth session attributes
  String? authenticationToken;
  String? refreshToken;
  DateTime? tokenExpiration;
  // User attributes
  String? uid;

  Future signOut() async {
    authenticationToken = null;
    refreshToken = null;
    tokenExpiration = null;
    uid = null;

    // Update the current user.
    nanoAuthUserSubject.add(
      NanoAuthUser(loggedIn: false),
    );
  }

  Future<NanoAuthUser?> signIn({
    String? authenticationToken,
    String? refreshToken,
    DateTime? tokenExpiration,
    String? authUid,
  }) async =>
      _updateCurrentUser(
        authenticationToken: authenticationToken,
        refreshToken: refreshToken,
        tokenExpiration: tokenExpiration,
        authUid: authUid,
      );

  void updateAuthUserData({
    String? authenticationToken,
    String? refreshToken,
    DateTime? tokenExpiration,
    String? authUid,
  }) {
    assert(
      currentUser?.loggedIn ?? false,
      'User must be logged in to update auth user data.',
    );

    _updateCurrentUser(
      authenticationToken: authenticationToken,
      refreshToken: refreshToken,
      tokenExpiration: tokenExpiration,
      authUid: authUid,
    );
  }

  NanoAuthUser? _updateCurrentUser({
    String? authenticationToken,
    String? refreshToken,
    DateTime? tokenExpiration,
    String? authUid,
  }) {
    this.authenticationToken = authenticationToken;
    this.refreshToken = refreshToken;
    this.tokenExpiration = tokenExpiration;
    this.uid = authUid;

    // Update the current user stream.
    final updatedUser = NanoAuthUser(
      loggedIn: true,
      uid: authUid,
    );
    nanoAuthUserSubject.add(updatedUser);

    return updatedUser;
  }
}

NanoAuthUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
