### Создание образа докер на основе Dockerfile:

`docker build --tag dj-server . `

### Запуск контейнера на основе образа:

`docker run -d -p 8000:8000 dj-server`

### Проверка с помощью Postman:

**Добавить данные:**

```
POST http://127.0.0.1:8000/api/v1/products/

Content-Type: application/json 

{  
  "title": "Помидор",  
  "description": "Лучшие помидоры на рынке"  
}
```
**Проверить данные:**

`GET http://127.0.0.1:8000/api/v1/products/`
