CREATE TABLE IF NOT EXISTS auto_user (
    id SERIAL PRIMARY KEY,
    login text NOT NULL ,
    password text NOT NULL
);

comment on table auto_user is 'Таблица пользователей системы';
comment on column auto_user.id is 'Идентификатор пользователя';
comment on column auto_user.login is 'Имя пользователя для входа в систему';
comment on column auto_user.password is 'Пароль для входа в систему';