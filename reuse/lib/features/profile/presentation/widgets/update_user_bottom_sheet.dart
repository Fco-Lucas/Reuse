import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:reuse/features/users/data/models/requests/user_update_request_model.dart';
import 'package:reuse/features/users/data/models/responses/user_response_model.dart';

class UpdateUserBottomSheet extends ConsumerStatefulWidget {
  final UserResponseModel currentUserInfo;
  final Function(UserUpdateRequestModel data) onUpdateUser;

  const UpdateUserBottomSheet({super.key, required this.currentUserInfo, required this.onUpdateUser});

  @override
  ConsumerState<UpdateUserBottomSheet> createState() => _UpdateUserBottomSheetState();
}

class _UpdateUserBottomSheetState extends ConsumerState<UpdateUserBottomSheet> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _cpfController = TextEditingController();

  late final MaskTextInputFormatter _cpfMask;

  @override
  void initState() {
    super.initState();

    _cpfMask = MaskTextInputFormatter(
      mask: '###.###.###-##',
      filter: {"#": RegExp(r'[0-9]')},
      initialText: widget.currentUserInfo.cpf,
    );

    _nameController.text = widget.currentUserInfo.name;
    _cpfController.text = _cpfMask.getMaskedText();
  }

  @override
  void dispose() {
    _nameController.dispose();
    _cpfController.dispose();
    super.dispose();
  }

  void _onUpdateUser() {
    if (_formKey.currentState?.validate() ?? false) {
      final unmaskedCpf = _cpfMask.getUnmaskedText();
      final data = UserUpdateRequestModel(
        name: _nameController.text.trim(),
        cpf: unmaskedCpf,
      );
      widget.onUpdateUser(data);
      Navigator.of(context).pop();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: MediaQuery.of(context).viewInsets.bottom,
        left: 24,
        right: 24,
        top: 24,
      ),
      child: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Text(
                'Atualizar Informações',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold, color: Colors.white),
              ),
              const SizedBox(height: 24),

              // Nome
              TextFormField(
                controller: _nameController,
                decoration: const InputDecoration(
                  labelText: 'Nome*',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.trim().isEmpty) return 'Nome é obrigatório';
                  return null;
                },
              ),
              const SizedBox(height: 16),

              // CNPJ
              TextFormField(
                controller: _cpfController,
                keyboardType: const TextInputType.numberWithOptions(decimal: false),
                inputFormatters: [_cpfMask],
                decoration: const InputDecoration(
                  labelText: 'CPF*',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  final digits = _cpfMask.getUnmaskedText();
                  if (digits.isEmpty) return 'CPF é obrigatório';
                  if (digits.length != 11) return 'CPF deve conter 11 dígitos';
                  return null;
                },
              ),
              const SizedBox(height: 32),
              ElevatedButton(
                onPressed: _onUpdateUser,
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  foregroundColor: Theme.of(context).colorScheme.onPrimaryContainer,
                  textStyle: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                child: const Text('Concluir'),
              ),
              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}