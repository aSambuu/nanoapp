import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:go_router/go_router.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';

import '/auth/custom_auth/custom_auth_user_provider.dart';

import '/index.dart';
import '/main.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/lat_lng.dart';
import '/flutter_flow/place.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'serialization_util.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

class AppStateNotifier extends ChangeNotifier {
  AppStateNotifier._();

  static AppStateNotifier? _instance;
  static AppStateNotifier get instance => _instance ??= AppStateNotifier._();

  NanoAuthUser? initialUser;
  NanoAuthUser? user;
  bool showSplashImage = true;
  String? _redirectLocation;

  /// Determines whether the app will refresh and build again when a sign
  /// in or sign out happens. This is useful when the app is launched or
  /// on an unexpected logout. However, this must be turned off when we
  /// intend to sign in/out and then navigate or perform any actions after.
  /// Otherwise, this will trigger a refresh and interrupt the action(s).
  bool notifyOnAuthChange = true;

  bool get loading => user == null || showSplashImage;
  bool get loggedIn => user?.loggedIn ?? false;
  bool get initiallyLoggedIn => initialUser?.loggedIn ?? false;
  bool get shouldRedirect => loggedIn && _redirectLocation != null;

  String getRedirectLocation() => _redirectLocation!;
  bool hasRedirect() => _redirectLocation != null;
  void setRedirectLocationIfUnset(String loc) => _redirectLocation ??= loc;
  void clearRedirectLocation() => _redirectLocation = null;

  /// Mark as not needing to notify on a sign in / out when we intend
  /// to perform subsequent actions (such as navigation) afterwards.
  void updateNotifyOnAuthChange(bool notify) => notifyOnAuthChange = notify;

  void update(NanoAuthUser newUser) {
    final shouldUpdate =
        user?.uid == null || newUser.uid == null || user?.uid != newUser.uid;
    initialUser ??= newUser;
    user = newUser;
    // Refresh the app on auth change unless explicitly marked otherwise.
    // No need to update unless the user has changed.
    if (notifyOnAuthChange && shouldUpdate) {
      notifyListeners();
    }
    // Once again mark the notifier as needing to update on auth change
    // (in order to catch sign in / out events).
    updateNotifyOnAuthChange(true);
  }

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      errorBuilder: (context, state) =>
          appStateNotifier.loggedIn ? NavBarPage() : OnboardWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) =>
              appStateNotifier.loggedIn ? NavBarPage() : OnboardWidget(),
          routes: [
            FFRoute(
              name: 'home',
              path: 'home',
              builder: (context, params) => params.isEmpty
                  ? NavBarPage(initialPage: 'home')
                  : HomeWidget(),
            ),
            FFRoute(
              name: 'requests',
              path: 'requests',
              builder: (context, params) => params.isEmpty
                  ? NavBarPage(initialPage: 'requests')
                  : NavBarPage(
                      initialPage: 'requests',
                      page: RequestsWidget(),
                    ),
            ),
            FFRoute(
              name: 'Activeloans',
              path: 'activeloans',
              builder: (context, params) => params.isEmpty
                  ? NavBarPage(initialPage: 'Activeloans')
                  : ActiveloansWidget(),
            ),
            FFRoute(
              name: 'onboard',
              path: 'onboard',
              builder: (context, params) => OnboardWidget(),
            ),
            FFRoute(
              name: 'SignUp',
              path: 'signUp',
              builder: (context, params) => SignUpWidget(),
            ),
            FFRoute(
              name: 'Login',
              path: 'login',
              builder: (context, params) => LoginWidget(),
            ),
            FFRoute(
              name: 'address',
              path: 'address',
              builder: (context, params) => AddressWidget(),
            ),
            FFRoute(
              name: 'Settings',
              path: 'settings',
              builder: (context, params) => SettingsWidget(),
            ),
            FFRoute(
              name: 'banckaccount',
              path: 'banckaccount',
              builder: (context, params) => BanckaccountWidget(),
            ),
            FFRoute(
              name: 'profile',
              path: 'profile',
              builder: (context, params) => ProfileWidget(),
            ),
            FFRoute(
              name: 'dandan',
              path: 'dandan',
              builder: (context, params) => DandanWidget(),
            ),
            FFRoute(
              name: 'Loandet',
              path: 'loandet',
              builder: (context, params) => LoandetWidget(
                gereeID: params.getParam('gereeID', ParamType.String),
                zeeliindun: params.getParam('zeeliindun', ParamType.String),
                olgodate: params.getParam('olgodate', ParamType.String),
                hugatsaa: params.getParam('hugatsaa', ParamType.String),
                huu: params.getParam('huu', ParamType.String),
                ulddun: params.getParam('ulddun', ParamType.String),
                angilal: params.getParam('angilal', ParamType.String),
                dmsid: params.getParam('dmsid', ParamType.int),
                cid: params.getParam('cid', ParamType.int),
              ),
            ),
            FFRoute(
              name: 'LoanProcess',
              path: 'loanProcess',
              builder: (context, params) => LoanProcessWidget(
                maxblance: params.getParam('maxblance', ParamType.int),
                minblance: params.getParam('minblance', ParamType.int),
                minmonth: params.getParam('minmonth', ParamType.int),
                maxmonth: params.getParam('maxmonth', ParamType.int),
                minhuu: params.getParam('minhuu', ParamType.double),
                maxhuu: params.getParam('maxhuu', ParamType.double),
                prodname: params.getParam('prodname', ParamType.String),
                sar: params.getParam('sar', ParamType.int),
                proddesc: params.getParam('proddesc', ParamType.String),
              ),
            ),
            FFRoute(
              name: 'loansch',
              path: 'loansch',
              builder: (context, params) => LoanschWidget(
                gidd: params.getParam('gidd', ParamType.String),
              ),
            ),
            FFRoute(
              name: 'repaymentinfo',
              path: 'repaymentinfo',
              builder: (context, params) => RepaymentinfoWidget(
                gereeID: params.getParam('gereeID', ParamType.String),
                olgodate: params.getParam('olgodate', ParamType.String),
              ),
            ),
            FFRoute(
              name: 'OTP',
              path: 'otp',
              builder: (context, params) => OtpWidget(
                phone: params.getParam('phone', ParamType.String),
                pass1: params.getParam('pass1', ParamType.String),
                pass2: params.getParam('pass2', ParamType.String),
                lname: params.getParam('lname', ParamType.String),
                fname: params.getParam('fname', ParamType.String),
                reg: params.getParam('reg', ParamType.String),
                otptest: params.getParam('otptest', ParamType.String),
              ),
            ),
            FFRoute(
              name: 'payhistory',
              path: 'payhistory',
              builder: (context, params) => PayhistoryWidget(
                gid: params.getParam('gid', ParamType.String),
              ),
            ),
            FFRoute(
              name: 'qpay',
              path: 'qpay',
              builder: (context, params) => QpayWidget(
                amount: params.getParam('amount', ParamType.double),
                desc: params.getParam('desc', ParamType.String),
                cif: params.getParam('cif', ParamType.String),
                type: params.getParam('type', ParamType.String),
              ),
            ),
            FFRoute(
              name: 'payBank',
              path: 'payBank',
              builder: (context, params) => PayBankWidget(
                dun: params.getParam('dun', ParamType.String),
                gutga: params.getParam('gutga', ParamType.String),
              ),
            ),
            FFRoute(
              name: 'profileworking',
              path: 'profileworking',
              builder: (context, params) => ProfileworkingWidget(
                edit: params.getParam('edit', ParamType.bool),
              ),
            ),
            FFRoute(
              name: 'profilefamily',
              path: 'profilefamily',
              builder: (context, params) => ProfilefamilyWidget(),
            ),
            FFRoute(
              name: 'Offerreq',
              path: 'offerreq',
              builder: (context, params) => OfferreqWidget(),
            ),
            FFRoute(
              name: 'notifications',
              path: 'notifications',
              builder: (context, params) => NotificationsWidget(),
            ),
            FFRoute(
              name: 'OfferProcess1',
              path: 'offerProcess1',
              builder: (context, params) => OfferProcess1Widget(
                maxblance: params.getParam('maxblance', ParamType.double),
                minblance: params.getParam('minblance', ParamType.double),
              ),
            ),
            FFRoute(
              name: 'OfferProcess2',
              path: 'offerProcess2',
              builder: (context, params) => OfferProcess2Widget(
                balance: params.getParam('balance', ParamType.double),
                minmonth: params.getParam('minmonth', ParamType.int),
                maxmonth: params.getParam('maxmonth', ParamType.int),
                minhuu: params.getParam('minhuu', ParamType.double),
                sar: params.getParam('sar', ParamType.int),
                fee: params.getParam('fee', ParamType.double),
                pid: params.getParam('pid', ParamType.String),
              ),
            ),
            FFRoute(
              name: 'OfferProcess3',
              path: 'offerProcess3',
              builder: (context, params) => OfferProcess3Widget(
                balance: params.getParam('balance', ParamType.double),
                sar: params.getParam('sar', ParamType.double),
                pid: params.getParam('pid', ParamType.String),
                rate: params.getParam('rate', ParamType.double),
              ),
            ),
            FFRoute(
              name: 'loancontract',
              path: 'loancontract',
              builder: (context, params) => LoancontractWidget(
                cid: params.getParam('cid', ParamType.int),
              ),
            )
          ].map((r) => r.toRoute(appStateNotifier)).toList(),
        ),
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void goNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : goNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void pushNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : pushNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void safePop() {
    // If there is only one route on the stack, navigate to the initial
    // page instead of popping.
    if (canPop()) {
      pop();
    } else {
      go('/');
    }
  }
}

extension GoRouterExtensions on GoRouter {
  AppStateNotifier get appState => AppStateNotifier.instance;
  void prepareAuthEvent([bool ignoreRedirect = false]) =>
      appState.hasRedirect() && !ignoreRedirect
          ? null
          : appState.updateNotifyOnAuthChange(false);
  bool shouldRedirect(bool ignoreRedirect) =>
      !ignoreRedirect && appState.hasRedirect();
  void clearRedirectLocation() => appState.clearRedirectLocation();
  void setRedirectLocationIfUnset(String location) =>
      appState.updateNotifyOnAuthChange(false);
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(pathParameters)
    ..addAll(queryParameters)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.extraMap.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(
    String paramName,
    ParamType type, [
    bool isList = false,
    List<String>? collectionNamePath,
  ]) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam<T>(param, type, isList,
        collectionNamePath: collectionNamePath);
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        redirect: (context, state) {
          if (appStateNotifier.shouldRedirect) {
            final redirectLocation = appStateNotifier.getRedirectLocation();
            appStateNotifier.clearRedirectLocation();
            return redirectLocation;
          }

          if (requireAuth && !appStateNotifier.loggedIn) {
            appStateNotifier.setRedirectLocationIfUnset(state.location);
            return '/onboard';
          }
          return null;
        },
        pageBuilder: (context, state) {
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = appStateNotifier.loading
              ? Container(
                  color: Colors.transparent,
                  child: Center(
                    child: Image.asset(
                      'assets/images/nano_logo_long.png',
                      width: 200.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                )
              : page;

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) =>
                          PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).buildTransitions(
                    context,
                    animation,
                    secondaryAnimation,
                    child,
                  ),
                )
              : MaterialPage(key: state.pageKey, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => TransitionInfo(hasTransition: false);
}

class RootPageContext {
  const RootPageContext(this.isRootPage, [this.errorRoute]);
  final bool isRootPage;
  final String? errorRoute;

  static bool isInactiveRootPage(BuildContext context) {
    final rootPageContext = context.read<RootPageContext?>();
    final isRootPage = rootPageContext?.isRootPage ?? false;
    final location = GoRouter.of(context).location;
    return isRootPage &&
        location != '/' &&
        location != rootPageContext?.errorRoute;
  }

  static Widget wrap(Widget child, {String? errorRoute}) => Provider.value(
        value: RootPageContext(true, errorRoute),
        child: child,
      );
}
