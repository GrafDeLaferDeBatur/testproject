<?php
require 'Models/Model.php'; // Подключаем файл с базовым классом Model
require 'Models/ClientsModel.php'; // Подключаем файл с классом ClientsModel

use Models\ClientsModel;
if (isset($_POST['edit'])){
    if(!isset($_POST['firstname']) && !isset($_POST['lastname']) && !isset($_POST['email'])){
        session_start();
        Logger::log("Некорректно отправлены данные пользователем ".__FILE__. "Класса: ".get_class($this)." Функции: ". __FUNCTION__);
        $_SESSION['error'] = 'Следуйте всплывающей инструкции при заполнении полей';
        header("Location: clientform.php?id={$_POST['id']}");
        exit;
    }
    $client = new ClientsModel('Clients');
    $client->update($_POST['id'],$_POST);
    header("Location: clientform.php?id={$_POST['id']}");
    exit;
}elseif (isset($_POST['delete'])){
    $client = new ClientsModel('Clients');
    $client -> delete($_POST['id']);
    header("Location: clientslist.html");
    exit;
}else{
    header("Location: clientslist.html");
    exit;
}







