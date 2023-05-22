### Создание сети контейнеров:

`docker-compose up -d --build`

1. PgAdmin: host http://127.0.0.1:5050/  
   * Host name: postgres_db
   * Port: 5432
   * Maintenaince: netology_stocks_products
   * Username: postgres
   * Password: 111
          

2. Приложение: host http://127.0.0.1:8080/api/v1/  


### Проверка с помощью Postman:

**Добавить данные:**

```
POST http://127.0.0.1:8080/api/v1/products/

Content-Type: application/json 

{  
  "title": "Помидор",  
  "description": "Лучшие помидоры на рынке"  
}
```
**Проверить данные:**

`GET http://127.0.0.1:8080/api/v1/products/`
