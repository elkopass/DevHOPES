# DevHOPES

Вкорячиваем helm в qbec

## Для разработчиков

### Команды Helm

#### Создание спеки из шаблона

```bash
 $ export SERVICE=example
 $ export ENV=qa
 $ helm template -f charts/$SERVICE/environments/values.$ENV.yaml 1.0.0 charts/$SERVICE
```

### Команды qbec

TBD
