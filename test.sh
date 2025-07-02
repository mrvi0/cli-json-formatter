#!/bin/bash

# Test script for JSON Formatter CLI

echo "🧪 Running JSON Formatter CLI tests..."
echo

# Check for jq availability
if ! command -v jq &> /dev/null; then
    echo "❌ jq is not installed. Install with: sudo apt install jq"
    exit 1
fi

# Make script executable
chmod +x jsonfmt

# Test data
VALID_JSON='{"name": "Test User", "age": 25, "hobbies": ["reading", "coding"]}'
INVALID_JSON='{"name": "Test", "age": 25,}'

echo "✅ Test 1: Validating correct JSON"
echo "$VALID_JSON" | ./jsonfmt
echo

echo "✅ Test 2: Validating incorrect JSON"
echo "$INVALID_JSON" | ./jsonfmt
echo

echo "✅ Test 3: Formatting with information"
echo "$VALID_JSON" | ./jsonfmt --info
echo

echo "✅ Test 4: Working with file"
echo "$VALID_JSON" > test.json
./jsonfmt -f test.json
echo

echo "✅ Test 5: Saving to file"
./jsonfmt -f test.json -o formatted.json
echo "Content of saved file:"
cat formatted.json
echo

echo "✅ Test 6: Custom indentation"
./jsonfmt -f test.json -i 4
echo

echo "✅ Test 7: Help"
./jsonfmt --help | head -10
echo

echo "🎉 All tests completed!"

# Cleanup
rm -f test.json formatted.json 