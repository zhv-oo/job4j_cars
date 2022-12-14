CREATE TABLE IF NOT EXISTS auto_post (
    id SERIAL PRIMARY KEY,
    text text,
    created timestamp,
    auto_user_id INT NOT NULL,
    CONSTRAINT fk_author FOREIGN KEY(auto_user_id) REFERENCES auto_user(id)
);

comment on table auto_post is 'Таблица объявлений пользователей';
comment on column auto_post.id is 'Идентификатор объявления';
comment on column auto_post.text is 'Текст объявления';
comment on column auto_post.created is 'Дата создания объявления';
comment on column auto_post.auto_user_id is 'Индетификационный номер пользователя, создавшего объявление';