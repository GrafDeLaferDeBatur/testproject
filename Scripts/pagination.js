
// Функция для отправки запроса на сервер и загрузки данных клиентов
function loadClients(page) {
    fetch('api.php?page=' + page)
        .then(response => response.json())
        .then(data => {
            // Отображаем данные клиентов на странице
            displayClients(data.clients);
            // Обновляем пагинацию
            updatePagination(page,data.total_pages);
        })
        .catch(error => console.error('Ошибка при загрузке данных:', error));
}

// Функция для отображения данных клиентов на странице
function displayClients(clients) {
    var clientList = document.getElementById("clientList");
    clientList.innerHTML = ""; // Очищаем список клиентов перед добавлением новых
    clients.forEach(function(client) {
        var listItem = document.createElement("div");
        listItem.classList.add('client');
        listItem.innerHTML += "ID:" + client.id + "<br>";
        listItem.innerHTML += "Email: " + client.email + "<br>";
        listItem.innerHTML += "Lastname: " + client.last_name + "<br>";
        listItem.innerHTML += "Firstname: " + client.first_name + "<br>";
        listItem.innerHTML += "Position: " + client.position + "<br>";
        // Создаем элемент ссылки на форму редактирования клиента
        var link_to_change_data = document.createElement("a");
        // Устанавливаем атрибуты href и текст ссылки
        link_to_change_data.href = "/clientform.php?id="+client.id;
        link_to_change_data.textContent = "Look more info";
        listItem.appendChild(link_to_change_data);
        clientList.appendChild(listItem);
    });
}

// Функция для обновления пагинации
function updatePagination(currentPage, total_pages) {
    var pagination = document.getElementById("pagination");
    pagination.innerHTML = ""; // Очищаем пагинацию перед добавлением новых элементов
    // Создаем кнопку "Назад"
    var prevButton = document.createElement("button");
    prevButton.textContent = "Back";
    prevButton.classList.add("page-link");
    prevButton.addEventListener("click", function() {
        if (currentPage > 1) {
            loadClients(currentPage - 1);
        }
    });
    pagination.appendChild(prevButton);
    // Создаем кнопки с номерами страниц
    for (var i = currentPage - 5; i <= currentPage + 3 && i !== parseInt(total_pages, 10) + 1; i++) {
        if(i <= 0) continue;
        var pageButton = document.createElement("button");
        pageButton.textContent = i;
        if (i === currentPage) {
            pageButton.classList.add("active"); // Выделить текущую страницу
        }
        pageButton.classList.add("page-link");
        pageButton.addEventListener("click", function(e) {
            loadClients(parseInt(e.target.textContent));
        });
        pagination.appendChild(pageButton);
    }

    // Создаем кнопку "Вперед"
    var nextButton = document.createElement("button");
    nextButton.textContent = "Next";
    nextButton.classList.add("page-link");
    nextButton.addEventListener("click", function() {
        if (currentPage < total_pages) {
            loadClients(currentPage + 1);
        }
    });
    pagination.appendChild(nextButton);
}

// Загрузка первой страницы клиентов при загрузке страницы
loadClients(1);

