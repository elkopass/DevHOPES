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

#### Генерация спеки из конфигов

```bash
 $ cd demo
 $ qbec show default
```

#### Отображение компонент и параметров

```bash
 $ cd demo
 $ qbec component list default
 $ qbec param list default
```
