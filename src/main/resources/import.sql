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
INSERT INTO offers(edition, course_id, start_moment, end_moment) VALUES('2.0', 1, TIMESTAMP WITH TIME ZONE '2024-01-25T13:00:00Z', TIMESTAMP WITH TIME ZONE '2024-12-30T13:00:00Z');
INSERT INTO offers(edition, course_id, start_moment, end_moment) VALUES('3.0', 1, TIMESTAMP WITH TIME ZONE '2024-01-25T13:00:00Z', TIMESTAMP WITH TIME ZONE '2024-12-30T13:00:00Z');

INSERT INTO enrollments(user_id, offer_id, enroll_moment, refund_moment, available, only_update) VALUES(1, 1, TIMESTAMP WITH TIME ZONE '2024-01-25T13:00:00Z', NULL, true, false);

INSERT INTO resources(title, description, position, img_uri, type, offer_id) VALUES('Aulas Gravadas', 'Aulas Gravadas', 1, 'https://www.test.com/image', 1, 1);
INSERT INTO resources(title, description, position, img_uri, type, offer_id) VALUES('Tira Dúvidas', 'Tira duvida sobre aulas gravadas', 2, 'https://www.test.com/image', 2, 1);
INSERT INTO resources(title, description, position, img_uri, type, offer_id) VALUES('Live', 'Live Exclusiva para Turma', 2, 'https://www.test.com/image', 0, 1);

INSERT INTO sections(title, description, position, img_uri, resource_id, prerequisite_id) VALUES('Capítulo 1', 'Capitulo sobre alguma coisa', 1, 'https://www.test.com/image', 1, NULL);
INSERT INTO sections(title, description, position, img_uri, resource_id, prerequisite_id) VALUES('Capítulo 2', 'Capitulo sobre alguma coisa', 2, 'https://www.test.com/image', 1, 1);

INSERT INTO lessons(title, position, section_id) VALUES('Aula 1', 1, 1);
INSERT INTO contents(id, text_content, video_uri) VALUES(1, 'Material de apoio aula 1', 'https://www.youtube.com.br/video1');

INSERT INTO lessons(title, position, section_id) VALUES('Aula 2', 2, 1);
INSERT INTO contents(id, text_content, video_uri) VALUES(2, 'Material de apoio aula 2', 'https://www.youtube.com.br/video2');

INSERT INTO lessons(title, position, section_id) VALUES('Aula 3', 3, 1);
INSERT INTO tasks(id, description, question_count, approval_count, weight, due_date) VALUES(3, 'Fazer Trabalho', 5, 4, 1.0, TIMESTAMP WITH TIME ZONE '2024-01-25T13:00:00Z');

INSERT INTO lesson_done(user_id, lesson_id, offer_id) VALUES(1, 1, 1);

INSERT INTO notifications (text, moment, read, route, user_id) VALUES ('Primeiro feedback de tarefa: favor revisar', TIMESTAMP WITH TIME ZONE '2024-12-10T13:00:00Z', true, '/offers/1/resource/1/sections/1', 1);
INSERT INTO notifications (text, moment, read, route, user_id) VALUES ('Segundo feedback: favor revisar', TIMESTAMP WITH TIME ZONE '2024-12-12T13:00:00Z', true, '/offers/1/resource/1/sections/1', 1);
INSERT INTO notifications (text, moment, read, route, user_id) VALUES ('Terceiro feedback: favor revisar', TIMESTAMP WITH TIME ZONE '2024-12-14T13:00:00Z', true, '/offers/1/resource/1/sections/1', 1);

INSERT INTO delivers (uri, moment, status, feedback, correct_count, lesson_id, user_id, offer_id) VALUES ('https://github.com/guilhermealduarte/projetoaula', TIMESTAMP WITH TIME ZONE '2024-12-10T10:00:00Z', 0, null, null, 3, 1, 1);

INSERT INTO topics (title, body, moment, user_id, offer_id, lesson_id) VALUES ('Título do tópico 1', 'Corpo do tópico 1', TIMESTAMP WITH TIME ZONE '2020-12-12T13:00:00Z', 1, 1, 1);
INSERT INTO topics (title, body, moment, user_id, offer_id, lesson_id) VALUES ('Título do tópico 2', 'Corpo do tópico 2', TIMESTAMP WITH TIME ZONE '2020-12-13T13:00:00Z', 2, 1, 1);
INSERT INTO topics (title, body, moment, user_id, offer_id, lesson_id) VALUES ('Título do tópico 3', 'Corpo do tópico 3', TIMESTAMP WITH TIME ZONE '2020-12-14T13:00:00Z', 2, 1, 1);
INSERT INTO topics (title, body, moment, user_id, offer_id, lesson_id) VALUES ('Título do tópico 4', 'Corpo do tópico 4', TIMESTAMP WITH TIME ZONE '2020-12-15T13:00:00Z', 1, 1, 2);
INSERT INTO topics (title, body, moment, user_id, offer_id, lesson_id) VALUES ('Título do tópico 5', 'Corpo do tópico 5', TIMESTAMP WITH TIME ZONE '2020-12-16T13:00:00Z', 1, 1, 2);
INSERT INTO topics (title, body, moment, user_id, offer_id, lesson_id) VALUES ('Título do tópico 6', 'Corpo do tópico 6', TIMESTAMP WITH TIME ZONE '2020-12-17T13:00:00Z', 2, 1, 3);

INSERT INTO topic_like (topic_id, user_id) VALUES (1, 2);
INSERT INTO topic_like (topic_id, user_id) VALUES (2, 1);

INSERT INTO replies (body, moment, topic_id, user_id) VALUES ('Tente reiniciar o computador', TIMESTAMP WITH TIME ZONE '2020-12-15T13:00:00Z', 1, 2);
INSERT INTO replies (body, moment, topic_id, user_id) VALUES ('Deu certo, valeu!', TIMESTAMP WITH TIME ZONE '2020-12-20T13:00:00Z', 1, 1);

INSERT INTO reply_like(reply_id, user_id) VALUES (1, 1);