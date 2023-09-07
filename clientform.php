<?php
    $client = isset($_GET['id']) ? $_GET['id'] : null;
    if(isset($client)){
        $servername = "localhost";
        $username = "root";
        $password = "";
        $database = "Platform";

        // Создаем соединение
        $db = new \mysqli($servername, $username, $password, $database);

        // Проверяем соединение
        if ($db->connect_error) {
            Logger::log("Проблема с соединением к базе данных в файле ".__FILE__);
            die("Connection failed: " . $db->connect_error);
        }
        // Запрос для поиска данных клиента
        $query = "
            SELECT Clients.id, Clients.first_name, Clients.last_name, 
                Clients.email, Clients.company_name, Positions.position 
            FROM Clients
                JOIN Positions ON Clients.id_position = Positions.id
            WHERE Clients.id = '{$client}'";
        $result = $db->query($query);
        // Проверьте, есть ли данные
        if ($result->num_rows > 0) {
            // Получите данные как ассоциативный массив
            $row = $result->fetch_assoc();
        }
        // Запрос для поиска телефонов клиента
        $client_phones = [];
        $query1 = "SELECT * FROM Phones WHERE id_client = '{$client}'";
        $result1 = $db->query($query1);
        // Проверьте, есть ли данные
        if ($result1->num_rows > 0) {
            // Получите данные как ассоциативный массив
            while ($row_phones = mysqli_fetch_assoc($result1)) {
                array_push($client_phones, $row_phones['phone']);
            }
        }
    }else{
        header("Location: clientslist.html");
        exit;
    }
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="Css/common.css">
    <link rel="stylesheet" type="text/css" href="Css/auth.css">
    <title>Document</title>
</head>
<body>
<main class="ui-flex ui-flex-column" style="align-items:center">
    <form class="ui-flex ui-flex-column" method="post" action="change-status-client.php" id="creating-form" style="align-self:center;inline-size: 28rem;">
        <div class="h-auth-reg">Account</div>
<!--        Проверка сессии на сообщение об ошибки-->
        <div><?php if(isset($_SESSION['error'])) echo $_SESSION['error']; ?></div>
        <div class="field-form-auth-reg">
            <label>ID</span></label>
            <input class="field-input" name="id" value="<?php echo $row['id'] ?>" readonly>
            <span id="exceeding-email"></span>
        </div>
        <div class="field-form-auth-reg">
            <label>Email* <span id="email_label"></span></label>
            <input class="field-input" name="email" id="email" type="email" placeholder="Email" value="<?php echo $row['email'] ?>">
            <span id="exceeding-email"></span>
        </div>
        <div class="field-form-auth-reg">
            <label>First name* <span id="firstname_label"></span></label>
            <input class="field-input" name="firstname" id="firstname" type="text" placeholder="First name" value="<?php echo $row['first_name'] ?>">
            <span id="exceeding-firstname"></span>
        </div>
        <div class="field-form-auth-reg">
            <label>Last name* <span id="lastname_label"></span></label>
            <input class="field-input" name="lastname" id="lastname" type="text" placeholder="Last name" value="<?php echo $row['last_name'] ?>">
            <span id="exceeding-lastname"></span>
        </div>
        <div class="field-form-auth-reg">
            <label>Company name</label>
            <input class="field-input" name="company" id="company" type="text" placeholder="Company name" value="<?php echo $row['company_name'] ?>">
        </div>
        <div class="field-form-auth-reg">
            <label>Position <span id="position_label"></span></label>
            <input class="field-input" name="position" id="position" type="text" placeholder="Position" value="<?php echo $row['position'] ?>">
        </div>
        <div class="field-form-auth-reg">
            <label>Phone number#1 <span id="phone1_label"></span></label>
            <input class="field-input" name="phoneNumber1" id="phoneNumber1" type="text" placeholder="+7" value="<?php if(isset($client_phones[0])) echo $client_phones[0];?>"></div>
        <div class="field-form-auth-reg">
            <label>Phone number#2 <span id="phone2_label"></span></label>
            <input class="field-input" name="phoneNumber2" id="phoneNumber2" type="text" placeholder="+7" value="<?php if(isset($client_phones[1])) echo $client_phones[1]; ?>">
        </div>
        <div class="field-form-auth-reg">
            <label>Phone number#3 <span id="phone3_label"></span></label>
            <input class="field-input" name="phoneNumber3" id="phoneNumber3" type="text" placeholder="+7" value="<?php if(isset($client_phones[2])) echo $client_phones[2]; ?>">
        </div>
        * - required fields
        <div class="rules"><button class="btn-auth-reg" type="sumbit" name="edit">Edit client</button></div>
        <div class="rules"><button class="btn-auth-reg" type="sumbit" name="delete">Delete client</button></div>
        <div class="rules"><button class="btn-auth-reg" onclick="window.location.replace('http://localhost/clientslist.html');">Back to list</button></div>
    </form>
</main>
</body>
<script type="text/javascript" src="Scripts/visual.js"></script>
<script type="text/javascript" src="Scripts/validation.js"></script>
</html>