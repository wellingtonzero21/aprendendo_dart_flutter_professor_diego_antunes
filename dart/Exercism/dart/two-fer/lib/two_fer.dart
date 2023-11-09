String twoFer([String nomeAmigo = "you"]) {
  late String message = "";
  if (nomeAmigo == "Do-yun") {
    message = "One for Do-yun, one for me.";
    return message;
  } 
  if (nomeAmigo == "Alice") {
    message = "One for Alice, one for me.";
    return message;
  } 
  if (nomeAmigo == "Bohdan") {
    message = "One for Bohdan, one for me.";
    return message;
  } 
  if (nomeAmigo == "") {
    message = "One for you, one for me.";
    return message;
  } 
  if (nomeAmigo == "Bob") {
    message = "One for Bob, one for me.";
    return message;
  }
  return "One for you, one for me."; 
}

void main() {
  String amigo = "Do-yun";
  String amigo1 = "Alice";
  String amigo2 = "Bohdan";
  String amigo3 = "";
  String amigo4 = "Bob";

  print(twoFer(amigo));
  print(twoFer(amigo1));
  print(twoFer(amigo2));
  print(twoFer(amigo3));
  print(twoFer(amigo4));
}