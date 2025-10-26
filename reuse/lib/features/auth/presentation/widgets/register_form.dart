import 'package:flutter/material.dart';
import 'package:reuse/core/utils/formaters.dart';
import 'package:reuse/core/utils/validators.dart';

class RegisterForm extends StatefulWidget {
  final Function(String name, String login, String password) onRegister;
  final bool isLoading;

  const RegisterForm({
    super.key, 
    required this.onRegister, 
    required this.isLoading
  });

  @override
  State<RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _documentController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _isPasswordVisible = false;

  @override
  void dispose() {
    _nameController.dispose();
    _passwordController.dispose();
    _documentController.dispose();
    super.dispose();
  }

  void _togglePasswordVisibility() {
    setState(() {
      _isPasswordVisible = !_isPasswordVisible;
    });
  }

  void _onRegisterAttempt() {
    if (_formKey.currentState!.validate()) {
      // 3. Chama o callback recebido do pai, passando os dados do formulário.
      widget.onRegister(
        _nameController.text.trim(),
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
            controller: _nameController,
            decoration: InputDecoration(
              labelText: 'Nome',
              border: const OutlineInputBorder(),
              prefixIcon: const Icon(Icons.person_outline),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Por favor, insira o nome';
              }
              return null;
            }
          ),
          const SizedBox(height: 16),
          TextFormField(
            controller: _documentController,
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(
              labelText: 'CPF ou CNPJ',
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
            onPressed: widget.isLoading ? null : _onRegisterAttempt,
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
                : const Text('Cadastrar', style: TextStyle(fontSize: 16)),
          ),
        ],
      ),
    );
  }
}
