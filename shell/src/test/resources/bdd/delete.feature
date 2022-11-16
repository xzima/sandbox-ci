# language: ru
@ignore
Функционал: удаление задачи
  Как пользователь приложения,
  Я хочу иметь возможность удалять задачи

  Сценарий: Удаление задачи
    Дано Задачи
      | id                                   | isComplete | name        |
      | f3516e38-9ac6-45f2-9af4-266edb3acb66 | true       | My old task |
    Когда запускается команда "rm f3516e38-9ac6-45f2-9af4-266edb3acb66"
    Тогда в ответ приходит строка "Task 'My old task' deleted"
    Тогда НЕ существует задач с name=Hello World task
    Когда запускается команда "ls"
    Тогда в ответ приходит пустая таблица задач

  Сценарий: Удаление задачи без идентификации
    Когда запускается команда "rm"
    Тогда возникает ошибка с сообщением "Task id must not be blank"

  Сценарий: Удаление задачи которой не существует
    Когда запускается команда "rm 8dc30893-d72b-421f-be12-ee1dc85df4cf"
    Тогда возникает ошибка с сообщением "Task(id=8dc30893-d72b-421f-be12-ee1dc85df4cf) not found"
