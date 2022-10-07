# DevHOPES

Вкорячиваем helm в qbec

## Наше решение

Сценарий [script.sh](https://github.com/elkopass/DevHOPES/blob/master/demo/script.sh),
встроенный в [qbec.yaml](https://github.com/elkopass/DevHOPES/blob/master/demo/qbec.yaml),
собирает содержимое файла [values.yaml](https://github.com/elkopass/DevHOPES/blob/master/demo/values.yaml),
а также всех `values.<env>.yaml` файликов в директории
[environments](https://github.com/elkopass/DevHOPES/blob/master/demo/environments)
и генерирует из них единую YAML-спецификацию, которую можно раскатать либо через qbec,
либо прямо через kubectl.

## Для разработчиков

### Команды Helm

#### Создание спеки для одного окружения

```bash
 $ export SERVICE=example
 $ export ENV=qa
 $ helm template -f demo/values.yaml -f demo/environments/values.$ENV.yaml 1.0.0 vendor/$SERVICE
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
