```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Success!  Do something with 'response.body'
      final jsonData = jsonDecode(response.body);
      //  Assume that the json contains a 'results' field as a list of maps. 
      final results = jsonData['results'] as List<dynamic>;
      for(var result in results){
        print(result['name']);
      }
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e'); // Handle error
    rethrow; // Re-throw the exception to be handled by a higher level of the application.
  }
}
```