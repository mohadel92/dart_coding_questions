bool solution(String inputString) {
// Check if the string is empty or doesn't contain exactly 3 dots
  if (inputString.isEmpty || inputString.split('.').length != 4) {
    return false;
  }

  List<String> parts = inputString.split('.');

  for (String part in parts) {
    // Check if part is empty or has leading zeros (except the single digit '0')
    if (part.isEmpty || (part.length > 1 && part.startsWith('0'))) {
      return false;
    }

    try {
      // Parse the part into an integer
      int number = int.parse(part);

      // Check if the number is out of the valid range for an IPv4 address
      if (number < 0 || number > 255) {
        return false;
      }
    } catch (e) {
      // If parsing fails, it's not a valid integer, so return false
      return false;
    }
  }

  return true;
}
