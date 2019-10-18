// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:devfestcenfl/home/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';


void main() {
  testWidgets('Schedule is present and trigger navigation after tap - smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    //await tester.pumpWidget(MyApp());

   await tester.pumpWidget(MaterialApp(home: HomePage()));

    expect(find.text('1'), findsNothing);

   

    expect(find.byType(RaisedButton), findsOneWidget);
    // Verify that our counter has incremented.
    expect(find.text('0'), findsNothing);
    expect(find.text('1'), findsOneWidget);
  });
}
