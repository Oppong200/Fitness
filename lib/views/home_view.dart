import 'dart:ui';

import 'package:country_code_picker/country_code_picker.dart';
import 'package:fitness/views/sign_in.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/1.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      child: Builder(builder: (context) {
        return Scaffold(
          body: SafeArea(
            child: Column(
              children: [
                CountryCodePicker(
                  onChanged: print,
                  // Initial selection and favorite can be one of code ('IT') OR dial_code('+39')
                  initialSelection: 'IT',
                  favorite: const ['+39', 'FR'],
                  // optional. Shows only country name and flag
                  showCountryOnly: false,
                  // optional. Shows only country name and flag when popup is closed.
                  showOnlyCountryWhenClosed: false,
                  // optional. aligns the flag and the Text left
                  alignLeft: false,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(70.0, 120, 70, 70),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Image.asset('assets/fitness.png'),
                      ),
                      const Align(
                        alignment: Alignment.center,
                        child: Text(
                          'This app will help you keep your body fit and strong',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 16,
                            color: Color(0XFF000000),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                TextButton.icon(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const SignIn(),
                      ),
                    );
                  },
                  label: Text(
                    'Get Started',
                    style: Theme.of(context).textTheme.bodyText1!.copyWith(
                          color: Colors.black,
                          fontSize: 20,
                        ),
                  ),
                  icon: const Icon(
                    Icons.arrow_forward,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}
