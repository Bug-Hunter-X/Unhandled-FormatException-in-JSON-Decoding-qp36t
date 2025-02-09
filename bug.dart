```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // This line can throw a FormatException if the JSON is invalid
      final jsonData = jsonDecode(response.body);
      // Process jsonData
    } else {
      // Handle error
      throw Exception('Failed to load data');
    }
  } catch (e) {
    // This will catch FormatException and other exceptions, but won't give you specific information
    print('Error: $e');
  }
}
```