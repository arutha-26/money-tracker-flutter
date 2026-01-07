import 'package:flutter/material.dart';
import 'package:money_app_tracker/features/auth/login_page.dart';
import 'package:money_app_tracker/features/home/home_page.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class AuthGate extends StatelessWidget {
  const AuthGate({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<AuthState>(
      stream: Supabase.instance.client.auth.onAuthStateChange,
      builder: (context, snapshot) {
        final session = snapshot.data?.session;

        if (session != null) {
          return const HomePage();
        }

        return const LoginPage();
      },
    );
  }
}
