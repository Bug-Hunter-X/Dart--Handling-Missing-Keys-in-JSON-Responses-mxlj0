# Dart: Handling Missing Keys in JSON Responses

This repository demonstrates a common error in Dart when working with JSON responses: accessing keys that might not exist.  The `bug.dart` file shows the problematic code, while `bugSolution.dart` provides a solution.

The core issue is that if a JSON response doesn't contain the key you're trying to access,  a runtime exception will occur.  The solution shows how to safely access JSON keys using null-aware operators and checks.