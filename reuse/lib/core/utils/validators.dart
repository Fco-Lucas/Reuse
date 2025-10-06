bool isValidCpf(String cpf) {
  cpf = cpf.replaceAll(RegExp(r'[^0-9]'), '');
  if (cpf.length != 11 || RegExp(r'^(\d)\1*$').hasMatch(cpf)) return false;

  int calcDigit(String str, int length) {
    int sum = 0;
    for (int i = 0; i < length; i++) {
      sum += int.parse(str[i]) * ((length + 1) - i);
    }
    int mod = (sum * 10) % 11;
    return mod == 10 ? 0 : mod;
  }

  return calcDigit(cpf, 9) == int.parse(cpf[9]) &&
         calcDigit(cpf, 10) == int.parse(cpf[10]);
}

bool isValidCnpj(String cnpj) {
  cnpj = cnpj.replaceAll(RegExp(r'[^0-9]'), '');
  if (cnpj.length != 14 || RegExp(r'^(\d)\1*$').hasMatch(cnpj)) return false;

  List<int> calcDigits(String str, List<int> multipliers) {
    int sum = 0;
    for (int i = 0; i < multipliers.length; i++) {
      sum += int.parse(str[i]) * multipliers[i];
    }
    int mod = sum % 11;
    return [(mod < 2) ? 0 : 11 - mod];
  }

  List<int> first = calcDigits(cnpj, [5, 4, 3, 2, 9, 8, 7, 6, 5, 4, 3, 2]);
  List<int> second = calcDigits(
    cnpj,
    [6, 5, 4, 3, 2, 9, 8, 7, 6, 5, 4, 3, 2],
  );

  return int.parse(cnpj[12]) == first[0] &&
         int.parse(cnpj[13]) == second[0];
}
