class Helpers {
  static String capitalize(String string) {
    return string.isEmpty
        ? ""
        : "${string[0].toUpperCase()}${string.substring(1).toLowerCase()}";
  }
}
