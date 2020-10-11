# Тестовое задание - To-Do list

## Требования

Ruby 2.7.2 (желательно в среде rbenv или rvm), работающий и настроенный сервер PostreSQL 9.2+ .

## Установка и запуск

1. Клонировать репозиторий:

    ~~~ sh
    $ git clone https://github.com/contras2k/hurry-tasker.git
    $ cd hurry-tasker
    ~~~

    Если используется rbenv, то подключить необходимую версию Ruby:

    ~~~ sh
    $ rbenv local 2.7.2
    ~~~

2. Установить все зависимости:

    ~~~ sh
    $ bundle install
    ~~~

    Если используется rbenv и впервые в версии Ruby 2.7.2 установлен гем rails, то для дальнейших команд нужно выполнить:

    ~~~ sh
    $ rbenv rehash
    ~~~

3. Настроить доступ к серверу БД:

    ~~~ sh
    $ cp .env.sample .env
    $ vim .env
    ~~~

4. Для использования приложения в production необходимо создать локальные ключи master.key и secret_key_base:

    ~~~ sh
    $ EDITOR=vim rails credentials:edit
    ~~~

5. Создать БД и скомпилировать активы (assets):

    ~~~ sh
    $ rails assets:precompile
    $ RAILS_ENV=production rails db:create db:schema:load
    ~~~

    для предзаполнения базы примерами записей можно использовать команду:

    ~~~ sh
    $ RAILS_ENV=production rails db:seed
    ~~~

6. Запустить web-сервер Puma

    ~~~ sh
    $ rails server -e production
    ~~~
