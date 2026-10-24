#!/usr/bin/env bash
# Вариант Б — Мониторинг ресурсов

LOG_FILE="monitor.log"
INTERVAL=5

# Проверка прав на запись в текущую директорию
if [ ! -w . ]; then
    echo "Ошибка: нет прав на запись!" >&2
    exit 1
fi

echo "Запуск мониторинга (интервал $INTERVAL сек). Нажми Ctrl+C для остановки."

while true; do
    {
        echo "--- $(date '+%Y-%m-%d %H:%M:%S') ---"
        free -h
        df -h
        uptime
    } >> "$LOG_FILE"
    sleep "$INTERVAL"
done
