import 'package:app_unifei/src/app/theme.dart';
import 'package:app_unifei/src/shared/textFormField.widget.dart';
import 'package:flutter/material.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final _formKey = GlobalKey<FormState>();
  bool loading = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    const Spacer(),
                    const Text(
                      "Conect\nSigaa",
                      style: TextStyle(
                        fontSize: 36,
                        fontWeight: FontWeight.bold,
                        color: AppTheme.primary,
                      ),
                      textAlign: TextAlign.start,
                    ),
                    const SizedBox(
                      height: 80,
                    ),
                    const TextFormFieldWidget(
                      label: "CPF",
                      obscure: false,
                    ),
                    const TextFormFieldWidget(
                      label: "Senha",
                      obscure: true,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextButton(
                      onPressed: () {
                        setState(() {
                          loading = !loading;
                          Future.delayed(const Duration(seconds: 2), () {
                            setState(() {
                              loading = !loading;
                              Navigator.of(context).pushNamed('/home');
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text(
                                    "Login realizado com sucesso",
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              );
                            });
                          });
                        });
                      },
                      style: TextButton.styleFrom(
                        elevation: 10,
                        fixedSize: const Size(320, 60),
                        backgroundColor: Colors.blue,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                      child: loading
                          ? const CircularProgressIndicator(
                              color: Colors.white,
                            )
                          : const Text(
                              "Login",
                              style: TextStyle(color: Colors.white),
                            ),
                    ),
                    const Spacer(),
                    Container(
                      margin: const EdgeInsets.all(10),
                      child: Text(
                        "Aplicação não oficial e sem parceria com a UNIFEI.",
                        style: TextStyle(
                          fontSize: 12,
                          color: const Color(0xff243656).withOpacity(0.5),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
