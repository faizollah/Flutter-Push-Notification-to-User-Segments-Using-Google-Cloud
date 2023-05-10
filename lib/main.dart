import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:topic_notification/topic.dart';
import 'package:firebase_analytics/firebase_analytics.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final FirebaseAnalytics analytics = FirebaseAnalytics.instance;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorObservers: [
        FirebaseAnalyticsObserver(analytics: analytics),
      ],
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Subscribe to Topics'),
        ),
        body: TopicSubscriptionScreen(),
      ),
    );
  }
}
