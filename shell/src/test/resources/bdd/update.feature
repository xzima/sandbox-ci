# language: ru
@ignore
Функционал: Изменение задачи
  Как пользователь приложения,
  Я хочу иметь редактировать существующие задачи и помечать их как выполненные

  Предыстория: Непустая база
    Дано Задачи
      | id                                   | isComplete | name        |
      | 8c9da31a-1116-4849-848a-c2c8820d6d5e | false      | My new task |
      | 400fc2be-60e1-45fb-b00e-fc38fa00ece4 | true       | My old task |

  Сценарий: Пометить задачу как выполненную
    Когда запускается команда "done 'My new task'"
    Тогда в ответ приходит строка "Task 'My new task' mark as completed"
    Тогда задача с id=8c9da31a-1116-4849-848a-c2c8820d6d5e имеет поле isComplete=true
    Когда запускается команда "ls"
    Тогда в ответ приходит таблица задач
      | id                                   | isComplete | name        |
      | 8c9da31a-1116-4849-848a-c2c8820d6d5e | true       | My new task |
      | 400fc2be-60e1-45fb-b00e-fc38fa00ece4 | true       | My old task |

  Сценарий: Пометить задачу как НЕ выполненную
    Когда запускается команда "undone 'My old task'"
    Тогда в ответ приходит строка "Task 'My new task' mark as uncompleted"
    Тогда задача с id=400fc2be-60e1-45fb-b00e-fc38fa00ece4 имеет поле isComplete=false
    Тогда в ответ приходит таблица задач
      | id                                   | isComplete | name        |
      | 8c9da31a-1116-4849-848a-c2c8820d6d5e | false      | My new task |
      | 400fc2be-60e1-45fb-b00e-fc38fa00ece4 | false      | My old task |
