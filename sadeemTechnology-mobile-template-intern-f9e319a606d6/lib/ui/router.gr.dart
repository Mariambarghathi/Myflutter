// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i6;
import 'package:intern/ui/views/auth/login/login_view.dart' as _i2;
import 'package:intern/ui/views/auth/signup/view.dart' as _i4;
import 'package:intern/ui/views/startup/start_up_view.dart' as _i5;
import 'package:intern/ui/views/user/about/about_view.dart' as _i1;
import 'package:intern/ui/views/user/main/main_view.dart' as _i3;

abstract class $AppRouter extends _i6.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    AboutViewRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i1.AboutView(),
      );
    },
    LoginViewRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i2.LoginView(),
      );
    },
    MainViewRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i3.MainView(),
      );
    },
    SignupViewRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.SignupView(),
      );
    },
    StartUpViewRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i5.StartUpView(),
      );
    },
  };
}

/// generated route for
/// [_i1.AboutView]
class AboutViewRoute extends _i6.PageRouteInfo<void> {
  const AboutViewRoute({List<_i6.PageRouteInfo>? children})
      : super(
          AboutViewRoute.name,
          initialChildren: children,
        );

  static const String name = 'AboutViewRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i2.LoginView]
class LoginViewRoute extends _i6.PageRouteInfo<void> {
  const LoginViewRoute({List<_i6.PageRouteInfo>? children})
      : super(
          LoginViewRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginViewRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i3.MainView]
class MainViewRoute extends _i6.PageRouteInfo<void> {
  const MainViewRoute({List<_i6.PageRouteInfo>? children})
      : super(
          MainViewRoute.name,
          initialChildren: children,
        );

  static const String name = 'MainViewRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i4.SignupView]
class SignupViewRoute extends _i6.PageRouteInfo<void> {
  const SignupViewRoute({List<_i6.PageRouteInfo>? children})
      : super(
          SignupViewRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignupViewRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i5.StartUpView]
class StartUpViewRoute extends _i6.PageRouteInfo<void> {
  const StartUpViewRoute({List<_i6.PageRouteInfo>? children})
      : super(
          StartUpViewRoute.name,
          initialChildren: children,
        );

  static const String name = 'StartUpViewRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}
