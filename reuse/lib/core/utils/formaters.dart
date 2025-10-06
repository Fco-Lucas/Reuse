String formatCpfCnpj(String input) {
  final digits = input.replaceAll(RegExp(r'[^0-9]'), '');
  if (digits.length <= 11) {
    // CPF
    return digits
        .replaceAllMapped(RegExp(r'^(\d{3})(\d{3})(\d{3})(\d{0,2})$'),
            (m) => '${m[1]}.${m[2]}.${m[3]}${m[4]!.isNotEmpty ? '-${m[4]}' : ''}');
  } else {
    // CNPJ
    return digits.replaceAllMapped(
        RegExp(r'^(\d{2})(\d{3})(\d{3})(\d{4})(\d{0,2})$'),
        (m) =>
            '${m[1]}.${m[2]}.${m[3]}/${m[4]}${m[5]!.isNotEmpty ? '-${m[5]}' : ''}');
  }
}