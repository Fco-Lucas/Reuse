import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:reuse/features/restaurants/data/models/requests/restaurant_update_request_model.dart';
import 'package:reuse/features/restaurants/data/models/responses/restaurant_response_model.dart';

class UpdateRestaurantBottomSheet extends ConsumerStatefulWidget {
  final RestaurantResponseModel currentRestaurantInfo;
  final Function(RestaurantUpdateRequestModel data) onUpdateRestaurant;

  const UpdateRestaurantBottomSheet({super.key, required this.currentRestaurantInfo, required this.onUpdateRestaurant});

  @override
  ConsumerState<UpdateRestaurantBottomSheet> createState() => _UpdateRestaurantBottomSheetState();
}

class _UpdateRestaurantBottomSheetState extends ConsumerState<UpdateRestaurantBottomSheet> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _cnpjController = TextEditingController();

  late final MaskTextInputFormatter _cnpjMask;

  @override
  void initState() {
    super.initState();

    _cnpjMask = MaskTextInputFormatter(
      mask: '##.###.###/####-##',
      filter: {"#": RegExp(r'[0-9]')},
      initialText: widget.currentRestaurantInfo.cnpj,
    );

    _nameController.text = widget.currentRestaurantInfo.name;
    _cnpjController.text = _cnpjMask.getMaskedText();
  }

  @override
  void dispose() {
    _nameController.dispose();
    _cnpjController.dispose();
    super.dispose();
  }

  void _onUpdateRestaurant() {
    if (_formKey.currentState?.validate() ?? false) {
      final unmaskedCnpj = _cnpjMask.getUnmaskedText();
      final data = RestaurantUpdateRequestModel(
        name: _nameController.text.trim(),
        cnpj: unmaskedCnpj,
      );
      widget.onUpdateRestaurant(data);
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
                controller: _cnpjController,
                keyboardType: const TextInputType.numberWithOptions(decimal: false),
                inputFormatters: [_cnpjMask],
                decoration: const InputDecoration(
                  labelText: 'CNPJ*',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  final digits = _cnpjMask.getUnmaskedText();
                  if (digits.isEmpty) return 'CNPJ é obrigatório';
                  if (digits.length != 14) return 'CNPJ deve conter 14 dígitos';
                  return null;
                },
              ),
              const SizedBox(height: 32),
              ElevatedButton(
                onPressed: _onUpdateRestaurant,
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