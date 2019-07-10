String parceNumberVolume(String number) {
  print(number);
  //Validation Billon
  if (number.length >= 10 && number.length <= 13) {
    return '\$${number.substring(0, number.length - 9)}.${number.substring(number.length - 9, number.length - 7)}b';
  }
  // Validate millon
  else if (number.length >= 7 && number.length < 10) {
    return '\$${number.substring(0, number.length - 6)}.${number.substring(number.length - 6, number.length - 4)}m';
  }
  // Validate mil
  else if (number.length >= 4 && number.length < 7) {
    return '\$${number.substring(0, number.length - 3)}.${number.substring(number.length - 3, number.length - 1)}k';
  }
  return 'NAN';
}
