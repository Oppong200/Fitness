import 'package:flutter/material.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: [
              const ListTile(
                leading: Text(
                  'Dashboard',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
                trailing: CircleAvatar(
                  backgroundImage: AssetImage('assets/2.jpg'),
                  radius: 30,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  Text(
                    '17',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        color: Color(0XFF8587DC)),
                  ),
                  Text(
                    '245',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        color: Color(0XFF8587DC)),
                  ),
                  Text(
                    '7',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        color: Color(0XFF8587DC)),
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Text(
                    'workouts \ncompleted',
                    style: TextStyle(fontSize: 16),
                  ),
                  Text(
                    'hours spent \non training',
                    style: TextStyle(fontSize: 16),
                  ),
                  Text(
                    'challenges \nparticipated in',
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Card(
                color: const Color(0xff8587dc),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    leading: const Text(
                      'Waist clinching exercise',
                      style: TextStyle(color: Colors.white),
                    ),
                    trailing: TextButton(
                      style: TextButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        backgroundColor: Colors.white,
                        padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                      ),
                      onPressed: null,
                      child: const Text(
                        'Continue',
                        style: TextStyle(
                          color: Color(0XFF8587DC),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              const Text(
                "Today's Activity",
                style: TextStyle(fontSize: 20),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Text(
                    '2 hours workout',
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    '387 kcal',
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    '2.6 km',
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const CardView(),
              const SizedBox(height: 25,),
              const CardView(),
              const SizedBox(
                height: 25,
              ),
              const CardView(),
            ],
          ),
        ),
      ),
    );
  }
}

class CardView extends StatelessWidget {
  const CardView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text(
              'New Workouts',
              style: TextStyle(
                  color: Color(0XFF200E32),
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
            Text('See all'),
          ],
        ),
        const SizedBox(height: 15,),
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Stack(
            
            children: const [
              Image(
                image: AssetImage('assets/1.jpg'),
              ),
              ListTile(
                  title: Text(
                    'Get ready for the marathon',style: TextStyle(color: Colors.white),
                  ),
                  subtitle: Text(
                    '231 Members . Medium level',style:TextStyle(color: Colors.grey),
                  ),),
            ],
          ),
        ),
      ],
    );
  }
}
