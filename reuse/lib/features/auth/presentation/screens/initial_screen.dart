import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class InitialScreen extends ConsumerWidget {
  const InitialScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.onPrimaryContainer,
      body: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "REAPROVEITA+",
                      style: TextStyle(
                        fontFamily: "Anton",
                        fontWeight: FontWeight.bold,
                        fontSize: 40,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      "DOE, COMPARTILHE E TRANSFORME",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 12),
                    Image.asset(
                      'assets/images/initial_screen_image.png',
                      height: 300,
                      fit: BoxFit.contain,
                    ),
                    const SizedBox(height: 12),
                    SizedBox(
                      width: double.infinity,
                      child: Column(
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              context.push("/register");
                            },
                            style: ElevatedButton.styleFrom(
                              // backgroundColor: Colors.white,
                              // foregroundColor: Colors.green,
                              foregroundColor: Theme.of(context).colorScheme.onPrimaryContainer,
                              minimumSize: const Size(double.infinity, 50),
                              textStyle: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                            child: const Text("Cadastrar"),
                          ),
                          const SizedBox(height: 12),
                          FilledButton(
                            onPressed: () {
                              context.push("/login");
                            },
                            style: FilledButton.styleFrom(
                              backgroundColor: Theme.of(context).colorScheme.primaryContainer,
                              foregroundColor: Theme.of(context).colorScheme.onPrimaryContainer,
                              minimumSize: const Size(double.infinity, 50),
                              textStyle: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                            child: const Text("Acessar minha conta"),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
      ),
    );
  }
}