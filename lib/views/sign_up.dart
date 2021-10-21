import 'package:fitness/views/home/dashboard/dashboard_view.dart';
import 'package:fitness/views/sign_in.dart';
import 'package:flutter/material.dart';
import 'package:unicons/unicons.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        body: Builder(builder: (context) {
          return const SafeArea(
            child: SignUpWidget(),
          );
        }),
      ),
    );
  }
}

class SignUpWidget extends StatefulWidget {
  const SignUpWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<SignUpWidget> createState() => _SignUpWidgetState();
}

class _SignUpWidgetState extends State<SignUpWidget> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            Text(
              'SIGN UP',
              style: Theme.of(context).textTheme.bodyText1!.copyWith(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
            ),
        
            const SizedBox(height: 25,),
            TextFormField(
              keyboardType: TextInputType.name,
              decoration: const InputDecoration(
                  prefixIcon: Icon(UniconsLine.user), labelText: 'Full Name'),
            ),
            const SizedBox(height: 15,),
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                  prefixIcon: Icon(UniconsLine.envelope_alt),
                  labelText: 'Email Address'),
            ),
            const SizedBox(
              height: 15,
            ),
            TextFormField(
              obscureText: true,
              keyboardType: TextInputType.visiblePassword,
              decoration: const InputDecoration(
                prefixIcon: Icon(UniconsLine.lock),
                labelText: 'Enter a password',
                suffixIcon: Icon(UniconsLine.eye_slash),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            TextFormField(
              obscureText: true,
              keyboardType: TextInputType.visiblePassword,
              decoration: const InputDecoration(
                prefixIcon: Icon(UniconsLine.lock),
                labelText: 'Confirm password',
                suffixIcon: Icon(UniconsLine.eye_slash),
              ),
            ),
        
            
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>const SignIn()));
                },
                child: Text(
                  'Already have an account? Sign In',
                  style: Theme.of(context).textTheme.bodyText1!.copyWith(decoration: TextDecoration.underline),
                ),
              ),
            ),
            
            TextButton(
              style: TextButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                backgroundColor: Colors.black,
                padding: const EdgeInsets.fromLTRB(50, 10, 50, 10)
              ),
              onPressed: ()=>Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const DashboardView(),),),
              child: const Text('Sign Up',style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),),
              
            ),
          ],
        ),
      ),
    );
  }
}
