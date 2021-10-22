import 'package:fitness/views/home/activity/activity_view.dart';
import 'package:fitness/views/home/challenge/challenge_view.dart';
import 'package:fitness/views/home/dashboard/dashboard_view.dart';
import 'package:fitness/views/home/profile/profile_view.dart';
import 'package:fitness/views/home/workout/workout_view.dart';
import 'package:flutter/material.dart';
import 'package:unicons/unicons.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  final List<Widget> _views = [
    const DashboardView(),
    const WorkoutView(),
    const ChallengeView(),
    const ActivityView(),
    const ProfileView(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: _views,
      ),
      bottomNavigationBar: BottomNavigationBar(

        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        type: BottomNavigationBarType.fixed,
        items: const[
          
          BottomNavigationBarItem(
            icon: Icon(UniconsLine.home_alt),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(UniconsLine.dumbbell),
            label: 'Workout',
          ),
          BottomNavigationBarItem(
            icon: Icon(UniconsLine.trophy),
            label: 'Challenge',
          ),
          BottomNavigationBarItem(
            icon: Icon(UniconsLine.fire),
            label: 'Activity',
          ),
          BottomNavigationBarItem(
            icon: Icon(UniconsLine.user),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
