Feature: авторизация на сайте TMC24
  Что нужно сделать для авторизации?

 Scenario: Переход на страницу авторизации
  Given неавторизованный пользователь
  When открывается административная панель
  Then отображается страница авторизации
