# JSON Formatter & Validator CLI

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Shell: Bash](https://img.shields.io/badge/Shell-Bash-4EAA25.svg)](https://www.gnu.org/software/bash/)
[![Dependency: jq](https://img.shields.io/badge/Dependency-jq-1.6+-blue.svg)](https://stedolan.github.io/jq/)
[![Platform: Linux](https://img.shields.io/badge/Platform-Linux%20%7C%20Unix-lightgrey.svg)](https://www.linux.org/)
[![Version: 1.0.0](https://img.shields.io/badge/Version-1.0.0-green.svg)](https://github.com/yourusername/json-formatter-cli)

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

[![Installation](https://img.shields.io/badge/Installation-30%20seconds-brightgreen.svg)](https://github.com/yourusername/json-formatter-cli)
[![Platform](https://img.shields.io/badge/Platform-Linux%20%7C%20Unix-blue.svg)](https://www.linux.org/)
[![Dependencies](https://img.shields.io/badge/Dependencies-Auto%20install-orange.svg)](https://stedolan.github.io/jq/)

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

[![Usage](https://img.shields.io/badge/Usage-Simple%20CLI-brightgreen.svg)](https://github.com/yourusername/json-formatter-cli)
[![Features](https://img.shields.io/badge/Features-Validation%20%7C%20Formatting-blue.svg)](https://github.com/yourusername/json-formatter-cli)
[![Output](https://img.shields.io/badge/Output-Colored%20%7C%20Pretty-orange.svg)](https://github.com/yourusername/json-formatter-cli)

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

[![Tests](https://img.shields.io/badge/Tests-Automated%20Suite-brightgreen.svg)](https://github.com/yourusername/json-formatter-cli)
[![Coverage](https://img.shields.io/badge/Coverage-All%20Features-blue.svg)](https://github.com/yourusername/json-formatter-cli)
[![Status](https://img.shields.io/badge/Status-Passing-orange.svg)](https://github.com/yourusername/json-formatter-cli)

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

[![Fast Startup](https://img.shields.io/badge/Fast%20Startup-No%20npm%20install-brightgreen.svg)](https://github.com/yourusername/json-formatter-cli)
[![Minimal Dependencies](https://img.shields.io/badge/Dependencies-jq%20only-orange.svg)](https://stedolan.github.io/jq/)
[![Lightweight](https://img.shields.io/badge/Lightweight-~5KB-blue.svg)](https://github.com/yourusername/json-formatter-cli)
[![Linux Native](https://img.shields.io/badge/Linux-Native%20Support-red.svg)](https://www.linux.org/)

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