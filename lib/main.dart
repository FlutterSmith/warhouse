import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:war_house/core/helper/on_generate_routes.dart';
import 'package:war_house/core/utils/app_colors.dart';
import 'package:war_house/features/splash/presentation/views/splash_view.dart';
import 'package:war_house/generated/l10n.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const WarHouse());
}

class WarHouse extends StatelessWidget {
  const WarHouse({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      locale: const Locale('ar'),
      theme: ThemeData(
        fontFamily: 'Cairo',
      ),
      title: 'WarHouse',
      debugShowCheckedModeBanner: false,
      onGenerateRoute: onGenerateRoutes,
      initialRoute: SplashView.routeName,
    );
  }
}
