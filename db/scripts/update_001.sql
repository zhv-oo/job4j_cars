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