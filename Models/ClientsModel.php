<?php
namespace Models;

use Logger;

require 'Logger.php';

class ClientsModel extends Model
{
    protected function connectToDatabase()
    {
        $servername = "localhost";
        $username = "root";
        $password = "";
        $database = "Platform";

        // Создаем соединение
        $this->db = new \mysqli($servername, $username, $password, $database);

        // Проверяем соединение
        if ($this->db->connect_error) {
            Logger::log("Проблема с соединением к базе данных в файле ".__FILE__);
            die("Connection failed: " . $this->db->connect_error);
        }
    }
    public function all()
    {
        // Реализация метода для получения всех записей из таблицы
        $query = "
            SELECT {$this->table}.id, {$this->table}.first_name, {$this->table}.last_name, 
                {$this->table}.email, {$this->table}.company_name, Positions.position 
            FROM {$this->table}
                JOIN Positions ON {$this->table}.id_position = Positions.id";
        $result = $this->db->query($query);
        $data = mysqli_fetch_all($result);
        return $data;
    }
    public function find($id)
    {
        // Реализация метода для получения записи по ID
        $query = "
            SELECT {$this->table}.id, {$this->table}.first_name, {$this->table}.last_name, 
                {$this->table}.email, {$this->table}.company_name, Positions.position 
            FROM {$this->table}
                JOIN Positions ON {$this->table}.id_position = Positions.id
            WHERE {$this->table}.id = " . intval($id);
        $result = $this->db->query($query);
        $data = mysqli_fetch_all($result);
        return $data;
    }
    public function create(array $data){
        // Добавляем личные данные клиента в таблицу Clients
        $query = "
                INSERT INTO Clients (first_name, last_name, email, company_name, id_position) VALUES(
                '{$data['firstname']}', '{$data['lastname']}', '{$data['email']}', '{$data['company']}',
                (SELECT id
                FROM Positions
                WHERE position = '{$data['position']}')
            )";

        // Подготовка и выполнение запроса
        if ($result = $this->db->query($query)) {
            if ($result) {
                Logger::log("Корректносработанный запрос в базу данных в файле ".__FILE__. "Класса: ".get_class($this)." Функции: ". __FUNCTION__);
            } else {
                Logger::log("Проблема с запросом к базе данных в файле ".__FILE__. "Класса: ".get_class($this)." Функции: ". __FUNCTION__);
            }
        } else {
            Logger::log("Проблема с соединением к базе данных в файле ".__FILE__. "Класса: ".get_class($this)." Функции: ". __FUNCTION__);
        }

        foreach ($data as $key => $value){
            // Добавляем данные телефонов клиента в таблицу Phones
            if(!empty($value) && ($key == 'phoneNumber1' || $key == 'phoneNumber2' || $key == 'phoneNumber3')) {
                $query = "
                INSERT INTO Phones (id_client, phone) VALUES(
                (SELECT MAX(id) FROM Clients), '{$value}'
                )";
                // Подготовка и выполнение запроса
                if ($result = $this->db->query($query)) {
                    if ($result) {
                        Logger::log("Корректносработанный запрос в базу данных в файле ".__FILE__. "Класса: ".get_class($this)." Функции: ". __FUNCTION__);
                    } else {
                        Logger::log("Проблема с запросом к базе данных в файле ".__FILE__. "Класса: ".get_class($this)." Функции: ". __FUNCTION__);
                    }
                } else {
                    Logger::log("Проблема с соединением к базе данных в файле ".__FILE__. "Класса: ".get_class($this)." Функции: ". __FUNCTION__);
                }
            }
        }
    }
    public function update($id, array $data){
        // Обновляем личные данные клиента в таблицу Clients
        $query = "UPDATE Clients
        SET first_name = '{$data['firstname']}', last_name = '{$data['lastname']}',
            email = '{$data['email']}', company_name = '{$data['company']}',
            id_position = (SELECT id FROM Positions WHERE position = '{$data['position']}')
        WHERE id = {$id}";

        if ($this->db->query($query)) {
            Logger::log("Корректносработанный запрос в базу данных в файле ".__FILE__. "Класса: ".get_class($this)." Функции: ". __FUNCTION__);
        } else {
            Logger::log("Проблема с соединением к базе данных в файле ".__FILE__. "Класса: ".get_class($this)." Функции: ". __FUNCTION__);
        }
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
        $phone_ids = []; // Список id сохраненных телефонов в базе данных
        $current_phones = []; // Список сохраненных телефонов в базе данных
        $query = "SELECT * FROM Phones WHERE id_client = '{$id}'";
        $result = $this->db->query($query);
        // Проверка наличия результатов
        if ($result->num_rows > 0) {
            while ($row = mysqli_fetch_assoc($result)) {
                array_push($current_phones, $row['phone']);
                array_push($phone_ids, $row['id']);
            }
        } else {
            echo "Нет результатов1.";
        }
        $new_phones = [];
        foreach ($data as $key => $value){
            // Добавляем данные телефонов клиента в таблицу Phones
            if(!empty($value) && ($key == 'phoneNumber1' || $key == 'phoneNumber2' || $key == 'phoneNumber3')) {
                array_push($new_phones, $value);
            }
        }
        //Возможно три варианта:
        //-1) когда необходимо полностью удалить телефоны
        // 0) когда изначально у пользователя не было номера телефона
        // 1) когда количество измененных телефонов пользователя и тех, что находятся в базе данных, одинаково
        // 2) когда кол-во изм-х тел-в пользователя больше тех, что находятся в базе данных
        // 3) когда кол-во изм=х тел-в пользователя меньше тех, что находятся в базе данных
        if(count($new_phones) == 0 && count($phone_ids) != 0) {
            $query = "DELETE FROM Phones WHERE id_client = '{$id}'";
            if ($this->db->query($query) === TRUE) {
                Logger::log("Корректносработанный запрос в базу данных в файле ".__FILE__. "Класса: ".get_class($this)." Функции: ". __FUNCTION__);
            } else {
                Logger::log("Проблема с соединением к базе данных в файле ".__FILE__. "Класса: ".get_class($this)." Функции: ". __FUNCTION__);
            }
        }elseif(count($new_phones) > count($phone_ids) && count($new_phones) != 0 && count($phone_ids) == 0) {
            foreach ($new_phones as $phone) {
                $query = "
                            INSERT INTO Phones (id_client, phone) VALUES(
                            '{$id}', '{$phone}'
                            )";
                // Подготовка и выполнение запроса
                if ($result = $this->db->query($query)) {
                    if ($result) {
                        Logger::log("Корректносработанный запрос в базу данных в файле ".__FILE__. "Класса: ".get_class($this)." Функции: ". __FUNCTION__);
                    } else {
                        Logger::log("Проблема с запросом к базе данных в файле ".__FILE__. "Класса: ".get_class($this)." Функции: ". __FUNCTION__);
                    }
                } else {
                    Logger::log("Проблема с соединением к базе данных в файле ".__FILE__. "Класса: ".get_class($this)." Функции: ". __FUNCTION__);
                }
            }
        }elseif(count($new_phones) === count($phone_ids) && count($new_phones) != 0 && count($phone_ids) != 0){
            $i = 0;
            foreach ($new_phones as $key => $value){
                // Обновляем данные телефонов клиента в таблицу Phones
                $query = "UPDATE Phones 
                SET phone = '{$value}'
                WHERE id = '{$phone_ids[$i]}'";
                // Подготовка и выполнение запроса
                if ($result = $this->db->query($query)) {
                    if ($result) {
                        Logger::log("Корректносработанный запрос в базу данных в файле ".__FILE__. "Класса: ".get_class($this)." Функции: ". __FUNCTION__);
                    } else {
                        Logger::log("Проблема с запросом к базе данных в файле ".__FILE__. "Класса: ".get_class($this)." Функции: ". __FUNCTION__);
                    }
                } else {
                    Logger::log("Проблема с соединением к базе данных в файле ".__FILE__. "Класса: ".get_class($this)." Функции: ". __FUNCTION__);
                }
                $i++;
            }
        }else if(count($new_phones) > count($phone_ids) && count($new_phones) != 0 && count($phone_ids) != 0){
            $i = 0;
            foreach ($new_phones as $key => $value){
                if($i >= count($phone_ids)) break;
                // Обновляем данные телефонов клиента в таблицу Phones
                $query = "UPDATE Phones 
                SET phone = '{$value}'
                WHERE id = '{$phone_ids[$i]}'";
                // Подготовка и выполнение запроса
                if ($result = $this->db->query($query)) {
                    if ($result) {
                        Logger::log("Корректносработанный запрос в базу данных в файле ".__FILE__. "Класса: ".get_class($this)." Функции: ". __FUNCTION__);
                    } else {
                        Logger::log("Проблема с запросом к базе данных в файле ".__FILE__. "Класса: ".get_class($this)." Функции: ". __FUNCTION__);
                    }
                } else {
                    Logger::log("Проблема с соединением к базе данных в файле ".__FILE__. "Класса: ".get_class($this)." Функции: ". __FUNCTION__);
                }
                $i++;
            }
            for(;$i < count($new_phones); $i++){
                // Добавляем номера телефонов
                $query = "
                INSERT INTO Phones (id_client, phone) VALUES(
                '{$id}', '{$new_phones[$i]}'
                )";
                // Подготовка и выполнение запроса
                if ($result = $this->db->query($query)) {
                    if ($result) {
                        Logger::log("Корректносработанный запрос в базу данных в файле ".__FILE__. "Класса: ".get_class($this)." Функции: ". __FUNCTION__);
                    } else {
                        Logger::log("Проблема с запросом к базе данных в файле ".__FILE__. "Класса: ".get_class($this)." Функции: ". __FUNCTION__);
                    }
                } else {
                    Logger::log("Проблема с соединением к базе данных в файле ".__FILE__. "Класса: ".get_class($this)." Функции: ". __FUNCTION__);
                }
            }
        }else if(count($new_phones) < count($phone_ids) && count($new_phones) != 0 && count($phone_ids) != 0){
            // Получаем id телефонов, которые нужно изменить или удалить
            $i = 0;
            $must_save_ids = []; // Массив для хранения id телефонов, которые не изменяются
            foreach ($current_phones as $key => $phone) {
                if (in_array($phone, $new_phones)) {
                    array_push($must_save_ids, $phone_ids[$i]);
                }
                $i++;
            }
            $i = 0;
            $query1 = "SELECT * FROM Phones WHERE id_client = '{$id}'";
            $result = $this->db->query($query1);// Проверка на наличие ошибок в запросе
            // Проверка наличия результатов
            if ($result->num_rows > 0) {
                $i = 0;
                $phonesToDelete = []; // Массив для хранения id телефонов для удаления
                while ($row = $result->fetch_assoc()) {
                    if ($i >= count($new_phones)) {
                        try {
                            array_push($phonesToDelete, $row['id']); // Добавляем id к удаляемым телефонам
                            $i++;
                            continue;
                        }catch (\Exception $ex){
                            Logger::log("Проблема с соединением к базе данных в файле ".__FILE__. "Класса: ".get_class($this)." Функции: ". __FUNCTION__);
                        }
                    }
                    if (!in_array($row['id'], $must_save_ids)) {
                        try {
                            // Обновляем данные телефонов клиента в таблицу Phones
                            $query = "UPDATE Phones 
                            SET phone = '{$new_phones[$i]}'
                            WHERE id = '{$row['id']}'";
                            // Подготовка и выполнение запроса
                            if ($result1 = $this->db->query($query)) {
                                if ($result1) {
                                    Logger::log("Корректносработанный запрос в базу данных в файле ".__FILE__. "Класса: ".get_class($this)." Функции: ". __FUNCTION__);
                                } else {
                                    Logger::log("Проблема с запросом к базе данных в файле ".__FILE__. "Класса: ".get_class($this)." Функции: ". __FUNCTION__);
                                }
                            } else {
                                Logger::log("Проблема с соединением к базе данных в файле ".__FILE__. "Класса: ".get_class($this)." Функции: ". __FUNCTION__);
                            }
                            $i++;
                        }catch (\Exception $ex){
                            Logger::log("Проблема с соединением к базе данных в файле ".__FILE__. "Класса: ".get_class($this)." Функции: ". __FUNCTION__);
                        }
                    }else{
                        $i++;
                    }
                }
            } else {
                Logger::log("Что-то пошло ни так ".__FILE__. "Класса: ".get_class($this)." Функции: ". __FUNCTION__);
            }
            if (!empty($phonesToDelete)) {
                $phonesToDeleteStr = implode(',', $phonesToDelete);
                $query = "DELETE FROM Phones WHERE id IN ({$phonesToDeleteStr})";

                if ($this->db->query($query) === TRUE) {
                    Logger::log("Корректносработанный запрос в базу данных в файле ".__FILE__. "Класса: ".get_class($this)." Функции: ". __FUNCTION__);
                } else {
                    Logger::log("Проблема с соединением к базе данных в файле ".__FILE__. "Класса: ".get_class($this)." Функции: ". __FUNCTION__);
                }
            }
        }else{
            Logger::log("Проблема в файле ".__FILE__. "Класса: ".get_class($this)." Функции: ". __FUNCTION__);
        }
    }
    public function delete($id){
        // Запрос на удаление клиента по его id
        $query = "DELETE FROM Clients WHERE id = '{$id}'";
        if($this->db->query($query) === TRUE){
            Logger::log("Корректносработанный запрос в базу данных в файле ".__FILE__. "Класса: ".get_class($this)." Функции: ". __FUNCTION__);
        } else {
            Logger::log("Проблема с соединением к базе данных в файле ".__FILE__. "Класса: ".get_class($this)." Функции: ". __FUNCTION__);
        }
    }
}