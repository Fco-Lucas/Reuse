import 'package:flutter/material.dart';
import 'package:reuse/core/utils/formaters.dart';
import 'package:reuse/core/utils/validators.dart';

class LoginForm extends StatefulWidget {
  final Function(String login, String password) onLogin;
  final bool isLoading;

  const LoginForm({
    super.key, 
    required this.onLogin, 
    required this.isLoading
  });

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();
  final _documentController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _isPasswordVisible = false;

  @override
  void dispose() {
    _documentController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _togglePasswordVisibility() {
    setState(() {
      _isPasswordVisible = !_isPasswordVisible;
    });
  }

  void _onLoginAttempt() {
    if (_formKey.currentState!.validate()) {
      widget.onLogin(
        _documentController.text.trim(),
        _passwordController.text.trim(),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            controller: _documentController,
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(
              labelText: 'CPF ou CNPJ',
              border: OutlineInputBorder(),
              prefixIcon: Icon(Icons.badge_outlined),
            ),
            onChanged: (value) {
              final formatted = formatCpfCnpj(value);
              setState(() {
                _documentController.text = formatted;
                _documentController.selection = TextSelection.fromPosition(
                  TextPosition(offset: formatted.length),
                );
              });
            },
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Por favor, insira seu CPF ou CNPJ';
              }

              final digits = value.replaceAll(RegExp(r'[^0-9]'), '');
              if (digits.length <= 11) {
                if (!isValidCpf(digits)) return 'CPF inválido';
              } else {
                if (!isValidCnpj(digits)) return 'CNPJ inválido';
              }

              return null;
            },
          ),
          const SizedBox(height: 16),
          TextFormField(
            controller: _passwordController,
            obscureText: !_isPasswordVisible,
            decoration: InputDecoration(
              labelText: 'Senha',
              border: const OutlineInputBorder(),
              prefixIcon: const Icon(Icons.lock_outline),
              suffixIcon: IconButton(
                icon: Icon(_isPasswordVisible ? Icons.visibility_off : Icons.visibility),
                onPressed: _togglePasswordVisibility,
              ),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Por favor, insira sua senha';
              }
              if (value.length < 6) {
                return 'A senha deve conter no mínimo 6 caracteres';
              }
              return null;
            },
          ),
          const SizedBox(height: 24),
          ElevatedButton(
            onPressed: widget.isLoading ? null : _onLoginAttempt,
            style: ElevatedButton.styleFrom(
              minimumSize: const Size(double.infinity, 50),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              foregroundColor: Theme.of(context).colorScheme.onPrimaryContainer,
            ),
            child: widget.isLoading
                ? const SizedBox(
                    height: 20,
                    width: 20,
                    child: CircularProgressIndicator(strokeWidth: 2),
                  )
                : const Text('Entrar', style: TextStyle(fontSize: 16)),
          ),
        ],
      ),
    );
  }
}
