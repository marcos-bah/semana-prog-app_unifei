import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        centerTitle: true,
        elevation: 0,
      ),
      body: SafeArea(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Tela principal', textAlign: TextAlign.center),
              TextButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('/');
                },
                style: const ButtonStyle(),
                child: const Text("Voltar a tela anterior!"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
