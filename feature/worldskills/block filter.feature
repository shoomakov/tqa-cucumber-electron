Feature: "Фильтр" на странице пользователя
  Scenario: При нажатии на наименование блока "Фильтр" скрывается/отображается сам блок
    Given авторизированная страница пользователя
    When нажать на "Фильтр"
    Then скрывается/отображается сам блок "Фильтр"
