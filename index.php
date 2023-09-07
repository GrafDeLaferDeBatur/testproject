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
		<form class="ui-flex ui-flex-column" method="post" action="registration.php" id="creating-form" style="align-self:center;inline-size: 28rem;">
			<div class="h-auth-reg">Create an account</div>
			<!--        Проверка сессии на сообщение об ошибки-->
			<div><?php if(isset($_SESSION['error'])) echo $_SESSION['error']; ?></div>
			<div class="field-form-auth-reg">
				<label>Email* <span id="email_label"></span></label>
				<input class="field-input" name="email" id="email" type="email" placeholder="Email">
				<span id="exceeding-email"></span>
			</div>
			<div class="field-form-auth-reg">
				<label>First name* <span id="firstname_label"></span></label>
				<input class="field-input" name="firstname" id="firstname" type="text" placeholder="First name">
				<span id="exceeding-firstname"></span>
			</div>
			<div class="field-form-auth-reg">
				<label>Last name* <span id="lastname_label"></span></label>
				<input class="field-input" name="lastname" id="lastname" type="text" placeholder="Last name">
				<span id="exceeding-lastname"></span>
			</div>
			<div class="field-form-auth-reg">
				<label>Company name</label>
				<input class="field-input" name="company" id="company" type="text" placeholder="Company name">
			</div>
			<div class="field-form-auth-reg">
				<label>Position <span id="position_label"></span></label>
				<input class="field-input" name="position" id="position" type="text" placeholder="Position">
			</div>
			<div class="field-form-auth-reg">
				<label>Phone number#1 <span id="phone1_label"></span></label>
				<input class="field-input" name="phoneNumber1" id="phoneNumber1" type="text" placeholder="+7"></div>
			<div class="field-form-auth-reg">
				<label>Phone number#2 <span id="phone2_label"></span></label>
				<input class="field-input" name="phoneNumber2" id="phoneNumber2" type="text" placeholder="+7">
			</div>
			<div class="field-form-auth-reg">
				<label>Phone number#3 <span id="phone3_label"></span></label>
				<input class="field-input" name="phoneNumber3" id="phoneNumber3" type="text" placeholder="+7">
			</div>
			* - required fields
			<div class="rules"><button class="btn-auth-reg" name="register" type="sumbit">Create new client</button></div>
		</form>
        <div class="rules"><button class="btn-auth-reg" onclick="window.location.replace('http://localhost/clientslist.html');">To list of clients</button></div>
	</main>
</body>
<script type="text/javascript" src="Scripts/visual.js"></script>
<script type="text/javascript" src="Scripts/validation.js"></script>
</html>