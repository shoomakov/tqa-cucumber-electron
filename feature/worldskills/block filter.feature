Feature: "Фильтр" на странице пользователя
  # При нажатии на наименование блока "Фильтр" скрывается/отображается сам блок
  Scenario: 
    Given авторизированная страница пользователя
    When нажать на "Фильтр"
    Then скрывается/отображается сам блок "Фильтр"

    
    
    
      