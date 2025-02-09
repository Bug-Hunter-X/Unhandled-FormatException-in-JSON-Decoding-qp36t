# Unhandled FormatException in JSON Decoding

This repository demonstrates a common but easily missed error in Dart when dealing with JSON parsing: the `FormatException` that occurs when `jsonDecode` encounters malformed JSON. The issue is exacerbated when a generic `catch` block is used, obscuring the root cause.

The `bug.dart` file shows the erroneous code. The `bugSolution.dart` file provides the solution.

## Problem

The original code uses a generic `catch` block to handle any errors during JSON decoding. If a `FormatException` occurs (e.g., due to invalid JSON), the specific error details are lost, making debugging more difficult.

## Solution

The solution involves using a more specific `catch` block to handle `FormatException` and provide more descriptive error messages.