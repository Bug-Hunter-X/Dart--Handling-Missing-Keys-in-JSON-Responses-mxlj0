```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      // Safe access using null-aware operators
      final someValue = data['someKey'];
      if (someValue != null) {
        print(someValue);
      } else {
        print('Key "someKey" not found in JSON response.');
      }
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e');
  }
}
```