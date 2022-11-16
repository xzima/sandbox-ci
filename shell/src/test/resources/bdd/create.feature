# language: ru
@ignore
Функционал: Создание задачи
  Как пользователь приложения,
  Я хочу иметь возможность создавать задачи

  Сценарий: Создание задачи
    Когда запускается команда "new 'Hello World task'"
    Тогда в ответ приходит строка "Task 'Hello World task' created"
    Тогда существует задача с name=Hello World task, которая имеет поле isComplete=false
    Когда запускается команда "ls"
    Тогда в ответ приходит таблица задач
      | id | isComplete | name             |
      |    | false      | Hello World task |

  Сценарий: Создание задачи без указания имени
    Когда запускается команда "new"
    Тогда возникает ошибка с сообщением " task name must not be blank"

  Сценарий: Создание задачи с очень длинным именем
    Когда запускается команда "new 'Adelphiss sunt gabaliums de velox absolutio. Sagas sunt silvas de fidelis lixa. Vae, domesticus clabulare! Brabeutas ortum! Pol, a bene messor. Cum nixus peregrinationes, omnes calceuses desiderium germanus, camerarius hippotoxotaes. Medicinas congregabo, tanquam peritus sectam. Deuss trabem! A falsis, advena secundus historia. Fidelis parma tandem manifestums elogium est.'"
    Тогда возникает ошибка с сообщением " task name не может быть больше 200 символов"
