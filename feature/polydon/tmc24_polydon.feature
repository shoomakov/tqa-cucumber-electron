@authorization Polydon

Feature: авторизация на сайте Polydon

  1  Scenario: Переход на страницу авторизации
        Given неавторизованный пользователь
        When открывается административная панель
        Then отображается страница авторизации

 2   Scenario: Валидация не заполненной страницы "Авторизация"
        Given незаполненная страница авторизации
        When нажать кнопку "Войти"
        Then отобразится ошибка в проверке вводимых данных

3    Scenario: Валидация поля "Email" работает

       Given незаполненная страница авторизации
       When внести невалидные данные в поле "Email"
       Then нажать кнопку "Войти"
       Then отобразится ошибка в проверке вводимых данных


5     Scenario: Валидация поля "Password" работает

          Given незаполненная страница авторизации
          When внести валидные данные в поле "Email"
          Then нажать кнопку "Войти"
         Then отобразится уведомление о не совпадении логина и пароля

6 Scenario: Кнопка "Войти" авторизует пользователя на сайте (при внесении валидных данных)

     Given заполненная страница авторизации валидными данными
     When нажать кнопку "Войти"
     Then отображаеть авторизированую страницу сайта

7 Scenario: При нажатии ссылки "Забыли пароль" переадресовывает на страницу "Восстановление пароля"

    Given  незаполненная страница авторизации
   When нажать на ссылку "Забыли пароль"
   Then переадресовывает на страницу "Восстановление пароля"

8 Scenario: При нажатии ссылки "Назад"  переадресовывает на страницу "Авторизация"

  Given страница "Восстановление пароля"
  When нажать на ссылку "Назад"
  Then переадресовывает на страницу "Авторизация"

9 Scenario Валидация не заполненной страницы "Восстановление пароля" работает

   Given страница "Восстановление пароля"
   When нажать на кнопку "Восстановить пароль"
   Then отображается ошибка в проверке вводимых данных

 10 Scenario: Валидация поля "Email" работает

 Given страница "Восстановление пароля"
 When Внести невалидные данные в поле "Email"
 Then  нажать на кнопку "Восстановить пароль"
 Then отображается ошибка в проверке вводимых данных






11.Scenario: Кнопка "Восстановить пароль" работает корректно при внесении валидных данных

  Given страница "Восстановление пароля"
 When Внести валидные данные в поле "Email"
 Then  нажать на кнопку "Восстановить пароль"
 Then отобразится уведомление об отправке письма пользователю

12 Scenario: Отображается надпись об успешной отправке письма на Email

 Given страница "Восстановление пароля" с валидными данными
 When нажать на кнопку "Восстановить пароль"
 Then отобразится уведомление об отправки письма пользователю

13 Scenario: При повторном нажатии кнопки "Восстановить пароль" отображается надпись о том, что ссылка о сбросе пароля была сгенерирована для данного аккаунта

 Given страница "Восстановление пароля" с валидными данными
 When дважды нажать на кнопку "Восстановить пароль"
 Then отобразится уведомление о том, что ссылка о сбросе пароля была сгенерирована для данного аккаунта

14 Scenario: Письмо о восстановлении пароля приходит  на почту пользователя

Given страница "Восстановление пароля" с валидными данными
When нажать на кнопку "Восстановить пароль"
Then Письмо о восстановлении пароля приходит на почту пользователя







15 Scenario:Ссылка, содержащаяся в письме, переадресовывает на страницу сброса пароля

  Given Страница почты пользователя
  When открыть ссылку в письме о восстановлении пароля
  Then переадресовывает на страницу сброса пароля 



@authorization tmc24
1  Scenario: Переход на страницу авторизации

        Given неавторизованный пользователь
        When открывается административная панель
        Then отображается страница авторизации

2   Scenario: Валидация не заполненной страницы "Авторизация"

        Given незаполненная страница авторизации
        When нажать кнопку "Войти"
        Then отобразится ошибка в проверке вводимых данных

3     Scenario: Валидация поля "Логин" работает

       Given незаполненная страница авторизации
       When внести невалидные данные в поле "Логин"
       And нажать кнопку "Войти в систему"
       Then отобразится ошибка в проверке вводимых данных




5     Scenario: Валидация поля "Пароль" работает

          Given незаполненная страница авторизации
          When внести валидные данные в поле “Логин"
          Then нажать кнопку "Войти"
         Then отобразится уведомление о незаполненом поле “Пароль”

 6 Scenario: Кнопка "Войти в систему" авторизует пользователя на сайте (при внесении валидных данных)

     Given заполненная страница авторизации валидными данными
     When нажать кнопку "Войти в систему"
     Then отображаеть авторизированую страницу сайта

8 Scenario: Чек-бокс "Запомнить меня" работает верно

Given заполненная страница авторизации валидными данными
When нажать на чек-бокс “Запомнить меня”
And нажать на кнопку “Войти в систему”
And нажать кнопку “Logout”
Then страница авторизации заполнена ранее внесенными логином и паролем
