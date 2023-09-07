<?php

namespace Models;

abstract class Model
{
    protected $db; // Объект подключения к базе данных
    protected $table; // Имя таблицы базы данных, связанной с моделью
    public function __construct($table)
    {
        $this->table = $table; // Установливаем имя таблицы
        $this->connectToDatabase(); // Подключаемся к базе данных
    }
    abstract protected function connectToDatabase();
    abstract public function all();
    abstract public function find($id);
    abstract public function create(array $data);
    abstract public function update($id, array $data);
    abstract public function delete($id);
}

?>