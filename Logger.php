<?php
class Logger
{
    public static function log($message) {
        // Получаем текущую дату и время
        $timestamp = date('Y-m-d H:i:s');

        // Сообщение лога
        $logMessage = "[$timestamp] $message\n";

        // Добавление сообщения в файл
        file_put_contents("logs.txt", $logMessage, FILE_APPEND);
    }
}