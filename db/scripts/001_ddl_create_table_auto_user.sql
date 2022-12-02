/*
 *Скрипт создания таблиц базы данных.
 *Тип : DDL (описание данных).
 *Саязь: one to many.
 *Auto_user - пользователь информационной системы.
 *Auto_post - объявление пользователя.
 */
CREATE TABLE IF NOT EXISTS auto_user (
   id SERIAL PRIMARY KEY,
   login text,
   password text
);

CREATE TABLE IF NOT EXISTS auto_post (
   id SERIAL PRIMARY KEY,
   text text,
   created timestamp,
   auto_user_id INT NOT NULL,
   CONSTRAINT fk_author FOREIGN KEY(auto_user_id) REFERENCES auto_user(id)
);