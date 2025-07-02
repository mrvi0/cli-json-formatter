# 🚀 Quick Start

## Installation in 30 seconds

```bash
# 1. Clone the repository
git clone https://github.com/yourusername/json-formatter-cli.git
cd json-formatter-cli

# 2. Install to system
sudo ./install.sh

# 3. Done! Now use the jsonfmt command
```

## First Commands

```bash
# Check installation
jsonfmt --version

# Format JSON string
jsonfmt '{"name": "John", "age": 30}'

# Work with file
jsonfmt -f examples/sample.json

# Save result
jsonfmt -f input.json -o output.json
```

## Requirements

- Linux/Unix system
- jq (installed automatically)
- bash 4.0+

## Uninstall

### Using uninstall script (recommended)
```bash
sudo ./uninstall.sh
```

### Manual uninstall
```bash
sudo rm /usr/local/bin/jsonfmt
```

---

**Ready!** Now you have a lightweight and fast tool for working with JSON in the command line. 