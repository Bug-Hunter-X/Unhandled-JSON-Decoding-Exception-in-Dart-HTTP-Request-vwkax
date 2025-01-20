```dart
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      try {
        final jsonData = jsonDecode(response.body);
        final results = jsonData['results'] as List<dynamic>;
        for (var result in results) {
          print(result['name']);
        }
      } on FormatException catch (e) {
        print('Error: Invalid JSON format - $e');
      }
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e');
    rethrow; 
  }
}
```