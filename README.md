# Unhandled JSON Decoding Exception in Dart

This repository demonstrates a common error in Dart applications involving HTTP requests and JSON parsing: not explicitly catching `FormatException` when decoding JSON.

The `bug.dart` file shows the code with the error, and `bugSolution.dart` provides an improved version with robust error handling.

## Problem

The original code fails to handle cases where the server returns an invalid JSON response.  A `FormatException` will be thrown by `jsonDecode`, leading to a crash if not caught appropriately.

## Solution

The improved code in `bugSolution.dart` includes a `catch` block specifically for `FormatException`, providing more informative error messages and allowing for more graceful recovery.  It also rethrows other exceptions to allow for handling at higher levels.

## How to run

1. Clone this repository.
2. Ensure you have Dart installed and set up.
3. Run the Dart files using the Dart command line interface.