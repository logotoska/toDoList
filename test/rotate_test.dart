// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/services.dart';
import 'package:to_do_list/main.dart';

void main() {
  testWidgets('empty input in login', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());
    await tester.pumpAndSettle();
    var button = find.byKey(Key ('submit'));
    var emTF = find.byKey(Key('emTF'));
    await tester.enterText(emTF, "test1");
    SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeLeft]);

    expect(find.text('test1'), findsOneWidget);

    //expect(find.text('invalid email'), findsOneWidget);
    //expect(find.text('invalid password'), findsOneWidget);
  });

}