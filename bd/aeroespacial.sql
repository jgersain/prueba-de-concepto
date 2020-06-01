CREATE TABLE divisions
(
    id          serial PRIMARY KEY,
    name        VARCHAR(80) UNIQUE NOT NULL,
    num_credits SMALLINT
);

CREATE TABLE curriculums
(
    id   serial PRIMARY KEY,
    name VARCHAR(80) UNIQUE NOT NULL
);

CREATE TABLE semesters
(
    id   serial PRIMARY KEY,
    name VARCHAR(20) UNIQUE NOT NULL
);

CREATE TABLE students
(
    id   serial PRIMARY KEY,
    name VARCHAR(50) NOT NULL
);

CREATE TABLE subjects
(
    id   serial PRIMARY KEY,
    name VARCHAR(50) UNIQUE NOT NULL
);

CREATE TABLE curriculum_subjects
(
    id             serial PRIMARY KEY,
    subject_id     INT NOT NULL,
    division_id    INT NOT NULL,
    curriculum_id  INT NOT NULL,
    semester_id    INT NOT NULL,
    creadits       SMALLINT,
    t_hours        NUMERIC(2, 1),
    p_hours        DECIMAL(2, 1),
    all_hours      DECIMAL(2, 1),
    laboratory     CHAR,
    child_subject  INT,
    FOREIGN KEY (subject_id) REFERENCES subjects (id) ON DELETE CASCADE,
    FOREIGN KEY (division_id) REFERENCES divisions (id) ON DELETE CASCADE,
    FOREIGN KEY (curriculum_id) REFERENCES curriculums (id) ON DELETE CASCADE,
    FOREIGN KEY (semester_id) REFERENCES semesters (id) ON DELETE CASCADE
);

CREATE TABLE evaluations
(
    id         SERIAL PRIMARY KEY,
    subject_id INT,
    student_id INT,
    score      NUMERIC(3, 1),
    FOREIGN KEY (subject_id) REFERENCES subjects (id) ON DELETE CASCADE,
    FOREIGN KEY (student_id) REFERENCES students (id) ON DELETE CASCADE
);

-- Curriculums

INSERT INTO curriculums(name)
VALUES ('Licenciatura de Ingeniería Aeroespacial');

-- Semesters

INSERT INTO semesters(name)
VALUES ('Primer semestre');
INSERT INTO semesters(name)
VALUES ('Segundo semestre');
INSERT INTO semesters(name)
VALUES ('Tercer semestre');
INSERT INTO semesters(name)
VALUES ('Cuarto semestre');
INSERT INTO semesters(name)
VALUES ('Quinto semestre');
INSERT INTO semesters(name)
VALUES ('Sexto semestre');

-- Divisions

INSERT INTO divisions(name, num_credits)
VALUES ('Ciencias Básicas', 128);

INSERT INTO divisions(name, num_credits)
VALUES ('Ciencias de la Ingeniería', 140);

INSERT INTO divisions(name, num_credits)
VALUES ('Ingeniería Aplicada y Diseño', 96);

INSERT INTO divisions(name, num_credits)
VALUES ('CIencias Sociales y Humanidades', 28);

INSERT INTO divisions(name, num_credits)
VALUES ('Otras Asignaturas Convenientes', 28);

INSERT INTO divisions(name, num_credits)
VALUES ('Ciencias Económicas Administrativas', 30);

-- Subjects first semester

INSERT INTO subjects(name)
VALUES ('Álgebra');

INSERT INTO subjects(name)
VALUES ('Cálculo y Geometría Analítica');

INSERT INTO subjects(name)
VALUES ('Química');

INSERT INTO subjects(name)
VALUES ('Fundamentos de Física');

INSERT INTO subjects(name)
VALUES ('Introducción a la Ingeniería Aeroespacial');

INSERT INTO subjects(name)
VALUES ('Redacción y Exposición de Temas de Ingeniería');

-- subjects second semester

INSERT INTO subjects(name)
VALUES ('Álgebra Lineal');

INSERT INTO subjects(name)
VALUES ('Cálculo Integral');

INSERT INTO subjects(name)
VALUES ('Estática');

INSERT INTO subjects(name)
VALUES ('Medio Ambiente Aeroespacial');

INSERT INTO subjects(name)
VALUES ('Fundamentos de Programación');

INSERT INTO subjects(name)
VALUES ('Dibujo Industrial');

-- subjects third semester

INSERT INTO subjects(name)
VALUES ('Fundamentos de Probabilidad y Estadística');

INSERT INTO subjects(name)
VALUES ('Cálculo Vectorial');

INSERT INTO subjects(name)
VALUES ('Ecuaciones Diferenciales');

INSERT INTO subjects(name)
VALUES ('Cinemática y Dinámica');

INSERT INTO subjects(name)
VALUES ('Termodinámica');

INSERT INTO subjects(name)
VALUES ('Cultura y Comunicación');

-- semester 1

INSERT INTO curriculum_subjects(subject_id, division_id, curriculum_id, semester_id, creadits, t_hours, p_hours,
                                all_hours, laboratory,
                                child_subject)
VALUES (1, 1, 1, 1, 8, 4.0, 0.0, 4.0, null, null);

INSERT INTO curriculum_subjects(subject_id, division_id, curriculum_id, semester_id, creadits, t_hours, p_hours,
                                all_hours, laboratory,
                                child_subject)
VALUES (2, 1, 1, 1, 12, 6.0, 0.0, 6.0, null, null);

INSERT INTO curriculum_subjects(subject_id, division_id, curriculum_id, semester_id, creadits, t_hours, p_hours,
                                all_hours, laboratory,
                                child_subject)
VALUES (3, 1, 1, 1, 10, 4.0, 2.0, 6.0, 'S', null);

INSERT INTO curriculum_subjects(subject_id, division_id, curriculum_id, semester_id, creadits, t_hours, p_hours,
                                all_hours, laboratory,
                                child_subject)
VALUES (4, 1, 1, 1, 6, 2.0, 2.0, 4.0, 'S', null);

INSERT INTO curriculum_subjects(subject_id, division_id, curriculum_id, semester_id, creadits, t_hours, p_hours,
                                all_hours, laboratory,
                                child_subject)
VALUES (5, 5, 1, 1, 4, 2.0, 0.0, 2.0, null, null);

INSERT INTO curriculum_subjects(subject_id, division_id, curriculum_id, semester_id, creadits, t_hours, p_hours,
                                all_hours, laboratory,
                                child_subject)
VALUES (6, 4, 1, 1, 6, 2.0, 2.0, 4.0, null, null);

-- semester 2

INSERT INTO curriculum_subjects(subject_id, division_id, curriculum_id, semester_id, creadits, t_hours, p_hours,
                                all_hours, laboratory,
                                child_subject)
VALUES (7, 1, 1, 2, 8, 4.0, 0.0, 4.0, null, 1);

INSERT INTO curriculum_subjects(subject_id, division_id, curriculum_id, semester_id, creadits, t_hours, p_hours,
                                all_hours, laboratory,
                                child_subject)
VALUES (8, 1, 1, 2, 8, 4.0, 0.0, 4.0, null, 2);

INSERT INTO curriculum_subjects(subject_id, division_id, curriculum_id, semester_id, creadits, t_hours, p_hours,
                                all_hours, laboratory,
                                child_subject)
VALUES (9, 1, 1, 2, 8, 4.0, 0.0, 4.0, null, 2);

INSERT INTO curriculum_subjects(subject_id, division_id, curriculum_id, semester_id, creadits, t_hours, p_hours,
                                all_hours, laboratory,
                                child_subject)
VALUES (10, 2, 1, 2, 4, 2.0, 0.0, 2.0, null, null);

INSERT INTO curriculum_subjects(subject_id, division_id, curriculum_id, semester_id, creadits, t_hours, p_hours,
                                all_hours, laboratory,
                                child_subject)
VALUES (11, 5, 1, 2, 10, 4.0, 2.0, 6.0, 'I', null);

INSERT INTO curriculum_subjects(subject_id, division_id, curriculum_id, semester_id, creadits, t_hours, p_hours,
                                all_hours, laboratory,
                                child_subject)
VALUES (12, 5, 1, 2, 8, 2.0, 4.0, 6.0, 'I', null);

-- semester 3

INSERT INTO curriculum_subjects(subject_id, division_id, curriculum_id, semester_id, creadits, t_hours, p_hours,
                                all_hours, laboratory,
                                child_subject)
VALUES (13, 1, 1, 3, 8, 4.0, 0.0, 4.0, null, 7);

INSERT INTO curriculum_subjects(subject_id, division_id, curriculum_id, semester_id, creadits, t_hours, p_hours,
                                all_hours, laboratory,
                                child_subject)
VALUES (14, 1, 1, 3, 8, 4.0, 0.0, 4.0, null, 8);

INSERT INTO curriculum_subjects(subject_id, division_id, curriculum_id, semester_id, creadits, t_hours, p_hours,
                                all_hours, laboratory,
                                child_subject)
VALUES (15, 1, 1, 3, 8, 4.0, 0.0, 4.0, null, 8);

INSERT INTO curriculum_subjects(subject_id, division_id, curriculum_id, semester_id, creadits, t_hours, p_hours,
                                all_hours, laboratory,
                                child_subject)
VALUES (16, 1, 1, 3, 8, 4.0, 0.0, 4.0, null, 9);

INSERT INTO curriculum_subjects(subject_id, division_id, curriculum_id, semester_id, creadits, t_hours, p_hours,
                                all_hours, laboratory,
                                child_subject)
VALUES (17, 1, 1, 3, 10, 4.0, 2.0, 6.0, 'S', null);

INSERT INTO curriculum_subjects(subject_id, division_id, curriculum_id, semester_id, creadits, t_hours, p_hours,
                                all_hours, laboratory,
                                child_subject)
VALUES (18, 4, 1, 3, 2, 0.0, 2.0, 2.0, null, null);



