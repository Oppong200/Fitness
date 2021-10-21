import 'dart:ui';

import 'package:fitness/views/home/dashboard/dashboard_view.dart';
import 'package:fitness/views/home/home.dart';
import 'package:fitness/views/sign_up.dart';
import 'package:flutter/material.dart';
import 'package:fitness/views/home_view.dart';
import 'package:unicons/unicons.dart';

class SignIn extends StatelessWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: ListView(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton.icon(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const HomeView(),),);
                    },
                    icon: const Icon(UniconsLine.arrow_circle_left),
                    label: Text(
                      'back',
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                  ),
                  TextButton(
                    onPressed: ()=>Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const SignUp())),
                    child: Text(
                      'Sign Up',
                      style: Theme.of(context).textTheme.bodyText1!.copyWith(
                            decoration: TextDecoration.underline,
                          ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10,),
              const Center(
                  child: Text(
                'WELCOME',
                style: TextStyle(
                  fontSize: 40,
                ),
              ),),
              const Center(
                child: Text(
                  'Enter your credentials to continue',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
              const SizedBox(
                height: 100,
              ),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                  prefixIcon: Icon(
                    UniconsLine.envelope,
                  ),
                  labelText: 'Email Address',
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              TextFormField(
                obscureText: true,
                keyboardType: TextInputType.visiblePassword,
                decoration: const InputDecoration(
                  prefixIcon: Icon(
                    UniconsLine.lock_alt,
                  ),
                  suffixIcon: Icon(
                    UniconsLine.eye_slash,
                  ),
                  labelText: 'Password',
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Align(
                alignment: Alignment.centerRight,
                child: Text(
                  'Forgot Password',
                  style: TextStyle(
                    fontSize: 16,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              TextButton(
                onPressed: ()=>Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const Home())),
                style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  backgroundColor: Colors.black,
                ),
                child: const Text(
                  'Sign In',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
