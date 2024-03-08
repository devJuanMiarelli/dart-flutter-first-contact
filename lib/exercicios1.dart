int somaPares(int num) {
  int soma = 0;
  for (int i = 1; i <= num; i++) {
    if (i % 2 == 0) {
      soma += i;
    }
  }
  return soma;
}

int fatorial(int num) {
  int fat = 1;
  while (num > 0) {
    fat = fat * num;
    num--;
  }
  return fat;
}

bool divisaoExata(int dividendo, divisor) {
  return (dividendo % divisor) == 0;
}

bool numPrimo(int n) {
  int i, divisores = 0;

  for (i = 1; i <= n; i++) {
    if (divisaoExata(n, i)) {
      divisores++;
    }
  }
  if (divisores == 2) {
    return true;
  } else {
    return false;
  }
}

bool palindromo(String palavra) {
  String palavraLimpa =
      palavra.replaceAll(RegExp(r'[^a-zA-Z0-9]'), '').toLowerCase();
  String palavraReversa = palavraLimpa.split('').reversed.join('');
  if (palavraLimpa == palavraReversa) {
    return true;
  } else {
    return false;
  }
}

num converter(num graus) {
  num resultado = 0;
  resultado = graus * 1.8 + 32;
  return resultado;
}

num imc(num peso, num altura) {
  num resultado = 0, alturaAoQuadrado = altura * altura;
  resultado = peso / alturaAoQuadrado;
  return resultado;
}

void tabuada(num num) {
  for (int i = 1; i <= 10; i++) {
    print('$i x $num = ${i * num}');
  }
}
