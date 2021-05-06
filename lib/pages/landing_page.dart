import 'package:flutter/material.dart';
import 'package:flutter_amplify_playground/models/app_user.dart';
import 'package:flutter_amplify_playground/pages/home_page.dart';
import 'package:flutter_amplify_playground/pages/sign_in_page.dart';
import 'package:provider/provider.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appUser = context.watch<AppUser>().isSignedIn;
    print(appUser);
    return appUser ? HomePage() : SignInPage();
  }
}
