Feature: Валидация незаполненной страницы "Авторизация"
  Тест на валидацию незаполненной страницы "Авторизация"

 Scenario: Валидация незаполненной страницы "Авторизация"
  Given незаполненная страница авторизации
  When нажать кнопку "Войти"
  Then отобразится ошибка в проверке вводимых данных
