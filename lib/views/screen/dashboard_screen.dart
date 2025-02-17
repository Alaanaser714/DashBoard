import 'package:dashboard/views/widgets/adaptive_layout.dart';
import 'package:dashboard/views/widgets/desktop_layout.dart';
import 'package:flutter/material.dart';

import '../widgets/mobile_layout.dart';
import '../widgets/tablet_layout.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AdaptiveLayout(
        mobileLayout: (context) => MobileLayout(),
        tabletLayout: (context) => TabletLayout(),
        desktopLayout: (context) => DesktopLayout(),
      ),
    );
  }
}
