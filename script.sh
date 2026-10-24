#!/usr/bin/env bash
# Вариант Б — Мониторинг ресурсов

LOG_FILE="monitor.log"
INTERVAL=5

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
