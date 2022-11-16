# language: ru
@ignore
Функционал: отображение задач
  Как пользователь приложения,
  Я хочу иметь возможность видеть список задач

  Сценарий: Посмотреть список задач
    Дано Задачи
      | id                                   | isComplete | name        |
      | 8c9da31a-1116-4849-848a-c2c8820d6d5e | false      | My new task |
      | 400fc2be-60e1-45fb-b00e-fc38fa00ece4 | true       | My old task |
    Когда запускается команда "ls"
    Тогда в ответ приходит таблица задач
      | id                                   | isComplete | name        |
      | 8c9da31a-1116-4849-848a-c2c8820d6d5e | false      | My new task |
      | 400fc2be-60e1-45fb-b00e-fc38fa00ece4 | true       | My old task |
