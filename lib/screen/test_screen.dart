import 'package:flutter/material.dart';
import 'package:trainingcenter/components/levels.dart';
import 'package:trainingcenter/components/profile.dart';
import 'package:trainingcenter/components/reminder.dart';
import 'package:trainingcenter/screen/question_screen.dart';

class DashboardPages extends StatefulWidget {
  const DashboardPages({super.key});

  @override
  State<DashboardPages> createState() => _DashboardPagesState();
}

class _DashboardPagesState extends State<DashboardPages> {
  late String userNames = '';
  var userPoints = 5;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/background_3.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Image.asset(
            'assets/images/alametric_logo_white.png',
            width: 164,
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.logout, color: Colors.white, size: 30),
              onPressed: () => Navigator.of(context).pop(),
            ),
          ],
          backgroundColor: Colors.transparent,
          automaticallyImplyLeading: false,
        ),
        backgroundColor: Colors.transparent,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
            Container(
              margin: const EdgeInsets.all(8),
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.7,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(0),
                ),
              ),
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Positioned(
                    top: -64,
                    width: MediaQuery.of(context).size.width * 0.95,
                    child: const CircleAvatar(
                      radius: 50,
                      backgroundColor: Color.fromARGB(255, 191, 131, 255),
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: MediaQuery.of(context).size.height * 0.07,
                      ),
                      child: Column(
                        children: [
                          UserPoints(
                            userNames: "userNames",
                            userPoints: userPoints,
                          ),
                          // -------------------------- Level Profiles -------------------------- //
                          const SizedBox(height: 16),
                          const Reminders(
                            levels: 'Level 1',
                            time: '23:59',
                          ),
                          const SizedBox(height: 16),
                          // -------------------------- Leveling -------------------------- //
                          Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  LevelIconsUnlock(
                                    level: '1',
                                    onPressed: () => Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => const QuestionPages(),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 16),
                                  LevelIconsLock(
                                    level: '2',
                                    onPressed: () {
                                      ScaffoldMessenger.of(context).showSnackBar(
                                        const SnackBar(
                                          duration: Duration(seconds: 1),
                                          content: Text(
                                            "Level 2 is locked",
                                          ),
                                          backgroundColor: Colors.red,
                                        ),
                                      );
                                    },
                                  ),
                                ],
                              ),
                              const SizedBox(height: 16),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  LevelIconsLock(
                                    level: '3',
                                    onPressed: () {
                                      ScaffoldMessenger.of(context).showSnackBar(
                                        const SnackBar(
                                          duration: Duration(seconds: 1),
                                          content: Text(
                                            "Level 3 is locked",
                                          ),
                                          backgroundColor: Colors.red,
                                        ),
                                      );
                                    },
                                  ),
                                  const SizedBox(width: 16),
                                  LevelIconsLock(
                                    level: '4',
                                    onPressed: () {
                                      ScaffoldMessenger.of(context).showSnackBar(
                                        const SnackBar(
                                          duration: Duration(seconds: 1),
                                          content: Text(
                                            "Level 4 is locked",
                                          ),
                                          backgroundColor: Colors.red,
                                        ),
                                      );
                                    },
                                  ),
                                ],
                              ),
                            ],
                          ),
                          
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        )
      ),
    );
  }
}