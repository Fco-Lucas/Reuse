import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:reuse/features/home/data/models/requests/create_post_request_model.dart';

class CreatePostBottomSheet extends ConsumerStatefulWidget {
  final Function(CreatePostRequestModel, File? imageFile) onCreatePost;

  const CreatePostBottomSheet({super.key, required this.onCreatePost});

  @override
  ConsumerState<CreatePostBottomSheet> createState() => _CreatePostBottomSheetState();
}

class _CreatePostBottomSheetState extends ConsumerState<CreatePostBottomSheet> {
  final _formKey = GlobalKey<FormState>();

  final _nameController = TextEditingController();
  final _amountController = TextEditingController();
  final _validUntilController = TextEditingController();
  final _addressController = TextEditingController();
  final _descriptionController = TextEditingController();

  DateTime? _selectedDateTime;
  File? _imageFile;
  final ImagePicker _picker = ImagePicker();

  @override
  void initState() {
    super.initState();
    // Requisito: Começar com a data de AMANHÃ
    _selectDateTime(context, initial: true);
  }

  @override
  void dispose() {
    _nameController.dispose();
    _amountController.dispose();
    _validUntilController.dispose();
    _addressController.dispose();
    _descriptionController.dispose();
    super.dispose();
  }

  /// Função helper para selecionar imagem
  Future<void> _pickImage() async {
    final XFile? pickedFile = await _picker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      setState(() {
        _imageFile = File(pickedFile.path);
      });
    }
  }

  /// Função helper para selecionar data
  Future<void> _selectDateTime(BuildContext context, {bool initial = false}) async {
    final today = DateTime.now();
    final tomorrow = DateTime(today.year, today.month, today.day).add(const Duration(days: 1));

    if (initial) {
      _selectedDateTime = tomorrow;
      _validUntilController.text = DateFormat('dd/MM/yyyy HH:mm').format(tomorrow);
      return;
    }

    // --- PASSO 1: SELECIONAR A DATA ---
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: _selectedDateTime ?? tomorrow,
      firstDate: tomorrow, // Data mínima é amanhã
      lastDate: DateTime(today.year + 10),
    );

    // Se o usuário cancelar a data, não fazemos nada
    if (pickedDate == null) return;
    
    // Verificação de segurança (boa prática após um 'await')
    if (!context.mounted) return;

    // --- PASSO 2: SELECIONAR A HORA ---
    final TimeOfDay? pickedTime = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.fromDateTime(_selectedDateTime ?? tomorrow),
    );

    // Se o usuário cancelar a hora, não fazemos nada
    if (pickedTime == null) return;

    // --- PASSO 3: COMBINAR OS DOIS ---
    final finalDateTime = DateTime(
      pickedDate.year,
      pickedDate.month,
      pickedDate.day,
      pickedTime.hour,
      pickedTime.minute,
    );

    // 5. Atualiza o estado e o controller
    setState(() {
      _selectedDateTime = finalDateTime;
      _validUntilController.text = DateFormat('dd/MM/yyyy HH:mm').format(finalDateTime);
    });
  }

  void _onCreatePost() {
    if (_formKey.currentState?.validate() ?? false) {
      // Se o formulário é válido, podemos converter os tipos com segurança.
      final data = CreatePostRequestModel(
        name: _nameController.text.trim(),
        amount: int.parse(_amountController.text), // Seguro, pois o validador checou
        validUntil: _selectedDateTime!, // Seguro, pois o validador checou
        address: _addressController.text.trim(),
        description: _descriptionController.text.trim(),
      );
      widget.onCreatePost(data, _imageFile);
      Navigator.of(context).pop();
    }
  }

  @override
  Widget build(BuildContext context) {
    // Padding que reage ao teclado
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
            mainAxisSize: MainAxisSize.min, // Faz o BottomSheet se ajustar ao conteúdo
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Nova publicação',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold, color: Colors.white),
              ),
              const SizedBox(height: 24),

              // --- CAMPO NOME ---
              Center(
                child: Stack(
                  children: [
                    Container(
                      width: 120,
                      height: 120,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius: BorderRadius.circular(12),
                        image: _imageFile != null
                            ? DecorationImage(
                                image: FileImage(_imageFile!),
                                fit: BoxFit.cover,
                              )
                            : null,
                      ),
                      child: _imageFile == null
                          ? const Icon(Icons.image_outlined, size: 50, color: Colors.grey)
                          : null,
                    ),
                    Positioned(
                      bottom: 4,
                      right: 4,
                      child: Material(
                        color: Theme.of(context).colorScheme.primary,
                        shape: const CircleBorder(),
                        child: InkWell(
                          onTap: _pickImage,
                          customBorder: const CircleBorder(),
                          child: const Padding(
                            padding: EdgeInsets.all(6.0),
                            child: Icon(Icons.edit, color: Colors.white, size: 18),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24),
              
              TextFormField(
                controller: _nameController,
                decoration: const InputDecoration(
                  labelText: 'Nome*',
                  prefixIcon: Icon(Icons.fastfood_outlined),
                ),
                validator: (value) {
                  if (value == null || value.trim().isEmpty) return 'Nome é obrigatório';
                  return null;
                },
              ),
              const SizedBox(height: 16),

              // --- CAMPO QUANTIDADE ---
              TextFormField(
                controller: _amountController,
                decoration: const InputDecoration(
                  labelText: 'Quantidade*',
                  prefixIcon: Icon(Icons.inventory_2_outlined),
                ),
                keyboardType: TextInputType.number,
                // Requisito: Apenas números positivos
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                validator: (value) {
                  if (value == null || value.isEmpty) return 'Quantidade é obrigatória';
                  final amount = int.tryParse(value);
                  if (amount == null) return 'Valor inválido';
                  if (amount <= 0) return 'Deve ser um valor positivo';
                  return null;
                },
              ),
              const SizedBox(height: 16),

              // --- CAMPO DATA DE VALIDADE ---
              TextFormField(
                controller: _validUntilController,
                readOnly: true, // Impede o teclado de abrir
                decoration: const InputDecoration(
                  labelText: 'Válido até*',
                  prefixIcon: Icon(Icons.calendar_today_outlined),
                ),
                onTap: () => _selectDateTime(context),
                validator: (value) {
                  if (_selectedDateTime == null) return 'Data e hora são obrigatórias';
                  final tomorrow = DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day).add(const Duration(days: 1));
                  if (_selectedDateTime!.isBefore(tomorrow)) {
                    return 'A data deve ser a partir de amanhã.';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),

              // --- CAMPO ENDEREÇO ---
              TextFormField(
                controller: _addressController,
                decoration: const InputDecoration(
                  labelText: 'Endereço de retirada*',
                  prefixIcon: Icon(Icons.location_on_outlined),
                ),
                validator: (value) {
                  if (value == null || value.trim().isEmpty) return 'Endereço é obrigatório';
                  return null;
                },
              ),
              const SizedBox(height: 16),

              // --- CAMPO DESCRIÇÃO (OPCIONAL) ---
              TextFormField(
                controller: _descriptionController,
                decoration: const InputDecoration(
                  labelText: 'Descrição (opcional)',
                  prefixIcon: Icon(Icons.description_outlined),
                ),
                // Sem validador, pois é opcional
              ),
              const SizedBox(height: 32),

              // --- BOTÃO DE SUBMISSÃO ---
              ElevatedButton(
                onPressed: _onCreatePost,
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  foregroundColor: Theme.of(context).colorScheme.onPrimaryContainer,
                  textStyle: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                child: const Text('Publicar'),
              ),
              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}