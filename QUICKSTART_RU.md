# 🚀 Быстрый старт

## Установка за 30 секунд

```bash
# 1. Клонируйте репозиторий
git clone https://github.com/yourusername/json-formatter-cli.git
cd json-formatter-cli

# 2. Установите в систему
sudo ./install.sh

# 3. Готово! Теперь используйте команду jsonfmt
```

## Первые команды

```bash
# Проверьте установку
jsonfmt --version

# Отформатируйте JSON строку
jsonfmt '{"name": "John", "age": 30}'

# Работа с файлом
jsonfmt -f examples/sample.json

# Сохраните результат
jsonfmt -f input.json -o output.json
```

## Требования

- Linux/Unix система
- jq (устанавливается автоматически)
- bash 4.0+

## Удаление

```bash
sudo rm /usr/local/bin/jsonfmt
```

---

**Готово!** Теперь у вас есть легкий и быстрый инструмент для работы с JSON в командной строке. 