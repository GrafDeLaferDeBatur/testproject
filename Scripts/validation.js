// Обработчик события отправки формы
document.getElementById('creating-form').addEventListener('submit', function (e) {
    const emailInput = document.getElementById('email');
    const firstnameInput = document.getElementById('firstname');
    const lastnameInput = document.getElementById('lastname');

    const phoneNumberInput1 = document.getElementById('phoneNumber1');
    const phoneNumberInput2 = document.getElementById('phoneNumber2');
    const phoneNumberInput3 = document.getElementById('phoneNumber3');

    // Проверка, что обязательные поля не пустые
    if (emailInput.value.trim() === '') {
        if(document.getElementById('email_label').textContent.includes('Пожалуйста, заполните все обязательные поля.')) {
            e.preventDefault(); // Остановка отправки формы;
        }else{
            document.getElementById('email_label').textContent += ' Пожалуйста, заполните все обязательные поля.';
            e.preventDefault(); // Остановка отправки формы
        }
    }else{
        document.getElementById('email_label').textContent = '';
    }
    if (firstnameInput.value.trim() === '') {
        if(document.getElementById('firstname_label').textContent.includes('Пожалуйста, заполните все обязательные поля.')) {
            e.preventDefault(); // Остановка отправки формы;
        }else{
            document.getElementById('firstname_label').textContent += ' Пожалуйста, заполните все обязательные поля.';
            e.preventDefault(); // Остановка отправки формы
        }
    }else{
        document.getElementById('firstname_label').textContent = '';
    }
    if (lastnameInput.value.trim() === '') {
        if(document.getElementById('lastname_label').textContent.includes('Пожалуйста, заполните все обязательные поля.')) {
            e.preventDefault(); // Остановка отправки формы
        }else{
            document.getElementById('lastname_label').textContent += ' Пожалуйста, заполните все обязательные поля.';
            e.preventDefault(); // Остановка отправки формы
        }
    }else{
        document.getElementById('lastname_label').textContent = '';
    }

    if(phoneNumberInput1.value.length < 12 && 0 < phoneNumberInput1.value.length){
        document.getElementById('phone1_label').textContent = 'Номер введен некорректно';
    }else{
        document.getElementById('phone1_label').textContent = '';
    }
    if(phoneNumberInput2.value.length < 12 && 0 < phoneNumberInput2.value.length){
        document.getElementById('phone2_label').textContent = 'Номер введен некорректно';
    }else{
        document.getElementById('phone2_label').textContent = '';
    }
    if(phoneNumberInput3.value.length < 12 && 0 < phoneNumberInput3.value.length){
        document.getElementById('phone3_label').textContent = 'Номер введен некорректно';
    }else{
        document.getElementById('phone3_label').textContent = '';
    }

    // Список доступных должностей клиента
    var positions = ['CEO', 'President', 'CFO', 'CMO', 'COO', 'CHRO', 'CLO'];
    var position = document.getElementById('position');

    if (!positions.includes(position.value) && position.value.length > 0) {
        if(document.getElementById('position_label').textContent.includes('Список доступных должностей: CEO, President, CFO, CMO, COO, CHRO, CLO')) {
            e.preventDefault(); // Остановка отправки формы
        }else {
            document.getElementById("position_label").textContent += 'Список доступных должностей: CEO, President, CFO, CMO, COO, CHRO, CLO';
            e.preventDefault(); // Остановка отправки формы
        }
    }
});