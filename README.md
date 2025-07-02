# JSON Formatter & Validator CLI

🚀 Lightweight and fast CLI tool for JSON validation and formatting.

## ✨ Features

- ✅ **JSON Validation** - check JSON syntax correctness
- 🎨 **Pretty Print** - beautiful formatting with customizable indentation
- 📁 **File Operations** - read from files and save results
- 🔧 **Flexible Options** - customize indentation, show additional information
- 🎯 **Error Handling** - clear error messages
- 📊 **JSON Information** - statistics and metadata
- ⚡ **Fast Startup** - single bash script, no npm dependencies

## 🛠️ Installation

### Quick Installation (Recommended)

```bash
# Clone the repository
git clone https://github.com/yourusername/json-formatter-cli.git
cd json-formatter-cli

# Install to system
sudo ./install.sh
```

### Manual Installation

```bash
# Install jq (if not installed)
sudo apt install jq  # Ubuntu/Debian
sudo yum install jq  # CentOS/RHEL
sudo pacman -S jq    # Arch Linux

# Make script executable
chmod +x jsonfmt

# Copy to system directory
sudo cp jsonfmt /usr/local/bin/
```

## 🚀 Usage

### Basic Usage

```bash
# Validate and format JSON string
jsonfmt '{"name": "John", "age": 30}'

# Work with file
jsonfmt -f examples/sample.json

# Read from stdin
echo '{"data": "value"}' | jsonfmt
```

### Command Line Options

```bash
# Save result to file
jsonfmt -f input.json -o output.json

# Customize indentation (default: 2 spaces)
jsonfmt -f input.json -i 4

# Show additional information
jsonfmt -f input.json --info

# Full help
jsonfmt --help
```

### Usage Examples

#### 1. Validate JSON File
```bash
jsonfmt -f examples/sample.json
```

**Output:**
```
✅ JSON is valid (file: examples/sample.json)

📋 Formatted JSON:
{
  "name": "JSON Formatter CLI",
  "version": "1.0.0",
  "description": "A command-line tool for JSON validation and formatting",
  ...
}
```

#### 2. Format with Information
```bash
jsonfmt -f examples/sample.json --info
```

**Output:**
```
✅ JSON is valid (file: examples/sample.json)

📋 Formatted JSON:
{...}

📊 JSON Information:
   Root element type: Object
   Size: 456 characters
   Number of properties: 6
```

#### 3. Save to File
```bash
jsonfmt -f examples/sample.json -o formatted.json
```

**Output:**
```
✅ JSON is valid (file: examples/sample.json)
📝 Formatted JSON saved to: formatted.json
```

#### 4. Error Handling
```bash
jsonfmt -f invalid.json
```

**Output:**
```
❌ Invalid JSON (file: invalid.json):
   parse error: Unexpected token } at line 1, column 15
```

## 🧪 Testing

Run tests to verify functionality:

```bash
chmod +x test.sh
./test.sh
```

Tests verify:
- Valid JSON validation
- Invalid JSON handling
- JSON string formatting
- File saving
- Indentation settings
- Help output

## 📁 Project Structure

```
json-formatter-cli/
├── jsonfmt              # Main bash script
├── install.sh           # Installation script
├── uninstall.sh         # Uninstall script
├── test.sh              # Tests
├── examples/
│   └── sample.json      # Sample JSON file
├── README.md           # Documentation
├── LICENSE             # MIT license
└── .gitignore          # Ignored files
```

## 🔧 Technical Details

### Dependencies
- **jq** - JSON processor for validation and formatting
- **bash 4.0+** - command line interpreter

### Main Functions
- `validate_json()` - JSON syntax validation
- `format_json()` - indentation formatting
- `read_file()` - safe file reading
- `write_file()` - safe file writing
- `get_json_info()` - JSON metadata extraction

### Error Handling
- JSON syntax validation via jq
- File existence and permission checks
- Read/write error handling
- Clear error messages with colored output

## 🎯 Bash Version Advantages

- ⚡ **Fast Startup** - no npm install required
- 🎯 **Minimal Dependencies** - only jq
- 🔧 **Simple Installation** - single installation script
- 📦 **Lightweight** - single file ~5KB
- 🐧 **Native Linux Support** - works out of the box
- 🎨 **Colored Output** - beautiful result display

## 🎯 Project Usage

This CLI tool is perfect for:
- Validating JSON configuration files
- Formatting API responses
- Data validation in CI/CD pipelines
- JSON processing in automation scripts
- Quick JSON checking in command line

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

## 📄 License

This project is licensed under the MIT License. See the `LICENSE` file for details.

## 👨‍💻 Author

**Your Name** - [GitHub](https://github.com/yourusername)

---

⭐ If you like this project, give it a star on GitHub! 