<?php
require 'Models/Model.php'; // Подключаем файл с базовым классом Model
require 'Models/ClientsModel.php'; // Подключаем файл с классом ClientsModel


use Models\ClientsModel;
if (isset($_POST['register'])){
    if(!isset($_POST['firstname']) && !isset($_POST['lastname']) && !isset($_POST['email'])){
        session_start();
        Logger::log("Некорректно отправлены данные пользователем ".__FILE__. "Класса: ".get_class($this)." Функции: ". __FUNCTION__);
        $_SESSION['error'] = 'Следуйте всплывающей инструкции при заполнении полей';
        header("Location: index.php");
        exit;
    }
    $client = new ClientsModel('Clients');
    $client->create($_POST);
    header("Location: clientslist.html");
    exit;
}else{
    header("Location: index.php");
    exit;
}