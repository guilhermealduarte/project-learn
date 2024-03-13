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

INSERT INTO offers(edition, course_id, start_moment, end_moment) VALUES('1.0', 1, TIMESTAMP WITH TIME ZONE '2024-01-25T13:00:00Z', TIMESTAMP WITH TIME ZONE '2024-12-30T13:00:00Z');

INSERT INTO enrollments(user_id, offer_id, enroll_moment, refund_moment, available, only_update) VALUES(1, 1, TIMESTAMP WITH TIME ZONE '2024-01-25T13:00:00Z', NULL, true, false);

INSERT INTO resources(title, description, position, img_uri, type, offer_id) VALUES('Aulas Gravadas', 'Aulas Gravadas', 1, 'https://www.test.com/image', 1, 1);
INSERT INTO resources(title, description, position, img_uri, type, offer_id) VALUES('Tira Dúvidas', 'Tira duvida sobre aulas gravadas', 2, 'https://www.test.com/image', 2, 1);
INSERT INTO resources(title, description, position, img_uri, type, offer_id) VALUES('Live', 'Live Exclusiva para Turma', 2, 'https://www.test.com/image', 0, 1);

INSERT INTO sections(title, description, position, img_uri, resource_id, prerequisite_id) VALUES('Capítulo 1', 'Capitulo sobre alguma coisa', 1, 'https://www.test.com/image', 1, NULL);
INSERT INTO sections(title, description, position, img_uri, resource_id, prerequisite_id) VALUES('Capítulo 2', 'Capitulo sobre alguma coisa', 2, 'https://www.test.com/image', 1, 1);

INSERT INTO lessons(title, description, position, section_id) VALUES('Aula 1', 'aula 1 sobre alguma coisa', 1, 1);
INSERT INTO lessons(title, description, position, section_id) VALUES('Aula 2', 'aula 2 sobre alguma coisa', 2, 1);