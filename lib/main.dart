// class Calculator {
//   double operand1;
//   double operand2;

//   Calculator(this.operand1, this.operand2);

//   double add() {
//     return operand1 + operand2;
//   }

//   double subtract() {
//     return operand1 - operand2;
//   }

//   double multiply() {
//     return operand1 * operand2;
//   }

//   double? divide() {
//     if (operand2 != 0) {
//       return operand1 / operand2;
//     } else {
//       print("Erreur : Division par zéro.");
//       return null;
//     }
//   }
// }

// void main() {

//   Calculator calculator = Calculator(10, 5);

//   print("Addition: ${calculator.add()}");
//   print("Soustraction: ${calculator.subtract()}");
//   print("Multiplication: ${calculator.multiply()}");
//   print("Division: ${calculator.divide()}");
// }
import "dart:io";
import 'dart:math';

double numInput() {
  print("Entrez le numéro pour l'opération: ");
  double myNumber = double.parse(stdin.readLineSync()!);
  return myNumber;
}

String oprandChoice() {
  print("Enter the operand e.g '+','-','/','*'");
  String operandInput = stdin.readLineSync()!;
  return operandInput;
}

void main() {
  double numero1 = numInput();
  double numero2 = numInput();
  String choix = oprandChoice();
  double res = 0.0;

  if (choix == '+') {
    res = numero1 + numero2;
    print("${numero1} ${choix} ${numero2} = ${res}");
  } else if (choix == '-') {
    res = numero1 - numero2;
    print("${numero1} ${choix} ${numero2} = ${res}");
  } else {
    print('Saisie invalide, veuillez vérifier');
  }
}
