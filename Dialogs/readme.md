# Система диалогов

Доступ к диалогу может быть получен через файл с его номером в папке `Dialogs`.

### Формат файла

Каждый файл представлен в `json`-формате. У него обязательно должен быть ключ "0", с которого начнется диалог.

### Формат фразы

Каждая фраза должна иметь ключи `name` и `text` для имени и текста соответственно. Опционально может идти ключ для следующей фразы `next`, иначе диалог закончится.

### Пример

```json
{
    "0": { "name": "Первый человек", "text": "Привет!", "next": "1" },
    "1": { "name": "Второй человек", "text": "Рад тебя видеть" }
}
```