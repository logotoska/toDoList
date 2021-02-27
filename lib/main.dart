import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do_list/app_localizations.dart';
import 'package:to_do_list/models/authentication.dart';
import 'package:to_do_list/screens/login_screen.dart';
import 'package:to_do_list/screens/map_screen.dart';
import 'package:to_do_list/screens/signup_screen.dart';
import 'package:to_do_list/screens/to_do_list_screen.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter/cupertino.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  static const routeName = '/home';

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: Authentication(),)
      ],
      child: MaterialApp(
        title: 'TodoList',
        supportedLocales: [
          Locale('en','US'),Locale('ru','RU')
        ],
        localizationsDelegates: [
          AppLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate
        ],localeResolutionCallback: (locale,supportedLocaleList){

          for(var v in supportedLocaleList){
            if(v.languageCode == locale.languageCode && v.countryCode == locale.countryCode){
              return locale;
          }
          }

          return supportedLocaleList.first;
      },
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.red,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: LoginScreen(),
        routes: {
          SignupScreen.routeName: (ctx)=> SignupScreen(),
          LoginScreen.routeName: (ctx)=> LoginScreen(),
          ListScreen.routeName: (ctx)=>ListScreen(),
          MapScreen.routeName: (ctx)=>MapScreen(),
        },
      ),
    );
  }
}
