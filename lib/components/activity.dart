import 'package:flutter/material.dart';
import 'package:projectuts5/components/PageOneActivity.dart';
import 'package:projectuts5/components/PageTwoActivity.dart';

class ActivityPage extends StatefulWidget {
  const ActivityPage({super.key});

  @override
  State<ActivityPage> createState() => _ActivityPageState();
}

class _ActivityPageState extends State<ActivityPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController
    (length: 2, 
    child: Scaffold(
      appBar: AppBar(
        leading: Container(),
        title: Text('Activity'),
        centerTitle: true,
        bottom: const TabBar(
          tabs: [
            Tab(text: 'Inprocess'),
            Tab(text: 'Finished',)
          ],
        ),
      ),
      body: TabBarView(
        children: [
          PageOneActivity(),
          PageTwoActivity()
        ],
      ),
    ));
  }
}