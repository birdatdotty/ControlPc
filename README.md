Мой новый набор для управления компьютерами по сети.
Подключаемся к серверу у отпровляем набор инструкций которые он выполняет.
При запуске сервера регестрируются сервисы которым передаются аомманда на выполнение.

    Server server(8888); // сервер запускается на 8888 порту
    server.regAction("create user", new CreateUser()); // регистрируется CreateUser,
    // который будет принимать data из сообщения вида {"action":"create user", "data":{}}
