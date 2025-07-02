# JSON Formatter & Validator CLI

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Shell: Bash](https://img.shields.io/badge/Shell-Bash-4EAA25.svg)](https://www.gnu.org/software/bash/)
[![Dependency: jq](https://img.shields.io/badge/Dependency-jq-1.6+-blue.svg)](https://stedolan.github.io/jq/)
[![Platform: Linux](https://img.shields.io/badge/Platform-Linux%20%7C%20Unix-lightgrey.svg)](https://www.linux.org/)
[![Version: 1.0.0](https://img.shields.io/badge/Version-1.0.0-green.svg)](https://github.com/yourusername/json-formatter-cli)

🚀 Легкий и быстрый CLI инструмент для валидации и форматирования JSON файлов и строк.

## ✨ Возможности

- ✅ **Валидация JSON** - проверка корректности JSON синтаксиса
- 🎨 **Pretty Print** - красивое форматирование с настраиваемыми отступами
- 📁 **Работа с файлами** - чтение из файлов и сохранение результатов
- 🔧 **Гибкие опции** - настройка отступов, вывод дополнительной информации
- 🎯 **Обработка ошибок** - понятные сообщения об ошибках
- 📊 **Информация о JSON** - статистика и метаданные
- ⚡ **Быстрый запуск** - один bash скрипт, без зависимостей npm

## 🛠️ Установка

[![Установка](https://img.shields.io/badge/Установка-30%20секунд-brightgreen.svg)](https://github.com/yourusername/json-formatter-cli)
[![Платформа](https://img.shields.io/badge/Платформа-Linux%20%7C%20Unix-blue.svg)](https://www.linux.org/)
[![Зависимости](https://img.shields.io/badge/Зависимости-Авто%20установка-orange.svg)](https://stedolan.github.io/jq/)

### Быстрая установка (рекомендуется)

```bash
# Клонируйте репозиторий
git clone https://github.com/yourusername/json-formatter-cli.git
cd json-formatter-cli

# Установите в систему
sudo ./install.sh
```

### Ручная установка

```bash
# Установите jq (если не установлен)
sudo apt install jq  # Ubuntu/Debian
sudo yum install jq  # CentOS/RHEL
sudo pacman -S jq    # Arch Linux

# Сделайте скрипт исполняемым
chmod +x jsonfmt

# Скопируйте в системную директорию
sudo cp jsonfmt /usr/local/bin/
```

## 🚀 Использование

[![Использование](https://img.shields.io/badge/Использование-Простой%20CLI-brightgreen.svg)](https://github.com/yourusername/json-formatter-cli)
[![Функции](https://img.shields.io/badge/Функции-Валидация%20%7C%20Форматирование-blue.svg)](https://github.com/yourusername/json-formatter-cli)
[![Вывод](https://img.shields.io/badge/Вывод-Цветной%20%7C%20Красивый-orange.svg)](https://github.com/yourusername/json-formatter-cli)

### Базовое использование

```bash
# Валидация и форматирование JSON строки
jsonfmt '{"name": "John", "age": 30}'

# Работа с файлом
jsonfmt -f examples/sample.json

# Чтение из stdin
echo '{"data": "value"}' | jsonfmt
```

### Опции командной строки

```bash
# Сохранение результата в файл
jsonfmt -f input.json -o output.json

# Настройка отступа (по умолчанию 2 пробела)
jsonfmt -f input.json -i 4

# Показать дополнительную информацию
jsonfmt -f input.json --info

# Полная справка
jsonfmt --help
```

### Примеры использования

#### 1. Валидация JSON файла
```bash
jsonfmt -f examples/sample.json
```

**Вывод:**
```
✅ JSON валиден (файл: examples/sample.json)

📋 Отформатированный JSON:
{
  "name": "JSON Formatter CLI",
  "version": "1.0.0",
  "description": "A command-line tool for JSON validation and formatting",
  ...
}
```

#### 2. Форматирование с информацией
```bash
jsonfmt -f examples/sample.json --info
```

**Вывод:**
```
✅ JSON валиден (файл: examples/sample.json)

📋 Отформатированный JSON:
{...}

📊 Информация о JSON:
   Тип корневого элемента: Object
   Размер: 456 символов
   Количество свойств: 6
```

#### 3. Сохранение в файл
```bash
jsonfmt -f examples/sample.json -o formatted.json
```

**Вывод:**
```
✅ JSON валиден (файл: examples/sample.json)
📝 Отформатированный JSON сохранен в: formatted.json
```

#### 4. Обработка ошибок
```bash
jsonfmt -f invalid.json
```

**Вывод:**
```
❌ Невалидный JSON (файл: invalid.json):
   parse error: Unexpected token } at line 1, column 15
```

## 🧪 Тестирование

[![Тесты](https://img.shields.io/badge/Тесты-Автоматизированные-brightgreen.svg)](https://github.com/yourusername/json-formatter-cli)
[![Покрытие](https://img.shields.io/badge/Покрытие-Все%20функции-blue.svg)](https://github.com/yourusername/json-formatter-cli)
[![Статус](https://img.shields.io/badge/Статус-Проходят-orange.svg)](https://github.com/yourusername/json-formatter-cli)

Запустите тесты для проверки функциональности:

```bash
chmod +x test.sh
./test.sh
```

Тесты проверяют:
- Валидацию корректного JSON
- Обработку некорректного JSON
- Форматирование JSON строк
- Сохранение в файлы
- Настройку отступов
- Вывод справки

## 📁 Структура проекта

```
json-formatter-cli/
├── jsonfmt              # Основной bash скрипт
├── install.sh           # Скрипт установки
├── uninstall.sh         # Скрипт удаления
├── test.sh              # Тесты
├── examples/
│   └── sample.json      # Пример JSON файла
├── README.md           # Документация
├── LICENSE             # MIT лицензия
└── .gitignore          # Игнорируемые файлы
```

## 🔧 Технические детали

### Зависимости
- **jq** - JSON processor для валидации и форматирования
- **bash 4.0+** - интерпретатор командной строки

### Основные функции
- `validate_json()` - валидация JSON синтаксиса
- `format_json()` - форматирование с отступами
- `read_file()` - безопасное чтение файлов
- `write_file()` - безопасная запись файлов
- `get_json_info()` - получение метаданных JSON

### Обработка ошибок
- Валидация JSON синтаксиса через jq
- Проверка существования и прав доступа к файлам
- Обработка ошибок чтения/записи
- Понятные сообщения об ошибках с цветным выводом

## 🎯 Преимущества bash версии

[![Быстрый запуск](https://img.shields.io/badge/Быстрый%20запуск-Без%20npm%20install-brightgreen.svg)](https://github.com/yourusername/json-formatter-cli)
[![Минимальные зависимости](https://img.shields.io/badge/Зависимости-только%20jq-orange.svg)](https://stedolan.github.io/jq/)
[![Легкий вес](https://img.shields.io/badge/Легкий%20вес-~5KB-blue.svg)](https://github.com/yourusername/json-formatter-cli)
[![Linux нативный](https://img.shields.io/badge/Linux-Нативная%20поддержка-red.svg)](https://www.linux.org/)

- ⚡ **Быстрый запуск** - нет необходимости в npm install
- 🎯 **Минимальные зависимости** - только jq
- 🔧 **Простая установка** - один скрипт установки
- 📦 **Легкий вес** - всего один файл ~5KB
- 🐧 **Нативная поддержка Linux** - работает из коробки
- 🎨 **Цветной вывод** - красивое отображение результатов

## 🎯 Использование в проектах

Этот CLI инструмент идеально подходит для:
- Проверки JSON конфигурационных файлов
- Форматирования API ответов
- Валидации данных в CI/CD пайплайнах
- Обработки JSON в скриптах автоматизации
- Быстрой проверки JSON в командной строке

## 🤝 Вклад в проект

1. Форкните репозиторий
2. Создайте ветку для новой функции (`git checkout -b feature/amazing-feature`)
3. Зафиксируйте изменения (`git commit -m 'Add amazing feature'`)
4. Отправьте в ветку (`git push origin feature/amazing-feature`)
5. Откройте Pull Request

## 📄 Лицензия

Этот проект распространяется под лицензией MIT. См. файл `LICENSE` для подробностей.

## 👨‍💻 Автор

**Ваше Имя** - [GitHub](https://github.com/yourusername)

---

⭐ Если этот проект вам понравился, поставьте звездочку на GitHub! 