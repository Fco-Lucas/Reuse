import 'package:flutter/material.dart';

class AccessDeniedWidget extends StatelessWidget {
  final String message;

  const AccessDeniedWidget({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(Icons.lock_outline, size: 60, color: Colors.grey.shade700),
          const SizedBox(height: 16),
          Text(
            'Acesso Negado',
            style: Theme.of(context).textTheme.headlineSmall,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 8),
          Text(
            message,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16),
          ),
        ],
      )
    );
  }
}