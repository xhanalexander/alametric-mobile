import 'package:flutter/material.dart';
import 'package:trainingcenter/components/button.dart';
import 'package:trainingcenter/components/form.dart';
import 'package:trainingcenter/screen/test_screen.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final formKey = GlobalKey<FormState>();
  final nomorController = TextEditingController();
  final passwordController = TextEditingController();

  void loginForms() {
    if (formKey.currentState!.validate()) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const DashboardPages(),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/background.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Form(
          key: formKey,
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: [
                Expanded(
                  child: Image.asset(
                    'assets/images/alametric_logo_white.png',
                    width: MediaQuery.of(context).size.width * 0.75,
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.45,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                    
                        // -------------------------- Candidate Code -------------------------- //
                        const SizedBox(height: 18),
                        const LabelForm(
                          labelName: 'Kode Kandidat',
                        ),
                        const SizedBox(height: 8),
                        CodeForm(
                          hintTextName: 'Masukkan Kode Kandidat',
                          controllerNames: nomorController,
                        ),
                    
                        // -------------------------- Fullname Candidate -------------------------- //
                        const SizedBox(height: 12),
                        const LabelForm(
                          labelName: 'Nama Legkap',
                        ),
                        const SizedBox(height: 8),
                        NameForm(
                          hintTextName: 'Nama Lengkap',
                          controllerNames: passwordController,
                        ),
                    
                        // -------------------------- Buttons -------------------------- //
                        const SizedBox(height: 32),
                        MainButton(
                          text: 'Masuk',
                          color: Colors.deepPurple,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          onPressed: () => loginForms(),
                        ),
                      ],
                    ),
                  )
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
