const phoneNumberInput1 = document.getElementById('phoneNumber1');
const phoneNumberInput2 = document.getElementById('phoneNumber2');
const phoneNumberInput3 = document.getElementById('phoneNumber3');
const emailInput = document.getElementById('email');
const firstnameInput = document.getElementById('firstname');
const lastnameInput = document.getElementById('lastname');
const companyInput = document.getElementById('company');

const personalDataInputs = [emailInput, firstnameInput, lastnameInput, companyInput];
const phoneNumberInputs = [phoneNumberInput1, phoneNumberInput2, phoneNumberInput3];

//Цикл используется для уменьшения количества кода
phoneNumberInputs.forEach(function (phoneNumberInput){
	//Событие при заполнении поля номера телефона
	phoneNumberInput.addEventListener('input', function() {
		// Удалить все нечисловые символы, кроме "+"
		var cleanedValue = phoneNumberInput.value.replace(/[^0-9+]/g, '');
		// Проверить, начинается ли значение с "+7"
		if (!cleanedValue.startsWith('+7')) cleanedValue = '+7' + cleanedValue;
		//Костыль: при попытке стереть "+7" - добавлялось "+"
		if (cleanedValue.startsWith('+7+') || phoneNumberInput.value.length === 2) cleanedValue = '';
		// Установить очищенное значение обратно в поле ввода
		phoneNumberInput.value = cleanedValue;
	});

	//Событие при расфокусировки
	phoneNumberInput.addEventListener('blur', function() {
		//Костыль: при попытке стереть "+7" - добавлялось "+"
		if (phoneNumberInput.value.startsWith('+7+') ||
			(phoneNumberInput.value.startsWith('+7') && phoneNumberInput.value.length <= 2)) phoneNumberInput.value = '';
	});

	//Ставим ограничение на длину строки в поле номера телефона
	phoneNumberInput.oninput = function(){
		this.value = this.value.substr(0, 12);
	}
});

personalDataInputs.forEach(function (personalDataInputs){
	//Ставим ограничение на длину строки в полях личных данных
	personalDataInputs.oninput = function(){
		this.value = this.value.substr(0, 50);
	}
});