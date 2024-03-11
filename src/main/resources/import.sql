INSERT INTO users (name, email, phone, password, birth_date) VALUES ('Maria Brown', 'maria@gmail.com', '988888888', '$2a$10$bpuLroaGJLph8Udu2dEbJOabiVR92h6lWCv3.vG/X5QPG1gY1fLzC', '2001-07-25');
INSERT INTO users (name, email, phone, password, birth_date) VALUES ('Bob Brown', 'bob@gmail.com', '988888888', '$2a$10$bpuLroaGJLph8Udu2dEbJOabiVR92h6lWCv3.vG/X5QPG1gY1fLzC', '1986-11-01');
INSERT INTO users (name, email, phone, password, birth_date) VALUES ('Alex Green', 'alex@gmail.com', '977777777', '$2a$10$bpuLroaGJLph8Udu2dEbJOabiVR92h6lWCv3.vG/X5QPG1gY1fLzC', '1987-12-13');

INSERT INTO roles (authority) VALUES ('ROLE_STUDENT');
INSERT INTO roles (authority) VALUES ('ROLE_INSTRUCTOR');
INSERT INTO roles (authority) VALUES ('ROLE_ADMIN');

INSERT INTO user_role (user_id, role_id) VALUES (1, 1);
INSERT INTO user_role (user_id, role_id) VALUES (2, 1);
INSERT INTO user_role (user_id, role_id) VALUES (2, 2);
INSERT INTO user_role (user_id, role_id) VALUES (3, 1);
INSERT INTO user_role (user_id, role_id) VALUES (3, 2);
INSERT INTO user_role (user_id, role_id) VALUES (3, 3);


INSERT INTO courses (name, img_uri, img_gray_uri) VALUES ('CURSO 1', 'https://www.test.com/image', 'https://www.test.com/imagegray');
INSERT INTO courses (name, img_uri, img_gray_uri) VALUES ('CURSO 2', 'https://www.test.com/image', 'https://www.test.com/imagegray');