import 'package:flutter/material.dart';
import 'package:flutter_notifications/notifcation_services/notifcation_services.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  NotificationServices services = NotificationServices();

  @override
  void initState() async {
    await services.requestNotificationPermission();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Notifications Home Screen"),
      ),
    );
  }
}
