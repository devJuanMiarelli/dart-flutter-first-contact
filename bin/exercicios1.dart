import 'dart:io';

import 'package:exercicios1/exercicios1.dart' as exercicios1;

void main(List<String> arguments) {
  print('Digite uma opção: ');
  print('1- Soma dos números pares.');
  print('2- Fatorial.');
  print('3- Números primos.');
  print('4- Palíndromo.');
  print('5- Conversão de temperatura.');
  print('6- Cálculo de IMC.');
  print('7- Tabuada.');
  print('0- Sair.');

  int caso = int.parse(stdin.readLineSync().toString());

  switch (caso) {
    case 1:
      print('Digite um número: ');
      int num = int.parse(stdin.readLineSync().toString());
      if (num < 0) {
        print('O número deve ser posivo!');
      } else {
        print(
            'Exercício 1 - A soma dos números pares de 0 até $num é: ${exercicios1.somaPares(num)}');
      }
      break;
    case 2:
      print('Digite um número: ');
      int num = int.parse(stdin.readLineSync().toString());
      if (num < 0) {
        print('O número deve ser posivo!');
      } else {
        print(
            'Exercício 2 - O fatorial de $num é: ${exercicios1.fatorial(num)}');
      }
      break;
    case 3:
      print('Digite um número: ');
      int num = int.parse(stdin.readLineSync().toString());
      if (num < 0) {
        print('O número deve ser posivo!');
      } else {
        print(
            'Exercício 3 - O número $num é primo: ${exercicios1.numPrimo(num)}');
      }
      break;
    case 4:
      print('Digite uma palavra: ');
      String palavra = stdin.readLineSync()!;
      print(
          'Exercício 4 - A palavra é um palíndromo: ${exercicios1.palindromo(palavra)}');
      break;
    case 5:
      print('Digite a temperatura em °C para ser convertida em °F: ');
      num grau = num.parse(stdin.readLineSync().toString());
      print(
          'Exercício 5 - A temperatura digitada em °C convertida para °F é: ${exercicios1.converter(grau)}');
      break;
    case 6:
      print('Digite seu peso: ');
      num peso = num.parse(stdin.readLineSync().toString());
      print('Digite sua altura: ');
      num altura = num.parse(stdin.readLineSync().toString());
      if (peso < 0 || altura < 0) {
        print('Peso e/ou altura inválidos!');
      } else {
        print(
            'Exercício 6 - Seu Índice de Massa Corporal é: ${exercicios1.imc(peso, altura)}');
      }
      break;
    case 7:
      print('Digite um número: ');
      num numero = num.parse(stdin.readLineSync().toString());
      print(('Exercício 7 - A tabuada do número digitado é: '));
      exercicios1.tabuada(numero);
      break;
    case 0:
      print('Obrigado por acessar!');
      break;
    default:
      print('Número inválido! Digite uma opção válida.');
  }
}
