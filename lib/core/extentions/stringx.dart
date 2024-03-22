extension StringX on String{

  String createAvatarName() {
    List<String>? name = split(" ");
    String firstName = name.isNotEmpty ? name[0] : this;
    String lastName = name.length >= 2 ? name[1] : "";
    String firstChar = firstName.split("").first;
    String lastChar = lastName.split("").first;
    return name.length >= 2 ? "$firstChar$lastChar" : firstName;
  }
}