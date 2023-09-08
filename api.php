<?php
// Данный файл передает данные клиентов на фронт частями по 10шт.
require 'Logger.php';

// Получите номер страницы из GET-параметра
$page = isset($_GET['page']) ? (int)$_GET['page'] : 1;

// Определите, сколько клиентов вы хотите выбрать на одной странице
$perPage = 10;

// Вычислите смещение для запроса
$offset = ($page - 1) * $perPage;

$servername = "localhost";
$username = "root";
$password = "";
$database = "Platform";

// Создаем соединение
$db = new \mysqli($servername, $username, $password, $database);

// SQL-запрос для получения количества записей в таблице
$sql = "SELECT COUNT(*) as total FROM Clients";

// Выполнение запроса
$result = mysqli_query($db, $sql);

// Проверка наличия ошибок при выполнении запроса
if (!$result) {
    Logger::log("Проблема с запросом к базе данных в файле ".__FILE__);
    exit;
}
// Извлечение результата запроса
$row = mysqli_fetch_assoc($result);

// Получение количества записей
$total_pages = (int)($row['total']/10 + 1);

// Проверяем соединение
if ($db->connect_error) {
    Logger::log("Проблема с соединением к базе данных в файле ".__FILE__);
    die("Connection failed: " . $db->connect_error);
}
// Выполните SQL-запрос для выборки клиентов с учетом смещения и лимита
$query = "
            SELECT CLients.id, Clients.first_name, Clients.last_name, 
                Clients.email, Clients.company_name, Positions.position 
            FROM Clients
                LEFT JOIN Positions ON Clients.id_position = Positions.id
            LIMIT {$offset}, {$perPage}";

// Выаолняем запрос к базе данных и получите результат
$result = $db->query($query);
// Преобразуем результат в ассоциативный массив
$clients = $result->fetch_all(MYSQLI_ASSOC);

$response = [
    'clients' => $clients,
    'total_pages' => $total_pages
];

// Отправляем массив клиентов как JSON-ответ
header('Content-Type: application/json');
echo json_encode($response);
?>